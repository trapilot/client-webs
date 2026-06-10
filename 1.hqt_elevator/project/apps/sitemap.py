from django.utils.translation import get_language

from site_engine.sitemap import UrlSitemap, SitemapContext
from site_engine.utils import build_page_url
from site_content.models import Post, Project, Solution
from project.apps.models import Product


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
                articles = Post.objects.is_activated()
                for article in articles:
                    context = SitemapContext(language=lang, lastmod=article.updated_at)
                    pages.append(build_sitemap(site, page, context, slug=article.slug))
            elif page.code == 'project':
                projects = Project.objects.is_activated()
                for project in projects:
                    context = SitemapContext(language=lang, lastmod=project.updated_at)
                    pages.append(build_sitemap(site, page, context, slug=project.slug))
            elif page.code == 'solution':
                solutions = Solution.objects.is_activated()
                for solution in solutions:
                    context = SitemapContext(language=lang, lastmod=solution.updated_at)
                    pages.append(build_sitemap(site, page, context, slug=solution.slug))

    return pages