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
	`avatar` VARCHAR(255),
	`level` SMALLINT DEFAULT 0,
	PRIMARY KEY(`id`)
);

CREATE TABLE `celebrity` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`birthday` DATE,
	`country` VARCHAR(255),
	`bio` TEXT(65535),
	`poster` VARCHAR(255),
	`status` SMALLINT DEFAULT 1,
	PRIMARY KEY(`id`)
);

CREATE TABLE `casting` (
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
	`account_id` BINARY(16),
	`status` SMALLINT DEFAULT 1,
	`watching_movie_id` BINARY(16),
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
	`file_size` INT,
	`duration` DATETIME,
	PRIMARY KEY(`id`)
);

CREATE TABLE `favourites` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`accounts_id` BINARY(16),
	`movie_id` BINARY(16),
	`favourite_at` DATETIME,
	`status` SMALLINT CHECK(2),
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
	`account_id` BINARY(16) UNIQUE,
	`created_at` DATETIME,
	`total_price` DECIMAL(12,4),
	`creditcard_type` VARCHAR(255),
	`creditcard_number` VARCHAR(255),
	`status` SMALLINT DEFAULT 1,
	`package_id` INT,
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

CREATE TABLE `watching_movie` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`account_id` BINARY(16),
	`movie_id` BINARY(16),
	`already_watch` SMALLINT,
	`watched_duration` DATETIME,
	`watched_at` DATETIME,
	PRIMARY KEY(`id`)
);

CREATE TABLE `movie_view` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`totalview` INT,
	`view_at_time` DATETIME,
	`episode_id` BINARY(16),
	PRIMARY KEY(`id`)
);

CREATE TABLE `package` (
	`id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`level` SMALLINT CHECK(4),
	`price` DECIMAL(12,6),
	`description` TEXT(65535),
	PRIMARY KEY(`id`)
);

ALTER TABLE `images_movies`
ADD FOREIGN KEY(`movies_id`) REFERENCES `movies`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `movies`
ADD FOREIGN KEY(`categories_movies_id`) REFERENCES `category_movie`(`id`)
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
ALTER TABLE `casting`
ADD FOREIGN KEY(`job_id`) REFERENCES `job`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `watching_movie`
ADD FOREIGN KEY(`account_id`) REFERENCES `accounts`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `watching_movie`
ADD FOREIGN KEY(`movie_id`) REFERENCES `movies`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `reviews`
ADD FOREIGN KEY(`watching_movie_id`) REFERENCES `watching_movie`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `images_celebrity`
ADD FOREIGN KEY(`celebrity_id`) REFERENCES `celebrity`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `movie_view`
ADD FOREIGN KEY(`episode_id`) REFERENCES `episodes`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `payments`
ADD FOREIGN KEY(`package_id`) REFERENCES `package`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;