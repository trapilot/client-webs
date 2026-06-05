from django.contrib import admin
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf.urls.static import static
from django.views.static import serve
from django.urls import include, path, re_path
from django.conf import settings

from filebrowser import sites

from shared_engine.utils import urls
from shared_engine.views import generate_html


admin.autodiscover()


urlpatterns = [
    path('admin/filebrowser/', sites.site.urls),
    path('admin/', admin.site.urls),
    path('grappelli/', include('grappelli.urls')),
    path('chaining/', include('smart_selects.urls'), name='chaining'),
    # path('captcha/', include('captcha.urls')),
    # path('m/', include('webmobile.urls')),
    path("ai/generate-html/", generate_html),
    # path('accounts/login/', 'django.contrib.auth.views.login', {'template_name': 'admin/login.html'}),
    re_path(r"^media/(?P<path>.*)$", serve, {"document_root": settings.MEDIA_ROOT}),
    re_path(r"^static/(?P<path>.*)$", serve, {"document_root": settings.STATIC_ROOT}),
    # re_path(r'^static/(.*)$', serve, {'document_root': os.path.join(PATH_ACTUAL, 'static'), 'show_indexes': True}),
] + urls.autodiscover()

if settings.DEBUG:
    urlpatterns += staticfiles_urlpatterns()
    urlpatterns += path("__debug__/", include("debug_toolbar.urls")),
