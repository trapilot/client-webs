ALTER TABLE `cms_engine_page`
ADD COLUMN `meta_card` VARCHAR(255) NULL AFTER `meta_keywords_vi`;

ALTER TABLE `cms_engine_page`
ADD COLUMN `meta_image` VARCHAR(255) NULL AFTER `meta_card`;