import random

from django.shortcuts import get_object_or_404
from django.core.paginator import Paginator
from django.core.exceptions import ObjectDoesNotExist
from django.db.models import Count, F, Q

from site_blog.models import (
    Category,
    Post,
)
from project.apps.models import (
    Portfolio,
    Product,
    ProductCategory,
    Solution,
    Benefit,
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
    
    site = getattr(request, 'site', None)
    return dict({
        "categories": categories,
        "featured_category": featured_category,
        "theme": {
            "color": getattr(site, 'THEME_COLOR', "#B91C1C"),
            "author": getattr(site, 'THEME_AUTHOR', None),
        },
    })
## ============= GLOBAL SETTINGS ====================================


def home(request, kwargs=None):
    portfolios = Portfolio.objects.filter(
        is_active=True,
        is_featured=True,
    ).order_by('sorted_as')[:8]

    solutions = Solution.objects.filter(
        is_active=True,
        is_featured=True,
    ).order_by('sorted_as')[:4]

    benefits = Benefit.objects.filter(
        is_active=True,
        is_featured=True,
    ).order_by('sorted_as')[:4]

    return dict({
        "portfolios": portfolios,
        "solutions": solutions,
        "benefits": benefits,
    })

def support(request, kwargs=None):
    return dict({
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
            status='published',
        ).order_by('sorted_as', 'created_at'),
        6
    )
    products = paginator.get_page(request.GET.get("page"))
    categories = ProductCategory.objects.filter(
        is_active=True,
    )

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
            status='published',
            category=product.category,
        ).exclude(id=product.id).order_by('sorted_as', 'created_at',)[:4]
    except ObjectDoesNotExist:
        product = None
    
    return dict({
        "product": product,
        "related_products": related_products,
    })


def portfolios(request, kwargs=None):
    paginator = Paginator(
        Portfolio.objects.prefetch_related('category').filter(
            is_active=True,
        ).order_by('sorted_as', 'created_at'),
        4
    )
    portfolios = paginator.get_page(request.GET.get("page"))

    grouped_portfolios = []
    for index in range(0, len(portfolios), 2):
        items = portfolios[index:index + 2]
        grouped_portfolios.append({
            "index": index // 2,
            "items": items,
            "count": len(items),
        })

    return dict({
        "portfolios": portfolios,
        "grouped_portfolios": grouped_portfolios,
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
        Post.objects.filter(
            is_active=True,
        ).order_by('sorted_as', 'visited_as', 'created_at'),
        4
    )
    articles = paginator.get_page(request.GET.get("page"))

    return dict({
        "articles": articles,
    })

def article(request, kwargs=None):
    related_articles = []
    related_categories = []

    try:
        article = get_object_or_404(Post, slug_vi=kwargs.get('slug'))

        Post.objects.filter(pk=article.pk).update(
            visited_as=F('visited_as') + 1
        )
        article.refresh_from_db(fields=['visited_as'])

        related_articles = Post.objects.filter(
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

def solutions(request, kwargs=None):
    solutions = Solution.objects.filter(
        is_active=True,
    ).order_by('sorted_as')

    return dict({
        "solutions": solutions,
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