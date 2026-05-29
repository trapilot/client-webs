CREATE TABLE `cms_engine_brand` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,

    `site_id` BIGINT NOT NULL,
    `page_id` BIGINT NULL,

    `name` VARCHAR(200) NOT NULL,

    `logo` VARCHAR(255) NULL,

    `website` VARCHAR(500) NULL,

    `address` VARCHAR(255) NULL,

    `sorted_as` INT UNSIGNED NOT NULL DEFAULT 0,

    `is_active` TINYINT(1) NOT NULL DEFAULT 1,

    `created_at` DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),

    `updated_at` DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
        ON UPDATE CURRENT_TIMESTAMP(6),

    PRIMARY KEY (`id`),

    KEY `idx_brand_site_id` (`site_id`),
    KEY `idx_brand_page_id` (`page_id`),
    KEY `idx_brand_sorted_as` (`sorted_as`),
    KEY `idx_brand_name` (`name`),

    CONSTRAINT `fk_brand_site`
        FOREIGN KEY (`site_id`)
        REFERENCES `cms_engine_site` (`id`)
        ON DELETE CASCADE,

    CONSTRAINT `fk_brand_page`
        FOREIGN KEY (`page_id`)
        REFERENCES `cms_engine_page` (`id`)
        ON DELETE CASCADE

) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;


ALTER TABLE `cms_engine_brand`
    ADD COLUMN `color_bg` VARCHAR(150) NULL
        COMMENT 'Background Color',

    ADD COLUMN `color_text` VARCHAR(150) NULL
        COMMENT 'Text Color';