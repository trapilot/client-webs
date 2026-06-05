import os

from django.apps import AppConfig
from django.conf import settings
from django.dispatch import receiver
from django.db.models.signals import post_migrate
from django.utils.translation import gettext_lazy as _


class AppsConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'project.apps'
    verbose_name = _("Application")

    def ready(self):
        if os.getenv("APP_INITIAL", "False") == "True":
            from project.apps.defaults import create_default_apps
            
            post_migrate.connect(create_default_user, sender=self)
            post_migrate.connect(create_access_group, sender=self)
            post_migrate.connect(create_default_apps, sender=self)


@receiver(post_migrate)
def create_default_user(sender, **kwargs):
    from django.contrib.auth import models
    
    def is_exists(user):
        return models.User.objects.filter(username=user).exists()

    EMAIL = os.getenv('APP_USER_EMAIL')
    USERNAME = os.getenv('APP_USER_NAME')
    PASSWORD = os.getenv('APP_USER_PASS')

    if USERNAME and PASSWORD:
        if is_exists(USERNAME):
            return

        models.User.objects.create_superuser(
            username=USERNAME,
            email=EMAIL,
            password=PASSWORD,
        )


@receiver(post_migrate)
def create_access_group(sender, **kwargs):
    from django.contrib.auth import models
    from web_engine.backoffice.defaults import GROUP_PERMISSIONS

    def is_exists(group):
        return models.Group.objects.filter(name=group).exists()

    USERNAME = os.getenv('APP_USER_NAME')
    if USERNAME:
        user = models.User.objects.get(username=USERNAME)
        if user:
            for name in GROUP_PERMISSIONS:
                if not is_exists(name):
                    group = models.Group.objects.create(name=name)
                group = models.Group.objects.get(name=name)
                user.groups.add(group)
