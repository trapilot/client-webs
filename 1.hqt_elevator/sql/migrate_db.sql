CREATE TABLE newsletter_engine_emaillog (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    status VARCHAR(20) NOT NULL,
    provider_message_id VARCHAR(255) NULL,
    note VARCHAR(3000) NULL,
    opened_at DATETIME NULL,
    open_count INT UNSIGNED NOT NULL DEFAULT 0,
    sent_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    campaign_id BIGINT UNSIGNED NOT NULL,
    subscription_id BIGINT UNSIGNED NOT NULL,

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