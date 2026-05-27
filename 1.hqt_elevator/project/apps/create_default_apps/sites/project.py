import os
import re
import time
import random
from datetime import date
from decimal import Decimal

from django.conf import settings
from django.db.models.signals import post_migrate
from django.dispatch import receiver
from django.utils.text import slugify

@receiver(post_migrate)
def create_default_apps(sender, **kwargs):
    from cms_engine.models import Site, Page, Branch, Constant, SocialNetwork, OperatingHour
    from cms_app.models import Category, Tag, Article, Testimonial, Partner, FAQ, FAQAnswer
    from recruitment_engine.models import Department, Job
    from site.apps.models import ProductCategory, Product, ProductFeature, Portfolio, PortfolioCategory

    def is_exists(site):
        return Site.objects.filter(code=site).exists()

    if is_exists(settings.SITE_CODE):
        return

    # sleep to wait another site
    time.sleep(1)

    site = Site.objects.create(
        id=settings.SITE_ID,
        code=settings.SITE_CODE,
        name=re.sub(r'[_-]+', ' ', settings.SITE_CODE),
        type="ECOMMERCE",
        is_ssl=False,
        language_text='vi',
        language_type=0,
        domain_vi='%s' % (settings.SITE_DOMAIN),
        slogan_vi='HQT Elevator - Thương hiệu thang máy gia đình chuẩn Nhật Bản, nâng tầm an toàn, tiện nghi và đẳng cấp cho mọi không gian.',
    )

    Branch.objects.bulk_create([
        Branch(
            site=site,
            name_vi='Vinhomes Ocean Park 3, Xã Nghĩa Trụ, Hưng Yên',
            address_vi='Vịnh Thiên Đường 7 căn 67 Vinhomes Ocean Park 3, Xã Nghĩa Trụ, Hưng Yên',
            description_vi='',
            phone='+84 93 4369133',
            email='thangmayhqt@gmail.com',
            geolat='20.9538792',
            geolng='105.978242',
            geozm='17',
            is_active=True,
            is_root=True,
        ),
    ])

    SocialNetwork.objects.bulk_create([
        SocialNetwork(
            site=site,
            name='Facebook',
            icon_text='f',
            icon_code='fab fa-facebook-f',
            is_active=True,
        ),
        SocialNetwork(
            site=site,
            name='Youtube',
            icon_text='▶',
            icon_code='fab fa-youtube',
            is_active=True,
        ),
        SocialNetwork(
            site=site,
            name='Tiktok',
            icon_text='♪',
            icon_code='fab fa-tiktok',
            is_active=True,
        ),
        SocialNetwork(
            site=site,
            name='Zalo',
            icon_text='Z',
            icon_code='fab fa-zalo',
            is_active=True,
        ),
        SocialNetwork(
            site=site,
            name='LinkedIn',
            icon_text='in',
            icon_code='fab fa-linkedin-in',
            is_active=True,
        )
    ])

    Constant.objects.bulk_create([
        Constant(
            site=site,
            name='GOOGLE_TAG_MANAGER',
            type='STR',
            type_value='',
        ),
        Constant(
            site=site,
            name='ENABLE_POPUP_NEWSLETTER',
            type='BOOL',
            type_value='0',
        ),
        Constant(
            site=site,
            name='TEAM_TECH_EMAIL',
            type='STR',
            type_value='thangmayhqt@gmail.com',
        ),
        Constant(
            site=site,
            name='TEAM_TECH_PHONE',
            type='STR',
            type_value='+84 93 4369133',
        ),
        Constant(
            site=site,
            name='TEAM_HR_EMAIL',
            type='STR',
            type_value='thangmayhqt@gmail.com',
        ),
        Constant(
            site=site,
            name='TEAM_HR_PHONE',
            type='STR',
            type_value='+84 93 4369133',
        )
    ])
    
    OperatingHour.objects.bulk_create([
        OperatingHour(
            site=site,
            weekday=1,
            hour_from='08:00:00',
            hour_to='18:00:00',
        ),
        OperatingHour(
            site=site,
            weekday=2,
            hour_from='08:00:00',
            hour_to='18:00:00',
        ),
        OperatingHour(
            site=site,
            weekday=3,
            hour_from='08:00:00',
            hour_to='18:00:00',
        ),
        OperatingHour(
            site=site,
            weekday=4,
            hour_from='08:00:00',
            hour_to='18:00:00',
        ),
        OperatingHour(
            site=site,
            weekday=5,
            hour_from='08:00:00',
            hour_to='18:00:00',
        ),
        OperatingHour(
            site=site,
            weekday=6,
            hour_from='08:00:00',
            hour_to='12:00:00',
        )
    ])
    

    parent_pages = [
        Page(
            site=site,
            code='home',
            is_active=True,
            is_external=False,
            is_home=True,
            is_top_menu=True,
            top_menu_col=1,
            top_menu_row=1,
            is_sub_menu=False,
            sub_menu_col=0,
            sub_menu_row=0,
            view='CmsEngineView.as_view(template_name="default/home.html")',
            context='site.context.default_processors.home',
            meta_type='website',
            url_vi='trang-chu',
            name_vi='Trang Chủ',
            meta_title_vi='Trang Chủ',
            h1_vi='NÂNG TẦM<br />KHÔNG GIAN SỐNG',
            h2_vi='Giải pháp thang máy gia đình cao cấp<br />chuẩn Nhật Bản - An toàn, đẳng cấp,<br />thêm giá trị cho ngôi nhà'
        ),
        Page(
            site=site,
            code='products',
            is_active=True,
            is_external=False,
            is_home=False,
            is_top_menu=True,
            top_menu_col=2,
            top_menu_row=1,
            is_sub_menu=False,
            sub_menu_col=0,
            sub_menu_row=0,
            view='CmsEngineView.as_view(template_name="default/products.html")',
            context='site.context.default_processors.products',
            meta_type='website',
            url_vi='san-pham',
            name_vi='Sản Phẩm',
            meta_title_vi='Sản Phẩm',
            h1_vi='Bộ Sưu Tập Sản Phẩm Thang Máy',
            h2_vi='Khám phá đầy đủ các giải pháp thang máy gia đình và công cộng từ HQT Elevator',
        ),
        Page(
            site=site,
            code='services',
            is_active=False,
            is_external=False,
            is_home=False,
            is_top_menu=False,
            top_menu_col=0,
            top_menu_row=0,
            is_sub_menu=False,
            sub_menu_col=0,
            sub_menu_row=0,
            view='CmsEngineView.as_view(template_name="default/services.html")',
            meta_type='website',
            url_vi='dich-vu',
            name_vi='Dịch Vụ',
            meta_title_vi='Dịch Vụ',
            h1_vi='Dịch Vụ Toàn Diện',
            h2_vi='Từ lắp đặt, bảo dưỡng đến sửa chữa - HQT Elevator luôn sẵn sàng phục vụ 24/7',
        ),
        Page(
            site=site,
            code='portfolios',
            is_active=True,
            is_external=False,
            is_home=False,
            is_top_menu=True,
            top_menu_col=4,
            top_menu_row=1,
            is_sub_menu=False,
            sub_menu_col=0,
            sub_menu_row=0,
            view='CmsEngineView.as_view(template_name="default/portfolios.html")',
            context='site.context.default_processors.portfolios',
            meta_type='website',
            url_vi='du-an',
            name_vi='Dự Án',
            meta_title_vi='Dự Án',
            h1_vi='Dự Án Thực Tế',
            h2_vi='Hàng trăm công trình thành công trên toàn quốc, từ nhà phố đến tòa nhà cao tầng',
        ),
        Page(
            site=site,
            code='solutions',
            is_active=True,
            is_external=False,
            is_home=False,
            is_top_menu=True,
            top_menu_col=5,
            top_menu_row=1,
            is_sub_menu=False,
            sub_menu_row=0,
            sub_menu_col=0,
            view='CmsEngineView.as_view(template_name="default/solutions.html")',
            meta_type='website',
            url_vi='giai-phap',
            name_vi='Giải Pháp',
            meta_title_vi='Giải Pháp',
            h1_vi='Giải Pháp Thang Máy Toàn Diện',
            h2_vi='HQT Elevator cung cấp giải pháp tối ưu cho mọi loại công trình và nhu cầu',
        ),
        Page(
            site=site,
            code='support',
            is_active=True,
            is_external=False,
            is_home=False,
            is_top_menu=True,
            top_menu_col=6,
            top_menu_row=1,
            is_sub_menu=False,
            sub_menu_col=0,
            sub_menu_row=0,
            view='CmsEngineView.as_view(template_name="default/support.html")',
            context='site.context.default_processors.support',
            meta_type='website',
            url_vi='ho-tro',
            name_vi='Hổ Trợ',
            meta_title_vi='Hổ Trợ',
            h1_vi='Trung Tâm Hỗ Trợ',
            h2_vi='Câu trả lời cho tất cả câu hỏi về thang máy và dịch vụ của chúng tôi',
        ),
        Page(
            site=site,
            code='contact',
            is_active=True,
            is_external=False,
            is_home=False,
            is_top_menu=True,
            top_menu_col=7,
            top_menu_row=1,
            is_sub_menu=False,
            sub_menu_col=0,
            sub_menu_row=0,
            view='CmsEngineView.as_view(template_name="default/contact.html")',
            meta_type='website',
            url_vi='lien-he',
            name_vi='Liên Hệ',
            meta_title_vi='Liên Hệ',
            h1_vi='Liên Hệ Với Chúng Tôi',
            h2_vi='Chúng tôi luôn sẵn sàng lắng nghe và hỗ trợ bạn trong mọi nhu cầu',
        ),
        Page(
            site=site,
            code='guide',
            is_active=True,
            is_external=False,
            is_home=False,
            is_top_menu=False,
            top_menu_row=0,
            top_menu_col=0,
            is_sub_menu=True,
            sub_menu_col=2,
            sub_menu_row=1,
            view='CmsEngineView.as_view(template_name="default/guide.html")',
            meta_type='website',
            url_vi='huong-dan-su-dung',
            name_vi='Hướng Dẫn Sử Dụng',
            meta_title_vi='Hướng Dẫn Sử Dụng',
            h1_vi='Hướng Dẫn Sử Dụng Thang Máy',
            h2_vi='Hướng dẫn chi tiết và an toàn sử dụng thang máy HQT Elevator',
        ),
        Page(
            site=site,
            code='guarantee',
            is_active=True,
            is_external=False,
            is_home=False,
            is_top_menu=False,
            top_menu_col=0,
            top_menu_row=0,
            is_sub_menu=True,
            sub_menu_col=2,
            sub_menu_row=2,
            view='CmsEngineView.as_view(template_name="default/guarantee.html")',
            meta_type='website',
            url_vi='bao-hanh',
            name_vi='Bảo Hành',
            meta_title_vi='Bảo Hành',
            h1_vi='Dịch Vụ Sửa Chữa Thang Máy',
            h2_vi='Sửa chữa nhanh chóng, chuyên nghiệp với bảo hành 12 tháng',
        ),
        Page(
            site=site,
            code='maintenance',
            is_active=True,
            is_external=False,
            is_home=False,
            is_top_menu=False,
            top_menu_col=0,
            top_menu_row=0,
            is_sub_menu=True,
            sub_menu_col=2,
            sub_menu_row=3,
            view='CmsEngineView.as_view(template_name="default/maintenance.html")',
            meta_type='website',
            url_vi='bao-duong',
            name_vi='Bảo Dưỡng',
            meta_title_vi='Bảo Dưỡng',
            h1_vi='Bảo Dưỡng Thang Máy',
            h2_vi='Dịch vụ bảo dưỡng định kỳ để đảm bảo thang máy hoạt động an toàn và hiệu quả',
        ),
        Page(
            site=site,
            code='about',
            is_active=True,
            is_external=False,
            is_home=False,
            is_top_menu=False,
            top_menu_col=0,
            top_menu_row=0,
            is_sub_menu=True,
            sub_menu_col=3,
            sub_menu_row=1,
            view='CmsEngineView.as_view(template_name="default/about.html")',
            meta_type='website',
            url_vi='gioi-thieu',
            name_vi='Giới Thiệu',
            meta_title_vi='Giới Thiệu',
            h1_vi='Về HQT Elevator',
            h2_vi='Hơn 20 năm cung cấp giải pháp thang máy chất lượng cao cho khách hàng Việt Nam',
        ),
        Page(
            site=site,
            code='articles',
            is_active=True,
            is_external=False,
            is_home=False,
            is_top_menu=True,
            top_menu_col=3,
            top_menu_row=1,
            is_sub_menu=True,
            sub_menu_col=3,
            sub_menu_row=2,
            view='CmsEngineView.as_view(template_name="default/articles.html")',
            context='site.context.default_processors.articles',
            meta_type='website',
            url_vi='tin-tuc',
            name_vi='Tin Tức',
            meta_title_vi='Tin Tức',
            h1_vi='Tin Tức & Blog',
            h2_vi='Cập nhật thông tin, mẹo sử dụng, và những câu chuyện thành công từ HQT Elevator',
        ),
        Page(
            site=site,
            code='recruitment',
            is_active=True,
            is_external=False,
            is_home=False,
            is_top_menu=False,
            top_menu_col=0,
            top_menu_row=0,
            is_sub_menu=True,
            sub_menu_col=3,
            sub_menu_row=3,
            view='CmsEngineView.as_view(template_name="default/recruitment.html")',
            context='site.context.default_processors.recruitment',
            meta_type='website',
            url_vi='tuyen-dung',
            name_vi='Tuyển Dụng',
            meta_title_vi='Tuyển Dụng',
            h1_vi='Thông Tin Tuyển Dụng',
            h2_vi='Gia nhập đội ngũ kỹ sư & chuyên gia thang máy hàng đầu Việt Nam',
        ),
    ]
    Page.objects.bulk_create(parent_pages)

    parents = {
        p.code: p
        for p in Page.objects.filter(
            site=site,
            code__in=[
                'products',
                'portfolios',
                'articles',
            ]
        )
    }
    child_pages = [
        Page(
            site=site,
            code='category',
            is_active=True,
            is_internal=True,
            view='CmsEngineView.as_view(template_name="default/category.html")',
            context='site.context.default_processors.category',
            meta_type='website',
            url_vi=r'danh-muc/(?P<slug>[-\w]+)',
            name_vi='Danh Mục Sản Phẩm',
            meta_title_vi='{{category.name}}',
            meta_description_vi='{{category.description}}',
        ),
        Page(
            site=site,
            parent=parents['products'],
            code='product',
            is_active=True,
            is_internal=True,
            is_external=False,
            view='CmsEngineView.as_view(template_name="default/product.html")',
            context='site.context.default_processors.product',
            meta_type='website',
            url_vi=r'san-pham/(?P<slug>[-\w]+)',
            name_vi='Sản Phẩm',
            meta_title_vi='{{product.name}}',
            meta_description_vi='{{product.description}}',
        ),
        Page(
            site=site,
            parent=parents['portfolios'],
            code='portfolio',
            is_active=True,
            is_internal=True,
            is_home=False,
            view='CmsEngineView.as_view(template_name="default/portfolio.html")',
            context='site.context.default_processors.portfolio',
            meta_type='website',
            url_vi=r'du-an/(?P<slug>[-\w]+)',
            name_vi='Dự Án',
            meta_title_vi='{{portfolio.name}}',
            meta_description_vi='{{portfolio.description}}',
        ),
        Page(
            site=site,
            parent=parents['articles'],
            code='article',
            is_active=True,
            is_internal=True,
            view='CmsEngineView.as_view(template_name="default/article.html")',
            context='site.context.default_processors.article',
            meta_type='website',
            url_vi=r'tin-tuc/(?P<slug>[-\w]+)',
            name_vi='Tin Tức',
            meta_title_vi='{{article.title}}',
            meta_description_vi='{{article.description}}',
        ),
    ]
    Page.objects.bulk_create(child_pages)

    Category.objects.bulk_create([
        Category(
            site=site,
            code="cam-nang",
            name_vi="Cẩm Nang",
            is_active=True,
            is_featured=True,
        ),
        Category(
            site=site,
            code="kien-thuc",
            name_vi="Kiến Thức",
            is_active=True,
            is_featured=True,
        ),
        Category(
            site=site,
            code="xu-huong",
            name_vi="Xu Hướng",
            is_active=True,
            is_featured=True,
        ),
        Category(
            site=site,
            code="huong-dan",
            name_vi="Hướng Dẫn",
            is_active=True,
            is_featured=True,
        ),
        Category(
            site=site,
            code="cong-nghe",
            name_vi="Công Nghệ",
            is_active=True,
            is_featured=True,
        )
    ])

    Tag.objects.bulk_create([
        Tag(
            site=site,
            code="thang-may",
            name_vi="Thang Máy",
            is_active=True,
        ),
        Tag(
            site=site,
            code="khong-gian",
            name_vi="Không Gian",
            is_active=True,
        ),
        Tag(
            site=site,
            code="an-toan",
            name_vi="An Toàn",
            is_active=True,
        ),
        Tag(
            site=site,
            code="tiet-kiem-dien",
            name_vi="Tiết Kiệm Điện",
            is_active=True,
        )
    ])

    Testimonial.objects.bulk_create([
        Testimonial(
            site=site,
            customer_name="Lê Hoàng Yến",
            customer_title="Kỹ Sư",
            customer_image="",
            content="Giá hơi cao nhưng dùng HQT Elevator thì gia đình rất yên tâm, an toàn và đáng tiền",
            rating=4,
            is_active=True,
            is_featured=True,
        ),
        Testimonial(
            site=site,
            customer_name="Nguyễn Thành Đạt",
            customer_title="Kế Toán",
            customer_image="",
            content="Chi phí hợp lý so với chất lượng, gia đình tôi rất yên tâm khi sử dụng HQT Elevator",
            rating=3,
            is_active=True,
            is_featured=True,
        ),
        Testimonial(
            site=site,
            customer_name="Trương Quốc Cường",
            customer_title="Bác Sỹ",
            customer_image="",
            content="Làm hồ sơ thủ tục và lắp đặt nhanh gọn.",
            rating=4,
            is_active=True,
            is_featured=True, 
        )
    ])
    
    Partner.objects.bulk_create([
        Partner(
            site=site,
            name="Mitsubishi",
            is_active=True,
            is_featured=True,
        ),
        Partner(
            site=site,
            name="Fuji",
            is_active=True,
            is_featured=True,
        ),
        Partner(
            site=site,
            name="Hitachi",
            is_active=True,
            is_featured=True,
        ),
        Partner(
            site=site,
            name="Hyundai",
            is_active=True,
            is_featured=True,
        ),
        Partner(
            site=site,
            name="Thyssenkrupp",
            is_active=True,
            is_featured=True,
        ),
        Partner(
            site=site,
            name="Schneider Electric",
            is_active=True,
            is_featured=True,
        ),
        Partner(
            site=site,
            name="Panasonic",
            is_active=True,
            is_featured=True,
        )
    ])

    faq_data = [
        {
            "question_vi": "Thang máy của HQT có an toàn không?",
            "answer_vi": """
    <p class="text-gray-700">
        Có, thang máy HQT tuân theo tất cả các tiêu chuẩn an toàn quốc tế và Nhật Bản. Chúng tôi có:
    </p>
    <ul class="list-disc list-inside space-y-1 mt-3 text-gray-700 text-sm">
        <li>Hệ thống phanh khẩn cấp 3 lớp</li>
        <li>Cảm biến an toàn toàn diện</li>
        <li>Kiểm định định kỳ bởi cơ quan chức năng</li>
        <li>Bảo hành 5 năm với dịch vụ bảo dưỡng</li>
    </ul>
    """
        },
        {
            "question_vi": "Chi phí lắp đặt một thang máy bao nhiêu?",
            "answer_vi": """
    <p class="text-gray-700 mb-3">
        Chi phí lắp đặt tùy thuộc vào nhiều yếu tố:
    </p>
    <ul class="space-y-2 text-gray-700 text-sm">
        <li><strong>Loại sản phẩm:</strong> Kính tròn, thủy lực, cáp kéo... từ 300 - 800 triệu đồng</li>
        <li><strong>Chiều cao công trình:</strong> Càng cao chi phí càng tăng</li>
        <li><strong>Vị trí địa lý:</strong> Ảnh hưởng vận chuyển và thi công</li>
        <li><strong>Yêu cầu kỹ thuật:</strong> Thiết kế riêng, cabin cao cấp</li>
    </ul>
    <p class="text-gray-700 text-sm mt-3">
        <strong>Chúng tôi cung cấp báo giá miễn phí sau khi khảo sát thực tế.</strong>
    </p>
    """
        },
        {
            "question_vi": "Thang máy tiêu thụ điện bao nhiêu?",
            "answer_vi": """
    <p class="text-gray-700 mb-3">
        Thang máy HQT sử dụng công nghệ tiết kiệm điện:
    </p>
    <ul class="space-y-2 text-gray-700 text-sm">
        <li><strong>Nhà ở thấp tầng:</strong> 100 - 150 kWh/tháng</li>
        <li><strong>Tòa nhà trung tầng:</strong> 400 - 600 kWh/tháng</li>
        <li><strong>Chi phí trung bình:</strong> 300.000 - 500.000 VNĐ/tháng</li>
    </ul>
    <p class="text-gray-700 text-sm mt-3">
        Tích hợp chế độ ECO và hệ thống tái tạo năng lượng.
    </p>
    """
        },
        {
            "question_vi": "Bảo dưỡng định kỳ bao lâu một lần?",
            "answer_vi": """
    <p class="text-gray-700 mb-3">
        Lịch bảo dưỡng tiêu chuẩn:
    </p>
    <ul class="space-y-2 text-gray-700 text-sm">
        <li><strong>Nhà ở:</strong> 1 lần / 3 tháng</li>
        <li><strong>Công trình công cộng:</strong> 2 - 4 lần / tháng</li>
        <li><strong>Miễn phí:</strong> 3 tháng đầu sau lắp đặt</li>
    </ul>
    <p class="text-gray-700 text-sm mt-3">
        Bảo dưỡng định kỳ giúp tăng tuổi thọ và giảm rủi ro vận hành.
    </p>
    """
        },
        {
            "question_vi": "Thang máy bị mắc kẹt phải làm gì?",
            "answer_vi": """
    <p class="text-gray-700 mb-3">
        Nếu gặp sự cố, hãy làm theo các bước:
    </p>
    <ol class="list-decimal list-inside space-y-2 text-gray-700 text-sm">
        <li>Giữ bình tĩnh, không hoảng loạn</li>
        <li>Nhấn nút khẩn cấp trong cabin</li>
        <li>Liên hệ hotline hỗ trợ 24/7</li>
        <li>Chờ đội kỹ thuật đến xử lý (thường &lt; 1 giờ)</li>
    </ol>
    <p class="text-gray-700 text-sm mt-3">
        Hệ thống cứu hộ tự động sẽ kích hoạt nếu mất điện.
    </p>
    """
        },
        {
            "question_vi": "Có thể nâng cấp thang máy cũ không?",
            "answer_vi": """
    <p class="text-gray-700 mb-3">
        Có, chúng tôi cung cấp dịch vụ nâng cấp toàn diện:
    </p>
    <ul class="space-y-2 text-gray-700 text-sm">
        <li>Thay thế motor, bộ điều khiển, cảm biến</li>
        <li>Nâng cấp hệ thống an toàn mới</li>
        <li>Cải tạo cabin và nội thất</li>
        <li>Giảm tiêu thụ điện năng đến 30%</li>
    </ul>
    <p class="text-gray-700 text-sm mt-3">
        <strong>Giải pháp tiết kiệm hơn so với lắp mới hoàn toàn.</strong>
    </p>
    """
        },
        {
            "question_vi": "Thang máy có bảo hành bao lâu?",
            "answer_vi": """
    <p class="text-gray-700 mb-3">
        Chính sách bảo hành:
    </p>
    <ul class="space-y-2 text-gray-700 text-sm">
        <li><strong>Bảo hành thiết bị:</strong> 5 năm</li>
        <li><strong>Hệ thống điều khiển:</strong> 10 năm</li>
        <li><strong>Bảo dưỡng miễn phí:</strong> 2 lần/năm (3 năm đầu)</li>
        <li><strong>Linh kiện:</strong> Thay thế miễn phí nếu lỗi kỹ thuật</li>
    </ul>
    """
        },
        {
            "question_vi": "HQT có chứng chỉ gì?",
            "answer_vi": """
    <p class="text-gray-700 mb-3">
        Các chứng nhận đạt chuẩn quốc tế:
    </p>
    <ul class="space-y-2 text-gray-700 text-sm">
        <li>ISO 9001: Quản lý chất lượng</li>
        <li>ISO 14001: Môi trường</li>
        <li>EN81: Tiêu chuẩn an toàn châu Âu</li>
        <li>Tiêu chuẩn Nhật Bản JIS</li>
    </ul>
    """
        },
    ]
    FAQ.objects.bulk_create([
        FAQ(
            site=site,
            question_vi=data["question_vi"],
            is_active=True,
        )
        for data in faq_data
    ])
    faq_map = {
        faq.question_vi: faq.id
        for faq in FAQ.objects.filter(
            site=site,
            question_vi__in=[x["question_vi"] for x in faq_data]
        )
    }
    FAQAnswer.objects.bulk_create([
        FAQAnswer(
            faq_id=faq_map[item["question_vi"]],
            answer_vi=item["answer_vi"],
        )
        for item in faq_data
    ])

    PortfolioCategory.objects.bulk_create([
        PortfolioCategory(
            code="villa",
            name="Biệt Thự",
            slug="biet-thu",
            description="Thiết kế sang trọng, tầm nhìn 360°, tạo điểm nhấn đẳng cấp cho không gian",
            is_active=True,
        ),
        PortfolioCategory(
            code="hotel",
            name="Khách Sạn",
            slug="khach-san",
            description="Kiểu dáng hiện đại, tối ưu diện tích, phù hợp với nhiều phong cách kiến trúc",
            is_active=True,
        ),
        PortfolioCategory(
            code="showroom",
            name="Showroom",
            slug="showroom",
            description="Kết cấu vững chắc, vận hành êm ái, phù hợp công trình cải tạo hoặc nhà thấp",
            is_active=True,
        ),
        PortfolioCategory(
            code="apartment",
            name="Căn Hộ",
            slug="can-ho",
            description="Giải pháp cho không gian hẹp và cải tạo",
            is_active=True,
        ),
        PortfolioCategory(
            code="townhouse",
            name="Nhà Phố",
            slug="nha-pho",
            description="Mỗi dự án là một câu chuyện về sự tin tưởng và đẳng cấp",
            is_active=True,
        )
    ])
    categories = PortfolioCategory.objects.values_list('id', flat=True)
    Portfolio.objects.bulk_create([
        Portfolio(
            category=PortfolioCategory.objects.get(id=random.choice(categories)),
            name="Vinhomes Grand Park Tower A",
            slug="vinhomes-grand-park-tower-a",
            description="Dự án cung cấp hệ thống thang máy cho khu căn hộ cao cấp tại TP.HCM.",
            content="<p>Triển khai hệ thống thang máy tốc độ cao cho khu căn hộ hiện đại.</p>",
            address="Nguyễn Xiển, TP. Thủ Đức",
            city="Hồ Chí Minh",
            total_elevators=12,
            building_floors=35,
            start_date=date(2023, 1, 15),
            completion_date=date(2024, 6, 20),
            status="completed",
            sorted_as=1,
            is_active=True,
            is_featured=True,
            customer_name="Nguyễn Văn Minh",
            customer_company="Vinhomes",
            meta_title="Dự án Vinhomes Grand Park",
            meta_description="Cung cấp thang máy cho khu căn hộ Vinhomes Grand Park.",
            meta_keywords="thang máy, vinhomes, căn hộ",
        ),
        Portfolio(
            category=PortfolioCategory.objects.get(id=random.choice(categories)),
            name="Bệnh Viện Quốc Tế An Phúc",
            slug="benh-vien-quoc-te-an-phuc",
            description="Hệ thống thang bệnh viện đạt tiêu chuẩn vận hành y tế.",
            content="<p>Lắp đặt thang tải giường bệnh và thang khách cho bệnh viện quốc tế.</p>",
            address="Quận 7",
            city="Hồ Chí Minh",
            total_elevators=8,
            building_floors=15,
            start_date=date(2022, 3, 1),
            completion_date=date(2023, 2, 10),
            status="completed",
            sorted_as=2,
            is_active=True,
            is_featured=True,
            customer_name="Trần Quốc Huy",
            customer_company="An Phúc Healthcare",
            meta_title="Thang Máy Bệnh Viện An Phúc",
            meta_description="Giải pháp thang máy bệnh viện hiện đại.",
            meta_keywords="thang bệnh viện, elevator hospital",
        ),
        Portfolio(
            category=PortfolioCategory.objects.get(id=random.choice(categories)),
            name="Nhà Máy GreenTech Bình Dương",
            slug="nha-may-greentech-binh-duong",
            description="Thang tải hàng công nghiệp tải trọng lớn.",
            content="<p>Triển khai thang tải hàng cho khu sản xuất công nghệ cao.</p>",
            address="KCN VSIP II",
            city="Bình Dương",
            total_elevators=5,
            building_floors=6,
            start_date=date(2024, 1, 10),
            status="ongoing",
            sorted_as=3,
            is_active=True,
            is_featured=False,
            customer_name="Lê Thanh Sơn",
            customer_company="GreenTech Factory",
            meta_title="Nhà Máy GreenTech",
            meta_description="Dự án thang tải hàng công nghiệp.",
            meta_keywords="thang tải hàng, công nghiệp",
        ),
        Portfolio(
            category=PortfolioCategory.objects.get(id=random.choice(categories)),
            name="Trung Tâm Thương Mại Pearl Plaza",
            slug="trung-tam-thuong-mai-pearl-plaza",
            description="Hệ thống thang máy và thang cuốn cho trung tâm thương mại.",
            content="<p>Cung cấp giải pháp di chuyển cho khách hàng trong trung tâm thương mại.</p>",
            address="Bình Thạnh",
            city="Hồ Chí Minh",
            total_elevators=14,
            building_floors=22,
            start_date=date(2021, 5, 5),
            completion_date=date(2022, 8, 15),
            status="completed",
            sorted_as=4,
            is_active=True,
            is_featured=True,
            customer_name="Phạm Anh Tú",
            customer_company="Pearl Retail",
            meta_title="Pearl Plaza Elevator Site",
            meta_description="Hệ thống thang máy thương mại hiện đại.",
            meta_keywords="thang máy thương mại, mall elevator",
        ),
        Portfolio(
            category=PortfolioCategory.objects.get(id=random.choice(categories)),
            name="Trường Đại Học Công Nghệ Việt Nhật",
            slug="truong-dai-hoc-cong-nghe-viet-nhat",
            description="Lắp đặt thang máy cho khu giảng đường và thư viện.",
            content="<p>Đảm bảo khả năng tiếp cận và lưu thông trong khuôn viên trường học.</p>",
            address="Hà Nội",
            city="Hà Nội",
            total_elevators=6,
            building_floors=12,
            start_date=date(2023, 7, 12),
            completion_date=date(2024, 3, 18),
            status="completed",
            sorted_as=5,
            is_active=True,
            is_featured=False,
            customer_name="Ngô Minh Đức",
            customer_company="VJU",
            meta_title="Dự Án Đại Học Việt Nhật",
            meta_description="Hệ thống thang máy giáo dục.",
            meta_keywords="thang máy trường học",
        ),
        Portfolio(
            category=PortfolioCategory.objects.get(id=random.choice(categories)),
            name="UBND Thành Phố Đà Nẵng",
            slug="ubnd-thanh-pho-da-nang",
            description="Nâng cấp hệ thống thang máy cho tòa nhà hành chính.",
            content="<p>Dự án cải tạo và thay mới thang máy cho cơ quan hành chính.</p>",
            address="Hải Châu",
            city="Đà Nẵng",
            total_elevators=4,
            building_floors=10,
            start_date=date(2022, 9, 1),
            completion_date=date(2023, 1, 20),
            status="completed",
            sorted_as=6,
            is_active=True,
            is_featured=False,
            customer_name="Đặng Quốc Nam",
            customer_company="UBND TP Đà Nẵng",
            meta_title="UBND Đà Nẵng Elevator Upgrade",
            meta_description="Nâng cấp hệ thống thang máy hành chính.",
            meta_keywords="government elevator",
        ),
        Portfolio(
            category=PortfolioCategory.objects.get(id=random.choice(categories)),
            name="Khu Căn Hộ Sunrise Riverside",
            slug="khu-can-ho-sunrise-riverside",
            description="Hệ thống thang máy tiết kiệm điện cho khu căn hộ.",
            content="<p>Ứng dụng công nghệ inverter tiết kiệm năng lượng.</p>",
            address="Nhà Bè",
            city="Hồ Chí Minh",
            total_elevators=9,
            building_floors=28,
            start_date=date(2024, 4, 10),
            status="ongoing",
            sorted_as=7,
            is_active=True,
            is_featured=True,
            customer_name="Võ Thành Đạt",
            customer_company="Sunrise Group",
            meta_title="Sunrise Riverside Elevator",
            meta_description="Thang máy căn hộ hiện đại.",
            meta_keywords="residential elevator",
        ),
    ])

    ProductCategory.objects.bulk_create([
        ProductCategory(
            code="TMGD",
            name="Thang Máy Gia Đình",
            slug="thang-may-gia-dinh",
            description="Thiết kế sang trọng, tầm nhìn 360°, tạo điểm nhấn đẳng cấp cho không gian",
            is_active=True,
        ),
        ProductCategory(
            code="TMCC",
            name="Thang Máy Công Cộng",
            slug="thang-may-cong-cong",
            description="Kiểu dáng hiện đại, tối ưu diện tích, phù hợp với nhiều phong cách kiến trúc",
            is_active=True,
        ),
        ProductCategory(
            code="TMTH",
            name="Thang Máy Tải Hàng",
            slug="thang-may-tai-hang",
            description="Kết cấu vững chắc, vận hành êm ái, phù hợp công trình cải tạo hoặc nhà thấp",
            is_active=True,
        ),
        ProductCategory(
        code="TMTL",
            name="Thang Máy Thủy Lực",
            slug="thang-may-thuy-luc",
            description="Giải pháp cho không gian hẹp và cải tạo",
            is_active=True,
        )
    ])

    categories = ProductCategory.objects.values_list('id', flat=True)
    category = ProductCategory.objects.get(
        id=random.choice(categories)
    )
    product = Product.objects.create(
        category=category,

        name='Thang Máy Bệnh Viện An Phúc',
        slug='thang-may-benh-vien-an-phuc',
        code='TM-BV-ANPHUC',

        description='Hệ thống thang máy dành cho bệnh viện đạt tiêu chuẩn vận hành y tế.',
        content='''
            <div class="bg-white rounded-lg shadow-md p-6 space-y-4">
            <h2 class="text-2xl font-bold text-gray-900">
                Lắp đặt hệ thống thang máy bệnh viện tiêu chuẩn quốc tế
            </h2>

            <p class="text-gray-700 leading-relaxed">
                Dự án triển khai hệ thống thang máy đồng bộ cho bệnh viện quốc tế, bao gồm thang tải giường bệnh,
                thang khách và thang dịch vụ kỹ thuật. Tất cả được thiết kế theo tiêu chuẩn an toàn y tế nghiêm ngặt,
                đảm bảo vận hành ổn định 24/7 trong môi trường bệnh viện có mật độ sử dụng cao.
            </p>

            <p class="text-gray-700 leading-relaxed">
                Hệ thống thang tải giường bệnh được tối ưu kích thước cabin, giảm rung lắc và tăng độ êm ái khi di chuyển,
                giúp việc vận chuyển bệnh nhân diễn ra an toàn và nhanh chóng. Song song đó, thang khách được thiết kế
                hiện đại với tốc độ cao, phục vụ tối đa lưu lượng người ra vào tại các khu khám chữa bệnh.
            </p>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mt-4">
                <div class="bg-gray-50 p-4 rounded-lg border">
                    <h3 class="font-semibold text-red-600 mb-2">Hạng mục triển khai</h3>
                    <ul class="space-y-2 text-sm text-gray-700 list-disc list-inside">
                        <li>Thang tải giường bệnh chuyên dụng (bed elevator)</li>
                        <li>Thang khách tốc độ cao cho khu khám bệnh</li>
                        <li>Thang phục vụ nội bộ kỹ thuật</li>
                        <li>Hệ thống điều khiển thông minh tiết kiệm điện</li>
                        <li>Tích hợp cứu hộ tự động khi mất điện</li>
                    </ul>
                </div>

                <div class="bg-gray-50 p-4 rounded-lg border">
                    <h3 class="font-semibold text-red-600 mb-2">Thông số kỹ thuật chính</h3>
                    <ul class="space-y-2 text-sm text-gray-700">
                        <li><span class="font-medium">Tải trọng:</span> 1000kg – 1600kg</li>
                        <li><span class="font-medium">Tốc độ:</span> 1.5 – 2.5 m/s</li>
                        <li><span class="font-medium">Số tầng phục vụ:</span> 10 – 20 tầng</li>
                        <li><span class="font-medium">Cabin:</span> Inox kháng khuẩn chống bám bẩn</li>
                        <li><span class="font-medium">Cửa:</span> Tự động mở trung tâm 2 cánh</li>
                    </ul>
                </div>
            </div>

            <div class="bg-red-50 border-l-4 border-red-500 p-4 rounded">
                <p class="text-sm text-gray-700">
                    <span class="font-semibold text-red-600">Kết quả:</span>
                    Hệ thống giúp tối ưu luồng di chuyển trong bệnh viện, giảm thời gian chờ thang
                    và nâng cao hiệu quả vận hành tổng thể, đặc biệt trong các tình huống khẩn cấp.
                </p>
            </div>
        </div>
        ''',

        capacity=1600,
        speed=Decimal('2.5'),
        height=60,
        power_consumption=18,
        energy_saving=35,
        warranty=5,

        passenger=21,
        number_stops=15,

        material='Inox sọc nhuyễn chống khuẩn',
        door_type=Product.DoorType.AUTOMATIC,

        base_price=3200000000,
        discount_price=2950000000,

        is_active=True,
        is_vip=True,
        is_popular=True,
        is_new=True,
        is_bestseller=True,

        status='published',
        is_featured=True,
        sorted_as=1,

        meta_title='Bệnh Viện Quốc Tế An Phúc',
        meta_description='Hệ thống thang bệnh viện đạt tiêu chuẩn vận hành y tế.',
        meta_keywords='thang máy bệnh viện, thang tải giường bệnh, elevator hospital',
    )

    ProductFeature.objects.bulk_create([
        ProductFeature(
            product=product,
            name='An Toàn Chuẩn Mực',
            value='Hệ thống phanh khẩn cấp 3 lớp, cảm biến an toàn toàn diện',
            icon='fa-solid fa-shield-halved',
            sorted_as=1,
        ),
        ProductFeature(
            product=product,
            name='Tiết Kiệm Điện',
            value='Công nghệ tiết kiệm năng lượng giảm chi phí tới 30%',
            icon='fa-solid fa-bolt',
            sorted_as=2,
        ),
        ProductFeature(
            product=product,
            name='Hoạt Động Êm Ái',
            value='Thiết kế chống rung toàn bộ, hoạt động hoàn toàn lặng',
            icon='fa-solid fa-volume-xmark',
            sorted_as=3,
        ),
        ProductFeature(
            product=product,
            name='Thiết Kế Sang Trọng',
            value='Kính tròn cao cấp tạo không gian sống toàn cảnh',
            icon='fa-solid fa-house',
            sorted_as=4,
        ),
        ProductFeature(
            product=product,
            name='Dễ Bảo Dưỡng',
            value='Linh kiện dễ thay thế, bảo dưỡng đơn giản',
            icon='fa-solid fa-gear',
            sorted_as=5,
        ),
        ProductFeature(
            product=product,
            name='Hỗ Trợ 24/7',
            value='Đội hỗ trợ kỹ thuật sẵn sàng 24/7',
            icon='fa-solid fa-headset',
            sorted_as=6,
        ),
    ])

    branch = Branch.objects.get(
        site=site,
        is_root=True,
    )
    Department.objects.bulk_create([
        Department(
            site=site,
            branch=branch,
            code='engineering_installation',
            title_vi='Kỹ thuật - Lắp đặt',
            is_active=True,
        ),
        Department(
            site=site,
            branch=branch,
            code='business_sales',
            title_vi='Kinh doanh - Bán hàng',
            is_active=True,
        ),
        Department(
            site=site,
            branch=branch,
            code='support_warranty',
            title_vi='CSKH - Bảo hành',
            is_active=True,
        ),
    ])
    departments = {
        d.code: d for d in Department.objects.filter(
            site=site,
            branch=branch
        )
    }
    jobs_data = [
        {
            "department": "engineering_installation",
            "title": "Kỹ Sư Lắp Đặt Thang Máy",
            'salary': '15 - 25 Triệu',
            "summary": "Thi công, lắp đặt hệ thống thang máy tại công trình",
            "type": Job.EmploymentType.FULL_TIME,
            "mode": Job.WorkMode.ONSITE,
            "published_to": "2026-06-30",
        },
        {
            "department": "business_sales",
            "title": "Chuyên Viên Tư Vấn Dự Án (Sales B2B)",
            'salary': 'Lương cơ bản + % Hoa hồng',
            "summary": "Tư vấn giải pháp thang máy cho khách hàng doanh nghiệp",
            "type": Job.EmploymentType.FULL_TIME,
            "mode": Job.WorkMode.ONSITE,
            "published_to": "2026-06-15",
        },
        {
            "department": "support_warranty",
            "title": "Kỹ Thuật Viên Bảo Trì Thang Máy",
            'salary': 'Thỏa thuận',
            "summary": "Bảo trì, xử lý sự cố thang máy theo ca/lưu động",
            "type": Job.EmploymentType.FULL_TIME,
            "mode": Job.WorkMode.ONSITE,
            "published_to": "2026-06-15",
        },
    ]
    jobs = []
    for item in jobs_data:
        jobs.append(
            Job(
                branch=branch,
                department=departments[item["department"]],
                title_vi=item["title"],
                summary_vi=item["summary"],
                type=item["type"],
                published_to=item["published_to"],
                is_active=False,
            )
        )
    Job.objects.bulk_create(jobs)

    categories = list(Category.objects.filter(site=site))
    tags = list(Tag.objects.filter(site=site))
    articles_data = [
        {
            "title": "Giải pháp thang máy an toàn cho công trình hiện đại",
            "summary": "Tổng quan các giải pháp an toàn trong hệ thống thang máy.",
            "content": "Nội dung chi tiết về giải pháp kỹ thuật và an toàn...",
            "author": "Admin",
        },
        {
            "title": "Xu hướng công nghệ thang máy 2026",
            "summary": "Các xu hướng mới trong ngành thang máy.",
            "content": "AI, IoT và hệ thống điều khiển thông minh...",
            "author": "Admin",
        },
        {
            "title": "Bảo trì thang máy đúng chuẩn kỹ thuật",
            "summary": "Quy trình bảo trì giúp tăng tuổi thọ thiết bị.",
            "content": "Các bước bảo trì định kỳ và kiểm tra an toàn...",
            "author": "Admin",
        },
    ]
    articles = []
    for item in articles_data:
        article = Article.objects.create(
            site=site,
            title_vi=item["title"],
            summary_vi=item["summary"],
            content_vi=item["content"],
            slug_vi=slugify(item["title"]),
            author=item["author"],
            is_active=True,
        )
        article.categories.set(random.sample(categories, k=min(len(categories), random.randint(1, 3))))
        article.tags.set(random.sample(tags, k=min(len(tags), random.randint(2, 4))))
        articles.append(article)
