from datetime import date
import uuid
import random

from django.db import models
from django.core.validators import MinValueValidator, MaxValueValidator, URLValidator
from django.utils import timezone
from django.utils.safestring import mark_safe
from django.utils.translation import gettext_lazy as _
from django.contrib.auth.models import User

from ckeditor.fields import RichTextField

from shared_engine.managers import GeneralManager
from shared_engine.transcode import upload_to


class ProductCategory(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.CharField(_(u'Name'), max_length=100, unique=True)
    slug = models.SlugField('Slug', unique=True)
    code = models.CharField(_(u'Code'), max_length=100, unique=True)
    description = models.TextField(_(u'Description'), blank=True)
    content = RichTextField(_(u'Content'), blank=True)
    image = models.ImageField(_(u'Image'), upload_to=upload_to('uploads/apps/categories'), blank=True)
    is_active = models.BooleanField(_(u'Active'), default=True)
    is_featured = models.BooleanField(_(u'Featured'), default=False)
    sorted_as = models.IntegerField(_(u'Order'), default=0)
    created_at = models.DateTimeField(_(u'Created'), auto_now_add=True)
    updated_at = models.DateTimeField(_(u'Updated'), auto_now=True)

    class Meta:
        verbose_name = 'Product Category'
        verbose_name_plural = 'Product Categories'
        ordering = ['sorted_as', 'is_active', 'name']

    def __str__(self):
        return self.name


class Product(models.Model):
    objects = GeneralManager()

    STATUS_CHOICES = [
        ('draft', 'Nháp'),
        ('published', 'Xuất Bản'),
        ('archived', 'Lưu Trữ'),
    ]
    class DoorType(models.IntegerChoices):
        SINGLE_SLIDING = 1, 'Cửa trượt đơn'
        TWO_PANEL_CENTER = 2, 'Mở 2 cánh ở giữa'
        TWO_PANEL_SIDE = 3, 'Mở 2 cánh ở bên'
        FOUR_PANEL_CENTER = 4, 'Mở 4 cánh ở giữa'
        MANUAL = 5, 'Cửa mở bằng tay'
        AUTOMATIC = 6, 'Tự động'

    id = models.BigAutoField(primary_key=True)
    category = models.ForeignKey(ProductCategory, on_delete=models.CASCADE, related_name='product_set', verbose_name=_(u'Category'))
    
    name = models.CharField(_(u'Name'), max_length=200)
    slug = models.SlugField(_(u'Slug'), unique=True)
    code = models.CharField(_(u'Code'), max_length=100, unique=True)
    
    description = models.CharField(_(u'Description'), null=True, blank=True, max_length=500)
    content = RichTextField(_(u'Content'), null=True, blank=True)
    
    image = models.ImageField(_(u'Thumbnail'), null=True, blank=True, upload_to=upload_to('uploads/apps/products/images'))
    pdf = models.FileField(_(u'Báo Giá'), null=True, blank=True, upload_to=upload_to('uploads/apps/products/pdfs'))
    # galleries = models.ManyToManyField('ProductGallery', null=True, blank=True, related_name='product_set', verbose_name=_(u'Gallery'))
    
    capacity = models.IntegerField(_(u'Sức chứa (kg)'), default=0, validators=[MinValueValidator(0)])
    speed = models.DecimalField(_(u'Tốc Độ (m/s)'), max_digits=3, decimal_places=1, default=0, validators=[MinValueValidator(0)])
    height = models.IntegerField(_(u'Chiều Cao Tối Đa (m)'), default=0, validators=[MinValueValidator(0)])
    power_consumption = models.IntegerField(_(u'Tiêu Thụ Điện (kWh/h)'), default=0, null=True, blank=True)
    energy_saving = models.IntegerField(_(u'Tiết Kiệm Điện (%)'), null=True, blank=True, default=0, validators=[MinValueValidator(0), MaxValueValidator(100)])
    warranty = models.IntegerField(_(u'Số Năm Bảo Hành'), null=True, blank=True, default=0, validators=[MinValueValidator(0)])
    passenger = models.IntegerField(_(u'Lượng Người'), default=0, validators=[MinValueValidator(0)])
    number_stops = models.IntegerField(_(u'Số Trạm Dừng'), null=True, blank=True, default=0, validators=[MinValueValidator(0)])
    material = models.CharField(_(u'Chất Liệu   '), null=True, blank=True, max_length=100)
    door_type = models.IntegerField(_('Loại Cửa'), null=True, blank=True, choices=DoorType.choices, default=DoorType.TWO_PANEL_CENTER)

    base_price = models.DecimalField(_(u'Giá Gốc'), null=True, blank=True, max_digits=15, decimal_places=0)
    discount_price = models.DecimalField(_(u'Giá Giảm'), null=True, blank=True, max_digits=15, decimal_places=0)
    
    # Badge
    is_active = models.BooleanField(_(u'Active'), null=True, blank=True, default=True)
    is_vip = models.BooleanField(_(u'High Class'), null=True, blank=True, default=False)
    is_popular = models.BooleanField(_(u'Popular'), null=True, blank=True, default=False)
    is_new = models.BooleanField(_(u'New'), null=True, blank=True, default=False)
    is_bestseller = models.BooleanField(_(u'Bestseller'), null=True, blank=True, default=False)
    
    
    # Status
    status = models.CharField(_(u'Status'), null=True, blank=True, max_length=20, choices=STATUS_CHOICES, default='published')
    is_featured = models.BooleanField(_(u'Featured'), null=True, blank=True, default=False)
    sorted_as = models.PositiveIntegerField(_(u'Order'), null=True, blank=True, default=0)
    
    # Meta
    meta_title = models.CharField(_(u'Title'), null=True, blank=True, max_length=200)
    meta_description = models.CharField(_(u'Description'), null=True, blank=True, max_length=500)
    meta_keywords = models.CharField(_(u'Keywords'), null=True, blank=True, max_length=300)
    
    created_at = models.DateTimeField(_(u'Created'), auto_now_add=True)
    updated_at = models.DateTimeField(_(u'Updated'), auto_now=True)
    created_by = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, related_name='user_created_product')

    class Meta:
        verbose_name = 'Product'
        verbose_name_plural = 'Products'
        ordering = ['sorted_as', 'is_active', '-created_at']
        indexes = [
            models.Index(fields=['slug']),
            models.Index(fields=['code']),
            models.Index(fields=['category']),
        ]

    def __str__(self):
        return self.name

    @property
    def has_price(self):
        if self.base_price > 0:
            return True
        if self.discount_price:
            return self.discount_price <= self.base_price
        return False

    @property
    def discount_percent(self):
        if self.discount_price:
            discount = ((self.base_price - self.discount_price) / self.base_price) * 100
            return int(discount)
        return 0
    
    @property
    def sale_price(self):
        if self.discount_price and self.discount_price < self.base_price:
            return self.discount_price
        if self.base_price:
            return self.base_price
        return 'Liên Hệ'
    
    @property
    def passenger_text(self):
        if self.passenger > 0:
            return f"{self.passenger} người"
        return 'Tùy Chỉnh'
    
    @property
    def number_stops_text(self):
        if self.number_stops > 0:
            return self.number_stops
        return 'Tùy Chỉnh'
    
    @property
    def door_type_text(self):
        if self.door_type:
            try:
                return self.DoorType(self.door_type).label
            except ValueError:
                pass
        return 'Tùy Chỉnh'
    

class ProductFeature(models.Model):
    id = models.BigAutoField(primary_key=True)
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name='feature_set', verbose_name=_(u'Product'))
    name = models.CharField(_(u'Name'), max_length=200)
    value = models.CharField(_(u'Value'), null=True, blank=True, max_length=200)
    icon = models.CharField(_(u'Icon'), null=True, blank=True, max_length=100, help_text=mark_safe("<a target='_blank' href='https://fontawesome.com/search>https://fontawesome.com/search</a>"),)
    is_active = models.BooleanField(_(u'Active'), null=True, blank=True, default=True)
    sorted_as = models.IntegerField(_(u'Order'), null=True, blank=True, default=0)

    class Meta:
        verbose_name = 'Product Feature'
        verbose_name_plural = 'Product Features'
        ordering = ['sorted_as', 'is_active']

    def __str__(self):
        return f"{self.product.name} - {self.name}"


class ProductGallery(models.Model):
    id = models.BigAutoField(primary_key=True)
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name='gallery_set', verbose_name=_(u'Product'))
    image = models.ImageField(_(u'Image'), blank=True, null=True, upload_to=upload_to('uploads/apps/products/galleries'))
    sorted_as = models.IntegerField(_(u'Order'), blank=True, null=True, default=0)
    created_at = models.DateTimeField(_(u'Created'), auto_now_add=True)

    class Meta:
        verbose_name = 'Product Gallery'
        verbose_name_plural = 'Product Galleries'
        ordering = ['sorted_as']

    def __str__(self):
        return f"Hình ảnh - {self.created_at}"

class ProductFaq(models.Model):
    id = models.BigAutoField(primary_key=True)
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name='faq_set', verbose_name=_(u'Product'))
    question = models.CharField(_(u'Question'), max_length=200)
    answer = models.CharField(_(u'Answer'), null=True, blank=True, max_length=200)
    icon = models.CharField(_(u'Icon'), null=True, blank=True, max_length=100, help_text=mark_safe("<a target='_blank' href='https://fontawesome.com/search>https://fontawesome.com/search</a>"),)
    is_active = models.BooleanField(_(u'Active'), null=True, blank=True, default=True)
    sorted_as = models.IntegerField(_(u'Order'), null=True, blank=True, default=0)

    class Meta:
        verbose_name = 'Product FAQ'
        verbose_name_plural = 'Product FAQs'
        ordering = ['sorted_as', 'is_active']

    def __str__(self):
        return f"{self.product.name} - {self.question}"
    
class ProductReview(models.Model):
    RATING_CHOICES = [
        (1, '1 Sao'),
        (2, '2 Sao'),
        (3, '3 Sao'),
        (4, '4 Sao'),
        (5, '5 Sao'),
    ]

    id = models.BigAutoField(primary_key=True)
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name='review_set', verbose_name='Sản Phẩm')
    
    reviewer_name = models.CharField(_(u'Reviewer Name'), max_length=200)
    reviewer_email = models.EmailField(_(u'Reviewer Email'), blank=True)
    
    rating = models.IntegerField(_(u'Rating'), choices=RATING_CHOICES)
    title = models.CharField(_(u'Title'), max_length=200)
    content = models.TextField(_(u'Content'), blank=True, null=True)
    
    is_verified = models.BooleanField(_(u'Verified'), default=False)
    is_approved = models.BooleanField(_(u'Approved'), default=False)
    
    helpful_count = models.IntegerField('Lượt Hữu Ích', default=0)
    
    created_at = models.DateTimeField(_(u'Created'), auto_now_add=True)
    updated_at = models.DateTimeField(_(u'Updated'), auto_now=True)

    class Meta:
        verbose_name = 'Product Review'
        verbose_name_plural = 'Product Reviews'
        ordering = ['-created_at']
        indexes = [
            models.Index(fields=['product']),
            models.Index(fields=['is_approved']),
        ]

    def __str__(self):
        return f"{self.reviewer_name} - {self.product.name}"


class PortfolioCategory(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.CharField(_(u'Name'), max_length=100, unique=True)
    slug = models.SlugField('Slug', unique=True)
    code = models.CharField(_(u'Code'), max_length=100, unique=True)
    description = models.TextField(_(u'Description'), blank=True)
    image = models.ImageField(_(u'Image'), upload_to=upload_to('uploads/apps/portfolios/categories'), blank=True)
    color_bg = models.CharField(_(u'Background Color'), blank=True, null=True, max_length=150)
    color_color = models.CharField(_(u'Text Color'), blank=True, null=True, max_length=150)
    is_active = models.BooleanField(_(u'Active'), default=True)
    is_featured = models.BooleanField(_(u'Featured'), default=False)
    sorted_as = models.IntegerField(_(u'Order'), default=0)
    created_at = models.DateTimeField(_(u'Created'), auto_now_add=True)
    updated_at = models.DateTimeField(_(u'Updated'), auto_now=True)

    class Meta:
        verbose_name = 'Portfolio Category'
        verbose_name_plural = 'Portfolio Categories'
        ordering = ['sorted_as', 'is_active', 'name']

    def __str__(self):
        return self.name

    
class Portfolio(models.Model):
    objects = GeneralManager()
    
    STATUS_CHOICES = [
        ('planning', 'Đang Lên Kế Hoạch'),
        ('ongoing', 'Đang Triển Khai'),
        ('completed', 'Hoàn Thành'),
        # ('archived', 'Lưu Trữ'),
    ]

    id = models.BigAutoField(primary_key=True)
    category = models.ForeignKey(PortfolioCategory, on_delete=models.CASCADE, related_name='portfolio_set', verbose_name=_(u'Category'))

    name = models.CharField(_(u'Name'), max_length=300)
    slug = models.SlugField(_(u'Slug'), unique=True)
    description = models.TextField(_(u'Description'), blank=True, null=True)
    content = RichTextField(_(u'Content'), blank=True, null=True)
    image = models.ImageField(_(u'Image'), blank=True, null=True, upload_to=upload_to('uploads/apps/portfolios/images'))
    # galleries = models.ManyToManyField('PortfolioGallery', blank=True, null=True, related_name='portfolio_set', verbose_name=_(u'Gallery'))
    address = models.CharField(_(u'Address'), max_length=300, blank=True, null=True)
    city = models.CharField(_(u'City'), max_length=100, blank=True, null=True)
    
    products_used = models.ManyToManyField(Product, blank=True, related_name='portfolio_set', verbose_name='Sản Phẩm Sử Dụng')
    
    total_elevators = models.IntegerField('Tổng Số Thang Máy', blank=True, null=True, validators=[MinValueValidator(1)])
    building_floors = models.IntegerField('Số Tầng Tòa Nhà', blank=True, null=True, validators=[MinValueValidator(1)])
    
    start_date = models.DateField('Ngày Bắt Đầu', blank=True, null=True)
    completion_date = models.DateField('Ngày Hoàn Thành', blank=True, null=True)
    
    status = models.CharField(_(u'Status'), max_length=50, choices=STATUS_CHOICES, default='completed')
    sorted_as = models.PositiveIntegerField(_(u'Order'), default=0)
    is_active = models.BooleanField(_(u'Active'), blank=True, null=True, default=True)
    is_featured = models.BooleanField(_(u'Featured'), blank=True, null=True, default=False)
    
    customer_name = models.CharField(_(u'Customer'), blank=True, null=True, max_length=200)
    customer_company = models.CharField(_(u'Company'), blank=True, null=True, max_length=200)
    
    meta_title = models.CharField(_(u'Title'), blank=True, null=True, max_length=200)
    meta_description = models.CharField(_(u'Description'), blank=True, null=True, max_length=500)
    meta_keywords = models.CharField(_(u'Keywords'), null=True, blank=True, max_length=300)
    
    created_at = models.DateTimeField(_(u'Created'), auto_now_add=True)
    updated_at = models.DateTimeField(_(u'Updated'), auto_now=True)

    class Meta:
        verbose_name = 'Portfolio'
        verbose_name_plural = 'Portfolios'
        ordering = ['sorted_as', '-is_featured', '-completion_date']
        indexes = [
            models.Index(fields=['category']),
            models.Index(fields=['city']),
        ]

    def __str__(self):
        return self.name

    @property
    def status_text(self):
        return self.get_status_display()

    @property
    def duration(self):
        if not self.start_date:
            return None

        end_date = self.completion_date or date.today()

        total_days = (end_date - self.start_date).days

        months = (
            (end_date.year - self.start_date.year) * 12
            + (end_date.month - self.start_date.month)
        )

        if end_date.day < self.start_date.day:
            months -= 1

        months = max(months, 0)

        return {
            'months': months,
            'days': total_days,
        }

    @property
    def duration_days(self):
        if not self.start_date:
            return None

        end_date = self.completion_date or date.today()
        return (end_date - self.start_date).days

    @property
    def duration_months(self):
        if not self.start_date:
            return None

        end_date = self.completion_date or date.today()

        months = (
            (end_date.year - self.start_date.year) * 12
            + (end_date.month - self.start_date.month)
        )

        # If it's not yet a full month, subtract 1.
        if end_date.day < self.start_date.day:
            months -= 1
        
        return max(months, 0)


class PortfolioGallery(models.Model):
    id = models.BigAutoField(primary_key=True)
    portfolio = models.ForeignKey(Portfolio, on_delete=models.CASCADE, related_name='gallery_set', verbose_name=_(u'Portfolio'))
    image = models.ImageField(_(u'Image'), upload_to=upload_to('uploads/apps/portfolios/galleries'))
    sorted_as = models.IntegerField(_(u'Order'), default=0)
    created_at = models.DateTimeField(_(u'Created'), auto_now_add=True)

    class Meta:
        verbose_name = 'Portfolio Image'
        verbose_name_plural = 'Portfolio Images'
        ordering = ['sorted_as']

    def __str__(self):
        return f"Hình ảnh - {self.created_at}"


class Solution(models.Model):
    id = models.BigAutoField(primary_key=True)
    alias = models.CharField(_(u'Alias'), max_length=200)
    title = models.CharField(_(u'Title'), max_length=200)
    slug = models.SlugField(_(u'Slug'), unique=True)    
    description = models.TextField(_(u'Description'), null=True, blank=True)
    icon = models.TextField(_(u'Icon'), null=True, blank=True)
    content = RichTextField(_(u'Content'), null=True, blank=True)
    image = models.ImageField(_(u'Thumbnail'), null=True, blank=True, upload_to=upload_to('uploads/apps/products/images'))
    is_active = models.BooleanField(_(u'Active'), null=True, blank=True, default=True)
    is_featured = models.BooleanField(_(u'Featured'), null=True, blank=True, default=False)
    sorted_as = models.PositiveIntegerField(_(u'Order'), null=True, blank=True, default=0)
    
    created_at = models.DateTimeField(_(u'Created'), auto_now_add=True)
    updated_at = models.DateTimeField(_(u'Updated'), auto_now=True)

    class Meta:
        verbose_name = 'Solution'
        verbose_name_plural = 'Solutions'
        ordering = ['sorted_as', 'is_active', '-created_at']

    def __str__(self):
        return self.title

    
class SolutionFeature(models.Model):
    id = models.BigAutoField(primary_key=True)
    solution = models.ForeignKey(Solution, on_delete=models.CASCADE, related_name='feature_set', verbose_name=_(u'Solution'))
    name = models.CharField(_(u'Name'), max_length=200)
    value = models.CharField(_(u'Value'), null=True, blank=True, max_length=200)
    icon = models.CharField(_(u'Icon'), null=True, blank=True, max_length=100, help_text=mark_safe("<a target='_blank' href='https://fontawesome.com/search>https://fontawesome.com/search</a>"),)
    is_active = models.BooleanField(_(u'Active'), null=True, blank=True, default=True)
    sorted_as = models.IntegerField(_(u'Order'), null=True, blank=True, default=0)

    class Meta:
        verbose_name = 'Solution Feature'
        verbose_name_plural = 'Solution Features'
        ordering = ['sorted_as', 'is_active']

    def __str__(self):
        return f"{self.solution.title} - {self.name}"
    

class Benefit(models.Model):
    title = models.CharField(max_length=255)
    description = models.TextField()
    icon = models.TextField()
    
    is_active = models.BooleanField(_(u'Active'), null=True, blank=True, default=True)
    is_featured = models.BooleanField(_(u'Featured'), null=True, blank=True, default=True)
    sorted_as = models.IntegerField(_(u'Order'), null=True, blank=True, default=0)
    
    created_at = models.DateTimeField(_(u'Created'), auto_now_add=True)
    updated_at = models.DateTimeField(_(u'Updated'), auto_now=True)

    class Meta:
        ordering = ['sorted_as', 'is_active']

    def __str__(self):
        return self.title