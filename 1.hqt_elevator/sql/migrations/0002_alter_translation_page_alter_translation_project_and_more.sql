-- Create Banner table
CREATE TABLE `cms_engine_banner` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,

    `type` INT NOT NULL,

    `status_vi` TINYINT(1) NOT NULL DEFAULT 1,

    `image_vi` VARCHAR(100) NULL,

    `video_vi` VARCHAR(100) NULL,

    `title_vi` VARCHAR(255) NULL,

    `heading_vi` VARCHAR(255) NULL,

    `subheading_vi` TEXT NULL,

    `description_vi` TEXT NULL,

    `button_text_vi` VARCHAR(100) NULL,

    `button_link_vi` VARCHAR(255) NULL,

    `published_at` TIMESTAMP NULL DEFAULT NULL,

    `unpublished_at` TIMESTAMP NULL DEFAULT NULL,

    `sorted_as` INT NOT NULL DEFAULT 0,

    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    `page_id` BIGINT UNSIGNED NULL,

    `project_id` BIGINT UNSIGNED NULL,

    PRIMARY KEY (`id`),

    CONSTRAINT `cms_engine_banner_page_id_fk`
        FOREIGN KEY (`page_id`)
        REFERENCES `cms_engine_page` (`id`)
        ON DELETE CASCADE,

    CONSTRAINT `cms_engine_banner_project_id_fk`
        FOREIGN KEY (`project_id`)
        REFERENCES `cms_engine_project` (`id`)
        ON DELETE CASCADE

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



-- Add customer_address field to testimonial table
ALTER TABLE `cms_engine_testimonial`
ADD COLUMN `customer_address` VARCHAR(200) NULL
AFTER `customer_image`;


-- Indexes
CREATE INDEX `cms_engine_banner_page_id_idx`
ON `cms_engine_banner` (`page_id`);

CREATE INDEX `cms_engine_banner_project_id_idx`
ON `cms_engine_banner` (`project_id`);

CREATE INDEX `cms_engine_banner_status_vi_idx`
ON `cms_engine_banner` (`status_vi`);

CREATE INDEX `cms_engine_banner_type_idx`
ON `cms_engine_banner` (`type`);

CREATE INDEX `cms_engine_banner_sorted_as_idx`
ON `cms_engine_banner` (`sorted_as`);