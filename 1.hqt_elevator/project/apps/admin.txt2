from django.conf import settings
from django.contrib import admin
from django.utils.translation import gettext_lazy as _
from django.utils.html import format_html

from shared_engine.transmeta import get_real_fieldname as __, get_lable_language as ___
from shared_engine.admin import AdminBase, AdminTabularInline
from project.apps.models import (
    Category,
    Product,
    ProductFaq,
    ProductFeature,
    ProductGallery,
)


class CategoryAdmin(AdminBase):
    list_display = (__('name'), 'code', 'site', 'is_active', 'is_home', 'sorted_as',)
    list_editable = ('is_active', 'sorted_as',)
    prepopulated_fields = {}
    fieldsets = [
        [_(u'General'), {
            'fields': (
                'site', 'code', 'image',
                ('sorted_as', 'is_active', 'is_home',),
            )
        }],
    ]

    for code, name in settings.LANGUAGES:
        prepopulated_fields[__('slug', code)] = (__('name', code),)
        fieldsets.append(
            (___('Content', name), {
                'fields': Category.append_lang_fields(code)
            })
        )
    def product_count(self, obj):
        count = obj.product_items.count()
        return format_html(
            '<span style="background-color: #417505; color: white; padding: 3px 10px; border-radius: 3px;"><b>{}</b></span>',
            count
        )
    product_count.short_description = _(u'Number of products')
admin.site.register(Category, CategoryAdmin)


class ProductFeatureAdmin(AdminTabularInline):
    model = ProductFeature
    fields = []
    for code, name in settings.LANGUAGES:
        fields += ProductFeature.append_lang_fields(code)
    fields += ('sorted_as', 'is_active',)

class ProductFaqAdmin(AdminTabularInline):
    model = ProductFaq
    fields = []
    for code, name in settings.LANGUAGES:
        fields += ProductFaq.append_lang_fields(code)
    fields += ('sorted_as', 'is_active',)

class ProductGalleryAdmin(AdminTabularInline):
    model = ProductGallery
    fields = ['image',]
    for code, name in settings.LANGUAGES:
        fields += ProductGallery.append_lang_fields(code)
    fields += ('sorted_as', 'is_active',)

@admin.register(Product)
class ProductAdmin(AdminBase):
    inlines = [ProductFeatureAdmin, ProductFaqAdmin, ProductGalleryAdmin]
    list_display = ('code', 'category', __('name'), 'price_display', 'is_active', 'is_home', 'sorted_as', 'visited_as')
    prepopulated_fields = {}
    fieldsets = [
        [_(u'General'), {
            'fields': (
                'site',
                'category',
                'image',
                'video',
                'pdf',
                'icon',
                'visited_as',
                ('sorted_as', 'is_active', 'is_home',),
            )
        }],
        [_(u'Specification'), {
            'fields': (
                'door_type', 
                'code',
                ('capacity', 'passenger',),
                ('speed', 'height'),
                'number_stops',
                'power_consumption',
                'energy_saving',
                'warranty',
                'material',
            )
        }],
        [_(u'Badges & Status'), {
            'fields': (
                ('is_vip', 'is_new', 'is_popular', 'is_bestseller',),
            )
        }],
        [_(u'Price'), {
            'fields': (
                'base_price',
                'sale_price',
            )
        }],
    ]
    
    for code, name in settings.LANGUAGES:
        prepopulated_fields[__('slug', code)] = (__('name', code),)
        fieldsets.append(
            (___('Content', name), {
                'fields': Product.append_lang_fields(code)
            })
        )
    
    def price_display(self, obj):
        if obj.sale_price:
            return format_html(
                '<span style="text-decoration: line-through; color: red;">{}</span> → <b>{}</b>',
                int(obj.base_price),
                int(obj.sale_price)
            )
        if obj.base_price:
            return format_html('<b>{}</b>', int(obj.base_price))
        return ''
    price_display.short_description = _(u'Price')

