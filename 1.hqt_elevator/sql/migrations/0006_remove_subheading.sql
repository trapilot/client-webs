CREATE TABLE cms_engine_campaign (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,

    code VARCHAR(255) NOT NULL UNIQUE,

    name_vi VARCHAR(255) NULL,

    since_date DATETIME NOT NULL,
    until_date DATETIME NOT NULL,

    is_active TINYINT(1) NOT NULL DEFAULT 1,
    visited_as INT UNSIGNED NOT NULL DEFAULT 0,

    site_id BIGINT NOT NULL,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    INDEX idx_campaign_site (site_id),
    INDEX idx_campaign_dates (since_date, until_date),

    CONSTRAINT fk_campaign_site
        FOREIGN KEY (site_id)
        REFERENCES cms_engine_site(id)
        ON DELETE CASCADE
);


ALTER TABLE cms_engine_landing
ADD COLUMN campaign_id BIGINT NULL,
ADD INDEX idx_landing_campaign (campaign_id),
ADD CONSTRAINT fk_landing_campaign
    FOREIGN KEY (campaign_id)
    REFERENCES cms_engine_campaign(id)
    ON DELETE CASCADE;


ALTER TABLE cms_engine_landing
ADD COLUMN backgroud VARCHAR(255) NULL,
ADD COLUMN description TEXT NULL,
ADD COLUMN heading_vi VARCHAR(100) NULL,
ADD COLUMN slug_vi VARCHAR(255) NOT NULL DEFAULT '',
ADD COLUMN visited_as INT UNSIGNED NOT NULL DEFAULT 0;


ALTER TABLE cms_engine_marketingclaim
ADD COLUMN subtitle_vi VARCHAR(255) NULL;


ALTER TABLE cms_engine_banner
ADD COLUMN subtitle_vi VARCHAR(255) NULL;


ALTER TABLE cms_engine_highlight
ADD COLUMN subtitle_vi VARCHAR(255) NULL;


ALTER TABLE cms_engine_banner
MODIFY button_link_vi VARCHAR(255) NULL,
MODIFY heading_vi VARCHAR(100) NULL;


ALTER TABLE cms_engine_highlight
MODIFY button_link_vi VARCHAR(255) NULL,
MODIFY heading_vi VARCHAR(100) NULL;


ALTER TABLE cms_engine_landing
MODIFY button_link_vi VARCHAR(255) NULL,
MODIFY button_text_vi VARCHAR(100) NULL DEFAULT 'Read more',
MODIFY logo VARCHAR(255) NULL,
MODIFY subtitle_vi VARCHAR(255) NULL,
MODIFY title_vi VARCHAR(255) NULL;


ALTER TABLE cms_engine_marketingclaim
MODIFY button_link_vi VARCHAR(255) NULL,
MODIFY heading_vi VARCHAR(100) NULL,
MODIFY title_vi VARCHAR(255) NULL;