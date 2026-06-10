import os
import json
import time
import random
from datetime import date
from decimal import Decimal

from django.conf import settings
from django.db.models.signals import post_migrate
from django.dispatch import receiver
from django.utils.text import slugify


@receiver(post_migrate)
def create_default_apps(sender, **kwargs):
    from web_engine.models import Site, Page, Branch, Constant, SocialNetwork, OperatingHour, MarketingClaim, Highlight, Banner
    from site_engine.models import Category, ProductField, ProjectField, SolutionField
    from blog_engine.models import Category as BlogCategory, Tag as BlogTag

    def is_exists(site):
        return Site.objects.filter(code=site).exists()

    if is_exists(settings.SITE_CODE):
        return

    # sleep to wait another site
    time.sleep(1)

    site_path = os.path.join(settings.BASE_DIR, 'apps', 'data', 'site.json')

    if not os.path.exists(site_path):
        print(f'[ERROR] File not found: {site_path}')
        return

    with open(site_path, 'r', encoding='utf-8') as file:
        data = json.load(file)

    print('\n[SYSTEM] Start loading Core data from JSON....')

    # 1. Load Site
    site_data = data.get('site', {})
    site_code = site_data.pop('code')
    site_data['features_flag'] = [
        Site.FeatureFlag.BLOG,
        Site.FeatureFlag.PRODUCT,
        Site.FeatureFlag.PROJECT,
        Site.FeatureFlag.SOLUTION,
        Site.FeatureFlag.TARGET_CATEGORY,
        Site.FeatureFlag.TARGET_FIELD,
    ]
    site, created = Site.objects.update_or_create(
        code=site_code,
        defaults=site_data
    )
    action = "Create new" if created else "Update"
    print(f' - {action} Site: {site.name}')

    # 2. Load Branches
    for item in data.get('branches', []):
        Branch.objects.update_or_create(
            site=site,
            name_vi=item.pop('name_vi'),
            defaults=item
        )
    print(' - Loading complete Branches')

    # 3. Load Social Networks
    for item in data.get('social_networks', []):
        SocialNetwork.objects.update_or_create(
            site=site,
            name=item.pop('name'),
            defaults=item
        )
    print(' - Loading complete Social Networks')

    # 4. Load Constants
    for item in data.get('constants', []):
        Constant.objects.update_or_create(
            site=site,
            name=item.pop('name'),
            defaults=item
        )
    print(' - Loading complete Constants')

    # 5. Load Operating Hours
    for item in data.get('operating_hours', []):
        OperatingHour.objects.update_or_create(
            site=site,
            weekday=item.pop('weekday'),
            defaults=item
        )
    print(' - Loading complete Operating Hours')

    # 6. Load Marketing Claims
    for item in data.get('marketing_claims', []):
        MarketingClaim.objects.update_or_create(
            site=site,
            label_vi=item.pop('label_vi'),
            title_vi=item.pop('title_vi'),
            icon_svg=item.pop('icon_svg'),
            defaults=item
        )
    print(' - Loading complete Marketing Claims')

    # 7. Load Pages
    print(' - Loading Pages...')
    page_path = os.path.join(settings.BASE_DIR, 'apps', 'data', 'pages.json')

    if not os.path.exists(page_path):
        print(f'[ERROR] File not found: {page_path}')
        return

    with open(page_path, 'r', encoding='utf-8') as file:
        pages = json.load(file)
    
    page_map = {}
    page_home = None   
    for item in pages:
        page_code = item.pop('code')
        page_childs = item.pop('childs', [])
        page_banners = item.pop('banners', [])
        parent_code = item.pop('parent_code', None)
        parent_context = item.pop('context', None)
        
        if parent_code and parent_code in page_map:
            item['parent'] = page_map[parent_code]
        elif parent_code:
            print(f'   [WARNING]: Parent not found "{parent_code}" for page "{page_code}"')

        page, created = Page.objects.update_or_create(
            site=site,
            code=page_code,
            defaults=item
        )
        page_map[page_code] = page
        if page_home is None and page.is_home:
            page_home = page
        
        for item in page_childs:
            child_code = item.pop('code')
            item['parent'] = page

            child, created = Page.objects.update_or_create(
                site=site,
                code=child_code,
                defaults=item
            )
            page_map[child_code] = child
            status = "Create child" if created else "Update child"
            print(f'   + {status} Page: {page.code}')
        
        for item in page_banners:
            banner, created = Banner.objects.update_or_create(
                site=site,
                page=page,
                defaults=item
            )

        status = "Create new" if created else "Update"
        print(f'   + {status} Page: {page.code}')
    
    # 8. Load Highlights
    print(' - Loading Highlights...')
    highlight_path = os.path.join(settings.BASE_DIR, 'apps', 'data', 'highlights.json')

    if not os.path.exists(highlight_path):
        print(f'[ERROR] File not found: {highlight_path}')
        return

    with open(highlight_path, 'r', encoding='utf-8') as file:
        highlight = json.load(file)

    for item in highlight.get('features', []):
        page_code = item.pop('page_code')
        Highlight.objects.update_or_create(
            site=site,
            page=page_map[page_code],
            type=item.pop('type'),
            label_vi=item.pop('label_vi'),
            title_vi=item.pop('title_vi'),
            icon_svg=item.pop('icon_svg'),
            defaults=item
        )
    for item in highlight.get('trusted_infos', []):
        page_code = item.pop('page_code')
        Highlight.objects.update_or_create(
            site=site,
            page=page_map[page_code],
            type=item.pop('type'),
            label_vi=item.pop('label_vi'),
            title_vi=item.pop('title_vi'),
            icon_svg=item.pop('icon_svg'),
            defaults=item
        )
    for item in highlight.get('partner_brands', []):
        page_code = item.pop('page_code')
        Highlight.objects.update_or_create(
            site=site,
            page=page_map[page_code],
            type=item.pop('type'),
            label_vi=item.pop('label_vi'),
            defaults=item
        )

    # 9. Load Apps
    print(' - Loading Apps...')
    app_path = os.path.join(settings.BASE_DIR, 'apps', 'data', 'apps.json')

    if not os.path.exists(app_path):
        print(f'[ERROR] File not found: {app_path}')
        return

    with open(app_path, 'r', encoding='utf-8') as file:
        app_data = json.load(file)

    for item in app_data.get('categories', []):
        code = item.pop('code')
        Category.objects.update_or_create(
            site=site,
            code=code,
            is_homepage=item.pop('is_homepage') == 1,
            defaults=item
        )
    
    field = app_data.get('field', {})
    for item in field.get('product', []):
        ProductField.objects.update_or_create(
            site=site,
            type=item.pop('type'),
            name=item.pop('name'),
            unit=item.pop('unit'),
            default_value=item.pop('default_value'),
            value_choices = "\n".join(item.pop("value_choices", [])),
            required=item.pop('required') == 1,
            defaults=item
        )
    for item in field.get('project', []):
        ProjectField.objects.update_or_create(
            site=site,
            type=item.pop('type'),
            name=item.pop('name'),
            unit=item.pop('unit'),
            default_value=item.pop('default_value'),
            value_choices = "\n".join(item.pop("value_choices", [])),
            required=item.pop('required') == 1,
            defaults=item
        )
    for item in field.get('solution', []):
        SolutionField.objects.update_or_create(
            site=site,
            type=item.pop('type'),
            name=item.pop('name'),
            unit=item.pop('unit'),
            default_value=item.pop('default_value'),
            value_choices = "\n".join(item.pop("value_choices", [])),
            required=item.pop('required') == 1,
            defaults=item
        )

    # 10. Load Blog
    print(' - Loading Blog...')
    blog_path = os.path.join(settings.BASE_DIR, 'apps', 'data', 'blog.json')

    if not os.path.exists(blog_path):
        print(f'[ERROR] File not found: {blog_path}')
        return

    with open(blog_path, 'r', encoding='utf-8') as file:
        blog_data = json.load(file)

    for item in blog_data.get('categories', []):
        code = item.pop('code')
        BlogCategory.objects.update_or_create(
            site=site,
            code=code,
            defaults=item
        )
    
    for item in blog_data.get('tags', []):
        code = item.pop('code')
        BlogTag.objects.update_or_create(
            site=site,
            code=code,
            defaults=item
        )
    print('[SYSTEM] CORE DATA LOAD COMPLETE!\n')
