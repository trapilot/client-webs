from django.contrib import admin
from django.utils.html import format_html
from django.urls import reverse
from django.utils.translation import gettext_lazy as _
from django.db.models import Q
from .models import (
    Product, ProductCategory, ProductFeature, ProductGallery, ProductReview,
    Portfolio, PortfolioGallery,
    
)


@admin.register(ProductCategory)
class ProductCategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'code', 'is_active', 'sorted_as', 'product_count', 'created_at')
    list_filter = ('is_active', 'created_at')
    search_fields = ('name', 'code', 'description')
    prepopulated_fields = {'slug': ('name',)}
    ordering = ('sorted_as', 'name')
    
    fieldsets = (
        ('Thông Tin Cơ Bản', {
            'fields': ('name', 'slug', 'code', 'image')
        }),
        ('Mô Tả', {
            'fields': ('description', 'content')
        }),
        ('Cài Đặt', {
            'fields': ('is_active', 'sorted_as')
        }),
    )

    def product_count(self, obj):
        count = obj.product_set.count()
        return format_html(
            '<span style="background-color: #417505; color: white; padding: 3px 10px; border-radius: 3px;"><b>{}</b></span>',
            count
        )
    product_count.short_description = 'Số Sản Phẩm'


class ProductFeatureAdmin(admin.TabularInline):
    model = ProductFeature
    extra = 1
    fields = ('name', 'value', 'icon', 'sorted_as',)


class ProductGalleryAdmin(admin.TabularInline):
    model = ProductGallery
    extra = 1
    fields = ('image', 'sorted_as')


@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    inlines = [ProductFeatureAdmin, ProductGalleryAdmin]
    list_display = ('name', 'category', 'code', 'price_display', 'capacity', 'energy_saving', 'status_badge', 'is_featured')
    list_filter = ('category', 'status', 'is_popular', 'is_new', 'is_bestseller', 'created_at')
    search_fields = ('name', 'code', 'description')
    prepopulated_fields = {'slug': ('name',)}
    readonly_fields = ('created_at', 'updated_at', 'created_by')
    
    fieldsets = (
        ('Thông Tin Cơ Bản', {
            'fields': ('category', 'name', 'slug', 'code', 'image', 'status', 'is_featured',)
        }),
        ('Mô Tả', {
            'fields': ('description',),
            'classes': ('collapse',)
        }),
        ('Thông Số Kỹ Thuật', {
            'fields': (
                'door_type', 
                ('capacity', 'passenger', 'height',),
                ('speed', 'power_consumption', 'energy_saving',),
                ('warranty', 'number_stops',),
                'material',
            ),
            'classes': ('collapse',)
        }),
        ('Giá Cả', {
            'fields': ('base_price', 'discount_price')
        }),
        ('Badges & Status', {
            'fields': ('is_popular', 'is_new', 'is_bestseller')
        }),
        ('SEO', {
            'fields': ('meta_title', 'meta_description', 'meta_keywords'),
            'classes': ('collapse',)
        }),
        ('Metadata', {
            'fields': ('created_at', 'updated_at', 'created_by'),
            'classes': ('collapse',)
        }),
    )
    
    def thumbnail_display(self, obj):
        if obj.image:
            return format_html(
                '<img src="{}" width="50" height="50" style="object-fit: cover;" />',
                obj.image.url
            )
        return ""
    thumbnail_display.short_description = 'Hình Ảnh'

    def price_display(self, obj):
        if obj.discount_price:
            return format_html(
                '<span style="text-decoration: line-through; color: red;">{}</span> → <b>{}</b>',
                int(obj.base_price),
                int(obj.discount_price)
            )
        if obj.base_price:
            return format_html('<b>{}</b>', int(obj.base_price))
        return ''
    price_display.short_description = 'Giá'

    def status_badge(self, obj):
        colors = {
            'draft': '#FFC107',
            'published': '#28A745',
            'archived': '#6C757D',
        }
        return format_html(
            '<span style="background-color: {}; color: white; padding: 3px 10px; border-radius: 3px;">{}</span>',
            colors.get(obj.status),
            obj.get_status_display()
        )
    status_badge.short_description = 'Trạng Thái'

    def save_model(self, request, obj, form, change):
        if not change:
            obj.created_by = request.user
        super().save_model(request, obj, form, change)


# @admin.register(ProductReview)
class ProductReviewAdmin(admin.ModelAdmin):
    list_display = ('product', 'reviewer_name', 'rating_stars', 'is_approved', 'is_verified', 'created_at')
    list_filter = ('rating', 'is_approved', 'is_verified', 'product__category', 'created_at')
    search_fields = ('reviewer_name', 'title', 'product__name')
    readonly_fields = ('created_at', 'updated_at', 'helpful_count')
    actions = ['approve_reviews', 'reject_reviews', 'mark_as_verified']
    
    fieldsets = (
        ('Sản Phẩm & Người Đánh Giá', {
            'fields': ('product', 'reviewer_name', 'reviewer_email', 'is_verified')
        }),
        ('Đánh Giá', {
            'fields': ('rating', 'title', 'content')
        }),
        ('Quản Lý', {
            'fields': ('is_approved', 'helpful_count', 'created_at', 'updated_at')
        }),
    )

    def rating_stars(self, obj):
        stars = '★' * obj.rating + '☆' * (5 - obj.rating)
        return format_html(
            '<span style="color: #FFB81C; font-size: 14px;"><b>{}</b></span>',
            stars
        )
    rating_stars.short_description = 'Đánh Giá'

    def approve_reviews(self, request, queryset):
        updated = queryset.update(is_approved=True)
        self.message_user(request, f'✓ {updated} bình luận được duyệt')
    approve_reviews.short_description = 'Duyệt Bình Luận'

    def reject_reviews(self, request, queryset):
        updated = queryset.update(is_approved=False)
        self.message_user(request, f'✓ {updated} bình luận bị từ chối')
    reject_reviews.short_description = 'Từ Chối Bình Luận'

    def mark_as_verified(self, request, queryset):
        updated = queryset.update(is_verified=True)
        self.message_user(request, f'✓ {updated} bình luận được xác minh')
    mark_as_verified.short_description = 'Xác Minh Bình Luận'



class PortfolioGalleryAdmin(admin.TabularInline):
    model = PortfolioGallery
    extra = 1
    fields = ('image', 'sorted_as')

@admin.register(Portfolio)
class PortfolioAdmin(admin.ModelAdmin):
    inlines = [PortfolioGalleryAdmin]
    list_display = ('name', 'type', 'address_display', 'total_elevators', 'status_badge', 'completion_date', 'is_active', 'is_featured',)
    list_filter = ('type', 'status', 'is_featured', 'completion_date', 'city')
    search_fields = ('name', 'address', 'city', 'customer_company')
    prepopulated_fields = {'slug': ('name',)}
    readonly_fields = ('created_at', 'updated_at')
    filter_horizontal = ('products_used',)
    
    fieldsets = (
        (_(u'General'), {
            'fields': ('type', 'name', 'slug', 'status', 'is_active', 'is_featured', 'sorted_as', 'image',)
        }),
        ('Mô Tả', {
            'fields': ('description', 'content',)
        }),
        ('Địa Điểm', {
            'fields': ('address', 'city')
        }),
        ('Thông Tin Dự Án', {
            'fields': ('total_elevators', 'building_floors', 'products_used')
        }),
        ('Thời Gian', {
            'fields': ('start_date', 'completion_date')
        }),
        ('Thông Tin Khách Hàng', {
            'fields': ('customer_name', 'customer_company'),
            'classes': ('collapse',)
        }),
        ('SEO', {
            'fields': ('meta_title', 'meta_description', 'meta_keywords'),
            'classes': ('collapse',)
        }),
        ('Metadata', {
            'fields': ('created_at', 'updated_at'),
            'classes': ('collapse',)
        }),
    )

    def address_display(self, obj):
        if obj.city:
            return format_html(
                '{} <small style="color: gray;">({})</small>',
                obj.address,
                obj.city
            )
        return obj.address
    address_display.short_description = 'Địa Điểm'

    def status_badge(self, obj):
        colors = {
            'planning': '#FFC107',
            'ongoing': '#17A2B8',
            'completed': '#28A745',
            'archived': '#6C757D',
        }
        return format_html(
            '<span style="background-color: {}; color: white; padding: 3px 10px; border-radius: 3px;">{}</span>',
            colors.get(obj.status),
            obj.get_status_display()
        )
    status_badge.short_description = 'Trạng Thái'
