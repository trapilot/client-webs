-- Create Banner table
CREATE TABLE `cms_engine_banner` (
    `id` BIGSERIAL PRIMARY KEY,

    `type` INTEGER NOT NULL,

    `status_vi` INTEGER NOT NULL DEFAULT 1,

    `image_vi` VARCHAR(100),

    `video_vi` VARCHAR(100),

    `title_vi` VARCHAR(255),

    `heading_vi` VARCHAR(255),

    `subheading_vi` TEXT,

    `description_vi` TEXT,

    `button_text_vi` VARCHAR(100),

    `button_link_vi` VARCHAR(255),

    `published_at` TIMESTAMP NULL,

    `unpublished_at` TIMESTAMP NULL,

    `sorted_as` INTEGER NOT NULL DEFAULT 0,

    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    `page_id` BIGINT NULL,

    `project_id` BIGINT NULL
);


-- Foreign keys
ALTER TABLE `cms_engine_banner`
ADD CONSTRAINT `cms_engine_banner_page_id_fk`
FOREIGN KEY (page_id)
REFERENCES cms_engine_page(id)
ON DELETE CASCADE;

ALTER TABLE cms_engine_banner
ADD CONSTRAINT cms_engine_banner_project_id_fk
FOREIGN KEY (project_id)
REFERENCES cms_engine_project(id)
ON DELETE CASCADE;


-- Indexes
CREATE INDEX cms_engine_banner_page_id_idx
ON cms_engine_banner(page_id);

CREATE INDEX cms_engine_banner_project_id_idx
ON cms_engine_banner(project_id);

CREATE INDEX cms_engine_banner_status_vi_idx
ON cms_engine_banner(status_vi);

CREATE INDEX cms_engine_banner_type_idx
ON cms_engine_banner(type);

CREATE INDEX cms_engine_banner_sorted_as_idx
ON cms_engine_banner(sorted_as);

ALTER TABLE `cms_engine_testimonial`
ADD COLUMN `customer_address` VARCHAR(200) NULL AFTER `customer_image`;