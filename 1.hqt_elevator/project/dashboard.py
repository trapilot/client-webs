from django.utils.translation import gettext_lazy as _

from grappelli.dashboard import modules, Dashboard

from shared_engine.utils.admin import get_sorted_models_of_app

class CustomIndexDashboard(Dashboard):
    def __init__(self, **kwargs):
        Dashboard.__init__(self, **kwargs)

    def init_with_context(self, context):
        # from grappelli.dashboard.utils import get_admin_site_name
        # site_name = get_admin_site_name(context)
        # print(f"site_name: {site_name}")
              
        # from django.apps import apps
        # for m in apps.get_models():
        #     print(m._meta.label_lower, m._meta.model)

        self.children.append(modules.Group(
            title=_(u"Application"),
            column=1,
            collapsible=True,
            children=[
                modules.ModelList(
                    # _(u'Product Management'),
                    models=('project.*',),
                    column=1,
                ),
                modules.ModelList(
                    _(u'Blog Content'),
                    models=get_sorted_models_of_app('blog_engine'),
                    column=1,
                ),
                modules.ModelList(
                    _(u'Website Content'),
                    models=get_sorted_models_of_app('site_engine'),
                    column=1,
                ),
                modules.ModelList(
                    _(u'Maketing'),
                    models=get_sorted_models_of_app('marketing_engine'),
                    column=1,
                ),
                modules.ModelList(
                    _(u'Recruitment'),
                    models=get_sorted_models_of_app('recruitment_engine'),
                    column=1,
                ),
            ]
        ))
        # self.children.append(modules.ModelList(
        #     _(u'Application'),
        #     models=('project.*',),
        #     column=1,
        # ))
        # self.children.append(modules.ModelList(
        #     _(u'Website Content'),
        #     models=get_sorted_models_of_app('site_engine'),
        #     column=1,
        # ))

        # self.children.append(modules.ModelList(
        #     _(u'Maketing'),
        #     models=get_sorted_models_of_app('marketing_engine'),
        #     column=1,
        # ))

        self.children.append(modules.ModelList(
            _(u'Configuration'),
            models=get_sorted_models_of_app('web_engine'),
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