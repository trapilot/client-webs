-- =========================================
-- Django Migration → MySQL 8 Conversion
-- Generated on 2026-05-31
-- =========================================

-- 1. RENAME COLUMN
ALTER TABLE cms_engine_site
RENAME COLUMN extra_robots TO robots_extra;

-- 2. DROP FIELD
ALTER TABLE cms_engine_marketingclaim
DROP COLUMN icon;

-- 3. ADD FIELDS

ALTER TABLE cms_engine_branch
ADD COLUMN icon_img VARCHAR(255) NULL;

ALTER TABLE cms_engine_highlight
ADD COLUMN icon_img VARCHAR(255) NULL;

ALTER TABLE cms_engine_socialnetwork
ADD COLUMN icon_img VARCHAR(255) NULL;

ALTER TABLE cms_engine_marketingclaim
ADD COLUMN heading_vi VARCHAR(255) NULL,
ADD COLUMN icon_code VARCHAR(30) NULL,
ADD COLUMN icon_img VARCHAR(255) NULL,
ADD COLUMN icon_svg TEXT NULL,
ADD COLUMN icon_text VARCHAR(150) NULL,
ADD COLUMN subheading_vi VARCHAR(255) NULL;

-- 4. ALTER EXISTING FIELDS

ALTER TABLE cms_engine_banner
MODIFY COLUMN image_vi VARCHAR(255) NULL;

ALTER TABLE cms_engine_landing
MODIFY COLUMN backgroud_footer VARCHAR(255) NULL,
MODIFY COLUMN backgroud_header VARCHAR(255) NOT NULL,
MODIFY COLUMN logo VARCHAR(255) NULL;

ALTER TABLE cms_engine_license
MODIFY COLUMN logo VARCHAR(255) NULL;

ALTER TABLE cms_engine_marketingclaim
MODIFY COLUMN is_active TINYINT(1) NULL DEFAULT 1;

ALTER TABLE cms_engine_page
MODIFY COLUMN icon VARCHAR(255) NULL;

ALTER TABLE cms_engine_site
MODIFY COLUMN image404 VARCHAR(255) NULL,
MODIFY COLUMN imageFavicon VARCHAR(255) NULL,
MODIFY COLUMN imageLogo VARCHAR(255) NULL,
MODIFY COLUMN language_type INT NOT NULL DEFAULT 0;

-- 5. DELETE TABLE
DROP TABLE IF EXISTS cms_engine_topfeature;