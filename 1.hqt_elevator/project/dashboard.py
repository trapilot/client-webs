# coding: utf-8
from django.utils.translation import gettext_lazy as _

from grappelli.dashboard import modules, Dashboard
from grappelli.dashboard.utils import get_admin_site_name

class CustomIndexDashboard(Dashboard):
    def __init__(self, **kwargs):
        Dashboard.__init__(self, **kwargs)

    def init_with_context(self, context):
        site_name = get_admin_site_name(context)

        self.children.append(modules.ModelList(
            u'Features',
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
            limit=8,
            column=2,
        ))