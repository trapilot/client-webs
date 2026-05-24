-- Add pdf column to apps_product table
ALTER TABLE `apps_product`
ADD COLUMN `pdf` VARCHAR(255) NULL DEFAULT NULL AFTER `image`;

-- Create apps_productfaq table
CREATE TABLE `apps_productfaq` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `question` VARCHAR(200) NOT NULL,
    `answer` VARCHAR(200) NULL DEFAULT NULL,
    `icon` VARCHAR(100) NULL DEFAULT NULL,
    `is_active` TINYINT(1) NULL DEFAULT 1,
    `sorted_as` INT NULL DEFAULT 0,
    `product_id` BIGINT NOT NULL,

    PRIMARY KEY (`id`),

    CONSTRAINT `fk_productfaq_product`
        FOREIGN KEY (`product_id`)
        REFERENCES `apps_product` (`id`)
        ON DELETE CASCADE
);

-- Create index for foreign key
CREATE INDEX `idx_productfaq_product_id`
ON `apps_productfaq` (`product_id`);