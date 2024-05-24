CREATE TABLE `movies` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`total_episode` INT,
	`poster` VARCHAR(255),
	`release` DATE,
	`run_time` INT,
	`mmpa_rating` VARCHAR(255),
	`keywords` VARCHAR(255),
	`description` TEXT(65535),
	`view` INT,
	`level` SMALLINT,
	`status` SMALLINT DEFAULT 1,
	`categories_movies_id` BINARY(16),
	`create_at` DATETIME,
	`movie_or_series` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `roles` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
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
	`remember` VARCHAR(255),
	`avatar` VARCHAR(255),
	`level` SMALLINT DEFAULT 0,
	PRIMARY KEY(`id`)
);

CREATE TABLE `celebrity` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`birthday` DATE,
	`country` VARCHAR(255),
	`keywords` VARCHAR(255),
	`bio` TEXT(65535),
	`poster` VARCHAR(255),
	`status` SMALLINT DEFAULT 1,
	PRIMARY KEY(`id`)
);

CREATE TABLE `movies_celebrity` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`movie_id` BINARY(16),
	`celebrity_id` BINARY(16),
	`job_id` BINARY(16),
	PRIMARY KEY(`id`)
);

CREATE TABLE `reviews` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`title` VARCHAR(255),
	`star` INT,
	`comment` TEXT(65535),
	`created_at` DATETIME,
	`movie_id` BINARY(16),
	`account_id` BINARY(16),
	`status` SMALLINT DEFAULT 1,
	PRIMARY KEY(`id`)
);

CREATE TABLE `genres` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`slug` VARCHAR(255),
	`status` INT DEFAULT 1,
	PRIMARY KEY(`id`)
);

CREATE TABLE `images_celebrity` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`link` VARCHAR(255),
	`celebrity_id` BINARY(16),
	PRIMARY KEY(`id`)
);

CREATE TABLE `movies_genres` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`movie_id` BINARY(16),
	`genres_id` BINARY(16),
	PRIMARY KEY(`id`)
);

CREATE TABLE `episodes` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`link` VARCHAR(255),
	`description` TEXT(65535),
	`movie_id` BINARY(16),
	`status` SMALLINT DEFAULT 1,
	PRIMARY KEY(`id`)
);

CREATE TABLE `favourites` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`accounts_id` BINARY(16),
	`movie_id` BINARY(16),
	PRIMARY KEY(`id`)
);

CREATE TABLE `news` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`created_at` DATETIME,
	`tag` VARCHAR(255),
	`description` TEXT(65535),
	`status` SMALLINT DEFAULT 1,
	PRIMARY KEY(`id`)
);

CREATE TABLE `category` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	PRIMARY KEY(`id`)
);

CREATE TABLE `categories_news` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`category_id` BINARY(16),
	`news_id` BINARY(16),
	PRIMARY KEY(`id`)
);

CREATE TABLE `favorite_genres` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`accounts_id` BINARY(16),
	`genres_id` BINARY(16),
	PRIMARY KEY(`id`)
);

CREATE TABLE `job` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`roles_name` VARCHAR(255),
	PRIMARY KEY(`id`)
);

CREATE TABLE `images_movies` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`link` VARCHAR(255),
	`movies_id` BINARY(16),
	`status` SMALLINT DEFAULT 1,
	PRIMARY KEY(`id`)
);


CREATE INDEX `movies_id_index`
ON `images_movies` (`movies_id`);
CREATE TABLE `category_movie` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`slug` VARCHAR(255),
	`status` SMALLINT DEFAULT 1,
	PRIMARY KEY(`id`)
);

CREATE TABLE `helps` (
	`id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`question` TEXT(65535),
	`answer` TEXT(65535),
	`status` SMALLINT DEFAULT 1,
	PRIMARY KEY(`id`)
);

CREATE TABLE `payments` (
	`id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`account_id` BINARY(16),
	`movie_id` BINARY(16),
	`created_at` DATETIME,
	`price` DECIMAL(12,4),
	`creditcard_type` VARCHAR(255),
	`creditcard_number` VARCHAR(255),
	`status` SMALLINT DEFAULT 1,
	PRIMARY KEY(`id`)
);

CREATE TABLE `account_role` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`accounts_id` BINARY(16),
	`role_id` BINARY(16),
	PRIMARY KEY(`id`)
);

CREATE TABLE `celebrity_job` (
	`id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`celebrity_id` BINARY(16),
	`job_id` BINARY(16),
	PRIMARY KEY(`id`)
);

ALTER TABLE `images_movies`
ADD FOREIGN KEY(`movies_id`) REFERENCES `movies`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `movies`
ADD FOREIGN KEY(`categories_movies_id`) REFERENCES `category_movie`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `movies_celebrity`
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
ADD FOREIGN KEY(`movie_id`) REFERENCES `movies`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `reviews`
ADD FOREIGN KEY(`account_id`) REFERENCES `accounts`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `payments`
ADD FOREIGN KEY(`movie_id`) REFERENCES `movies`(`id`)
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
ALTER TABLE `images_celebrity`
ADD FOREIGN KEY(`celebrity_id`) REFERENCES `celebrity`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `movies_celebrity`
ADD FOREIGN KEY(`celebrity_id`) REFERENCES `celebrity`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `movies_celebrity`
ADD FOREIGN KEY(`job_id`) REFERENCES `job`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;


--bỏ movie_id ở payments
ALTER TABLE payments DROP FOREIGN KEY `payments_ibfk_1`;
ALTER TABLE payments DROP COLUMN movie_id;

-- sửa account_id ở payments là unique do mỗi tài khoản chỉ cần trả tiền 1 lần là được(theo yêu cầu của nhóm trưởng)

ALTER IGNORE TABLE `payments` ADD UNIQUE (`account_id`);

