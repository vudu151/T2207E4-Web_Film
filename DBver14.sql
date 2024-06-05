CREATE TABLE `movies` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`total_episode` INT,
	`poster` VARCHAR(255),
	`release` DATE,
	`total_duration` INT,
	`mmpa_rating` VARCHAR(255),
	`keywords` VARCHAR(255),
	`description` TEXT(65535),
	`totalview` INT,
	`level` SMALLINT,
	`create_at` DATETIME,
	`category_movie_id` BINARY(16),
	`budget` DECIMAL(12,6),
	`grossing` DECIMAL(12,6),
	`status` BOOLEAN DEFAULT true,
	PRIMARY KEY(`id`)
);

CREATE TABLE `roles` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `accounts` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`username` VARCHAR(255) UNIQUE,
	`password` VARCHAR(255),
	`fullname` VARCHAR(255),
	`address` VARCHAR(255),
	`gender` BOOLEAN,
	`email` VARCHAR(255) UNIQUE,
	`google_id` VARCHAR(255),
	`avatar` VARCHAR(255),
	`level` SMALLINT DEFAULT 0,
	`email_confirm` BOOLEAN,
	`account_status_id` INT,
	`account_online_id` INT,
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `celebrity` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`birthday` DATE,
	`country` VARCHAR(255),
	`bio` TEXT(65535),
	`poster` VARCHAR(255),
	`status` BOOLEAN DEFAULT true,
	PRIMARY KEY(`id`)
);

CREATE TABLE `casting` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`movie_id` BINARY(16),
	`celebrity_id` BINARY(16),
	`job_id` BINARY(16) NOT NULL,
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `reviews` (
	`account_id` BINARY(16) NOT NULL,
	`id` BINARY(16) NOT NULL UNIQUE,
	`star` INT,
	`comment` TEXT(65535),
	`created_at` DATETIME,
	`title` VARCHAR(255),
	`movie_id` BINARY(16),
	`status` BOOLEAN DEFAULT true,
	PRIMARY KEY(`id`)
);

CREATE TABLE `genres` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`slug` VARCHAR(255),
	`status` BOOLEAN DEFAULT true,
	PRIMARY KEY(`id`)
);

CREATE TABLE `images_celebrity` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`link` VARCHAR(255),
	`celebrity_id` BINARY(16),
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `movies_genres` (
	`genres_id` BINARY(16) NOT NULL,
	`id` BINARY(16) NOT NULL UNIQUE,
	`movie_id` BINARY(16) NOT NULL,
	PRIMARY KEY(`id`)
);

CREATE TABLE `episodes` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`link` VARCHAR(255),
	`description` TEXT(65535),
	`movie_id` BINARY(16) NOT NULL,
	`duration` DATETIME,
	`file_size` INT,
	`license_price` DECIMAL(12,6),
	`license_start` DATETIME,
	`license_end` DATETIME,
	`tax` DECIMAL(12,6),
	`status` BOOLEAN DEFAULT true,
	PRIMARY KEY(`id`)
);

CREATE TABLE `favourites` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`movie_id` BINARY(16) NOT NULL,
	`accounts_id` BINARY(16) NOT NULL,
	`favourite_at` DATETIME,
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `news` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`created_at` DATETIME,
	`tag` VARCHAR(255),
	`description` TEXT(65535),
	`status` BOOLEAN DEFAULT true,
	PRIMARY KEY(`id`)
);

CREATE TABLE `category` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `categories_news` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`category_id` BINARY(16) NOT NULL,
	`news_id` BINARY(16) NOT NULL,
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `favorite_genres` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`accounts_id` BINARY(16) NOT NULL,
	`genres_id` BINARY(16) NOT NULL,
	`favorites_at` DATETIME,
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `job` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`roles_name` VARCHAR(255),
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `images_movies` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`link` VARCHAR(255),
	`movies_id` BINARY(16),
	`status` BOOLEAN DEFAULT true,
	PRIMARY KEY(`id`)
);


CREATE INDEX `movies_id_index`
ON `images_movies` (`movies_id`);
CREATE TABLE `helps` (
	`id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`question` TEXT(65535),
	`answer` TEXT(65535),
	`status` BOOLEAN DEFAULT true,
	PRIMARY KEY(`id`)
);

CREATE TABLE `payments` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`account_id` BINARY(16) NOT NULL UNIQUE,
	`created_at` DATETIME,
	`total_price` DECIMAL(12,4),
	`creditcard_type` VARCHAR(255),
	`creditcard_number` VARCHAR(255),
	`email_sended` BOOLEAN,
	`package_id` INT NOT NULL,
	`status` BOOLEAN DEFAULT true,
	PRIMARY KEY(`id`)
);

CREATE TABLE `account_role` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`accounts_id` BINARY(16) NOT NULL,
	`role_id` BINARY(16) NOT NULL,
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `celebrity_job` (
	`id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`celebrity_id` BINARY(16),
	`job_id` BINARY(16),
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `watch_movie_status` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`account_id` BINARY(16),
	`view_status` BINARY(16),
	`watch_status_id` INT NOT NULL,
	`movie_id` BINARY(16),
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `view_status` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`watch_duration` DATETIME,
	`date_stop_watch` DATETIME,
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `package` (
	`id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`package_name` VARCHAR(255),
	`price` DECIMAL(12,6),
	`level` SMALLINT CHECK(4),
	`description` TEXT(65535),
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `watch_status` (
	`id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`name` VARCHAR(255),
	`color` VARCHAR(255),
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `account_status` (
	`id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`name` VARCHAR(255),
	`change_at` DATETIME,
	`color` VARCHAR(255),
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `account_online` (
	`id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`status_name` VARCHAR(255),
	`online_offline_at` DATETIME,
	`color` VARCHAR(255),
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE ` distributors` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`distributors_name` VARCHAR(255),
	`company_type_id` INT,
	`tax_number` VARCHAR(255),
	`country` VARCHAR(255),
	`headquarters` VARCHAR(255),
	`email` VARCHAR(255),
	`phone` VARCHAR(255),
	`credit_card_type` VARCHAR(255),
	`creditcard_number` VARCHAR(255),
	`representor_id` BINARY(16),
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `movie_distributors` (
	`id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`movies_id` BINARY(16),
	`distributors` BINARY(16),
	PRIMARY KEY(`id`)
);

CREATE TABLE `representor` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`citizen identification` VARCHAR(255),
	`gender` BOOLEAN,
	`zip_code` INT,
	`credit_card_type` VARCHAR(255),
	`credit_card_number` VARCHAR(255),
	`email` VARCHAR(255),
	`phone` VARCHAR(255),
	`country` VARCHAR(255),
	`address` VARCHAR(255),
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `representor_distributor` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`representor_id` BINARY(16),
	`distributor_id` BINARY(16),
	PRIMARY KEY(`id`)
);

CREATE TABLE `company_type` (
	`id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`name` VARCHAR(255),
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `license_payment` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`total_price` DECIMAL(12,6),
	`credit_card_number` VARCHAR(255),
	`pay_at` DATETIME,
	`credit_card_type` VARCHAR(255),
	`accounts_id` BINARY(1),
	`distributors_id` BINARY(16),
	`representor_id` BINARY(16),
	`movies_id` BINARY(16),
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `category_movie` (
	`id` BINARY(1) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`slug` VARCHAR(255),
	`status` BOOLEAN,
	PRIMARY KEY(`id`)
);

ALTER TABLE `images_movies`
ADD FOREIGN KEY(`movies_id`) REFERENCES `movies`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `casting`
ADD FOREIGN KEY(`movie_id`) REFERENCES `movies`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `favorite_genres`
ADD FOREIGN KEY(`accounts_id`) REFERENCES `accounts`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `favorite_genres`
ADD FOREIGN KEY(`genres_id`) REFERENCES `genres`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `categories_news`
ADD FOREIGN KEY(`category_id`) REFERENCES `category`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `categories_news`
ADD FOREIGN KEY(`news_id`) REFERENCES `news`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `movies_genres`
ADD FOREIGN KEY(`movie_id`) REFERENCES `movies`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `movies_genres`
ADD FOREIGN KEY(`genres_id`) REFERENCES `genres`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `favourites`
ADD FOREIGN KEY(`accounts_id`) REFERENCES `accounts`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `favourites`
ADD FOREIGN KEY(`movie_id`) REFERENCES `movies`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `reviews`
ADD FOREIGN KEY(`account_id`) REFERENCES `accounts`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `payments`
ADD FOREIGN KEY(`account_id`) REFERENCES `accounts`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `account_role`
ADD FOREIGN KEY(`role_id`) REFERENCES `roles`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `account_role`
ADD FOREIGN KEY(`accounts_id`) REFERENCES `accounts`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `episodes`
ADD FOREIGN KEY(`movie_id`) REFERENCES `movies`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `celebrity_job`
ADD FOREIGN KEY(`celebrity_id`) REFERENCES `celebrity`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `celebrity_job`
ADD FOREIGN KEY(`job_id`) REFERENCES `job`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `casting`
ADD FOREIGN KEY(`celebrity_id`) REFERENCES `celebrity`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `watch_movie_status`
ADD FOREIGN KEY(`account_id`) REFERENCES `accounts`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `watch_movie_status`
ADD FOREIGN KEY(`movie_id`) REFERENCES `movies`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `images_celebrity`
ADD FOREIGN KEY(`celebrity_id`) REFERENCES `celebrity`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `payments`
ADD FOREIGN KEY(`package_id`) REFERENCES `package`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `watch_movie_status`
ADD FOREIGN KEY(`watch_status_id`) REFERENCES `watch_status`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `casting`
ADD FOREIGN KEY(`job_id`) REFERENCES `job`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `accounts`
ADD FOREIGN KEY(`account_status_id`) REFERENCES `account_status`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `reviews`
ADD FOREIGN KEY(`movie_id`) REFERENCES `movies`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `watch_movie_status`
ADD FOREIGN KEY(`view_status`) REFERENCES `view_status`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `accounts`
ADD FOREIGN KEY(`account_online_id`) REFERENCES `account_online`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `movie_distributors`
ADD FOREIGN KEY(`movies_id`) REFERENCES `movies`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `movie_distributors`
ADD FOREIGN KEY(`distributors`) REFERENCES ` distributors`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `representor_distributor`
ADD FOREIGN KEY(`representor_id`) REFERENCES `representor`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `representor_distributor`
ADD FOREIGN KEY(`distributor_id`) REFERENCES ` distributors`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `license_payment`
ADD FOREIGN KEY(`accounts_id`) REFERENCES `accounts`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `license_payment`
ADD FOREIGN KEY(`distributors_id`) REFERENCES ` distributors`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `license_payment`
ADD FOREIGN KEY(`representor_id`) REFERENCES `representor`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `license_payment`
ADD FOREIGN KEY(`movies_id`) REFERENCES `movies`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `movies`
ADD FOREIGN KEY(`category_movie_id`) REFERENCES `category_movie`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE ` distributors`
ADD FOREIGN KEY(`company_type_id`) REFERENCES `company_type`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;