# coding: utf-8
#from django.utils.translation import ugettext_lazy as _
#from django.core.urlresolvers import reverse

from grappelli.dashboard import modules, Dashboard
from grappelli.dashboard.utils import get_admin_site_name


class CustomIndexDashboard(Dashboard):

    def init_with_context(self, context):
        site_name = get_admin_site_name(context)

        self.children.append(modules.AppList(
            u'Applications',
            collapsible=True,
            column=1,
            css_classes=('collapse closed',),
            exclude=('django.contrib.*',),
        ))

        self.children.append(modules.ModelList(
            u'Administration',
            column=1,
            collapsible=False,
            models=('django.contrib.*',),
        ))

        self.children.append(modules.RecentActions(
            u'Recent actions',
            limit=5,
            collapsible=False,
            column=3,
        ))
