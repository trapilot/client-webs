CREATE TABLE `cms_engine_testimonial` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,

    `site_id` BIGINT NOT NULL,
    `page_id` BIGINT NULL,

    `customer_name_vi` VARCHAR(200) NOT NULL,
    `customer_title_vi` VARCHAR(200) NULL,
    `customer_address_vi` VARCHAR(200) NULL,
    `company_name_vi` VARCHAR(200) NULL,

    `avatar` VARCHAR(255) NULL,

    `comment_vi` LONGTEXT NOT NULL,

    `rating` SMALLINT UNSIGNED NULL DEFAULT 5,

    `is_active` TINYINT(1) NOT NULL DEFAULT 1,

    `sorted_as` INT UNSIGNED NOT NULL DEFAULT 0,

    `created_at` DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),

    `updated_at` DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
        ON UPDATE CURRENT_TIMESTAMP(6),

    PRIMARY KEY (`id`),

    KEY `idx_engine_testimonial_site_id` (`site_id`),
    KEY `idx_engine_testimonial_page_id` (`page_id`),
    KEY `idx_engine_testimonial_rating` (`rating`),
    KEY `idx_engine_testimonial_sorted_as` (`sorted_as`),

    CONSTRAINT `fk_engine_testimonial_site`
        FOREIGN KEY (`site_id`)
        REFERENCES `cms_engine_site` (`id`)
        ON DELETE CASCADE,

    CONSTRAINT `fk_engine_testimonial_page`
        FOREIGN KEY (`page_id`)
        REFERENCES `cms_engine_page` (`id`)
        ON DELETE CASCADE,

    CONSTRAINT `chk_engine_testimonial_rating`
        CHECK (`rating` BETWEEN 1 AND 5)

) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;