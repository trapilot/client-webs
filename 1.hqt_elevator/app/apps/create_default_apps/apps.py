import os
import time

from django.apps import AppConfig
from django.conf import settings
from django.db.models.signals import post_migrate
from django.dispatch import receiver

class CreateDefaultAppsConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'app'

    def ready(self):
        if settings.DEBUG:
            post_migrate.connect(create_default_user, sender=self)
            post_migrate.connect(create_access_group, sender=self)
            post_migrate.connect(create_default_apps, sender=self)


@receiver(post_migrate)
def create_default_user(sender, **kwargs):
    from django.contrib.auth import models as auth_models

    def is_exists(user):
        return auth_models.User.objects.filter(username=user).exists()

    EMAIL = os.getenv('DJANGO_USER_EMAIL')
    USERNAME = os.getenv('DJANGO_USER_NAME')
    PASSWORD = os.getenv('DJANGO_USER_PASS')

    if USERNAME and PASSWORD:
        if is_exists(USERNAME):
            return

        auth_models.User.objects.create_superuser(
            email=EMAIL,
            username=USERNAME,
            password=PASSWORD,
        )


@receiver(post_migrate)
def create_access_group(sender, **kwargs):
    from django.contrib.auth import models as auth_models
    from cms_engine.backoffice.defaults import GROUP_PERMISSIONS

    def is_exists(group):
        return auth_models.Group.objects.filter(name=group).exists()

    USERNAME = os.getenv('DJANGO_USER_NAME')

    if USERNAME:
        user = auth_models.User.objects.get(username=USERNAME)
        if user:
            for name in GROUP_PERMISSIONS:
                if not is_exists(name):
                    group = auth_models.Group.objects.create(name=name)
                group = auth_models.Group.objects.get(name=name)
                user.groups.add(group)


if settings.DEBUG:
    from app.apps.create_default_apps.sites.project import *
