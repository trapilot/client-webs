from django import template
from django.shortcuts import get_object_or_404

from shared_engine.transmeta import get_real_fieldname as __
from project.apps.models import Product

register = template.Library()


@register.simple_tag
def product_detail(slug, lang=None):
    return get_object_or_404(
        Product.objects.prefetch_related(
            "feature_set",
            "gallery_set",
            "faq_set",
        ),
        **{__("slug", lang): slug},
    )

@register.simple_tag
def product_related(product, limit):
    return (
        Product.objects.filter(
            is_active=True,
            category=product.category,
        )
        .exclude(id=product.id)
        .order_by("sorted_as", "created_at")[:limit]
    )

@register.simple_tag
def post_detail(slug, lang=None):
    return get_object_or_404(
        Product.objects.prefetch_related(
            "feature_set",
            "gallery_set",
            "faq_set",
        ),
        **{__("slug", lang): slug},
    )

@register.simple_tag
def post_related(product, limit):
    return (
        Product.objects.filter(
            is_active=True,
            category=product.category,
        )
        .exclude(id=product.id)
        .order_by("sorted_as", "created_at")[:limit]
    )