from shared_engine.managers import GeneralManager


class PageManager(GeneralManager):
    def is_home(self, **kwargs):
        return self.filter(is_active=True, is_home=True, **kwargs)
    
