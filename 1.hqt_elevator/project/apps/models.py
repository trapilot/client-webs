from django.db import models
from django.core.validators import MinValueValidator, MaxValueValidator
from django.utils.safestring import mark_safe
from django.utils.translation import  gettext_lazy as _

from ckeditor.fields import RichTextField

from shared_engine.managers import GeneralManager
from shared_engine.transmeta import TransMeta
from shared_engine.transcode import upload_to
from web_engine.utils import default_site_code
from web_engine.models import Site
from site_engine.models import Project
from project.apps.managers import PageManager


class Category(models.Model, metaclass=TransMeta):
    objects = PageManager()
    ADMIN_ORDER = 1
    INTERNAL_SET = True

    site = models.ForeignKey(
        Site,
        on_delete=models.CASCADE,
        default=default_site_code,
        related_name='category_app',
        verbose_name=_(u'Site'),
    )

    name = models.CharField(_(u'Name'), max_length=100, unique=True)
    slug = models.SlugField(u'Slug', unique=True)
    code = models.CharField(u'Code', max_length=100, unique=True)
    summary = models.TextField(_(u'Summary'), blank=True)
    content = RichTextField(_(u'Content'), blank=True)
    image = models.ImageField(_(u'Image'), upload_to=upload_to('uploads/apps/category/images'), blank=True)
    
    is_home = models.BooleanField(_(u'Home'), default=False)
    is_active = models.BooleanField(_(u'Active'), default=True)
    sorted_as = models.PositiveIntegerField(_(u'Sorting'), default=0)

    created_at = models.DateTimeField(_(u'Created'), auto_now_add=True)
    updated_at = models.DateTimeField(_(u'Updated'), auto_now=True)

    class Meta:
        verbose_name = _(u'Category')
        verbose_name_plural = _(u'Categories')
        translate = ('name', 'slug', 'summary', 'content',)
        ordering = ['sorted_as', 'is_active']

    def __str__(self):
        return self.name
    
class Product(models.Model, metaclass=TransMeta):
    objects = PageManager()
    ADMIN_ORDER = 2
    INTERNAL_SET = True

    site = models.ForeignKey(
        Site,
        on_delete=models.CASCADE,
        default=default_site_code,
        related_name='product_app',
        verbose_name=_(u'Site'),
    )

    category = models.ForeignKey(
        Category,
        on_delete=models.CASCADE,
        related_name='product_set',
        verbose_name=_(u'Category'),
    )

    class DoorType(models.IntegerChoices):
        SINGLE_SLIDING = 1, 'Cửa trượt đơn'
        TWO_PANEL_CENTER = 2, 'Mở 2 cánh ở giữa'
        TWO_PANEL_SIDE = 3, 'Mở 2 cánh ở bên'
        FOUR_PANEL_CENTER = 4, 'Mở 4 cánh ở giữa'
        MANUAL = 5, 'Cửa mở bằng tay'
        AUTOMATIC = 6, 'Tự động'

    code = models.CharField(_(u'Code'), max_length=100, unique=True)    
    name = models.CharField(_(u'Name'), max_length=200)
    slug = models.SlugField(_(u'Slug'), unique=True)
    summary = models.TextField(_(u'Summary'), blank=True, null=True)
    content = RichTextField(_(u'Content'), null=True, blank=True)

    pdf = models.FileField(_(u'Pdf'), null=True, blank=True, upload_to=upload_to('uploads/apps/product/pdfs'))
    icon = models.ImageField(_(u'Icon'), blank=True, null=True, upload_to=upload_to('uploads/apps/product/icons'))
    image = models.ImageField(_(u'Thumbnail'), blank=True, null=True, upload_to=upload_to('uploads/apps/product/images'))
    video = models.FileField(_(u'Video'), null=True, blank=True, upload_to=upload_to('uploads/apps/product/videos'))

    base_price = models.DecimalField(_(u'Base Price'), null=True, blank=True, max_digits=15, decimal_places=0)
    sale_price = models.DecimalField(_(u'Sale Price'), null=True, blank=True, max_digits=15, decimal_places=0)
    
    capacity = models.IntegerField(_(u'Capacity (kg)'), default=0, validators=[MinValueValidator(0)])
    speed = models.DecimalField(_(u'Speed ​​(m/s)'), max_digits=3, decimal_places=1, default=0, validators=[MinValueValidator(0)])
    height = models.IntegerField(_(u'Maximum Height (m)'), default=0, validators=[MinValueValidator(0)])
    power_consumption = models.IntegerField(_(u'Electricity Consumption (kWh/h)'), default=0, null=True, blank=True)
    energy_saving = models.IntegerField(_(u'Electricity Savings (%)'), null=True, blank=True, default=0, validators=[MinValueValidator(0), MaxValueValidator(100)])
    warranty = models.IntegerField(_(u'Years of Warranty'), null=True, blank=True, default=0, validators=[MinValueValidator(0)])
    passenger = models.IntegerField(_(u'Number of People'), default=0, validators=[MinValueValidator(0)])
    number_stops = models.IntegerField(_(u'Number of Stops'), null=True, blank=True, default=0, validators=[MinValueValidator(0)])
    cabin_material = models.CharField(_(u'Cabin Materials'), null=True, blank=True, max_length=100)
    door_type = models.IntegerField(_('Elevator Door Type'), null=True, blank=True, choices=DoorType.choices, default=DoorType.TWO_PANEL_CENTER)
    products_used = models.ManyToManyField(Project, blank=True, related_name='product_set', verbose_name=_(u'Used Products'))

    # Badge
    is_vip = models.BooleanField(_(u'High Class'), default=False)
    is_new = models.BooleanField(_(u'New'), default=False)
    is_popular = models.BooleanField(_(u'Popular'), default=False)
    is_bestseller = models.BooleanField(_(u'Bestseller'), default=False)
    
    is_home = models.BooleanField(_(u'Home'), default=False)
    is_active = models.BooleanField(_(u'Active'), default=True)
    sorted_as = models.PositiveIntegerField(_(u'Sorting'), default=0)
    visited_as = models.PositiveIntegerField(_(u'View Count'), default=0)
    
    # Meta
    meta_title = models.CharField(_(u'Title'), null=True, blank=True, max_length=200)
    meta_description = models.CharField(_(u'Description'), null=True, blank=True, max_length=500)
    meta_keywords = models.CharField(_(u'Keywords'), null=True, blank=True, max_length=300)
    
    created_at = models.DateTimeField(_(u'Created'), auto_now_add=True)
    updated_at = models.DateTimeField(_(u'Updated'), auto_now=True)
    # created_by = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, related_name='user_created_product')

    class Meta:
        verbose_name = _(u'Product')
        verbose_name_plural = _(u'Products')
        translate = ('name', 'slug', 'summary', 'content', 'meta_title', 'meta_description', 'meta_keywords',)
        ordering = ['sorted_as', 'is_active', 'is_home']

    def __str__(self):
        return self.name
    
    @classmethod
    def auto_prefetch_related(cls):
        return [
            'feature_set',
            'gallery_set',
            'faq_set',
        ]

    @property
    def discount_percent(self):
        if self.sale_price:
            discount = ((self.base_price - self.sale_price) / self.base_price) * 100
            return int(discount)
        return 0
    
    @property
    def passenger_text(self):
        if self.passenger > 0:
            return f"{self.passenger} người"
        return 'Tùy Chỉnh'


class ProductFeature(models.Model, metaclass=TransMeta):
    objects = GeneralManager()
    
    product = models.ForeignKey(
        Product,
        on_delete=models.CASCADE,
        related_name='feature_set',
        verbose_name=_(u'Product'),
    )

    label = models.CharField(_(u'Feature'), max_length=200)
    value = models.CharField(_(u'Value'), null=True, blank=True, max_length=200)
    
    icon_svg = models.TextField(_(u'Svg'), blank=True, null=True)
    icon_img = models.ImageField(_(u'Icon'), blank=True, null=True, upload_to=upload_to('uploads/apps/product/features'))
    icon_name = models.CharField(_(u'Name'), max_length=150, blank=True, null=True)
    icon_code = models.CharField(_(u'Code'), max_length=30, blank=True, null=True,
        help_text=mark_safe("<a target='_blank' href='https://fontawesome.com/search?o=r&f=brands'>https://fontawesome.com/search?o=r&f=brands</a>"),
    )

    is_active = models.BooleanField(_(u'Active'), default=True)
    sorted_as = models.PositiveIntegerField(_(u'Sorting'), default=0)

    class Meta:
        verbose_name = _(u'Feature')
        verbose_name_plural = _(u'Features')
        translate = ('label', 'value',)
        ordering = ['sorted_as', 'is_active']

    def __str__(self):
        return f"{self.product} - {self.label}"
    

class ProductGallery(models.Model, metaclass=TransMeta):
    objects = GeneralManager()
    
    product = models.ForeignKey(
        Product,
        on_delete=models.CASCADE,
        related_name='gallery_set',
        verbose_name=_(u'Product'),
    )

    image = models.ImageField(_(u'Image'), upload_to=upload_to('uploads/apps/product/galleries'), null=True, blank=True)

    is_active = models.BooleanField(_(u'Active'), default=True)
    sorted_as = models.PositiveIntegerField(_(u'Sorting'), default=0)

    created_at = models.DateTimeField(_(u'Created'), auto_now_add=True)

    class Meta:
        verbose_name = _(u'Gallery')
        verbose_name_plural = _(u'Galleries')
        ordering = ['sorted_as', 'is_active',]

    def __str__(self):
        return f"{self.product} - {self.created_at}"

class ProductFaq(models.Model, metaclass=TransMeta):
    objects = GeneralManager()
    
    product = models.ForeignKey(
        Product,
        on_delete=models.CASCADE,
        related_name='faq_set',
        verbose_name=_(u'Product'),
    )

    question = models.CharField(_(u'Question'), max_length=200)
    answer = models.CharField(_(u'Answer'), null=True, blank=True, max_length=200)
    icon = models.CharField(_(u'Icon'), null=True, blank=True, max_length=100, help_text=mark_safe("<a target='_blank' href='https://fontawesome.com/search>https://fontawesome.com/search</a>"),)
    is_active = models.BooleanField(_(u'Active'), default=True)
    sorted_as = models.IntegerField(_(u'Sorting'), null=True, blank=True, default=0)

    class Meta:
        verbose_name = _(u'Product FAQ')
        verbose_name_plural = _(u'Product FAQs')
        translate = ('question', 'answer',)
        ordering = ['sorted_as', 'is_active']

    def __str__(self):
        return f"{self.product.name} - {self.question}"