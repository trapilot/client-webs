import datetime

from django.contrib.auth.models import BaseUserManager
from django.db import models
from django.db.models import Q


class VariationManager(models.Manager):
    pass
    # def colors(self):
    #     return super(VariationManager, self).filter(variation_category='color', is_active=True)
    #
    # def sizes(self):
    #     return super(VariationManager, self).filter(variation_category='size', is_active=True)

class AccountManager(BaseUserManager):
    def create_user(self, first_name, last_name, username, email, password=None):
        if not email:
            raise ValueError('Email address is required')

        if not username:
            raise ValueError('User name is required')

        # Tạo đối tượng user mới
        user = self.model(
            email=self.normalize_email(email=email),    # Chuyển email về dạng bình thường
            username=username,
            first_name=first_name,
            last_name=last_name,
            is_staff=True,
        )

        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, first_name, last_name, email, username, password):
        user = self.create_user(
            email=self.normalize_email(email=email),
            username=username,
            password=password,
            first_name=first_name,
            last_name=last_name,
        )
        user.is_admin = True
        user.is_active = True
        user.is_staff = True
        user.is_superuser = True
        user.is_superadmin = True
        user.save(using=self._db)
        return user
