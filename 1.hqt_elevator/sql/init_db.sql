CREATE DATABASE IF NOT EXISTS hqt_prod CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE USER 'hqt'@'%' IDENTIFIED BY 'change-your-password';

GRANT ALL PRIVILEGES ON hqt_prod.* TO 'hqt'@'%';

FLUSH PRIVILEGES;
