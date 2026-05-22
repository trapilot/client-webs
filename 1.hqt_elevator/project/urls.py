"""portfolio URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf.urls.static import static
from django.views.static import serve
from django.urls import include, path, re_path
from django.conf import settings

from filebrowser.sites import site

from cms_engine.route import autodiscover
from shared_engine.utils import urls as app_engine_urls

admin.autodiscover()

urlpatterns = [
    path('admin/filebrowser/', site.urls),
    path('grappelli/', include('grappelli.urls')),
    # path('tinymce/', include('tinymce.urls')),    
    path('chaining/', include('smart_selects.urls'), name='chaining'),
    # path('captcha/', include('captcha.urls')),
    # path('m/', include('webmobile.urls')),
    path('admin/', admin.site.urls),
    # path('accounts/login/', 'django.contrib.auth.views.login', {'template_name': 'admin/login.html'}),
    # re_path(r'^static/(.*)$', serve, {'document_root': os.path.join(PATH_ACTUAL, 'static'), 'show_indexes': True}),
    re_path(r"^media/(?P<path>.*)$", serve, {"document_root": settings.MEDIA_ROOT}),
    re_path(r"^static/(?P<path>.*)$", serve, {"document_root": settings.STATIC_ROOT}),
]

urlpatterns += app_engine_urls.autodiscover()
urlpatterns += autodiscover()

if settings.DEBUG:
    urlpatterns += staticfiles_urlpatterns()
