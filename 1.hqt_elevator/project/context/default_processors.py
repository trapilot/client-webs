import random
import os

from django.shortcuts import get_object_or_404
from django.core.paginator import Paginator
from django.core.exceptions import ObjectDoesNotExist
from django.db.models import Count, F, Q

from cms_app.models import (
    Category,
    Article,
    Testimonial,
    Partner,
    FAQ,
)
from project.apps.models import (
    Portfolio,
    Product,
    ProductCategory,
)
from recruitment_engine.models import (
    Department,
    Job,
)


## ============= GLOBAL SITE SETTINGS ====================================
def site_settings(request, kwargs=None):    
    categories = ProductCategory.objects.filter(
        is_active=True,
    ).order_by('sorted_as')

    featured_category = None
    if len(categories):
        featured_category = random.choice(categories)

    return dict({
        "categories": categories,
        "featured_category": featured_category,
    })
## ============= GLOBAL SETTINGS ====================================


def home(request, kwargs=None):
    testimonials = Testimonial.objects.filter(
        is_active=True,
        is_featured=True,
        # rating__gte=3
    )[:3]
    ids = list(testimonials.values_list('id', flat=True))
    random_id = random.choice(ids) if ids else None
    testimonial = Testimonial.objects.filter(id=random_id).first()

    partners = Partner.objects.filter(
        is_active=True,
        is_featured=True,
    ).order_by('sorted_as')[:8]

    portfolios = Portfolio.objects.filter(
        is_active=True,
        is_featured=True,
    ).order_by('sorted_as')[:8]

    return dict({
        "testimonial": testimonial,
        "testimonials": testimonials,
        "partners": partners,
        "portfolios": portfolios,
    })

def support(request, kwargs=None):
    faqs = FAQ.objects.prefetch_related('answer_set').filter(
        is_active=True
    ).order_by('sorted_as')[:10]

    return dict({
        "faqs": faqs,
    })

def category(request, kwargs=None):
    products = []
    try:
        category = get_object_or_404(ProductCategory, slug=kwargs.get('slug'))
        paginator = Paginator(
            Product.objects.prefetch_related('feature_set').filter(
                is_active=True,
                category=category,
            ).order_by('sorted_as', 'created_at'),
            6
        )
        products = paginator.get_page(request.GET.get("page"))
    except ObjectDoesNotExist:
        category = None 

    return dict({
        "category": category,
        "products": products,
    })

def products(request, kwargs=None):
    paginator = Paginator(
        Product.objects.filter(
            is_active=True,
        ).order_by('sorted_as', 'created_at'),
        6
    )
    products = paginator.get_page(request.GET.get("page"))
    categories = ProductCategory.objects.filter(
        is_active=True,
    )

    if os.getenv("APP_DEMO", "False").lower() == "true":
        qs = list(
            Product.objects.filter(
                is_active=True,
            ).order_by('sorted_as', 'created_at')
        ) * 10
        paginator = Paginator(qs, 6)
        products = paginator.get_page(request.GET.get("page"))

    return dict({
        "products": products,
        "categories": categories,
    })

def product(request, kwargs=None):
    related_products = []
    try:
        product = get_object_or_404(
            Product.objects.prefetch_related(
                'feature_set',
                'gallery_set',
                'faq_set',
            ),
            slug=kwargs.get('slug')
        )

        related_products = Product.objects.filter(
            is_active=True,
            category=product.category,
        ).exclude(id=product.id).order_by('sorted_as', 'created_at',)[:4]
    except ObjectDoesNotExist:
        product = None
    
    return dict({
        "product": product,
        "related_products": related_products,
    })


def portfolios(request, kwargs=None):
    portfolios = Portfolio.objects.filter(
        is_active=True,
    ).order_by('sorted_as', 'created_at',)[:100]

    return dict({
        "portfolios": portfolios,
    })

def portfolio(request, kwargs=None):
    related_portfolios = []
    try:
        portfolio = get_object_or_404(Portfolio, slug=kwargs.get('slug'))
        related_portfolios = Portfolio.objects.filter(
            is_active=True,
            category=portfolio.category,
        ).exclude(id=portfolio.id).order_by('sorted_as', 'created_at',)[:5]
    except ObjectDoesNotExist:
        portfolio = None

    return dict({
        "portfolio": portfolio,
        "related_portfolios": related_portfolios,
    })


def articles(request, kwargs=None):
    paginator = Paginator(
        Article.objects.filter(
            is_active=True,
        ).order_by('sorted_as', 'visited_as', 'created_at'),
        4
    )
    articles = paginator.get_page(request.GET.get("page"))

    if os.getenv("APP_DEMO", "False").lower() == "true":
        qs = list(
            Article.objects.filter(
                is_active=True,
            ).order_by('sorted_as', 'created_at')
        ) * 10
        paginator = Paginator(qs, 4)
        articles = paginator.get_page(request.GET.get("page"))

    return dict({
        "articles": articles,
    })

def article(request, kwargs=None):
    related_articles = []
    related_categories = []

    try:
        article = get_object_or_404(Article, slug_vi=kwargs.get('slug'))

        Article.objects.filter(pk=article.pk).update(
            visited_as=F('visited_as') + 1
        )
        article.refresh_from_db(fields=['visited_as'])

        related_articles = Article.objects.filter(
            is_active=True,
            tags__in=article.tags.all(),
        ).exclude(id=article.id).distinct().order_by('sorted_as', 'visited_as', '-published_at', 'created_at')[:3]
        
        related_categories = (
            Category.objects
            .filter(is_active=True)
            .annotate(
                article_count=Count(
                    'category_set',
                    filter=Q(category_set__is_active=True),
                    distinct=True
                ),
                name=F('name_vi'),
            )
            .filter(article_count__gt=0)
            .values('id', 'name', 'article_count')
        )
    except ObjectDoesNotExist:
        article = None

    return dict({
        "article": article,
        "related_articles": related_articles,
        "related_categories": related_categories,
    })

def recruitment(request, kwargs=None):
    departments = Department.objects.filter(
        is_active=True,
    ).order_by('sorted_as')

    jobs = Job.objects.filter(
        is_active=True,
    ).order_by('sorted_as')

    return dict({
        "departments": departments,
        "jobs": jobs,
    })