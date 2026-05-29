CREATE TABLE `cms_engine_topfeature` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,

    `site_id` BIGINT NOT NULL,

    `title_vi` VARCHAR(255) NULL,
    `heading_vi` VARCHAR(255) NULL,
    `subheading_vi` VARCHAR(255) NULL,

    `icon_text` VARCHAR(150) NULL,

    `icon_code` VARCHAR(30) NULL COMMENT 'https://fontawesome.com/search?o=r&f=brands',

    `icon_svg` LONGTEXT NULL,

    `is_active` TINYINT(1) DEFAULT 1 NULL,

    `sorted_as` INT UNSIGNED NOT NULL DEFAULT 0,

    `created_at` DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),

    `updated_at` DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
        ON UPDATE CURRENT_TIMESTAMP(6),

    PRIMARY KEY (`id`),

    KEY `idx_top_feature_site_id` (`site_id`),
    KEY `idx_top_feature_sorted_as` (`sorted_as`),

    CONSTRAINT `fk_top_feature_site`
        FOREIGN KEY (`site_id`)
        REFERENCES `cms_engine_site` (`id`)
        ON DELETE CASCADE

) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;