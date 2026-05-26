-- =========================================
-- ALTER TABLE cms_engine_landing
-- =========================================

ALTER TABLE cms_engine_landing
    RENAME COLUMN link_vi TO button_link_vi;

ALTER TABLE cms_engine_landing
    RENAME COLUMN link_text_vi TO button_text_vi;

-- =========================================
-- ALTER TABLE cms_engine_marketingclaim
-- =========================================

ALTER TABLE cms_engine_marketingclaim
    RENAME COLUMN link_vi TO button_link_vi;

ALTER TABLE cms_engine_marketingclaim
    RENAME COLUMN link_text_vi TO button_text_vi;

ALTER TABLE cms_engine_marketingclaim
    DROP COLUMN page_code;

-- =========================================
-- ALTER TABLE cms_engine_branch
-- =========================================

ALTER TABLE cms_engine_branch
    DROP COLUMN icon,
    DROP COLUMN is_default,
    ADD COLUMN icon_code VARCHAR(30) NULL,
    ADD COLUMN icon_svg LONGTEXT NULL,
    ADD COLUMN icon_text VARCHAR(150) NULL,
    ADD COLUMN is_root TINYINT(1) NOT NULL DEFAULT 0;

-- =========================================
-- ALTER TABLE cms_engine_page
-- =========================================

ALTER TABLE cms_engine_page
    ADD COLUMN meta_schema LONGTEXT NULL,
    ADD COLUMN meta_type VARCHAR(60) NULL;

-- =========================================
-- ALTER TABLE cms_engine_socialnetwork
-- =========================================

ALTER TABLE cms_engine_socialnetwork
    DROP COLUMN code,
    DROP COLUMN icon,
    ADD COLUMN icon_code VARCHAR(30) NULL,
    ADD COLUMN icon_svg LONGTEXT NULL,
    ADD COLUMN icon_text VARCHAR(150) NULL;

-- =========================================
-- ALTER TABLE cms_engine_banner
-- =========================================

ALTER TABLE cms_engine_banner
    MODIFY COLUMN button_link_vi VARCHAR(255) NULL;

ALTER TABLE cms_engine_banner
    MODIFY COLUMN type INT NOT NULL;

-- =========================================
-- CREATE TABLE cms_engine_highlight
-- =========================================

CREATE TABLE cms_engine_highlight (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,

    title_vi VARCHAR(255) NULL,
    description_vi LONGTEXT NULL,

    button_text_vi VARCHAR(100) NULL,
    button_link_vi VARCHAR(255) NULL,

    icon_text VARCHAR(150) NULL,
    icon_code VARCHAR(30) NULL,
    icon_svg LONGTEXT NULL,

    is_active TINYINT(1) NULL DEFAULT 1,

    sorted_as INT NOT NULL DEFAULT 0,

    created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),

    updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
        ON UPDATE CURRENT_TIMESTAMP(6),

    page_id BIGINT NULL,
    project_id BIGINT NULL,

    CONSTRAINT fk_highlight_page
        FOREIGN KEY (page_id)
        REFERENCES cms_engine_page(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_highlight_project
        FOREIGN KEY (project_id)
        REFERENCES cms_engine_project(id)
        ON DELETE CASCADE
);

-- =========================================
-- INDEXES
-- =========================================

CREATE INDEX idx_highlight_page_id
    ON cms_engine_highlight(page_id);

CREATE INDEX idx_highlight_project_id
    ON cms_engine_highlight(project_id);

CREATE INDEX idx_highlight_sorted_as
    ON cms_engine_highlight(sorted_as);

CREATE INDEX idx_highlight_is_active
    ON cms_engine_highlight(is_active);

CREATE INDEX idx_highlight_created_at
    ON cms_engine_highlight(created_at);