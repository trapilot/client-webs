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
    from web_engine.models import Site, Page, Branch, Constant, SocialNetwork, OperatingHour, MarketingClaim, Highlight
    from site_engine.models import Category, Tag

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
        if page.is_home:
            page_home = page
        
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
        Highlight.objects.update_or_create(
            site=site,
            page=page_home,
            type=item.pop('type'),
            label_vi=item.pop('label_vi'),
            title_vi=item.pop('title_vi'),
            icon_svg=item.pop('icon_svg'),
            defaults=item
        )
    for item in highlight.get('trusted_infos', []):
        Highlight.objects.update_or_create(
            site=site,
            page=page_home,
            type=item.pop('type'),
            label_vi=item.pop('label_vi'),
            title_vi=item.pop('title_vi'),
            icon_svg=item.pop('icon_svg'),
            defaults=item
        )
    for item in highlight.get('partner_brands', []):
        Highlight.objects.update_or_create(
            site=site,
            page=page_home,
            type=item.pop('type'),
            label_vi=item.pop('label_vi'),
            defaults=item
        )

    print('[SYSTEM] CORE DATA LOAD COMPLETE!\n')
