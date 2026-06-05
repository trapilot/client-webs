-- Remove old columns
ALTER TABLE web_engine_landing
    DROP COLUMN published_from,
    DROP COLUMN published_to;

-- Add new columns
ALTER TABLE web_engine_landing
    ADD COLUMN since_date DATETIME NULL,
    ADD COLUMN until_date DATETIME NULL;

-- Alter banner columns
ALTER TABLE web_engine_banner
    MODIFY COLUMN published_at DATETIME NULL;

ALTER TABLE web_engine_banner
    MODIFY COLUMN unpublished_at DATETIME NULL;

ALTER TABLE web_engine_banner
    RENAME COLUMN published_at TO since_date;

ALTER TABLE web_engine_banner
    RENAME COLUMN unpublished_at TO until_date;