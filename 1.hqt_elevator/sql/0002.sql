-- Add field is_active to banner
ALTER TABLE `site_engine_banner`
ADD COLUMN `is_active` BOOLEAN NOT NULL DEFAULT TRUE;

-- Alter image_vi
ALTER TABLE `site_engine_banner`
MODIFY COLUMN `image_vi` VARCHAR(100) NULL;

-- Alter status_vi
ALTER TABLE `site_engine_banner`
MODIFY COLUMN `status_vi` BOOLEAN NULL DEFAULT TRUE;

-- Alter video_vi
ALTER TABLE `site_engine_banner`
MODIFY COLUMN `video_vi` VARCHAR(100) NULL;

-- Alter license.logo
ALTER TABLE `site_engine_license`
MODIFY COLUMN `logo` VARCHAR(100) NULL;

-- Alter page.icon
ALTER TABLE `site_engine_page`
MODIFY COLUMN `icon` VARCHAR(100) NULL;

-- Alter testimonial.avatar
ALTER TABLE `site_engine_testimonial`
MODIFY COLUMN `avatar` VARCHAR(100) NOT NULL;

-- Create Form table
CREATE TABLE `site_engine_form` (
    `id` BIGINT AUTO_INCREMENT PRIMARY KEY,

    `type` VARCHAR(30) NOT NULL DEFAULT 'CTA',

    `status_vi` BOOLEAN NULL DEFAULT TRUE,

    `label_vi` VARCHAR(100) NULL,
    `title_vi` VARCHAR(255) NULL,
    `subtitle_vi` VARCHAR(255) NULL,

    `description_vi` LONGTEXT NULL,

    `image_vi` VARCHAR(100) NULL,
    `video_vi` VARCHAR(100) NULL,

    `allow_duplicate` BOOLEAN NOT NULL DEFAULT FALSE,

    `email_notify` VARCHAR(254) NULL,

    `webhook_url` VARCHAR(200) NULL,

    `since_date` DATETIME(6) NULL,
    `until_date` DATETIME(6) NULL,

    `is_active` BOOLEAN NOT NULL DEFAULT TRUE,

    `sorted_as` INT UNSIGNED NOT NULL DEFAULT 0,

    `page_id` BIGINT NOT NULL,

    CONSTRAINT `site_engine_form_page_id_fk`
        FOREIGN KEY (`page_id`)
        REFERENCES `site_engine_page` (`id`)
        ON DELETE CASCADE,

    INDEX `site_engine_form_page_id_idx` (`page_id`),
    INDEX `site_engine_form_type_idx` (`type`),
    INDEX `site_engine_form_is_active_idx` (`is_active`)
) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

-- inquiry.type
ALTER TABLE `marketing_engine_inquiry`
MODIFY COLUMN `type` VARCHAR(30) NULL;