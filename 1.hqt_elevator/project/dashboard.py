# coding: utf-8
from django.utils.translation import gettext_lazy as _

from grappelli.dashboard import modules, Dashboard
from grappelli.dashboard.utils import get_admin_site_name

class CustomIndexDashboard(Dashboard):
    def __init__(self, **kwargs):
        Dashboard.__init__(self, **kwargs)

    def init_with_context(self, context):
        site_name = get_admin_site_name(context)

        self.children.append(modules.Group(
            title=_(u"Application"),
            column=1,
            collapsible=True,
            children=[
                modules.ModelList(
                    _(u'Project Management'),
                    models=('project.*',),
                    column=1,
                ),
                modules.ModelList(
                    _(u'Content Management'),
                    models=('cms_app.*',),
                    column=1,
                ),
                modules.ModelList(
                    _(u'Recruitment Management'),
                    models=('recruitment_engine.*',),
                    column=1,
                ),
            ]
        ))

        self.children.append(modules.ModelList(
            _(u'Settings'),
            models=('cms_engine.*',),
            column=1,
        ))

        self.children.append(modules.ModelList(
            _(u'Administration'),
            models=('django.contrib.*',),
            column=1,
        ))

        self.children.append(modules.RecentActions(
            _(u'Recent Activity'),
            limit=8,
            column=2,
        ))