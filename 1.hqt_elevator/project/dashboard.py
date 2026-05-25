# coding: utf-8
#from django.utils.translation import ugettext_lazy as _
#from django.core.urlresolvers import reverse

from grappelli.dashboard import modules, Dashboard
from grappelli.dashboard.utils import get_admin_site_name


class CustomIndexDashboard(Dashboard):

    def init_with_context(self, context):
        site_name = get_admin_site_name(context)

        self.children.append(modules.ModelList(
            u'Product & Portfolio',
            models=('project.*',),
            column=1,
        ))

        self.children.append(modules.ModelList(
            u'Recruitment',
            models=('recruitment_engine.*',),
            column=1,
        ))

        self.children.append(modules.ModelList(
            u'Website Content',
            models=('cms_app.*',),
            column=1,
        ))

        self.children.append(modules.ModelList(
            u'Website Settings',
            models=('cms_engine.*',),
            column=1,
        ))

        self.children.append(modules.ModelList(
            u'Administration',
            models=('django.contrib.*',),
            column=1,
        ))

        self.children.append(modules.RecentActions(
            u'Recent Activity',
            limit=5,
            column=3,
        ))