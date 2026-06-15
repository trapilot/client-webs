-- =========================
-- EmailCampaign
-- =========================
CREATE TABLE newsletter_engine_emailcampaign (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    status VARCHAR(20) NOT NULL DEFAULT 'pending',
    name_vi VARCHAR(255) NULL,
    subject_vi VARCHAR(255) NULL,
    html_content_vi LONGTEXT NULL,
    schedule_at DATETIME NULL,
    sent_at DATETIME NULL,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    visited_as INT UNSIGNED NOT NULL DEFAULT 0,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    site_id BIGINT NOT NULL,

    PRIMARY KEY (id),

    KEY newsletter_site_active_idx (site_id, is_active),
    KEY newsletter_schedule_idx (schedule_at),

    CONSTRAINT fk_email_campaign_site
        FOREIGN KEY (site_id)
        REFERENCES site_engine_site(id)
        ON DELETE CASCADE
);

-- =========================
-- Subscription
-- =========================
CREATE TABLE newsletter_engine_subscription (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(254) NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'pending',
    language VARCHAR(10) NOT NULL DEFAULT 'vi',
    confirm_token CHAR(36) NOT NULL,
    unsubscribe_token CHAR(36) NOT NULL,
    subscribed_at DATETIME NULL,
    unsubscribed_at DATETIME NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    site_id BIGINT NOT NULL,

    PRIMARY KEY (id),

    UNIQUE KEY uq_site_email (site_id, email),

    CONSTRAINT fk_subscription_site
        FOREIGN KEY (site_id)
        REFERENCES site_engine_site(id)
        ON DELETE CASCADE
);

-- =========================
-- EmailLog
-- =========================
CREATE TABLE newsletter_engine_emaillog (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    status VARCHAR(20) NOT NULL,
    provider_message_id VARCHAR(255) NULL,
    note VARCHAR(3000) NULL,
    opened_at DATETIME NULL,
    open_count INT UNSIGNED NOT NULL DEFAULT 0,
    sent_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    campaign_id BIGINT NOT NULL,
    subscription_id BIGINT NOT NULL,

    PRIMARY KEY (id),

    UNIQUE KEY uq_campaign_subscription (campaign_id, subscription_id),

    KEY idx_campaign_sent (campaign_id, sent_at),

    CONSTRAINT fk_email_log_campaign
        FOREIGN KEY (campaign_id)
        REFERENCES newsletter_engine_emailcampaign(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_email_log_subscription
        FOREIGN KEY (subscription_id)
        REFERENCES newsletter_engine_subscription(id)
        ON DELETE CASCADE
);