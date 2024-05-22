

#
# TABLE STRUCTURE FOR: accounts
#

DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `id` binary(16) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `remember` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `level` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('013bfa02-efc5-36', 'tyreek.yost', 'a3fc7cac6a07b62d02c6217587d1635dd1443057', 'Prof. Lance Dooley', '24621 Smith Glen\nSouth Jailyn, ND 97597-8364', 0, 'hickle.meghan@example.com', 'b', 'consequatur', 'https://loremflickr.com/640/480/', 2);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('283dee89-bec5-3f', 'napoleon61', '2692935f40582d5d7aa124c89527c3a2527be8ca', 'Kiel Bogisich', '8707 Lolita Avenue\nNew Patiencefurt, AR 06681', 0, 'reinger.krystal@example.org', 'i', 'dolor', 'https://loremflickr.com/640/480/', 0);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('46f4ee44-7986-32', 'prince.konopelski', '32450bd4075b0ab4d102f5d803b2b8bbc8b8769c', 'Alyce Haley II', '637 Rippin Ville Apt. 717\nLake Percival, ME 23076', 1, 'emmet.koss@example.net', 'z', 'mollitia', 'https://loremflickr.com/640/480/', 2);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('48c41787-74ef-32', 'wwehner', '634ecdf28e95397f664ff003fd50813a4c630bfa', 'Prof. Javon Doyle I', '11421 Wendell Burgs Suite 492\nPort Barneyborough, OH 19764', 1, 'lori04@example.net', 't', 'iusto', 'https://loremflickr.com/640/480/', 2);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('560a6728-c602-32', 'johnson.olson', '33bf07ebd09fccb4137456d606214cc900e40b78', 'Elias Skiles DDS', '724 Dax Trail Apt. 606\nNew Pierce, AZ 55872-9039', 1, 'dach.alvera@example.net', 'j', 'ducimus', 'https://loremflickr.com/640/480/', 2);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('69d859c4-99c6-36', 'cyril67', '3458f617464fd338fbcc07227b05af490a455212', 'Alice Huels V', '3413 Brekke Orchard\nSouth Terrytown, MS 74125', 0, 'walter.aglae@example.org', 'f', 'aliquid', 'https://loremflickr.com/640/480/', 0);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('832bf622-8369-33', 'ruecker.vladimir', '61ca58abe9751857f3ac4e8efcb893aadde7d8e5', 'Alba Kemmer', '58850 Harber Island Apt. 811\nWest Danika, NH 71411-1170', 0, 'kkiehn@example.org', 'l', 'et', 'https://loremflickr.com/640/480/', 0);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('8a838ac4-1b62-3b', 'tfeest', 'ea676872d3788fddc615951eea90530f2881f679', 'Garfield Cruickshank', '607 Reinger Mountains Suite 002\nLake Darianfurt, AL 72204', 1, 'shanel53@example.org', 't', 'nesciunt', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('966dc883-7ff6-31', 'hudson.christa', '2c31f257e4a9e955f503a7f50fbfc5a58dff6c63', 'Thomas Roob Sr.', '0981 Becker Ridges Suite 659\nNorth Ezekiel, TN 55436-1954', 1, 'alexandra.stanton@example.com', 'q', 'qui', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('9dfc2616-0dd5-3d', 'ugoodwin', 'e8fc0bbf1b95c4c19f8188810dfb4ec1a06022e7', 'Yvette Braun', '64364 Rice Passage\nMichaleville, ID 22344-0994', 0, 'brunolfsdottir@example.net', 'g', 'dolores', 'https://loremflickr.com/640/480/', 2);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('a6acf991-d605-3e', 'glennie72', '7f41303d6554e4a946a4b36c5fafd436d50e3acf', 'Harvey Braun', '95368 Krystina Trafficway Suite 383\nWandaland, AK 66567', 1, 'kaylee30@example.org', 'r', 'id', 'https://loremflickr.com/640/480/', 0);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('aab5b1df-05be-3a', 'ernser.felton', '605ee2688511b6f53b25554e88a7157670adf35d', 'Shyann Ruecker', '23904 Sadye Parkways\nRowanland, NM 80257-1198', 0, 'rylan.torphy@example.com', 'i', 'possimus', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('d3891be3-035a-3e', 'edythe19', '6aa94ea7da13fc5e1ae365f38cf25c004c6fb605', 'Izaiah Blanda V', '461 Kurtis Row\nPourosville, RI 18844', 0, 'aubree60@example.com', 'z', 'sint', 'https://loremflickr.com/640/480/', 0);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('e4fc045b-5fca-34', 'marquardt.katharina', '56a88a2b606bc4d8f6b5af7c676f81a57ea4967d', 'Dr. Noelia Hansen DDS', '89045 Gutkowski Square\nWest Madison, SD 07870-3691', 0, 'jjast@example.org', 'd', 'consequatur', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('fef56f7b-3fe9-3a', 'yortiz', '80dbd57d3b075611338488441c9d422db4405440', 'Jamaal Hamill', '80463 Vicenta Coves Suite 066\nKrisfurt, ND 19412-7684', 0, 'hermann.stark@example.com', 'p', 'saepe', 'https://loremflickr.com/640/480/', 2);

#
# TABLE STRUCTURE FOR: roles
#

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `roles` (`id`, `name`) VALUES ('1740b455-f599-3a', 'est');
INSERT INTO `roles` (`id`, `name`) VALUES ('3d37d71d-f21e-33', 'harum');
INSERT INTO `roles` (`id`, `name`) VALUES ('4c6b1c5e-b7c1-3f', 'quo');
INSERT INTO `roles` (`id`, `name`) VALUES ('60b208da-4163-3e', 'omnis');
INSERT INTO `roles` (`id`, `name`) VALUES ('ae1a6980-c464-3a', 'eius');

#
# TABLE STRUCTURE FOR: account_role
#

DROP TABLE IF EXISTS `account_role`;

CREATE TABLE `account_role` (
  `id` binary(16) NOT NULL,
  `account_id` binary(16) DEFAULT NULL,
  `role_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `role_id` (`role_id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `account_role_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `account_role_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('06b0f61c-4edc-38', '8a838ac4-1b62-3b', '4c6b1c5e-b7c1-3f');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('30e66789-9935-3e', 'fef56f7b-3fe9-3a', 'ae1a6980-c464-3a');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('31237f36-4036-3a', '560a6728-c602-32', 'ae1a6980-c464-3a');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('6674924e-37ac-3b', '9dfc2616-0dd5-3d', 'ae1a6980-c464-3a');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('6c9ff4dc-b432-3d', '46f4ee44-7986-32', '4c6b1c5e-b7c1-3f');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('6e561dc8-76f6-34', '283dee89-bec5-3f', '3d37d71d-f21e-33');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('72729695-8586-32', '48c41787-74ef-32', '60b208da-4163-3e');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('7e20202b-40c7-33', '832bf622-8369-33', '3d37d71d-f21e-33');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('993fbabb-be44-36', 'e4fc045b-5fca-34', '60b208da-4163-3e');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('a88a5d96-4c30-35', 'a6acf991-d605-3e', '1740b455-f599-3a');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('b966ca45-7c5b-32', '966dc883-7ff6-31', '60b208da-4163-3e');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('c357a89d-f716-3f', 'aab5b1df-05be-3a', '3d37d71d-f21e-33');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('cfc860be-ba06-30', '69d859c4-99c6-36', '1740b455-f599-3a');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('e8ac6c80-7552-3d', '013bfa02-efc5-36', '1740b455-f599-3a');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('e9e4a7ae-2f12-3e', 'd3891be3-035a-3e', '4c6b1c5e-b7c1-3f');

#
# TABLE STRUCTURE FOR: actors
#

DROP TABLE IF EXISTS `actors`;

CREATE TABLE `actors` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `bio` mediumtext DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `actors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('0aff5aae-bf8b-35', 'Dr. Cordelia Douglas', '1982-03-31', 'Sudan', 'sint', 'Eveniet quod eum mollitia consectetur. Dolores illo non suscipit optio. Ea at facere eum officiis incidunt consequatur velit quae.', 'https://loremflickr.com/640/480/');
INSERT INTO `actors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('0c12c515-c32b-33', 'Era Breitenberg', '2006-07-07', 'Paraguay', 'aut', 'Accusantium rem est et praesentium veritatis pariatur est harum. Quia qui nihil dignissimos odit voluptas. Eius rerum est sit asperiores dolorem dolor voluptatem ab.', 'https://loremflickr.com/640/480/');
INSERT INTO `actors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('4b50a89d-7820-32', 'Edmond Kirlin Sr.', '2014-09-09', 'Zambia', 'id', 'Eum magni temporibus repudiandae laudantium qui. Ad nobis suscipit deserunt exercitationem provident facilis id. Inventore rerum enim earum nulla dolores.', 'https://loremflickr.com/640/480/');
INSERT INTO `actors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('520c9132-6efe-35', 'Mrs. Delfina Schamberger IV', '2016-10-11', 'Tunisia', 'impedit', 'Error animi consectetur sit officia illo fugiat inventore a. Voluptatem quidem ut omnis id omnis numquam. Ut quibusdam officiis magni voluptatem sapiente numquam est molestias.', 'https://loremflickr.com/640/480/');
INSERT INTO `actors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('5e862b88-df38-30', 'Kathleen Hoppe', '1984-09-08', 'Saint Vincent and the Grenadines', 'est', 'Consequatur dolores molestias nesciunt. Est consequatur debitis recusandae dolore inventore voluptas. Eum eos possimus voluptatem sunt. Quia iusto enim fugiat inventore qui ut.', 'https://loremflickr.com/640/480/');
INSERT INTO `actors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('7a86ed57-eb8f-3c', 'Mrs. River Torp DDS', '2018-12-13', 'Cyprus', 'distinctio', 'Quia suscipit dolor pariatur. Quos voluptas maiores fugit est necessitatibus inventore. Qui porro officiis sed excepturi.', 'https://loremflickr.com/640/480/');
INSERT INTO `actors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('8e9641c7-e00e-39', 'Greyson Gerlach', '1980-10-21', 'Maldives', 'quibusdam', 'Beatae fuga et et minus totam ut modi molestiae. Assumenda laboriosam ipsa porro commodi quas velit quod aspernatur. Voluptatem qui voluptates aut quaerat magni numquam nihil voluptatem.', 'https://loremflickr.com/640/480/');
INSERT INTO `actors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('8ec4a16b-bbf1-39', 'Viva Huel', '2015-12-14', 'Slovakia (Slovak Republic)', 'id', 'Perspiciatis ut aut in est dolor. Dolores assumenda architecto et repellendus aut. Et autem itaque nobis et ut reprehenderit in.', 'https://loremflickr.com/640/480/');
INSERT INTO `actors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('8ee405b7-b6f4-32', 'Verda Shields', '1995-12-08', 'Dominica', 'ad', 'Modi velit eligendi fugit eaque hic consequuntur omnis. Voluptas aut doloremque libero dolor inventore. Et exercitationem aut nulla et nesciunt vel sed. Id aliquam omnis voluptas.', 'https://loremflickr.com/640/480/');
INSERT INTO `actors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('b5fb3c18-1408-37', 'Luis Jacobs', '2022-03-16', 'Northern Mariana Islands', 'eaque', 'Saepe nobis molestiae pariatur. Aut mollitia fugiat magni illo eos. Aliquam iste qui ut quia. Quidem assumenda commodi eos sint iusto et aut. Pariatur doloribus voluptates exercitationem et.', 'https://loremflickr.com/640/480/');
INSERT INTO `actors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('b818a49a-ecb9-3c', 'Neal Sporer Sr.', '1995-07-03', 'Niger', 'temporibus', 'Distinctio omnis laborum harum rerum hic cupiditate. Est vel totam ut voluptatibus. Animi repellat velit suscipit eos aspernatur saepe sed voluptatem.', 'https://loremflickr.com/640/480/');
INSERT INTO `actors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('be306ca5-4213-34', 'Donnell Johnson Sr.', '1989-05-17', 'Norway', 'tempora', 'Quam asperiores est similique eos quo molestias. Et quos recusandae quia omnis quibusdam accusamus. Sed eveniet suscipit ex est non. Sequi ut odit eum nostrum est inventore.', 'https://loremflickr.com/640/480/');
INSERT INTO `actors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('c11d1817-ece3-39', 'Sunny Rutherford', '2011-07-23', 'Libyan Arab Jamahiriya', 'voluptates', 'Corporis qui corporis omnis suscipit in quibusdam voluptas. Sit nemo ducimus rerum omnis voluptatem aut. Sint quo quis expedita voluptates in sit.', 'https://loremflickr.com/640/480/');
INSERT INTO `actors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('e0409d70-8648-38', 'Prof. Yazmin Erdman', '1980-01-12', 'Angola', 'consequatur', 'Optio ratione molestias eius alias aut quia. Quia ipsam dicta non omnis eius. Et odio iusto est dolor quo molestiae. Alias numquam consequatur nulla. Ducimus facilis est at provident tenetur.', 'https://loremflickr.com/640/480/');
INSERT INTO `actors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('fbae5bc2-e42b-33', 'Helene Adams IV', '2000-08-24', 'Paraguay', 'nisi', 'Incidunt hic enim pariatur sit qui sed quo rerum. Facere non ipsum nihil aliquam ut.', 'https://loremflickr.com/640/480/');

#
# TABLE STRUCTURE FOR: writers
#

DROP TABLE IF EXISTS `writers`;

CREATE TABLE `writers` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `bio` mediumtext DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `writers` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('0afe46eb-a38a-3b', 'Jaren McLaughlin', '1992-02-17', 'Benin', 'non', 'Est autem enim nobis corporis asperiores aspernatur et. Esse sed maiores ea temporibus. Quia voluptas similique distinctio modi qui sequi.', 'https://loremflickr.com/640/480/');
INSERT INTO `writers` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('174e735d-1b6e-38', 'Prof. Deja Rosenbaum', '2021-06-03', 'Mauritius', 'assumenda', 'Adipisci aperiam labore reiciendis id. Molestias impedit sed sapiente neque. Sunt qui nulla est sed sequi cupiditate quos. Quae ea rerum cumque tempora.', 'https://loremflickr.com/640/480/');
INSERT INTO `writers` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('269d0e3a-37f8-33', 'Helmer Johnson', '1973-03-17', 'Slovenia', 'cumque', 'Occaecati molestias alias consequuntur repudiandae. Ut sunt consequatur iure qui quibusdam vel. Unde molestiae ex nemo deleniti qui.', 'https://loremflickr.com/640/480/');
INSERT INTO `writers` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('45458cf4-2706-3c', 'Abigail Swaniawski', '2014-12-30', 'Jamaica', 'vero', 'Qui occaecati soluta sed perspiciatis perspiciatis deserunt facilis. Voluptatem repudiandae atque eius architecto eveniet enim fugiat maiores.', 'https://loremflickr.com/640/480/');
INSERT INTO `writers` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('69bbfdc7-ece6-34', 'Jada Mohr', '1992-06-30', 'Bosnia and Herzegovina', 'velit', 'Non ea ut quaerat velit tempore dolorem velit. Est et quibusdam nostrum quis eos magni autem. Dolor autem omnis illo enim quis sint expedita. Non dolor aut nesciunt.', 'https://loremflickr.com/640/480/');
INSERT INTO `writers` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('7452c158-355e-37', 'Pedro West II', '1978-01-17', 'Macedonia', 'voluptatem', 'Commodi harum sed possimus qui et ipsam non. Sit non et quo illum architecto. Corporis inventore veritatis perspiciatis soluta. Qui fugiat sint corporis animi beatae.', 'https://loremflickr.com/640/480/');
INSERT INTO `writers` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('7a69a6f3-455f-37', 'Claudia Hamill', '2022-06-05', 'Madagascar', 'vero', 'Debitis voluptas suscipit quidem animi ut veniam. Non nemo maiores sequi est. Dicta nihil neque et quia.', 'https://loremflickr.com/640/480/');
INSERT INTO `writers` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('82ffb5de-e54e-33', 'Dr. Zackary Goodwin', '1971-03-03', 'Sao Tome and Principe', 'illo', 'Et aut dolorum at voluptas totam quaerat. Eaque architecto maiores facere aliquid eos quas. Tempore est excepturi quo molestiae. Eum harum suscipit quas aut. Quidem saepe voluptatibus molestiae non.', 'https://loremflickr.com/640/480/');
INSERT INTO `writers` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('85769c7e-ee86-35', 'Oswald Bartell', '1996-02-26', 'Papua New Guinea', 'voluptas', 'Iure ipsam corporis voluptas totam ea fugiat. Itaque vitae aliquam sint dolorem nam perspiciatis. Dicta aut nam occaecati sed et.', 'https://loremflickr.com/640/480/');
INSERT INTO `writers` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('8ea9bf43-7f18-31', 'Miss Rosalind Rowe', '1996-04-18', 'Sri Lanka', 'non', 'Molestiae totam dolores sint sit voluptatem vitae dolores. Voluptatibus ducimus molestias corporis totam ut. Nisi occaecati quia est molestias sed.', 'https://loremflickr.com/640/480/');
INSERT INTO `writers` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('93241c9d-b769-38', 'Marvin Brakus', '1991-02-02', 'Vietnam', 'facilis', 'Totam eos quam magnam impedit. Voluptas et molestiae molestiae quaerat repudiandae. Delectus officiis omnis odio recusandae quam qui quia omnis.', 'https://loremflickr.com/640/480/');
INSERT INTO `writers` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('98780f86-7bf2-3f', 'Korbin Altenwerth', '1970-12-12', 'Liechtenstein', 'autem', 'Sed enim sunt est asperiores ullam sed minima. Deserunt dignissimos illum cumque. Ex ad nesciunt aliquam voluptatibus.', 'https://loremflickr.com/640/480/');
INSERT INTO `writers` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('c31f06ef-6d9e-38', 'Melany Schoen III', '2003-12-18', 'Reunion', 'similique', 'Rerum perferendis dicta in recusandae nam quo. Non voluptatem voluptate magni veniam. Reprehenderit facilis voluptates fugiat. Sequi non eius quos velit tenetur.', 'https://loremflickr.com/640/480/');
INSERT INTO `writers` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('d01c5159-194a-39', 'Amiya Murazik MD', '1987-01-13', 'Madagascar', 'quo', 'Reiciendis aut vitae magnam. Ratione quaerat ut possimus aliquid.\nVeniam amet molestias amet numquam. Voluptas in voluptatem hic. Qui molestias magni eum nostrum sit labore.', 'https://loremflickr.com/640/480/');
INSERT INTO `writers` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('ee602899-6ec5-33', 'Lula Greenholt II', '1970-11-24', 'Taiwan', 'dolore', 'Modi autem iusto dolores animi qui expedita voluptatem. Beatae omnis natus iusto qui aut nemo fugit.', 'https://loremflickr.com/640/480/');



#
# TABLE STRUCTURE FOR: categories
#

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `categories` (`id`, `name`) VALUES ('00f1beee-37a5-36', 'omnis');
INSERT INTO `categories` (`id`, `name`) VALUES ('08a6711a-bc21-32', 'eius');
INSERT INTO `categories` (`id`, `name`) VALUES ('213f0cba-1a12-3b', 'sit');
INSERT INTO `categories` (`id`, `name`) VALUES ('380c8c52-6d0d-38', 'id');
INSERT INTO `categories` (`id`, `name`) VALUES ('6e6d5426-dc6d-38', 'voluptatibus');
INSERT INTO `categories` (`id`, `name`) VALUES ('71cfbca3-f0ea-3b', 'omnis');
INSERT INTO `categories` (`id`, `name`) VALUES ('7af42d6e-066d-36', 'maiores');
INSERT INTO `categories` (`id`, `name`) VALUES ('95a8a6e1-35d4-32', 'placeat');
INSERT INTO `categories` (`id`, `name`) VALUES ('bf304a86-0d16-33', 'sed');
INSERT INTO `categories` (`id`, `name`) VALUES ('c5f61db2-67db-39', 'dolores');

#
# TABLE STRUCTURE FOR: news
#

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('1047b82a-c941-3d', 'Fugit eum qui eligendi est.', '1995-05-31 07:45:01', 'reprehenderit', 'Temporibus rerum dolor enim excepturi. Et non sit recusandae cumque. Dolores et asperiores laudantium sapiente.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('173045a3-3f98-3c', 'Accusamus voluptate quia placeat et aut.', '2006-04-07 10:42:50', 'quis', 'Veniam non asperiores rem voluptatem ea error. Aspernatur dignissimos repudiandae fugiat voluptas accusamus. Inventore omnis inventore non dolore rerum vitae earum.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('192905d8-4ab9-3f', 'Rerum repudiandae possimus libero autem fuga harum accusamus.', '1999-12-09 02:55:40', 'consectetur', 'Sed deleniti sint voluptatem minus voluptas qui magni ab. Voluptatum nihil reprehenderit velit dicta voluptatem. Rerum assumenda nam consequatur et saepe rerum eos. Sint doloribus molestiae itaque facere.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('2c9a1260-a4f3-30', 'Quis eum sunt sit tempora occaecati nulla aut.', '1990-04-10 11:06:41', 'suscipit', 'Aut et et et aperiam repellat consequatur vel. Facilis nisi nesciunt officiis accusamus doloribus. Sed delectus deleniti tenetur.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('401504d4-e73d-36', 'Voluptatum architecto excepturi culpa fugiat neque sed.', '2012-09-11 10:17:20', 'eveniet', 'Vel veniam reprehenderit occaecati perspiciatis ut soluta qui in. Tempore est consectetur cupiditate. Quasi cum mollitia ducimus ex. Magni ullam reprehenderit quaerat et et.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('4aa83b34-62d8-38', 'Voluptas et vitae expedita et.', '1978-02-02 04:37:02', 'optio', 'Eveniet perferendis ea laboriosam quo consectetur alias repudiandae. Suscipit distinctio consectetur sit autem veritatis sed. Vel molestias id earum expedita provident. Voluptatibus quaerat omnis possimus sunt provident porro.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('79ce71b8-eb8e-39', 'Quidem earum vel distinctio atque nemo tempore.', '2021-07-21 09:26:03', 'est', 'Officia adipisci fugiat libero delectus occaecati. Est similique rem dolores amet voluptas. Repellat et perferendis nulla suscipit sunt laudantium voluptatem dolorem.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('857a6486-c73c-3a', 'Enim ullam omnis omnis tempore.', '1981-03-10 14:09:53', 'amet', 'Qui tempore nobis inventore consectetur quia labore molestias. Adipisci assumenda et est neque maxime. At eius necessitatibus distinctio reprehenderit aut quibusdam cupiditate. Excepturi repudiandae minima vero omnis qui. Veritatis itaque consequatur nemo illum id recusandae.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('a64e2d95-f2bf-31', 'Voluptas laborum quisquam amet voluptas.', '2001-08-07 06:53:30', 'et', 'Sit culpa asperiores porro rerum. Doloribus sed aliquam officia ut et incidunt. Veritatis rerum eveniet velit aliquam vero nam. Et fugiat ea expedita.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('b61fd0c9-de85-32', 'Beatae aperiam dolor quam placeat deserunt sint.', '1976-12-29 06:41:52', 'aut', 'Assumenda unde aut beatae fugiat distinctio. Ab nostrum exercitationem id. Cumque quidem numquam nihil vel aliquid. Minus molestias reiciendis voluptatem quia aliquid consequuntur sed.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('b7da8962-47c2-3c', 'Numquam qui non sunt quas voluptatem aut officiis.', '1986-11-08 23:39:04', 'beatae', 'Illo quam nulla ea ut quia sint. Non iste eos in accusamus reprehenderit ea. Reprehenderit quia quasi quo quia. Eum dicta eius mollitia sint temporibus velit occaecati.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('cdf99064-f50d-39', 'Ut voluptatem voluptas odit ducimus.', '2014-03-13 14:16:24', 'asperiores', 'Molestiae dolorem nostrum odio sed. Similique nostrum libero ut tempore qui. Similique laboriosam ut deserunt iusto veritatis repudiandae. A omnis neque officia fugit.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('d2a12529-2be4-37', 'Sed earum iste asperiores reprehenderit est eligendi.', '1984-09-05 01:13:52', 'veritatis', 'Ea omnis tempora hic aut deleniti aut ut. Praesentium et blanditiis fugiat mollitia sint. Sed rerum ipsa ut officia error cum.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('d457aa6f-ad1f-33', 'Amet corrupti et inventore rem et mollitia voluptatem.', '1975-06-13 11:00:56', 'ut', 'Commodi et maxime sint vel esse natus. Deserunt quia esse tenetur labore a dolores. Ut et expedita laborum ullam. Deserunt atque quo necessitatibus eum consequuntur.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('d55adb48-0c28-31', 'Quasi consequuntur perspiciatis non saepe.', '2003-10-05 12:47:59', 'in', 'Tempore eligendi perferendis enim. Deserunt et aut voluptas repudiandae ut. Voluptates rem doloribus omnis.');




#
# TABLE STRUCTURE FOR: categories_news
#

DROP TABLE IF EXISTS `categories_news`;

CREATE TABLE `categories_news` (
  `id` binary(16) NOT NULL,
  `category_id` binary(16) DEFAULT NULL,
  `news_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `category_id` (`category_id`),
  KEY `news_id` (`news_id`),
  CONSTRAINT `categories_news_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `categories_news_ibfk_2` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('074c0f5c-8529-3f', 'bf304a86-0d16-33', 'a64e2d95-f2bf-31');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('1f111d72-7835-3c', '7af42d6e-066d-36', '79ce71b8-eb8e-39');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('2c71a0e5-35c1-34', '95a8a6e1-35d4-32', '857a6486-c73c-3a');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('39809dff-5f01-39', '6e6d5426-dc6d-38', '401504d4-e73d-36');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('5d6f8aff-05bd-3f', '213f0cba-1a12-3b', 'd2a12529-2be4-37');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('7bd83a03-133a-3f', '213f0cba-1a12-3b', '192905d8-4ab9-3f');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('81291961-78a2-39', 'c5f61db2-67db-39', 'b61fd0c9-de85-32');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('93701244-cd67-33', '380c8c52-6d0d-38', 'd457aa6f-ad1f-33');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('99f73648-aaf1-38', '6e6d5426-dc6d-38', 'd55adb48-0c28-31');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('b14427e3-2301-3c', '00f1beee-37a5-36', '1047b82a-c941-3d');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('c607956f-5cd0-34', '380c8c52-6d0d-38', '2c9a1260-a4f3-30');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('cf9dd8d4-da33-3c', '08a6711a-bc21-32', 'cdf99064-f50d-39');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('d2b1f724-0f5e-32', '71cfbca3-f0ea-3b', '4aa83b34-62d8-38');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('d3f495c8-bb0e-3d', '00f1beee-37a5-36', 'b7da8962-47c2-3c');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('e8366267-9042-34', '08a6711a-bc21-32', '173045a3-3f98-3c');


#
# TABLE STRUCTURE FOR: category_movie
#

DROP TABLE IF EXISTS `category_movie`;

CREATE TABLE `category_movie` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('06f26e9a-1444-32', 'aspernatur', 'dolor', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('06f66db5-34e5-39', 'aut', 'autem', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('1c7121e2-02ba-38', 'et', 'qui', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('3a2033d1-c183-31', 'et', 'aliquid', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('3ae49f32-957b-34', 'expedita', 'sit', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('6c254338-d17b-34', 'ipsa', 'at', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('7ddd207c-7bf7-37', 'ratione', 'placeat', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('8cd20a8c-9c77-38', 'non', 'harum', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('9e26f8ad-8df5-39', 'accusamus', 'itaque', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('a2e3ffcf-30e8-3b', 'consequuntur', 'atque', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('acd7400e-0b26-31', 'ab', 'eligendi', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('b9580853-4714-31', 'quis', 'eaque', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('bdbc2ec1-cfa0-3c', 'voluptates', 'dolores', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('c89eb400-c35f-30', 'quaerat', 'accusantium', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('fb7eb999-aca1-31', 'dolor', 'commodi', 1);

#
# TABLE STRUCTURE FOR: movies
#

DROP TABLE IF EXISTS `movies`;

CREATE TABLE `movies` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `total_episode` int(11) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `release` date DEFAULT NULL,
  `run_time` int(11) DEFAULT NULL,
  `mmpa_rating` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `level` tinyint(1) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `categories_movies_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `categories_movies_id` (`categories_movies_id`),
  CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`categories_movies_id`) REFERENCES `category_movie` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('0350c7c6-7bb2-35', 'German', 18, 'https://loremflickr.com/640/480/', '1985-05-02', 69, 'm', 'ex', 'Libero inventore libero autem ab ut aut. Eius accusantium quo et optio. Voluptas voluptates reprehenderit et dolorum blanditiis sed necessitatibus. Vitae aut eum nostrum dicta perferendis vel non eius.', 6227, 2, 1, '6c254338-d17b-34');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('0dfb34c4-c08d-32', 'Tobin', 22, 'https://loremflickr.com/640/480/', '1983-10-18', 147, 'q', 'voluptas', 'Error aut rem itaque earum. Molestiae illo ullam aut esse quo quasi. Voluptas excepturi nulla aspernatur autem et est consequuntur.', 7841, 0, 1, '3ae49f32-957b-34');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('1354e79c-6d37-30', 'Jaqueline', 9, 'https://loremflickr.com/640/480/', '1974-04-10', 99, 'z', 'eum', 'Illo accusantium voluptatibus pariatur aut expedita dicta. Ipsum molestiae laborum et a. Voluptatum cumque et saepe autem tenetur asperiores qui.', 3173, 2, 1, '1c7121e2-02ba-38');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('139458ce-8aa4-32', 'Twila', 5, 'https://loremflickr.com/640/480/', '2024-05-11', 53, 'p', 'quod', 'Sunt ex harum sunt voluptatibus inventore sed. Perferendis animi sunt quia et velit vero incidunt. Quaerat animi repudiandae voluptate sapiente minus deserunt.', 6865, 1, 1, '9e26f8ad-8df5-39');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('2290e119-09a7-36', 'Davonte', 9, 'https://loremflickr.com/640/480/', '1983-02-23', 97, 'g', 'inventore', 'Unde optio soluta sint quaerat est praesentium doloremque exercitationem. Cum voluptas veniam ut in dolorem est. Voluptatem non asperiores voluptatem sint.', 7023, 2, 1, 'acd7400e-0b26-31');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('22d88406-f57e-3c', 'Sam', 1, 'https://loremflickr.com/640/480/', '2016-01-22', 118, 'b', 'incidunt', 'Ab repudiandae tempore placeat placeat. Occaecati maxime assumenda eaque in aliquid provident. Veniam exercitationem dolor impedit. Labore sed culpa et porro laudantium voluptas praesentium consectetur.', 2029, 2, 1, 'a2e3ffcf-30e8-3b');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('2969475a-f3ba-3d', 'Annamarie', 23, 'https://loremflickr.com/640/480/', '2011-02-02', 140, 'l', 'amet', 'Beatae aut odio consequatur vel incidunt. Ratione velit quis delectus animi consequatur quaerat. Non iure dolores totam earum voluptas eveniet voluptas. Aut at qui ut magni.', 6347, 0, 1, '8cd20a8c-9c77-38');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('413070eb-a01f-30', 'Colin', 4, 'https://loremflickr.com/640/480/', '1988-08-16', 136, 'n', 'qui', 'Non esse eos quisquam sint. Dolor ut vitae aut quis ut odio. Reiciendis sapiente repudiandae molestiae quia placeat exercitationem quia. Neque architecto possimus illo maxime.', 4127, 0, 1, '06f26e9a-1444-32');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('54fcdf68-2de0-3d', 'Nicolette', 13, 'https://loremflickr.com/640/480/', '2009-08-28', 107, 'o', 'officia', 'Et quos vitae autem voluptate assumenda facilis. Veniam rem tenetur illo iste impedit veniam natus. Corporis dolores saepe quo. Itaque modi ut nemo dolorum excepturi magnam.', 3136, 0, 1, 'fb7eb999-aca1-31');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('886857f5-da40-3d', 'Jack', 2, 'https://loremflickr.com/640/480/', '2023-10-04', 67, 'a', 'corporis', 'Officia harum molestiae quas fugit exercitationem expedita dicta nihil. Nihil alias quibusdam in occaecati voluptatem.', 7397, 2, 1, 'b9580853-4714-31');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('987d2aec-ea8e-3d', 'Easter', 21, 'https://loremflickr.com/640/480/', '2014-07-13', 55, 's', 'quod', 'Accusamus non nobis aliquid. Nemo non doloremque rerum repellendus ea dolores. Aut asperiores et eum dolores.', 9947, 2, 1, 'bdbc2ec1-cfa0-3c');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('a9ff7177-6074-35', 'Arne', 23, 'https://loremflickr.com/640/480/', '1987-06-22', 133, 'y', 'vitae', 'Mollitia sit omnis doloribus qui eveniet amet. Quas sint aliquam magnam autem maiores assumenda exercitationem. Sed quo nobis exercitationem dignissimos perspiciatis iusto aperiam.', 9047, 2, 1, 'c89eb400-c35f-30');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('ba27bbec-0af9-30', 'Kane', 24, 'https://loremflickr.com/640/480/', '2022-07-08', 143, 'c', 'delectus', 'Enim quam sit aliquid odio ut ad magni. Aut vel et a enim dolor. Rerum optio dolore hic ducimus consequuntur quia. Nobis adipisci corrupti minima totam eum qui.', 4611, 2, 1, '7ddd207c-7bf7-37');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('cc365508-1c65-3a', 'Hayden', 3, 'https://loremflickr.com/640/480/', '1997-11-14', 91, 'p', 'qui', 'Perferendis quod voluptatem ut. Qui officiis officia itaque quas ea. Sed eum voluptatem voluptatem qui culpa aut quae aliquid. Culpa a aut totam sunt consequatur fugiat sed.', 4256, 2, 1, '3a2033d1-c183-31');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('eb7e0dc2-4f4b-32', 'Arthur', 23, 'https://loremflickr.com/640/480/', '1993-12-25', 76, 's', 'modi', 'Reiciendis praesentium dolores est error. Dolor cupiditate labore accusantium fuga ea quam. Enim consectetur eos voluptates esse et in saepe. Qui ad et dolores id dolorem saepe.', 3014, 0, 1, '06f66db5-34e5-39');


#
# TABLE STRUCTURE FOR: directors
#

DROP TABLE IF EXISTS `directors`;

CREATE TABLE `directors` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `bio` mediumtext DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `directors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('14c6effe-3469-34', 'Kavon Stamm', '1999-12-05', 'Suriname', 'ullam', 'Vitae ea dolores ab voluptatem modi architecto. Occaecati id est maxime dolorum a quia dignissimos. Enim odio labore possimus rem.', 'https://loremflickr.com/640/480/');
INSERT INTO `directors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('2ba295f0-0150-3b', 'Ms. Daniela Berge', '1986-09-12', 'Gabon', 'sequi', 'Dolore dolor deserunt tempore ipsa et quaerat et beatae. Vel quod maiores ex. Quam quia labore vitae deserunt voluptatibus.', 'https://loremflickr.com/640/480/');
INSERT INTO `directors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('404418d8-3d34-36', 'Miss Mertie Swift', '2007-01-03', 'Albania', 'aperiam', 'Beatae odio iure alias quia totam optio quaerat. Ut illum expedita inventore porro. Et dicta nihil quas qui. Fugiat aliquid ad error asperiores.', 'https://loremflickr.com/640/480/');
INSERT INTO `directors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('4974d940-57dd-3a', 'Eleanora Kunze', '1976-11-08', 'Myanmar', 'asperiores', 'Adipisci iste commodi accusantium nam. Perspiciatis magnam et optio quasi excepturi. Maxime dolores natus labore ducimus eum architecto.', 'https://loremflickr.com/640/480/');
INSERT INTO `directors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('61a35d60-2618-3a', 'Karlee Anderson', '2015-11-19', 'Cyprus', 'harum', 'Alias unde asperiores et vel magnam. Molestiae et saepe amet ipsam repudiandae. Esse aut in vero eaque eum quam et.\nQuia reprehenderit quibusdam et id. Illum necessitatibus quod ut voluptas.', 'https://loremflickr.com/640/480/');
INSERT INTO `directors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('7d88c90e-3ea3-3e', 'Katrina Christiansen', '2011-08-08', 'Iceland', 'ut', 'Quia minus animi dolore quia magnam. Voluptatum ea nam consequuntur officiis a animi. Id corporis accusantium aut voluptatem animi tempore. Sint tempore error sed iusto molestias harum sed.', 'https://loremflickr.com/640/480/');
INSERT INTO `directors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('7dd5d301-2893-36', 'Katrine Lesch', '1993-11-25', 'Ecuador', 'quam', 'Sequi qui aliquid qui perferendis velit vitae iste inventore. Quia eius sint non a ut molestias voluptatibus. Omnis officiis sequi omnis ut quasi harum.', 'https://loremflickr.com/640/480/');
INSERT INTO `directors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('8350bafd-8fa7-3e', 'Ms. Ashleigh O\'Hara', '1990-09-08', 'Macao', 'quis', 'Magni fugiat harum cum aut. Enim iste aut impedit consequuntur amet. Qui eum suscipit vitae id quis autem. Similique odio hic quasi esse dignissimos nobis.', 'https://loremflickr.com/640/480/');
INSERT INTO `directors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('83fa34f6-a08e-3b', 'Dr. Mekhi Cummerata DVM', '2023-06-23', 'Gibraltar', 'enim', 'Ex cumque voluptatum rem libero quo quo. Qui nihil ut et et voluptates repellendus. Quam dolorum sit qui qui consequatur qui mollitia.', 'https://loremflickr.com/640/480/');
INSERT INTO `directors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('8f6d157e-0ce9-35', 'Vicente Jacobson', '1970-03-07', 'Cyprus', 'ad', 'Similique atque in earum eum velit rem sit. Explicabo libero quae similique non rerum a omnis.', 'https://loremflickr.com/640/480/');
INSERT INTO `directors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('97edf8cc-5705-3d', 'Hobart Nicolas', '2008-04-26', 'Saint Helena', 'vero', 'Pariatur in aut illum non dolore repellendus aut sed. Consequatur sed molestiae in modi. Repellat dolore sed rerum sit dolor et voluptates.', 'https://loremflickr.com/640/480/');
INSERT INTO `directors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('9a8873d1-2146-38', 'Mr. Herbert Mitchell DVM', '1982-05-11', 'Samoa', 'praesentium', 'Tempore et nemo voluptatum aspernatur alias et pariatur. Voluptas nihil iure temporibus totam. Fuga modi illo eligendi nihil ipsum non. Quae est blanditiis qui.', 'https://loremflickr.com/640/480/');
INSERT INTO `directors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('a74ffac4-4326-36', 'Leora Abernathy DVM', '1994-02-19', 'Yemen', 'non', 'Ipsa dolorum voluptate quod sunt. Magnam suscipit omnis nihil rerum fuga velit. In aut et omnis veniam et.\nSed cum veniam perspiciatis commodi. Officia iusto illo eaque veritatis rerum corrupti.', 'https://loremflickr.com/640/480/');
INSERT INTO `directors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('c2d2618e-f8dd-30', 'Francis Williamson PhD', '2023-07-15', 'Honduras', 'sequi', 'In error et fugit rem voluptate expedita nam. Rem architecto ipsa et expedita ducimus est. Voluptatem fuga rerum voluptates dicta vel incidunt eaque commodi.', 'https://loremflickr.com/640/480/');
INSERT INTO `directors` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('c9fac716-0574-3b', 'Ocie Mayert MD', '2015-09-24', 'Costa Rica', 'sunt', 'Et temporibus et expedita aut quisquam nemo. Odio veritatis nulla ut ullam.', 'https://loremflickr.com/640/480/');


#
# TABLE STRUCTURE FOR: episodes
#

DROP TABLE IF EXISTS `episodes`;

CREATE TABLE `episodes` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `movie_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `episodes_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('06ca04c8-df24-36', 'omnis', 'http://www.thiel.biz/', 'Vero cum omnis voluptate iure. Nesciunt sit suscipit rem enim deserunt. Voluptas impedit eligendi qui eum vero aperiam velit. Odit sed quod nisi aut. Voluptatem sunt qui aut saepe omnis perferendis hic vel.', '2969475a-f3ba-3d');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('0f5bbc4b-dc44-39', 'eaque', 'http://www.willms.org/', 'Explicabo molestiae impedit velit omnis. Molestiae est facere tempora. Et recusandae facere neque voluptatem aut quo.', '886857f5-da40-3d');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('2615bd36-96be-3a', 'qui', 'http://www.barrows.com/', 'Provident voluptatibus est vero rerum velit aspernatur esse. Sed non incidunt hic occaecati et accusamus. Facere nemo suscipit fugit perspiciatis dolorem delectus aut. Eum qui laudantium nesciunt consequatur ullam quia.', 'ba27bbec-0af9-30');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('2de8090e-c1e6-38', 'animi', 'http://www.pouroslegros.com/', 'Ut qui reiciendis et voluptatum est. Atque sit impedit voluptas blanditiis aut omnis ut.', '0dfb34c4-c08d-32');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('3e1b0bec-dde3-3d', 'est', 'http://www.bruen.biz/', 'Id nam delectus similique quibusdam impedit. At est sed aut numquam atque omnis nihil. Tenetur quaerat placeat qui quia animi totam. Ut reprehenderit ullam assumenda eligendi molestias reiciendis nulla.', 'a9ff7177-6074-35');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('4d12ba7e-87d3-3c', 'rem', 'http://cremin.info/', 'Architecto ad omnis ut optio dolorem earum minus. Molestiae ullam tenetur asperiores sapiente autem consequuntur. Nisi aspernatur ab unde expedita et odio.', 'cc365508-1c65-3a');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('6e7384bd-a0e3-36', 'et', 'http://www.wilderman.org/', 'Inventore maiores aut consequatur corporis totam commodi sequi. Velit suscipit et autem id non quis. Officiis dolore perferendis quo excepturi illo ex. In deleniti quia quae ut.', '54fcdf68-2de0-3d');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('7fcf57c5-4385-3d', 'possimus', 'http://greenfelder.org/', 'Nam qui quaerat eligendi qui rerum qui cum. Hic architecto et et eos magni aliquam aut necessitatibus. Quo repellat quidem sunt corrupti. Hic distinctio et optio molestiae modi iste.', '0350c7c6-7bb2-35');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('a64720aa-b169-37', 'omnis', 'http://www.schuppe.com/', 'Excepturi dolore eum reprehenderit nemo a. Consequatur minima molestiae quibusdam quas dolor sint ipsum. Earum ipsum dolorum sit accusamus est qui.', '987d2aec-ea8e-3d');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('beb8c65b-69b5-39', 'veniam', 'http://heidenreich.org/', 'Ut corrupti similique fugit saepe quisquam. Ducimus voluptatem non nemo voluptatem facilis nihil ratione. Facilis dolorem aliquam nam in cum dolor excepturi.', 'eb7e0dc2-4f4b-32');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('c3123e4d-3e37-31', 'dolor', 'http://stroman.com/', 'Aut necessitatibus debitis assumenda consequatur excepturi necessitatibus iure. Quaerat maiores velit eveniet omnis neque fugiat possimus impedit. Doloremque optio esse nihil autem.', '413070eb-a01f-30');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('d37c5bb6-8540-31', 'quisquam', 'http://www.monahanmayert.com/', 'Eligendi magnam neque sequi sint quod illum. Omnis perspiciatis laudantium quia incidunt maiores. Ut itaque debitis libero modi officiis sequi consectetur. Dolor ad voluptate corrupti velit officia possimus.', '139458ce-8aa4-32');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('e4328959-0377-3f', 'eius', 'http://www.boyer.info/', 'Blanditiis aut sed in tenetur rerum quos. Quo quibusdam repellat quis distinctio. Consequatur commodi dicta assumenda dolores eos eaque doloribus ad.', '2290e119-09a7-36');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('f0b3d346-3474-3e', 'repellendus', 'http://www.gusikowski.com/', 'Consequatur amet cupiditate voluptate dolor in perferendis. At dolores ut et dicta tempora corporis esse nostrum.', '1354e79c-6d37-30');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('fd2f57be-a661-34', 'ipsam', 'http://www.powlowskiglover.org/', 'Est eos quisquam nobis placeat inventore adipisci. Nobis qui quis dolores consequatur magnam voluptas qui.', '22d88406-f57e-3c');


#
# TABLE STRUCTURE FOR: genres
#

DROP TABLE IF EXISTS `genres`;

CREATE TABLE `genres` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('1c0e1dab-00e7-30', 'odio', 'sunt', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('3c4eca5c-1cb8-38', 'quaerat', 'corporis', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('541b48c0-78c3-36', 'aut', 'soluta', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('71a0559c-80e5-34', 'voluptatem', 'vel', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('859c35f7-08fc-31', 'asperiores', 'odit', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('8cf0bcbc-8ea4-3b', 'qui', 'ut', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('934d67e6-b96a-30', 'repellendus', 'praesentium', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('9aeea78a-7732-3c', 'est', 'non', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('a9e066c1-d1ee-3c', 'quasi', 'adipisci', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('b177e0c7-f097-38', 'autem', 'tempore', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('b69f3777-915a-3e', 'vitae', 'dolore', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('cfc5a146-ba09-31', 'earum', 'et', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('d13e4788-00ec-38', 'sapiente', 'eius', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('dc216344-1b76-34', 'facilis', 'minus', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('e635babb-bd2a-39', 'unde', 'optio', 1);



#
# TABLE STRUCTURE FOR: favorite_genres
#

DROP TABLE IF EXISTS `favorite_genres`;

CREATE TABLE `favorite_genres` (
  `id` binary(16) NOT NULL,
  `accout_id` binary(16) DEFAULT NULL,
  `genres_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `accout_id` (`accout_id`),
  KEY `genres_id` (`genres_id`),
  CONSTRAINT `favorite_genres_ibfk_1` FOREIGN KEY (`accout_id`) REFERENCES `accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `favorite_genres_ibfk_2` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('07be4df0-443a-30', '48c41787-74ef-32', '71a0559c-80e5-34');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('0b9fc1e6-e735-39', 'e4fc045b-5fca-34', 'dc216344-1b76-34');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('53c996ef-d247-3b', '69d859c4-99c6-36', '8cf0bcbc-8ea4-3b');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('66c151ff-00d8-38', '283dee89-bec5-3f', '3c4eca5c-1cb8-38');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('69b12b55-5414-32', 'a6acf991-d605-3e', 'b69f3777-915a-3e');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('71acf649-9cbd-30', 'fef56f7b-3fe9-3a', 'e635babb-bd2a-39');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('783ccdeb-e791-3a', '832bf622-8369-33', '934d67e6-b96a-30');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('9aec0727-5e73-37', '46f4ee44-7986-32', '541b48c0-78c3-36');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('a2c46adc-4a6c-3c', '966dc883-7ff6-31', 'a9e066c1-d1ee-3c');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('a37c3f9c-a1fb-3c', '013bfa02-efc5-36', '1c0e1dab-00e7-30');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('a9bb125f-1274-3f', 'aab5b1df-05be-3a', 'cfc5a146-ba09-31');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('be01b7e2-a15c-38', '560a6728-c602-32', '859c35f7-08fc-31');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('c4d7e585-d921-32', '9dfc2616-0dd5-3d', 'b177e0c7-f097-38');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('cfd3cde1-e40c-36', '8a838ac4-1b62-3b', '9aeea78a-7732-3c');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('f0b9a6d2-9d7e-36', 'd3891be3-035a-3e', 'd13e4788-00ec-38');


#
# TABLE STRUCTURE FOR: favourites
#

DROP TABLE IF EXISTS `favourites`;

CREATE TABLE `favourites` (
  `id` binary(16) NOT NULL,
  `account_id` binary(16) DEFAULT NULL,
  `movie_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `account_id` (`account_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `favourites_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `favourites_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('0543462f-f080-30', '966dc883-7ff6-31', '54fcdf68-2de0-3d');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('0655f099-467d-32', 'a6acf991-d605-3e', '987d2aec-ea8e-3d');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('15358def-2a58-31', 'aab5b1df-05be-3a', 'a9ff7177-6074-35');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('30307b31-a376-32', 'fef56f7b-3fe9-3a', 'eb7e0dc2-4f4b-32');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('30398557-c4b6-3b', '283dee89-bec5-3f', '0dfb34c4-c08d-32');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('3f7ad6ea-6e67-37', 'd3891be3-035a-3e', 'ba27bbec-0af9-30');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('407faecc-51aa-38', '560a6728-c602-32', '2290e119-09a7-36');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('4eaa8ce2-e340-3e', '9dfc2616-0dd5-3d', '886857f5-da40-3d');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('815dc649-a655-38', '560a6728-c602-32', '2290e119-09a7-36');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('99b82c6a-8e17-36', '48c41787-74ef-32', '139458ce-8aa4-32');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('bcf78f9d-cbf6-32', '8a838ac4-1b62-3b', '413070eb-a01f-30');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('c30f6142-d35f-36', '48c41787-74ef-32', '139458ce-8aa4-32');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('c672e5cf-a450-37', '46f4ee44-7986-32', '1354e79c-6d37-30');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('c99a37ee-4d4c-3c', 'e4fc045b-5fca-34', 'cc365508-1c65-3a');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('d0293ae6-7273-38', '69d859c4-99c6-36', '22d88406-f57e-3c');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('d31eb356-1285-36', '013bfa02-efc5-36', '0350c7c6-7bb2-35');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('dcfca231-99b7-33', '46f4ee44-7986-32', '1354e79c-6d37-30');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('e73cae71-ebc7-30', '283dee89-bec5-3f', '0dfb34c4-c08d-32');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('f01fda80-0097-3e', '832bf622-8369-33', '2969475a-f3ba-3d');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('fd563089-8663-36', '013bfa02-efc5-36', '0350c7c6-7bb2-35');


#
# TABLE STRUCTURE FOR: helps
#

DROP TABLE IF EXISTS `helps`;

CREATE TABLE `helps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` mediumtext DEFAULT NULL,
  `answer` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (1, 'SIT down,\' the King sharply. \'Do you mean by that?\' said the Gryphon. \'Of course,\' the Gryphon as if nothing had happened. \'How am I then? Tell me that first, and then hurried on, Alice started to.', 'Caterpillar decidedly, and the small ones choked and had no idea what you\'re doing!\' cried Alice, with a soldier on each side, and opened their eyes and mouths so VERY remarkable in that; nor did.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (2, 'Alice, \'to speak to this last remark. \'Of course it was,\' said the cook. The King laid his hand upon her arm, with its arms folded, quietly smoking a long tail, certainly,\' said Alice, rather.', 'But the snail replied \"Too far, too far!\" and gave a look askance-- Said he thanked the whiting kindly, but he could go. Alice took up the fan and gloves, and, as she could, for the moment she.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (3, 'Queen. \'I haven\'t opened it yet,\' said Alice; not that she knew the name again!\' \'I won\'t interrupt again. I dare say you\'re wondering why I don\'t keep the same size: to be nothing but the three.', 'Alice as she did not appear, and after a fashion, and this was the same height as herself; and when she noticed that they would go, and making quite a chorus of \'There goes Bill!\' then the Mock.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (4, 'King in a bit.\' \'Perhaps it doesn\'t matter which way you can;--but I must be Mabel after all, and I had our Dinah here, I know all the things I used to it in less than a pig, and she hastily dried.', 'King. (The jury all brightened up again.) \'Please your Majesty,\' said Alice in a low curtain she had nothing yet,\' Alice replied very gravely. \'What else have you got in your pocket?\' he went on.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (5, 'Classics master, though. He was an old crab, HE was.\' \'I never was so much frightened to say which), and they can\'t prove I did: there\'s no name signed at the cook, and a large kitchen, which was.', 'Alice. \'That\'s very important,\' the King replied. Here the other players, and shouting \'Off with her head! Off--\' \'Nonsense!\' said Alice, \'it\'s very easy to take the place of the water, and seemed.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (6, 'I know is, it would like the look of the country is, you see, as she could not help thinking there MUST be more to be rude, so she waited. The Gryphon lifted up both its paws in surprise. \'What!.', 'Mystery,\' the Mock Turtle went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen had never before seen a good deal to come once a week: HE taught us Drawling,.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (7, 'It\'ll be no chance of her sister, who was peeping anxiously into her head. \'If I eat or drink anything; so I\'ll just see what I used to know. Let me see: that would happen: \'\"Miss Alice! Come here.', 'Alice thought to herself \'Now I can reach the key; and if the Mock Turtle. \'No, no! The adventures first,\' said the Dormouse: \'not in that soup!\' Alice said to herself; \'the March Hare went \'Sh!.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (8, 'The great question certainly was, what? Alice looked very anxiously into her eyes; and once again the tiny hands were clasped upon her face. \'Very,\' said Alice: \'--where\'s the Duchess?\' \'Hush!.', 'I then? Tell me that first, and then nodded. \'It\'s no use in crying like that!\' \'I couldn\'t afford to learn it.\' said the Mock Turtle in the way YOU manage?\' Alice asked. The Hatter opened his eyes.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (9, 'Alice. The poor little Lizard, Bill, was in livery: otherwise, judging by his garden.\"\' Alice did not get dry again: they had any dispute with the words don\'t FIT you,\' said Alice, (she had kept a.', 'Alice the moment how large she had to sing \"Twinkle, twinkle, little bat! How I wonder if I\'ve kept her eyes immediately met those of a muchness?\' \'Really, now you ask me,\' said Alice, and her eyes.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (10, 'For really this morning I\'ve nothing to do: once or twice, half hoping that the cause of this ointment--one shilling the box-- Allow me to him: She gave me a good character, But said I could not.', 'Alice coming. \'There\'s PLENTY of room!\' said Alice loudly. \'The idea of the officers: but the Dodo solemnly, rising to its children, \'Come away, my dears! It\'s high time you were or might have been.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (11, 'I the same size: to be lost: away went Alice like the tone of delight, and rushed at the frontispiece if you please! \"William the Conqueror, whose cause was favoured by the way I ought to eat or.', 'Footman continued in the pool a little of it?\' said the Hatter. \'Nor I,\' said the King: \'however, it may kiss my hand if it had come back and finish your story!\' Alice called after it; and the happy.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (12, 'Queen, who was gently brushing away some dead leaves that had slipped in like herself. \'Would it be of any one; so, when the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\'.', 'When the Mouse was swimming away from him, and said to the dance. So they got thrown out to be seen--everything seemed to be ashamed of yourself,\' said Alice, \'and why it is you hate--C and D,\' she.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (13, 'You MUST have meant some mischief, or else you\'d have signed your name like an arrow. The Cat\'s head began fading away the time. Alice had no idea how confusing it is you hate--C and D,\' she added.', 'These were the cook, and a large plate came skimming out, straight at the bottom of a sea of green leaves that lay far below her. \'What CAN all that green stuff be?\' said Alice. \'Call it what you.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (14, 'King replied. Here the Dormouse into the air, mixed up with the time,\' she said to the Gryphon. \'How the creatures order one about, and called out, \'Sit down, all of you, and listen to me! I\'LL soon.', 'So she stood still where she was, and waited. When the Mouse with an anxious look at the moment, \'My dear! I shall have to beat time when I was thinking I should like to try the first verse,\' said.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (15, 'I know. Silence all round, if you hold it too long; and that in about half no time! Take your choice!\' The Duchess took her choice, and was suppressed. \'Come, that finished the guinea-pigs!\' thought.', 'But her sister sat still and said to herself; \'his eyes are so VERY much out of this ointment--one shilling the box-- Allow me to him: She gave me a pair of boots every Christmas.\' And she squeezed.');


#
# TABLE STRUCTURE FOR: images_actor
#

DROP TABLE IF EXISTS `images_actor`;

CREATE TABLE `images_actor` (
  `id` binary(16) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `actor_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `actor_id` (`actor_id`),
  CONSTRAINT `images_actor_ibfk_1` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `images_actor` (`id`, `link`, `actor_id`) VALUES ('049e4fa3-e99d-36', 'https://loremflickr.com/640/480/', 'c11d1817-ece3-39');
INSERT INTO `images_actor` (`id`, `link`, `actor_id`) VALUES ('07262889-41df-34', 'https://loremflickr.com/640/480/', '0aff5aae-bf8b-35');
INSERT INTO `images_actor` (`id`, `link`, `actor_id`) VALUES ('2b1775d1-ff1d-31', 'https://loremflickr.com/640/480/', 'b818a49a-ecb9-3c');
INSERT INTO `images_actor` (`id`, `link`, `actor_id`) VALUES ('335302b7-0983-32', 'https://loremflickr.com/640/480/', '5e862b88-df38-30');
INSERT INTO `images_actor` (`id`, `link`, `actor_id`) VALUES ('3b509401-0323-38', 'https://loremflickr.com/640/480/', '8ec4a16b-bbf1-39');
INSERT INTO `images_actor` (`id`, `link`, `actor_id`) VALUES ('41f47cef-b514-3b', 'https://loremflickr.com/640/480/', '7a86ed57-eb8f-3c');
INSERT INTO `images_actor` (`id`, `link`, `actor_id`) VALUES ('42811296-b798-34', 'https://loremflickr.com/640/480/', 'b5fb3c18-1408-37');
INSERT INTO `images_actor` (`id`, `link`, `actor_id`) VALUES ('60e4c909-df91-3e', 'https://loremflickr.com/640/480/', 'e0409d70-8648-38');
INSERT INTO `images_actor` (`id`, `link`, `actor_id`) VALUES ('92d83c4e-ce4e-38', 'https://loremflickr.com/640/480/', '8ee405b7-b6f4-32');
INSERT INTO `images_actor` (`id`, `link`, `actor_id`) VALUES ('9734b688-f1c1-3d', 'https://loremflickr.com/640/480/', 'be306ca5-4213-34');
INSERT INTO `images_actor` (`id`, `link`, `actor_id`) VALUES ('b450a4cd-02a9-3f', 'https://loremflickr.com/640/480/', '0c12c515-c32b-33');
INSERT INTO `images_actor` (`id`, `link`, `actor_id`) VALUES ('bc3295ed-bd6d-37', 'https://loremflickr.com/640/480/', 'fbae5bc2-e42b-33');
INSERT INTO `images_actor` (`id`, `link`, `actor_id`) VALUES ('c4c3df79-fca5-3b', 'https://loremflickr.com/640/480/', '520c9132-6efe-35');
INSERT INTO `images_actor` (`id`, `link`, `actor_id`) VALUES ('e038c85e-49e2-3e', 'https://loremflickr.com/640/480/', '8e9641c7-e00e-39');
INSERT INTO `images_actor` (`id`, `link`, `actor_id`) VALUES ('ea80c23a-6fe6-3a', 'https://loremflickr.com/640/480/', '4b50a89d-7820-32');


#
# TABLE STRUCTURE FOR: images_director
#

DROP TABLE IF EXISTS `images_director`;

CREATE TABLE `images_director` (
  `id` binary(16) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `director` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `director` (`director`),
  CONSTRAINT `images_director_ibfk_1` FOREIGN KEY (`director`) REFERENCES `directors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `images_director` (`id`, `link`, `director`) VALUES ('0342018a-2256-30', 'https://loremflickr.com/640/480/', '61a35d60-2618-3a');
INSERT INTO `images_director` (`id`, `link`, `director`) VALUES ('06efab78-b9ee-39', 'https://loremflickr.com/640/480/', '404418d8-3d34-36');
INSERT INTO `images_director` (`id`, `link`, `director`) VALUES ('16a75bf5-fa0e-33', 'https://loremflickr.com/640/480/', '8350bafd-8fa7-3e');
INSERT INTO `images_director` (`id`, `link`, `director`) VALUES ('3f9436bf-3aff-38', 'https://loremflickr.com/640/480/', '14c6effe-3469-34');
INSERT INTO `images_director` (`id`, `link`, `director`) VALUES ('94d3df33-0758-38', 'https://loremflickr.com/640/480/', 'c2d2618e-f8dd-30');
INSERT INTO `images_director` (`id`, `link`, `director`) VALUES ('991e35dc-4e1c-3b', 'https://loremflickr.com/640/480/', '8f6d157e-0ce9-35');
INSERT INTO `images_director` (`id`, `link`, `director`) VALUES ('99bdd3d5-0dab-39', 'https://loremflickr.com/640/480/', '97edf8cc-5705-3d');
INSERT INTO `images_director` (`id`, `link`, `director`) VALUES ('9bffb502-2138-32', 'https://loremflickr.com/640/480/', 'a74ffac4-4326-36');
INSERT INTO `images_director` (`id`, `link`, `director`) VALUES ('ac4a82b2-4145-32', 'https://loremflickr.com/640/480/', '9a8873d1-2146-38');
INSERT INTO `images_director` (`id`, `link`, `director`) VALUES ('b333b80f-bb06-35', 'https://loremflickr.com/640/480/', '7d88c90e-3ea3-3e');
INSERT INTO `images_director` (`id`, `link`, `director`) VALUES ('cbf23872-8c86-34', 'https://loremflickr.com/640/480/', '83fa34f6-a08e-3b');
INSERT INTO `images_director` (`id`, `link`, `director`) VALUES ('d1aa2507-39ee-33', 'https://loremflickr.com/640/480/', 'c9fac716-0574-3b');
INSERT INTO `images_director` (`id`, `link`, `director`) VALUES ('d2b07859-3a5c-3f', 'https://loremflickr.com/640/480/', '7dd5d301-2893-36');
INSERT INTO `images_director` (`id`, `link`, `director`) VALUES ('f5e029bc-ef3a-3b', 'https://loremflickr.com/640/480/', '2ba295f0-0150-3b');
INSERT INTO `images_director` (`id`, `link`, `director`) VALUES ('fd75876a-67ee-30', 'https://loremflickr.com/640/480/', '4974d940-57dd-3a');


#
# TABLE STRUCTURE FOR: images_movies
#

DROP TABLE IF EXISTS `images_movies`;

CREATE TABLE `images_movies` (
  `id` binary(16) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `movies_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `movies_id_index` (`movies_id`),
  CONSTRAINT `images_movies_ibfk_1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('0f92a125-e3e6-33', 'https://loremflickr.com/640/480/', '0350c7c6-7bb2-35');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('17358fe6-02f7-33', 'https://loremflickr.com/640/480/', '0350c7c6-7bb2-35');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('191835db-db43-37', 'https://loremflickr.com/640/480/', '54fcdf68-2de0-3d');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('282561cf-d2df-3b', 'https://loremflickr.com/640/480/', '1354e79c-6d37-30');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('2d4bdbf2-7fb7-3e', 'https://loremflickr.com/640/480/', '22d88406-f57e-3c');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('40d056c0-0274-34', 'https://loremflickr.com/640/480/', '0dfb34c4-c08d-32');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('4bc8fb5b-e989-32', 'https://loremflickr.com/640/480/', '0dfb34c4-c08d-32');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('56965746-7f0e-33', 'https://loremflickr.com/640/480/', '139458ce-8aa4-32');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('5c0d2e9d-e82a-37', 'https://loremflickr.com/640/480/', 'cc365508-1c65-3a');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('5eff1c08-f8e3-3c', 'https://loremflickr.com/640/480/', '413070eb-a01f-30');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('6099cd1a-114e-3f', 'https://loremflickr.com/640/480/', 'ba27bbec-0af9-30');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('6c69f8a3-05ee-39', 'https://loremflickr.com/640/480/', '2969475a-f3ba-3d');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('6c86654c-0864-38', 'https://loremflickr.com/640/480/', '2290e119-09a7-36');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('7009947c-1c1e-34', 'https://loremflickr.com/640/480/', '2290e119-09a7-36');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('72b33e2f-4680-33', 'https://loremflickr.com/640/480/', '886857f5-da40-3d');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('92be9c3e-16f3-34', 'https://loremflickr.com/640/480/', 'eb7e0dc2-4f4b-32');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('9a8cebf1-a8a3-37', 'https://loremflickr.com/640/480/', '139458ce-8aa4-32');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('bfdfb8a4-0ada-39', 'https://loremflickr.com/640/480/', 'a9ff7177-6074-35');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('cea31710-388e-31', 'https://loremflickr.com/640/480/', '987d2aec-ea8e-3d');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('d7e40c33-7194-37', 'https://loremflickr.com/640/480/', '1354e79c-6d37-30');


#
# TABLE STRUCTURE FOR: images_writer
#

DROP TABLE IF EXISTS `images_writer`;

CREATE TABLE `images_writer` (
  `id` binary(16) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `writer_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `writer_id` (`writer_id`),
  CONSTRAINT `images_writer_ibfk_1` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `images_writer` (`id`, `link`, `writer_id`) VALUES ('30c2b7a8-f28b-38', 'https://loremflickr.com/640/480/', '93241c9d-b769-38');
INSERT INTO `images_writer` (`id`, `link`, `writer_id`) VALUES ('311be8e5-49c1-30', 'https://loremflickr.com/640/480/', '7452c158-355e-37');
INSERT INTO `images_writer` (`id`, `link`, `writer_id`) VALUES ('32ddc26a-4c69-36', 'https://loremflickr.com/640/480/', '82ffb5de-e54e-33');
INSERT INTO `images_writer` (`id`, `link`, `writer_id`) VALUES ('43540434-1cee-39', 'https://loremflickr.com/640/480/', '69bbfdc7-ece6-34');
INSERT INTO `images_writer` (`id`, `link`, `writer_id`) VALUES ('4900743b-2ede-3e', 'https://loremflickr.com/640/480/', '0afe46eb-a38a-3b');
INSERT INTO `images_writer` (`id`, `link`, `writer_id`) VALUES ('4bc9bc76-7b40-38', 'https://loremflickr.com/640/480/', 'ee602899-6ec5-33');
INSERT INTO `images_writer` (`id`, `link`, `writer_id`) VALUES ('7605028c-52e2-3e', 'https://loremflickr.com/640/480/', '45458cf4-2706-3c');
INSERT INTO `images_writer` (`id`, `link`, `writer_id`) VALUES ('79d430d5-9fa5-33', 'https://loremflickr.com/640/480/', '7a69a6f3-455f-37');
INSERT INTO `images_writer` (`id`, `link`, `writer_id`) VALUES ('96e7bbab-021c-37', 'https://loremflickr.com/640/480/', '269d0e3a-37f8-33');
INSERT INTO `images_writer` (`id`, `link`, `writer_id`) VALUES ('b373c134-b716-37', 'https://loremflickr.com/640/480/', '174e735d-1b6e-38');
INSERT INTO `images_writer` (`id`, `link`, `writer_id`) VALUES ('b760896d-52ed-3f', 'https://loremflickr.com/640/480/', '98780f86-7bf2-3f');
INSERT INTO `images_writer` (`id`, `link`, `writer_id`) VALUES ('becbb314-ca67-33', 'https://loremflickr.com/640/480/', '8ea9bf43-7f18-31');
INSERT INTO `images_writer` (`id`, `link`, `writer_id`) VALUES ('c7743ee5-2cdf-3d', 'https://loremflickr.com/640/480/', '85769c7e-ee86-35');
INSERT INTO `images_writer` (`id`, `link`, `writer_id`) VALUES ('cc3e488d-63d2-31', 'https://loremflickr.com/640/480/', 'c31f06ef-6d9e-38');
INSERT INTO `images_writer` (`id`, `link`, `writer_id`) VALUES ('cd35f573-3e4b-3b', 'https://loremflickr.com/640/480/', 'd01c5159-194a-39');



#
# TABLE STRUCTURE FOR: movies_actors
#

DROP TABLE IF EXISTS `movies_actors`;

CREATE TABLE `movies_actors` (
  `id` binary(16) NOT NULL,
  `movie_id` binary(16) DEFAULT NULL,
  `actors_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `actors_id` (`actors_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `movies_actors_ibfk_1` FOREIGN KEY (`actors_id`) REFERENCES `actors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `movies_actors_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `movies_actors` (`id`, `movie_id`, `actors_id`) VALUES ('08f6f038-5de8-37', '413070eb-a01f-30', '8ec4a16b-bbf1-39');
INSERT INTO `movies_actors` (`id`, `movie_id`, `actors_id`) VALUES ('21fb3aba-0abd-33', 'ba27bbec-0af9-30', 'c11d1817-ece3-39');
INSERT INTO `movies_actors` (`id`, `movie_id`, `actors_id`) VALUES ('2a6bc1eb-b440-3c', '987d2aec-ea8e-3d', 'b818a49a-ecb9-3c');
INSERT INTO `movies_actors` (`id`, `movie_id`, `actors_id`) VALUES ('366b72ac-b36b-30', '0350c7c6-7bb2-35', '0aff5aae-bf8b-35');
INSERT INTO `movies_actors` (`id`, `movie_id`, `actors_id`) VALUES ('3f1a5f93-2915-37', '139458ce-8aa4-32', '520c9132-6efe-35');
INSERT INTO `movies_actors` (`id`, `movie_id`, `actors_id`) VALUES ('42a12391-51e5-37', 'cc365508-1c65-3a', 'e0409d70-8648-38');
INSERT INTO `movies_actors` (`id`, `movie_id`, `actors_id`) VALUES ('5c10d4ab-5777-34', '2290e119-09a7-36', '5e862b88-df38-30');
INSERT INTO `movies_actors` (`id`, `movie_id`, `actors_id`) VALUES ('6564d3d1-7fdc-35', '54fcdf68-2de0-3d', '8ee405b7-b6f4-32');
INSERT INTO `movies_actors` (`id`, `movie_id`, `actors_id`) VALUES ('67259350-d6bb-31', '0350c7c6-7bb2-35', '0aff5aae-bf8b-35');
INSERT INTO `movies_actors` (`id`, `movie_id`, `actors_id`) VALUES ('7cef7bdd-9af1-32', 'a9ff7177-6074-35', 'be306ca5-4213-34');
INSERT INTO `movies_actors` (`id`, `movie_id`, `actors_id`) VALUES ('8379e620-cea2-3f', '0dfb34c4-c08d-32', '0c12c515-c32b-33');
INSERT INTO `movies_actors` (`id`, `movie_id`, `actors_id`) VALUES ('95f23057-6d81-3e', '1354e79c-6d37-30', '4b50a89d-7820-32');
INSERT INTO `movies_actors` (`id`, `movie_id`, `actors_id`) VALUES ('9b83249b-843b-39', 'eb7e0dc2-4f4b-32', 'fbae5bc2-e42b-33');
INSERT INTO `movies_actors` (`id`, `movie_id`, `actors_id`) VALUES ('a46c0364-1765-33', '2969475a-f3ba-3d', '8e9641c7-e00e-39');
INSERT INTO `movies_actors` (`id`, `movie_id`, `actors_id`) VALUES ('b52b08d0-3af4-36', '22d88406-f57e-3c', '7a86ed57-eb8f-3c');
INSERT INTO `movies_actors` (`id`, `movie_id`, `actors_id`) VALUES ('b8192d99-355f-39', '0dfb34c4-c08d-32', '0c12c515-c32b-33');
INSERT INTO `movies_actors` (`id`, `movie_id`, `actors_id`) VALUES ('b81e1f2a-3d0d-33', '2290e119-09a7-36', '5e862b88-df38-30');
INSERT INTO `movies_actors` (`id`, `movie_id`, `actors_id`) VALUES ('c07dcb26-a5f9-3e', '1354e79c-6d37-30', '4b50a89d-7820-32');
INSERT INTO `movies_actors` (`id`, `movie_id`, `actors_id`) VALUES ('d56f7026-8546-30', '886857f5-da40-3d', 'b5fb3c18-1408-37');
INSERT INTO `movies_actors` (`id`, `movie_id`, `actors_id`) VALUES ('fbe4cfa6-306d-39', '139458ce-8aa4-32', '520c9132-6efe-35');


#
# TABLE STRUCTURE FOR: movies_directors
#

DROP TABLE IF EXISTS `movies_directors`;

CREATE TABLE `movies_directors` (
  `id` binary(16) NOT NULL,
  `movie_id` binary(16) DEFAULT NULL,
  `director_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `director_id` (`director_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `movies_directors_ibfk_1` FOREIGN KEY (`director_id`) REFERENCES `directors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `movies_directors_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `movies_directors` (`id`, `movie_id`, `director_id`) VALUES ('04b925b8-e26b-38', '2969475a-f3ba-3d', '7dd5d301-2893-36');
INSERT INTO `movies_directors` (`id`, `movie_id`, `director_id`) VALUES ('13c1ac23-37e4-37', '1354e79c-6d37-30', '404418d8-3d34-36');
INSERT INTO `movies_directors` (`id`, `movie_id`, `director_id`) VALUES ('15ef8546-3ba4-3b', '0350c7c6-7bb2-35', '14c6effe-3469-34');
INSERT INTO `movies_directors` (`id`, `movie_id`, `director_id`) VALUES ('28e01d1b-628e-3b', '139458ce-8aa4-32', '4974d940-57dd-3a');
INSERT INTO `movies_directors` (`id`, `movie_id`, `director_id`) VALUES ('2a02f0ca-627e-33', 'a9ff7177-6074-35', '9a8873d1-2146-38');
INSERT INTO `movies_directors` (`id`, `movie_id`, `director_id`) VALUES ('37d80b01-3a18-36', '0dfb34c4-c08d-32', '2ba295f0-0150-3b');
INSERT INTO `movies_directors` (`id`, `movie_id`, `director_id`) VALUES ('524c280f-94e1-3f', '2290e119-09a7-36', '61a35d60-2618-3a');
INSERT INTO `movies_directors` (`id`, `movie_id`, `director_id`) VALUES ('604aad86-b7df-31', '413070eb-a01f-30', '8350bafd-8fa7-3e');
INSERT INTO `movies_directors` (`id`, `movie_id`, `director_id`) VALUES ('63032994-b0cf-32', '22d88406-f57e-3c', '7d88c90e-3ea3-3e');
INSERT INTO `movies_directors` (`id`, `movie_id`, `director_id`) VALUES ('7486ac2d-d5d9-33', 'eb7e0dc2-4f4b-32', 'c9fac716-0574-3b');
INSERT INTO `movies_directors` (`id`, `movie_id`, `director_id`) VALUES ('8ef131b1-f618-30', 'cc365508-1c65-3a', 'c2d2618e-f8dd-30');
INSERT INTO `movies_directors` (`id`, `movie_id`, `director_id`) VALUES ('a46324da-e9e6-31', '987d2aec-ea8e-3d', '97edf8cc-5705-3d');
INSERT INTO `movies_directors` (`id`, `movie_id`, `director_id`) VALUES ('ac2fe876-c1bb-32', 'ba27bbec-0af9-30', 'a74ffac4-4326-36');
INSERT INTO `movies_directors` (`id`, `movie_id`, `director_id`) VALUES ('cf5105d5-0244-3e', '54fcdf68-2de0-3d', '83fa34f6-a08e-3b');
INSERT INTO `movies_directors` (`id`, `movie_id`, `director_id`) VALUES ('d7198754-3758-37', '886857f5-da40-3d', '8f6d157e-0ce9-35');


#
# TABLE STRUCTURE FOR: movies_genres
#

DROP TABLE IF EXISTS `movies_genres`;

CREATE TABLE `movies_genres` (
  `id` binary(16) NOT NULL,
  `movie_id` binary(16) DEFAULT NULL,
  `genres_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `movie_id` (`movie_id`),
  KEY `genres_id` (`genres_id`),
  CONSTRAINT `movies_genres_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `movies_genres_ibfk_2` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('143b62b0-6377-31', '22d88406-f57e-3c', '8cf0bcbc-8ea4-3b');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('1dd84e0b-9322-3e', '987d2aec-ea8e-3d', 'b69f3777-915a-3e');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('2eb27dec-849d-30', 'ba27bbec-0af9-30', 'd13e4788-00ec-38');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('33698ec1-65cd-32', 'a9ff7177-6074-35', 'cfc5a146-ba09-31');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('6486495e-5b0a-33', '54fcdf68-2de0-3d', 'a9e066c1-d1ee-3c');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('6d4a312c-9155-33', 'eb7e0dc2-4f4b-32', 'e635babb-bd2a-39');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('75850857-f85f-33', '413070eb-a01f-30', '9aeea78a-7732-3c');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('84f80805-2da0-3c', '2290e119-09a7-36', '859c35f7-08fc-31');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('8c5b7f7d-16e7-36', '139458ce-8aa4-32', '71a0559c-80e5-34');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('a77ac96e-2fb1-3e', 'cc365508-1c65-3a', 'dc216344-1b76-34');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('a77aed08-297d-30', '886857f5-da40-3d', 'b177e0c7-f097-38');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('ae3d456e-e70f-3b', '0dfb34c4-c08d-32', '3c4eca5c-1cb8-38');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('b9c13b70-63be-3c', '2969475a-f3ba-3d', '934d67e6-b96a-30');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('ecb92775-2d8b-30', '1354e79c-6d37-30', '541b48c0-78c3-36');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('f207a78b-918b-39', '0350c7c6-7bb2-35', '1c0e1dab-00e7-30');


#
# TABLE STRUCTURE FOR: movies_writers
#

DROP TABLE IF EXISTS `movies_writers`;

CREATE TABLE `movies_writers` (
  `id` binary(16) NOT NULL,
  `movie_id` binary(16) DEFAULT NULL,
  `writer_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `movie_id` (`movie_id`),
  KEY `writer_id` (`writer_id`),
  CONSTRAINT `movies_writers_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `movies_writers_ibfk_2` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `movies_writers` (`id`, `movie_id`, `writer_id`) VALUES ('0194dd22-37f2-39', '2290e119-09a7-36', '69bbfdc7-ece6-34');
INSERT INTO `movies_writers` (`id`, `movie_id`, `writer_id`) VALUES ('0dee939c-9e99-38', '2969475a-f3ba-3d', '7a69a6f3-455f-37');
INSERT INTO `movies_writers` (`id`, `movie_id`, `writer_id`) VALUES ('14ba6e83-837d-31', '886857f5-da40-3d', '8ea9bf43-7f18-31');
INSERT INTO `movies_writers` (`id`, `movie_id`, `writer_id`) VALUES ('30814342-4108-30', 'a9ff7177-6074-35', '98780f86-7bf2-3f');
INSERT INTO `movies_writers` (`id`, `movie_id`, `writer_id`) VALUES ('48f25b70-3f2d-36', '413070eb-a01f-30', '82ffb5de-e54e-33');
INSERT INTO `movies_writers` (`id`, `movie_id`, `writer_id`) VALUES ('6e023dfe-fbc7-34', '139458ce-8aa4-32', '45458cf4-2706-3c');
INSERT INTO `movies_writers` (`id`, `movie_id`, `writer_id`) VALUES ('729fd99d-d63b-34', 'cc365508-1c65-3a', 'd01c5159-194a-39');
INSERT INTO `movies_writers` (`id`, `movie_id`, `writer_id`) VALUES ('7b9f5d81-24a6-3b', '987d2aec-ea8e-3d', '93241c9d-b769-38');
INSERT INTO `movies_writers` (`id`, `movie_id`, `writer_id`) VALUES ('98f4db45-97e7-3b', '1354e79c-6d37-30', '269d0e3a-37f8-33');
INSERT INTO `movies_writers` (`id`, `movie_id`, `writer_id`) VALUES ('a256671a-993c-3a', '54fcdf68-2de0-3d', '85769c7e-ee86-35');
INSERT INTO `movies_writers` (`id`, `movie_id`, `writer_id`) VALUES ('abdface3-f465-38', '22d88406-f57e-3c', '7452c158-355e-37');
INSERT INTO `movies_writers` (`id`, `movie_id`, `writer_id`) VALUES ('c7864ca0-c6f5-31', 'ba27bbec-0af9-30', 'c31f06ef-6d9e-38');
INSERT INTO `movies_writers` (`id`, `movie_id`, `writer_id`) VALUES ('e8dbf871-5272-31', '0350c7c6-7bb2-35', '0afe46eb-a38a-3b');
INSERT INTO `movies_writers` (`id`, `movie_id`, `writer_id`) VALUES ('eb3864bd-5cfd-30', 'eb7e0dc2-4f4b-32', 'ee602899-6ec5-33');
INSERT INTO `movies_writers` (`id`, `movie_id`, `writer_id`) VALUES ('eecf463a-67e3-3f', '0dfb34c4-c08d-32', '174e735d-1b6e-38');


#
# TABLE STRUCTURE FOR: payments
#

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` binary(16) DEFAULT NULL,
  `movie_id` binary(16) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `movie_id` (`movie_id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (1, '013bfa02-efc5-36', '0350c7c6-7bb2-35', '1975-04-18 23:27:43', '4556481650792501', '30.0000');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (2, '283dee89-bec5-3f', '0dfb34c4-c08d-32', '2013-06-25 17:37:59', '346036273175637', '30.0000');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (3, '46f4ee44-7986-32', '1354e79c-6d37-30', '2014-04-24 09:10:32', '5236458343237229', '30.0000');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (4, '48c41787-74ef-32', '139458ce-8aa4-32', '1987-06-07 01:10:53', '4024007175946', '30.0000');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (5, '560a6728-c602-32', '2290e119-09a7-36', '1992-02-06 08:32:04', '4556346433367099', '30.0000');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (6, '69d859c4-99c6-36', '22d88406-f57e-3c', '2014-04-11 10:25:47', '4539974787934', '30.0000');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (7, '832bf622-8369-33', '2969475a-f3ba-3d', '1985-12-10 05:42:34', '5530798225762206', '30.0000');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (8, '8a838ac4-1b62-3b', '413070eb-a01f-30', '1984-03-27 22:26:38', '372004805889934', '30.0000');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (9, '966dc883-7ff6-31', '54fcdf68-2de0-3d', '2019-11-30 15:29:08', '5154043150636952', '30.0000');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (10, '9dfc2616-0dd5-3d', '886857f5-da40-3d', '1993-09-05 00:02:29', '377030401150166', '30.0000');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (11, 'a6acf991-d605-3e', '987d2aec-ea8e-3d', '2013-09-14 15:48:55', '4539459899304', '30.0000');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (12, 'aab5b1df-05be-3a', 'a9ff7177-6074-35', '2002-11-18 23:09:16', '4916006474425361', '30.0000');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (13, 'd3891be3-035a-3e', 'ba27bbec-0af9-30', '1982-06-21 22:35:02', '375096804302047', '30.0000');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (14, 'e4fc045b-5fca-34', 'cc365508-1c65-3a', '1997-07-12 02:15:15', '6011365290279085', '30.0000');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (15, 'fef56f7b-3fe9-3a', 'eb7e0dc2-4f4b-32', '1973-08-22 00:08:41', '5170626446950009', '30.0000');


#
# TABLE STRUCTURE FOR: reviews
#

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `id` binary(16) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `movie_id` binary(16) DEFAULT NULL,
  `account_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `movie_id` (`movie_id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('02a7d8b7-b4ea-34', 'Quas ipsam quia dolores minus est odit velit.', 6, 'Iure ex porro corrupti in rem saepe ea eos. Voluptate et nulla labore aut aut vitae esse illo. Nihil dolores repellendus et mollitia numquam. Perferendis est inventore voluptas officia et enim.', '1989-07-26 14:29:56', '22d88406-f57e-3c', '69d859c4-99c6-36');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('0a4cc300-674c-3b', 'Voluptatem dolor culpa qui optio.', 8, 'Veritatis pariatur nam voluptate quis exercitationem officia ab. Impedit consectetur optio facere vel.', '2002-03-10 08:57:57', '1354e79c-6d37-30', '46f4ee44-7986-32');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('0fb8c7ec-3d1d-30', 'Ut rerum earum quidem tenetur eos.', 10, 'Alias nam sapiente ut animi non mollitia. Distinctio voluptas et modi iste laboriosam dolores. Eum inventore et minima in dolorem eos incidunt.', '2002-12-29 20:29:07', '886857f5-da40-3d', '9dfc2616-0dd5-3d');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('22e9fce9-6802-38', 'Recusandae et modi delectus.', 4, 'Ut odit ut eos consequuntur. Quaerat vel aut tempora provident dolores et. Eaque sit rerum maxime corrupti enim. Rem aut harum voluptas facere. Labore nihil error reprehenderit rerum quia.', '1996-07-04 23:36:58', 'cc365508-1c65-3a', 'e4fc045b-5fca-34');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('25cdab16-4281-33', 'Et et temporibus ratione quia necessitatibus fuga et.', 6, 'Voluptatem error eum eius facere est qui. Tempora rerum provident est debitis laudantium doloremque. Modi id doloremque officia. Optio rerum rerum quos fugiat.', '1973-09-18 21:06:41', 'a9ff7177-6074-35', 'aab5b1df-05be-3a');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('354a705f-b2cd-37', 'Esse unde nemo qui ea ipsam perferendis rerum.', 8, 'Amet aut ex voluptatibus at. Consequuntur earum occaecati fugit quidem hic. Ut et sit dolore molestias et officiis sit. Iste ducimus sit molestiae eum saepe molestiae.', '2013-05-13 23:05:55', '139458ce-8aa4-32', '48c41787-74ef-32');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('4b7d903b-fe3a-33', 'Nobis nesciunt quia in recusandae at.', 6, 'Ea distinctio accusantium laborum repellat dignissimos eveniet soluta. Modi reiciendis voluptatem quas veritatis sit voluptatibus. Ea quis in modi est error aut. Consectetur at perspiciatis aut.', '2023-11-25 06:27:58', '2969475a-f3ba-3d', '832bf622-8369-33');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('6b8c3d45-2531-3f', 'Sapiente cupiditate harum eligendi commodi aut blanditiis.', 8, 'Quos ut accusantium eligendi delectus omnis expedita nemo. Harum ut ea itaque qui quis eius ut. Molestiae magni tenetur cumque quisquam eius est. Animi pariatur rerum voluptatem.', '2019-12-30 02:02:13', '413070eb-a01f-30', '8a838ac4-1b62-3b');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('7e3fec8a-76b2-3f', 'Magnam sunt dolor perferendis corporis impedit sed unde.', 10, 'Dolor aut neque praesentium placeat non enim. Eveniet omnis modi autem harum iusto quia illo explicabo. Consequuntur repellendus et facere quo sit porro.', '2014-12-10 11:52:43', '0350c7c6-7bb2-35', '013bfa02-efc5-36');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('7ec5db04-dab7-37', 'Alias est ullam harum tempore sunt assumenda.', 1, 'Saepe deleniti laborum odio. Blanditiis laboriosam non dolorum animi. Eveniet et iste assumenda at esse dolorum nam ad.', '1983-03-18 19:40:04', '0dfb34c4-c08d-32', '283dee89-bec5-3f');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('92722fbd-c512-32', 'Architecto consequatur ut numquam maiores porro consequatur porro.', 6, 'Quam rerum pariatur fugit. Recusandae aut illum magni cum est qui unde occaecati. Quas eaque ducimus illo neque. Est dicta debitis repellendus amet iure quod ipsa.', '1988-12-05 01:53:50', '54fcdf68-2de0-3d', '966dc883-7ff6-31');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('c3fd7093-5af2-32', 'Vel totam dolores enim.', 6, 'Debitis ex quod in vero quibusdam. Explicabo id id ut laboriosam voluptatem. Voluptatem commodi molestiae et nemo et et minus. Illo corrupti sint aperiam perferendis.', '1990-01-08 20:47:42', '2290e119-09a7-36', '560a6728-c602-32');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('c7e2f0dd-75ba-3e', 'Quisquam fugiat nisi earum quis.', 5, 'Quas dolor harum doloremque sit necessitatibus illo. Natus tenetur et nihil vero minus reiciendis rerum.', '2018-11-28 12:40:40', 'ba27bbec-0af9-30', 'd3891be3-035a-3e');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('e764ca8a-de80-3b', 'Quia hic autem ut.', 6, 'Facilis nostrum sit amet sunt tenetur quos. Recusandae qui debitis qui dolore velit. Adipisci est inventore asperiores in aspernatur vero impedit odit. Nemo aut accusantium consequuntur sapiente.', '1997-06-20 01:50:49', 'eb7e0dc2-4f4b-32', 'fef56f7b-3fe9-3a');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('f967504b-a271-31', 'Dolorem sapiente ipsa laudantium dignissimos accusamus et cupiditate.', 3, 'Nam et occaecati quis eum nihil maxime non. Pariatur numquam accusamus enim voluptates. Est est aut velit voluptatibus. A qui nulla neque iusto exercitationem.', '1984-07-03 06:41:07', '987d2aec-ea8e-3d', 'a6acf991-d605-3e');



