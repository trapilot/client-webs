-- =====================================================
-- RENAME TABLE
-- =====================================================

RENAME TABLE cms_engine_project TO cms_engine_site;

-- =====================================================
-- RENAME FOREIGN KEY COLUMNS
-- =====================================================

ALTER TABLE cms_engine_socialnetwork
    RENAME COLUMN project_id TO site_id;

ALTER TABLE cms_engine_branch
    RENAME COLUMN project_id TO site_id;

ALTER TABLE cms_engine_landing
    RENAME COLUMN project_id TO site_id;

ALTER TABLE cms_engine_marketingclaim
    RENAME COLUMN project_id TO site_id;

ALTER TABLE cms_engine_redirection
    RENAME COLUMN project_id TO site_id;

ALTER TABLE cms_engine_highlight
    RENAME COLUMN project_id TO site_id;

ALTER TABLE cms_engine_page
    RENAME COLUMN project_id TO site_id;

ALTER TABLE cms_engine_banner
    RENAME COLUMN project_id TO site_id;

ALTER TABLE cms_engine_operatinghour
    RENAME COLUMN project_id TO site_id;

ALTER TABLE cms_engine_constant
    RENAME COLUMN project_id TO site_id;

ALTER TABLE cms_engine_translation
    RENAME COLUMN project_id TO site_id;

-- =====================================================
-- DROP OLD FOREIGN KEYS
-- (CHECK ACTUAL FK NAMES FIRST)
-- =====================================================

-- Example:
-- ALTER TABLE cms_engine_banner DROP FOREIGN KEY fk_old_banner_project;

-- =====================================================
-- ADD NEW FOREIGN KEYS
-- =====================================================

ALTER TABLE cms_engine_banner
    ADD CONSTRAINT fk_banner_site
    FOREIGN KEY (site_id)
    REFERENCES cms_engine_site(id)
    ON DELETE CASCADE;

ALTER TABLE cms_engine_branch
    ADD CONSTRAINT fk_branch_site
    FOREIGN KEY (site_id)
    REFERENCES cms_engine_site(id)
    ON DELETE CASCADE;

ALTER TABLE cms_engine_page
    ADD CONSTRAINT fk_page_site
    FOREIGN KEY (site_id)
    REFERENCES cms_engine_site(id)
    ON DELETE CASCADE;

ALTER TABLE cms_engine_translation
    ADD CONSTRAINT fk_translation_page
    FOREIGN KEY (page_id)
    REFERENCES cms_engine_page(id)
    ON DELETE CASCADE;

ALTER TABLE cms_engine_banner
    ADD CONSTRAINT fk_banner_page
    FOREIGN KEY (page_id)
    REFERENCES cms_engine_page(id)
    ON DELETE CASCADE;

-- =====================================================
-- OPTIONAL INDEX RENAME
-- =====================================================

-- Nếu cần rename index:
-- ALTER TABLE cms_engine_branch RENAME INDEX old_index TO new_index;



-- =====================================================
-- RENAME FK COLUMNS
-- =====================================================

ALTER TABLE cms_app_article
    RENAME COLUMN project_id TO site_id;

ALTER TABLE cms_app_category
    RENAME COLUMN project_id TO site_id;

ALTER TABLE cms_app_faq
    RENAME COLUMN project_id TO site_id;

ALTER TABLE cms_app_inquiry
    RENAME COLUMN project_id TO site_id;

ALTER TABLE cms_app_partner
    RENAME COLUMN project_id TO site_id;

ALTER TABLE cms_app_tag
    RENAME COLUMN project_id TO site_id;

ALTER TABLE cms_app_testimonial
    RENAME COLUMN project_id TO site_id;

-- =====================================================
-- DROP OLD FOREIGN KEYS
-- (CHECK REAL FK NAMES FIRST)
-- =====================================================

-- Example:
-- ALTER TABLE cms_app_article DROP FOREIGN KEY cms_app_article_project_id_fk;

-- =====================================================
-- ADD NEW FOREIGN KEYS
-- =====================================================

ALTER TABLE cms_app_article
    ADD CONSTRAINT fk_article_site
    FOREIGN KEY (site_id)
    REFERENCES cms_engine_site(id)
    ON DELETE CASCADE;

ALTER TABLE cms_app_category
    ADD CONSTRAINT fk_category_site
    FOREIGN KEY (site_id)
    REFERENCES cms_engine_site(id)
    ON DELETE CASCADE;

ALTER TABLE cms_app_faq
    ADD CONSTRAINT fk_faq_site
    FOREIGN KEY (site_id)
    REFERENCES cms_engine_site(id)
    ON DELETE CASCADE;

ALTER TABLE cms_app_inquiry
    ADD CONSTRAINT fk_inquiry_site
    FOREIGN KEY (site_id)
    REFERENCES cms_engine_site(id)
    ON DELETE CASCADE;

ALTER TABLE cms_app_partner
    ADD CONSTRAINT fk_partner_site
    FOREIGN KEY (site_id)
    REFERENCES cms_engine_site(id)
    ON DELETE CASCADE;

ALTER TABLE cms_app_tag
    ADD CONSTRAINT fk_tag_site
    FOREIGN KEY (site_id)
    REFERENCES cms_engine_site(id)
    ON DELETE CASCADE;

ALTER TABLE cms_app_testimonial
    ADD CONSTRAINT fk_testimonial_site
    FOREIGN KEY (site_id)
    REFERENCES cms_engine_site(id)
    ON DELETE CASCADE;

-- =====================================================
-- CATEGORY.PAGE FK
-- =====================================================

-- Drop old FK first if needed
-- ALTER TABLE cms_app_category DROP FOREIGN KEY fk_old_category_page;

ALTER TABLE cms_app_category
    ADD CONSTRAINT fk_category_page
    FOREIGN KEY (page_id)
    REFERENCES cms_engine_page(id)
    ON DELETE CASCADE;

-- =====================================================
-- MANY TO MANY TABLES
-- =====================================================
-- ChainedManyToManyField does NOT create special SQL.
-- Only Django admin/UI behavior changes.
-- Usually NO SQL changes required here.
--
-- Existing M2M tables remain unchanged:
-- cms_app_article_categories
-- cms_app_article_tags
--
-- Unless Django generated new constraints/indexes.



-- =====================================================
-- RENAME COLUMN (preserve data)
-- =====================================================

ALTER TABLE recruitment_engine_department
    RENAME COLUMN project_id TO site_id;

-- =====================================================
-- DROP OLD FOREIGN KEY (CHECK REAL NAME FIRST)
-- =====================================================

-- Example:
-- ALTER TABLE recruitment_engine_department DROP FOREIGN KEY fk_department_project;

-- =====================================================
-- ADD NEW FOREIGN KEY: department.site -> cms_engine.site
-- =====================================================

ALTER TABLE recruitment_engine_department
    ADD CONSTRAINT fk_department_site
    FOREIGN KEY (site_id)
    REFERENCES cms_engine_site(id)
    ON DELETE CASCADE;

-- =====================================================
-- UPDATE CHAINED FOREIGN KEY (branch)
-- =====================================================
-- This is STILL a normal FK in DB terms

-- If column already exists:
-- (no rename needed here unless schema changed elsewhere)

-- Ensure FK constraint is correct:

ALTER TABLE recruitment_engine_department
    ADD CONSTRAINT fk_department_branch
    FOREIGN KEY (branch_id)
    REFERENCES cms_engine_branch(id)
    ON DELETE CASCADE;



    