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
	`level` BOOLEAN,
	`status` SMALLINT,
	`categories_movies_id` BINARY(16),
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
	`level` BOOLEAN,
	PRIMARY KEY(`id`)
);

CREATE TABLE `directors` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`birthday` DATE,
	`country` VARCHAR(255),
	`keywords` VARCHAR(255),
	`bio` TEXT(65535),
	`poster` VARCHAR(255),
	PRIMARY KEY(`id`)
);

CREATE TABLE `movies_directors` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`movie_id` BINARY(16),
	`director_id` BINARY(16),
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
	PRIMARY KEY(`id`)
);

CREATE TABLE `genres` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`slug` VARCHAR(255),
	`status` INT,
	PRIMARY KEY(`id`)
);

CREATE TABLE `images_director` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`link` VARCHAR(255),
	`director` BINARY(16),
	PRIMARY KEY(`id`)
);

CREATE TABLE `writers` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`birthday` DATE,
	`country` VARCHAR(255),
	`keywords` VARCHAR(255),
	`bio` TEXT(65535),
	`poster` VARCHAR(255),
	PRIMARY KEY(`id`)
);

CREATE TABLE `movies_writers` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`movie_id` BINARY(16),
	`writer_id` BINARY(16),
	PRIMARY KEY(`id`)
);

CREATE TABLE `actors` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`birthday` DATE,
	`country` VARCHAR(255),
	`keywords` VARCHAR(255),
	`bio` TEXT(65535),
	`poster` VARCHAR(255),
	PRIMARY KEY(`id`)
);

CREATE TABLE `movies_actors` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`movie_id` BINARY(16),
	`actors_id` BINARY(16),
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
	PRIMARY KEY(`id`)
);

CREATE TABLE `favourites` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`account_id` BINARY(16),
	`movie_id` BINARY(16),
	PRIMARY KEY(`id`)
);

CREATE TABLE `news` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`created_at` DATETIME,
	`tag` VARCHAR(255),
	`description` TEXT(65535),
	PRIMARY KEY(`id`)
);

CREATE TABLE `categories` (
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
	`accout_id` BINARY(16),
	`genres_id` BINARY(16),
	PRIMARY KEY(`id`)
);

CREATE TABLE `images_actor` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`link` VARCHAR(255),
	`actor_id` BINARY(16),
	PRIMARY KEY(`id`)
);

CREATE TABLE `images_writer` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`link` VARCHAR(255),
	`writer_id` BINARY(16),
	PRIMARY KEY(`id`)
);

CREATE TABLE `images_movies` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`link` VARCHAR(255),
	`movies_id` BINARY(16),
	PRIMARY KEY(`id`)
);


CREATE INDEX `movies_id_index`
ON `images_movies` (`movies_id`);
CREATE TABLE `category_movie` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`slug` VARCHAR(255),
	`status` SMALLINT,
	PRIMARY KEY(`id`)
);

CREATE TABLE `helps` (
	`id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`question` TEXT(65535),
	`answer` TEXT(65535),
	PRIMARY KEY(`id`)
);

CREATE TABLE `payments` (
	`id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`account_id` BINARY(16),
	`movie_id` BINARY(16),
	`created_at` DATETIME,
	`bank` VARCHAR(255),
	`price` DECIMAL(12,4),
	PRIMARY KEY(`id`)
);

CREATE TABLE `account_role` (
	`id` BINARY(16) NOT NULL UNIQUE,
	`account_id` BINARY(16),
	`role_id` BINARY(16),
	PRIMARY KEY(`id`)
);

ALTER TABLE `images_movies`
ADD FOREIGN KEY(`movies_id`) REFERENCES `movies`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `images_actor`
ADD FOREIGN KEY(`actor_id`) REFERENCES `actors`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `images_writer`
ADD FOREIGN KEY(`writer_id`) REFERENCES `writers`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `images_director`
ADD FOREIGN KEY(`director`) REFERENCES `directors`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `movies`
ADD FOREIGN KEY(`categories_movies_id`) REFERENCES `category_movie`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `movies_actors`
ADD FOREIGN KEY(`actors_id`) REFERENCES `actors`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `movies_directors`
ADD FOREIGN KEY(`director_id`) REFERENCES `directors`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `movies_directors`
ADD FOREIGN KEY(`movie_id`) REFERENCES `movies`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `movies_actors`
ADD FOREIGN KEY(`movie_id`) REFERENCES `movies`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `movies_writers`
ADD FOREIGN KEY(`movie_id`) REFERENCES `movies`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `movies_writers`
ADD FOREIGN KEY(`writer_id`) REFERENCES `writers`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `favorite_genres`
ADD FOREIGN KEY(`accout_id`) REFERENCES `accounts`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `favorite_genres`
ADD FOREIGN KEY(`genres_id`) REFERENCES `genres`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE `categories_news`
ADD FOREIGN KEY(`category_id`) REFERENCES `categories`(`id`)
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
ADD FOREIGN KEY(`account_id`) REFERENCES `accounts`(`id`)
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
ALTER TABLE `episodes`
ADD FOREIGN KEY(`movie_id`) REFERENCES `movies`(`id`)
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
ADD FOREIGN KEY(`account_id`) REFERENCES `accounts`(`id`)
ON UPDATE CASCADE ON DELETE SET NULL;