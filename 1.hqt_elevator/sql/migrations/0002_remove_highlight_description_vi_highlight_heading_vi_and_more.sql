ALTER TABLE cms_engine_highlight
ADD COLUMN heading_vi VARCHAR(255) NULL;

ALTER TABLE cms_engine_highlight
ADD COLUMN subheading_vi VARCHAR(255) NULL;

ALTER TABLE cms_engine_banner
MODIFY COLUMN subheading_vi VARCHAR(255) NULL;