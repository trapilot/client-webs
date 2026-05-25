
-- Add customer_address field to testimonial table
ALTER TABLE `cms_app_testimonial`
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