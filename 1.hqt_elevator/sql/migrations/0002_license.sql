CREATE TABLE cms_engine_license (
    id BIGINT NOT NULL AUTO_INCREMENT,
    
    type VARCHAR(50) NOT NULL DEFAULT 'other',
    
    number VARCHAR(255) NULL,
    link VARCHAR(255) NULL,
    
    logo VARCHAR(255) NULL,
    
    issue_date DATE NULL,
    
    renewal_date DATE NULL,
    
    notes_vi LONGTEXT NULL,
    
    sorted_as INT UNSIGNED NOT NULL DEFAULT 0,
    
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    
    created_at DATETIME(6) NOT NULL,
    updated_at DATETIME(6) NOT NULL,
    
    site_id BIGINT NOT NULL,
    
    PRIMARY KEY (id),
    
    CONSTRAINT fk_license_site
        FOREIGN KEY (site_id)
        REFERENCES cms_engine_site (id)
        ON DELETE CASCADE,
    
    CONSTRAINT unique_site_type
        UNIQUE (site_id, type)
);