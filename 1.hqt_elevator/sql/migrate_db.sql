ALTER TABLE `site_engine_page`
    ADD COLUMN `cta_description_vi` LONGTEXT NULL,
    ADD COLUMN `cta_enable_vi` TINYINT(1) NULL DEFAULT 0,
    ADD COLUMN `cta_image_vi` VARCHAR(100) NULL,
    ADD COLUMN `cta_subtitle_vi` VARCHAR(255) NULL,
    ADD COLUMN `cta_title_vi` VARCHAR(255) NULL,
    MODIFY COLUMN `meta_card` VARCHAR(255) NULL,
    MODIFY COLUMN `meta_description_vi` VARCHAR(255) NULL,
    MODIFY COLUMN `meta_image` VARCHAR(255) NULL,
    MODIFY COLUMN `meta_keywords_vi` VARCHAR(255) NULL,
    MODIFY COLUMN `meta_schema` LONGTEXT NULL,
    MODIFY COLUMN `meta_title_vi` VARCHAR(255) NULL,
    MODIFY COLUMN `meta_type` VARCHAR(60) NULL;

DROP TABLE IF EXISTS `site_engine_form`;