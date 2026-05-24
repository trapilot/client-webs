ALTER TABLE `cms_engine_page`
ADD COLUMN `is_index` BOOL NOT NULL DEFAULT TRUE AFTER `is_active`,
ADD COLUMN `is_follow` BOOL NOT NULL DEFAULT TRUE AFTER `is_index`;