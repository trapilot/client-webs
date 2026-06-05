from django.utils.translation import get_language

from web_engine.sitemap import UrlSitemap, SitemapContext
from web_engine.utils import build_page_url
from blog_engine.models import Article
from project.apps.models import Product, Portfolio


def extension(site, context):
    lang = get_language()
    
    def build_sitemap(site, page, context, **kwargs):
        sm = UrlSitemap()
        sm.url = build_page_url(site, page, context.language, False, **kwargs)
        sm.lastmod = context.lastmod or page.updated_at
        sm.priority = context.priority or page.priority
        sm.changefreq = context.changefreq or page.changefreq
        sm.level = page.level
        sm.sorted = page.sorted
        return sm

    pages = []
    for page in site.pages.values():
        if page.is_internal:
            if page.code == 'product':
                products = Product.objects.is_activated()
                for product in products:
                    if product.status == 'published':
                        context = SitemapContext(language=lang, lastmod=product.updated_at)
                        pages.append(build_sitemap(site, page, context, slug=product.slug))
            elif page.code == 'article':
                articles = Article.objects.is_activated()
                for article in articles:
                    context = SitemapContext(language=lang, lastmod=article.updated_at)
                    pages.append(build_sitemap(site, page, context, slug=article.slug))
            elif page.code == 'portfolio':
                portfolios = Portfolio.objects.is_activated()
                for portfolio in portfolios:
                    context = SitemapContext(language=lang, lastmod=portfolio.updated_at)
                    pages.append(build_sitemap(site, page, context, slug=portfolio.slug))

    return pages