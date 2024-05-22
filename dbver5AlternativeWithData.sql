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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('07082047-bfc3-3c', 'Krajcik', 'rem', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('07844ff4-307e-34', 'Homenick', 'quibusdam', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('12dc38f3-d889-3a', 'Macejkovic', 'rerum', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('177536ca-d019-39', 'Flatley', 'nostrum', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('2d7859d0-dc8b-35', 'Gleason', 'harum', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('36f0f568-ea76-35', 'Graham', 'neque', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('4629ebf9-763f-36', 'Larkin', 'dolorem', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('74101454-ea00-34', 'Osinski', 'cupiditate', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('7959b2b2-5a7f-3a', 'Will', 'inventore', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('833ad691-7bae-3c', 'Medhurst', 'eaque', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('9ce237b8-e597-37', 'Sawayn', 'nemo', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('aeb481e0-dbb0-30', 'Jacobs', 'quibusdam', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('cc04f3c0-9aa6-3a', 'Quigley', 'explicabo', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('d7e25ace-c22b-3b', 'Buckridge', 'occaecati', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('ddcbbce2-1446-35', 'Heathcote', 'rerum', 1);


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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (1, 'Necessitatibus soluta distinctio facilis alias. Vel laboriosam ea ut cumque molestiae sit et. Dolores iste assumenda eum molestiae laboriosam laudantium pariatur.', 'Lory hastily. \'I don\'t much care where--\' said Alice. \'That\'s the reason and all her knowledge of history, Alice had begun to repeat it, when a cry of \'The trial\'s beginning!\' was heard in the pool.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (2, 'Sequi et vero eius dolorem explicabo consequuntur autem. Quam non quidem necessitatibus.', 'The Duchess took her choice, and was in such a thing before, and he poured a little startled when she got up, and there they are!\' said the King. (The jury all wrote down on one knee as he spoke,.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (3, 'Id reprehenderit sequi illo quos ad veritatis fugiat. Qui rerum id voluptatem. Facilis incidunt dolorum nisi quos quam alias sunt.', 'Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came flying down upon her: she gave one sharp kick, and waited till the puppy\'s.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (4, 'Molestias voluptate qui aperiam autem. Dolores architecto quasi corrupti laborum eum ut eveniet id. Qui sed quod eligendi molestias accusantium. Quia necessitatibus commodi esse qui.', 'Mouse, getting up and bawled out, \"He\'s murdering the time! Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'And ever since that,\' the Hatter with a T!\' said the Mouse, frowning, but.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (5, 'Quia autem velit amet quod cum voluptatem sit. Quos nostrum ex aperiam doloremque consequatur. Est occaecati rerum doloremque id ipsam fugit voluptate.', 'Said his father; \'don\'t give yourself airs! Do you think you might knock, and I had it written up somewhere.\' Down, down, down. There was a large flower-pot that stood near. The three soldiers.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (6, 'Esse ut temporibus eos nam non hic qui. Iste et dicta ut. Exercitationem officia ea voluptas aliquam corrupti eum. Ipsa deleniti possimus tenetur sed.', 'So she began nibbling at the mouth with strings: into this they slipped the guinea-pig, head first, and then, \'we went to work shaking him and punching him in the distance, screaming with passion..');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (7, 'Ipsam placeat consectetur et est. Aut ad sed neque cumque nam blanditiis sit. Enim fugit sed dolorum sit sunt nobis.', 'Alice could not stand, and she walked sadly down the chimney!\' \'Oh! So Bill\'s got to go down the chimney, and said to the Caterpillar, just as well wait, as she could. \'No,\' said Alice. \'I mean what.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (8, 'Ea deleniti eius dolorum aut. Quidem aliquid culpa quis corrupti sed ea voluptates. Nulla nemo voluptas voluptatum eum nostrum et quam.', 'And I declare it\'s too bad, that it was an uncomfortably sharp chin. However, she did not at all this time. \'I want a clean cup,\' interrupted the Gryphon. \'We can do no more, whatever happens. What.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (9, 'Omnis quam veniam perspiciatis qui. Quibusdam laudantium repellat qui libero. Fugit repellat non ut eligendi odio. Deleniti qui sunt sed dolorem.', 'Alice like the tone of great relief. \'Now at OURS they had any dispute with the words a little, half expecting to see how he did not seem to dry me at all.\' \'In that case,\' said the Mouse, sharply.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (10, 'Consectetur delectus ut eum sint consequatur accusamus. Rerum necessitatibus eius qui voluptate ullam officiis. Praesentium vero aut eveniet ex nemo dolores quis.', 'Queen, who was sitting on a little shaking among the trees, a little different. But if I\'m Mabel, I\'ll stay down here! It\'ll be no use going back to my right size for ten minutes together!\' \'Can\'t.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (11, 'Explicabo est id quisquam natus eos. Quo assumenda id consequuntur officia placeat quo. Debitis quis dolore minus excepturi dolor. Rem commodi fugiat debitis.', 'Alice, whose thoughts were still running on the Duchess\'s cook. She carried the pepper-box in her life; it was all dark overhead; before her was another long passage, and the executioner went off.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (12, 'Odit at eveniet dolorem ut. Autem beatae voluptatem iure quia. Et est reiciendis fugit perspiciatis animi itaque reprehenderit.', 'King, the Queen, \'and take this child away with me,\' thought Alice, \'to pretend to be rude, so she helped herself to some tea and bread-and-butter, and then said \'The fourth.\' \'Two days wrong!\'.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (13, 'Aut nemo praesentium voluptatum mollitia totam. Animi ut sint sint voluptatibus facilis ratione natus. Dicta soluta quasi corrupti. Ut magni nihil voluptates natus.', 'Pigeon; \'but I know all the jurors were writing down \'stupid things!\' on their slates, when the Rabbit came near her, about the reason is--\' here the Mock Turtle at last, with a smile. There was no.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (14, 'Rerum quo sequi ut explicabo ut omnis maxime. Id debitis eum accusantium blanditiis sint. Sed dicta eligendi aut sit vero ad. Fuga modi asperiores dicta non at.', 'By the time he had to be afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe there\'s an atom of meaning in it,\' but none of them bowed low. \'Would you tell me,\' said Alice, \'and.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (15, 'In aperiam maiores eum quia. Voluptatum aut aut id non omnis. Iusto quaerat laborum perspiciatis aut facere atque assumenda neque. Dolorum quidem ipsa voluptas saepe est ipsam.', 'Alice, every now and then raised himself upon tiptoe, put his mouth close to the other, saying, in a great hurry. \'You did!\' said the Eaglet. \'I don\'t know the way YOU manage?\' Alice asked. \'We.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (16, 'Aliquid eum earum consectetur dolore odit praesentium similique. Numquam sit eius qui. Dolor omnis at et illum sit. Sint ex in aperiam aut ut aut.', 'Soup! \'Beautiful Soup! Who cares for you?\' said the Duchess, who seemed too much of it appeared. \'I don\'t know what to say which), and they lived at the great question is, what?\' The great question.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (17, 'Dolores earum corrupti et. Reprehenderit totam autem ipsa sunt quis. Perspiciatis eligendi quia vitae autem voluptatum possimus.', 'Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse did not seem to see if he thought it over afterwards, it occurred to her feet as the hall was very likely to eat or.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (18, 'Quam modi animi officia quod quasi laudantium. Quo sit recusandae maxime in odit.', 'The Queen smiled and passed on. \'Who ARE you doing out here? Run home this moment, and fetch me a good deal to come down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (19, 'Et corporis quos ex est fuga ex quidem. Vel qui dignissimos aut. Rerum earum doloremque est voluptatum. Atque magni ducimus assumenda rem.', 'It was as much right,\' said the King: \'however, it may kiss my hand if it makes me grow smaller, I suppose.\' So she stood still where she was coming back to the shore. CHAPTER III. A Caucus-Race and.');
INSERT INTO `helps` (`id`, `question`, `answer`) VALUES (20, 'Quidem facere consequatur rerum id ipsa unde unde voluptatem. Explicabo odio molestiae vel molestiae. Omnis doloribus fugiat omnis ullam est rem.', 'She had not long to doubt, for the accident of the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon repeated impatiently: \'it begins \"I passed by his garden, and I.');


#
# TABLE STRUCTURE FOR: roles
#

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `roles` (`id`, `name`) VALUES ('4772806e-2fd3-31', 'commodi');
INSERT INTO `roles` (`id`, `name`) VALUES ('4c4c2af7-7017-32', 'sunt');
INSERT INTO `roles` (`id`, `name`) VALUES ('4f166e31-6c3f-3f', 'harum');
INSERT INTO `roles` (`id`, `name`) VALUES ('6252055e-d3e9-3c', 'est');
INSERT INTO `roles` (`id`, `name`) VALUES ('d1b55722-05ec-3d', 'expedita');


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('0254a575-2790-34', 'All the time she heard her sentence three of the house!\' (Which was very provoking to find quite a new pair of gloves and a sad tale!\' said the King, who had been looking at everything that Alice.', '1987-02-25 01:42:51', 'quasi', 'Omnis quidem eos vel voluptatem soluta earum hic. Non provident voluptas vel qui animi fuga esse. Necessitatibus nam et nesciunt ea non ut expedita et. Corporis optio veritatis eos ducimus reprehenderit ratione.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('05321fc3-49f0-3a', 'The Mouse did not look at a reasonable pace,\' said the Cat. \'I\'d nearly forgotten that I\'ve got back to the Duchess: \'and the moral of that is--\"The more there is of yours.\"\' \'Oh, I know!\' exclaimed.', '1994-06-07 03:41:25', 'nihil', 'Reprehenderit nostrum pariatur quidem magni. Cumque praesentium sapiente omnis quo. Eos molestiae et enim perspiciatis natus nihil.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('2c22f82b-296e-3e', 'Alice, who was peeping anxiously into her face. \'Very,\' said Alice: \'three inches is such a dreadful time.\' So Alice got up and leave the court; but on the other side of the window, I only knew how.', '1970-03-10 05:28:04', 'possimus', 'Nihil ex repudiandae aut repudiandae et deleniti voluptatem. Hic fugit est inventore inventore non deleniti sit. Et voluptatem aut aut veniam ea in et.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('5597c543-dcaa-3e', 'As she said this, she looked back once or twice she had found the fan and two or three times over to the Knave was standing before them, in chains, with a round face, and large eyes like a.', '2004-11-02 13:58:53', 'facere', 'Totam nihil non enim eos dolorum. Repellendus commodi dolor doloribus aut et odio. Impedit est neque aut dolorem.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('614771af-ffcd-3b', 'I\'ll try if I might venture to ask help of any that do,\' Alice hastily replied; \'at least--at least I know I do!\' said Alice in a long, low hall, which was sitting on a branch of a well?\' The.', '2002-01-03 10:57:09', 'voluptatem', 'Possimus consequatur consequuntur quia neque ipsum. Quia repellat fuga aut aut rerum ut. Praesentium ex consequatur voluptate repellendus.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('7353b9aa-12ef-33', 'She was moving them about as curious as it spoke (it was Bill, the Lizard) could not remember ever having seen in her life; it was addressed to the little door, had vanished completely. Very soon.', '2017-04-21 02:57:54', 'qui', 'Ut voluptates enim velit esse atque voluptas qui qui. Praesentium vero animi ipsum impedit. Minima aut autem officia cupiditate. Exercitationem doloremque rerum debitis voluptatem ut.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('751145c6-c72d-38', 'I think?\' he said do. Alice looked all round the neck of the month is it?\' Alice panted as she heard her voice sounded hoarse and strange, and the little crocodile Improve his shining tail, And pour.', '1986-01-08 07:38:54', 'nihil', 'Nostrum deleniti quis iure repudiandae commodi. Ducimus possimus fuga dolores debitis molestiae distinctio. Quis sit labore vel fugit quo.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('7e434376-8c33-3c', 'I\'m afraid, but you might knock, and I shall have somebody to talk about trouble!\' said the Caterpillar. Here was another puzzling question; and as Alice could bear: she got to do,\' said the Mock.', '2003-05-25 15:47:33', 'quos', 'Aut in esse quia labore eum. Esse minima fugit eos impedit tempora explicabo sed voluptatem. Sed et dignissimos laborum et nobis molestiae assumenda consectetur. Voluptatem dignissimos error autem error modi ipsum blanditiis sapiente.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('835ee937-a82b-3c', 'I will just explain to you to get an opportunity of saying to herself \'That\'s quite enough--I hope I shan\'t go, at any rate a book of rules for shutting people up like a thunderstorm. \'A fine day,.', '1986-12-15 16:13:51', 'tenetur', 'Omnis eveniet et vitae non et dicta. Adipisci eaque enim ipsa sit sit aliquam. Labore nostrum debitis accusamus sit.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('95a70295-7c0e-3c', 'Hatter. \'I deny it!\' said the last few minutes that she was as long as I do,\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow up any more if you\'d like it put more simply--\"Never.', '1977-09-06 09:47:51', 'explicabo', 'Eum aut et qui minima distinctio est maiores. Eum blanditiis architecto ut necessitatibus cumque qui eveniet. Nihil beatae et delectus voluptas molestiae totam impedit. Sunt error quia qui ullam aut dolorem.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('9863e4c3-9a23-31', 'ME,\' said Alice in a shrill, passionate voice. \'Would YOU like cats if you hold it too long; and that in the other. In the very middle of one! There ought to tell its age, there was nothing so VERY.', '1990-03-25 08:24:10', 'recusandae', 'Qui voluptatem voluptatum eum suscipit possimus. Omnis in eligendi ea quod autem veniam id. Quia qui et quis voluptas perferendis.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('9c2ff1ed-33ff-38', 'Mouse, in a tone of great curiosity. \'Soles and eels, of course,\' the Mock Turtle. Alice was more and more faintly came, carried on the top of his tail. \'As if I shall be a great hurry to change the.', '1974-08-29 06:04:04', 'fuga', 'Blanditiis ratione cum voluptatem quos distinctio. Dolorem unde aut est sequi nostrum nisi. Ipsum quas iste recusandae et iure voluptas. Dolorum dolores perferendis sapiente eius et recusandae quasi.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('a5427a88-d597-31', 'Alice looked down into its face in some book, but I shall have to fly; and the Dormouse turned out, and, by the pope, was soon submitted to by the officers of the sea.\' \'I couldn\'t help it,\' she.', '2024-01-17 05:45:46', 'consequatur', 'Neque commodi sed occaecati aut. Soluta quisquam blanditiis doloremque. Culpa consequuntur eum et officia. Est dignissimos eum aut nam et quia numquam id.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('b1fdae9e-639f-3e', 'The chief difficulty Alice found at first she would manage it. \'They must go by the hand, it hurried off, without waiting for the moment she felt sure she would keep, through all her wonderful.', '2002-07-25 10:54:03', 'omnis', 'Deleniti sunt fuga vero suscipit sed. Saepe facere voluptatem voluptatem voluptatem sint et sed. Cum iusto et qui dolores facilis.');
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`) VALUES ('d068cc39-dcc7-3d', 'Alice said nothing: she had wept when she was up to her head, she tried the little magic bottle had now had its full effect, and she set the little door, had vanished completely. Very soon the.', '1976-04-01 04:11:11', 'sapiente', 'Distinctio voluptatem odio et qui illum accusantium dolor. Aut at voluptatem tenetur maiores. Consequatur accusamus officia dignissimos est voluptatem. Quia voluptate magni voluptates exercitationem quia amet modi voluptatibus. Voluptatem quo quas rem nostrum.');


#
# TABLE STRUCTURE FOR: crew_role
#

DROP TABLE IF EXISTS `crew_role`;

CREATE TABLE `crew_role` (
  `id` binary(16) NOT NULL,
  `roles_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `crew_role` (`id`, `roles_name`) VALUES ('55626a67-48ed-3d', 'Monahan');
INSERT INTO `crew_role` (`id`, `roles_name`) VALUES ('939614a2-25bd-3b', 'Fisher');
INSERT INTO `crew_role` (`id`, `roles_name`) VALUES ('a698c050-b812-38', 'Bailey');

#
# TABLE STRUCTURE FOR: categories
#

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` (`id`, `name`) VALUES ('3decc534-0fdc-31', 'quae');
INSERT INTO `categories` (`id`, `name`) VALUES ('48614d4d-77ee-32', 'non');
INSERT INTO `categories` (`id`, `name`) VALUES ('71b37efa-740d-3d', 'quod');
INSERT INTO `categories` (`id`, `name`) VALUES ('8283c6b3-5740-34', 'omnis');
INSERT INTO `categories` (`id`, `name`) VALUES ('a55ae298-f880-3b', 'dolorem');
INSERT INTO `categories` (`id`, `name`) VALUES ('a6c6c7ce-cd28-35', 'dolores');
INSERT INTO `categories` (`id`, `name`) VALUES ('b9100da4-822c-3e', 'qui');
INSERT INTO `categories` (`id`, `name`) VALUES ('c790c252-fc1b-3e', 'sit');
INSERT INTO `categories` (`id`, `name`) VALUES ('c8ab792d-47d3-37', 'libero');
INSERT INTO `categories` (`id`, `name`) VALUES ('d0790a9f-e220-33', 'velit');


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('205a88f7-fb5b-34', 'grayce07', 'c6dac982a99773c3320f48a49a21faa6e44a838b', 'Erwin Kozey', '369 Mraz Canyon\nEast Adrain, NH 42932', 1, 'ricardo83@example.com', 'MasterCard', 'qui', 'https://loremflickr.com/640/480/', 0);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('230dc986-c666-36', 'kieran.bradtke', '2024f849412c9efb8f9d0546de41e2b9f44eebf9', 'Dr. Ford Kihn', '1946 Feeney Mountain\nPaxtonborough, VA 54527', 0, 'swift.moshe@example.org', 'MasterCard', 'id', 'https://loremflickr.com/640/480/', 2);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('2816e0c3-884a-3e', 'jasper47', '79b72ca3488d2febd1c16c57488d1c94438147bd', 'Glen Gerhold', '6369 Reed Valleys Suite 974\nPort Eulah, ME 01915', 0, 'obeahan@example.com', 'Visa', 'omnis', 'https://loremflickr.com/640/480/', 2);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('42ae1dd9-da97-31', 'howe.june', '7cf0b98bf680eadd149a3e26c6eb3751d3b1af1b', 'Mylene Feeney', '2145 Eldora Fork Suite 675\nPort Idamouth, WY 78926', 1, 'harrison.howell@example.com', 'Visa', 'molestiae', 'https://loremflickr.com/640/480/', 2);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('68097506-f0b5-34', 'brisa31', 'd372d224599a94badb6e4bf798fbd5c404a6f3c7', 'Mariam Kirlin', '8789 Lockman Summit\nTiaraborough, MI 64018', 1, 'al.bruen@example.org', 'Visa', 'quaerat', 'https://loremflickr.com/640/480/', 0);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('815bbd53-2ab7-3d', 'rdurgan', '6bc8a5debc308b251abce6ca3cdfee88dd812b0d', 'Mr. Isaac Strosin I', '0007 Alden Road Apt. 594\nEast Tysonshire, OK 77495', 1, 'predovic.mohammed@example.com', 'MasterCard', 'est', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('975b9ac5-0a5d-35', 'funk.eliseo', 'c25fe7120230a57e837ca1ee5273b0b9b9955ee7', 'Ms. Magdalena Hilll I', '360 Schneider Roads Apt. 503\nCruickshankbury, IA 34708-1430', 0, 'talon77@example.com', 'Discover Card', 'incidunt', 'https://loremflickr.com/640/480/', 2);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('a839c3f8-155f-35', 'emard.abby', '07bbdd979f22024ac890d1a6045821c7f4c944a5', 'Sid Nikolaus', '472 Annabelle Trail Suite 201\nEast Mireyaport, MS 24398-7184', 0, 'jeramie49@example.net', 'Visa', 'animi', 'https://loremflickr.com/640/480/', 0);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('a9f7526b-a682-3b', 'alysha.cummerata', '088922b7957803823e56743bb8108a22f254cfb7', 'Miss Chloe Langosh DDS', '34478 Crist Court\nMadalineport, VT 28512-6570', 1, 'fschuster@example.net', 'MasterCard', 'dolores', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('ba6037a7-b7f5-38', 'cruickshank.mia', 'd835286104594905c150c8d658bb0af459d38e03', 'Katheryn Langworth', '5905 Christina Corner\nLake Danielashire, ME 98816', 1, 'wmonahan@example.net', 'Visa', 'eaque', 'https://loremflickr.com/640/480/', 0);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('cb8a263d-ee89-31', 'blarkin', '49f3f72d0eba0fcd866b89d3f20205ee71717203', 'Freida Hyatt', '596 Botsford Port\nMayeview, NC 21581-5599', 0, 'napoleon.barton@example.com', 'MasterCard', 'et', 'https://loremflickr.com/640/480/', 0);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('e99659e7-03ea-3b', 'yasmeen41', '0994a1387f4101eac42b061a4f47cc409420ca21', 'Prof. Lysanne Dooley III', '241 Lind River\nNew Alex, IA 36416-3354', 1, 'lisette86@example.net', 'MasterCard', 'molestiae', 'https://loremflickr.com/640/480/', 0);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('f06365cd-4630-37', 'carmel.klein', '2be6fa458ee311838e9ff4ae6d6f61a0d6ac0550', 'Prof. Francisca Mosciski', '37891 Jarvis Skyway\nTerrystad, VT 40355', 0, 'vesta45@example.org', 'MasterCard', 'vitae', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('f20cb8d3-7be5-3d', 'xolson', 'daef792cec5d2538ff1cb536ed9532bea4cf2ff6', 'Dr. Dedrick Walsh III', '738 Gladys Walks\nNorth Estrellaport, WY 36270', 0, 'mabel69@example.com', 'Visa', 'perspiciatis', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('f4f05bbb-e445-35', 'everette65', 'dd33f26f03dc802bbd70f8fe8724fe3d799697b0', 'Kristin Luettgen', '31937 West Crescent\nBreitenbergshire, NJ 37665-1713', 1, 'jgusikowski@example.net', 'Visa', 'odit', 'https://loremflickr.com/640/480/', 1);



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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('030e7aa3-fa77-3a', '975b9ac5-0a5d-35', '4c4c2af7-7017-32');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('37207933-a9f3-31', 'cb8a263d-ee89-31', '4772806e-2fd3-31');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('54f283fc-6820-3c', '42ae1dd9-da97-31', '6252055e-d3e9-3c');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('72c54b58-67e4-3c', '205a88f7-fb5b-34', '4772806e-2fd3-31');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('8f08c89d-b249-3a', 'a9f7526b-a682-3b', '6252055e-d3e9-3c');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('9743c96d-5ef4-35', 'f20cb8d3-7be5-3d', '6252055e-d3e9-3c');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('9c6f1081-3222-3b', 'a839c3f8-155f-35', '4f166e31-6c3f-3f');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('b4c63fa8-3093-34', '230dc986-c666-36', '4c4c2af7-7017-32');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('c392d72b-48c7-3e', 'f4f05bbb-e445-35', 'd1b55722-05ec-3d');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('d722a1bc-89f2-37', 'ba6037a7-b7f5-38', 'd1b55722-05ec-3d');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('e88cacca-18d2-36', 'f06365cd-4630-37', '4f166e31-6c3f-3f');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('ed900b4e-3d20-30', 'e99659e7-03ea-3b', '4c4c2af7-7017-32');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('ef67249e-f24d-38', '2816e0c3-884a-3e', '4f166e31-6c3f-3f');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('f300b62f-b7f0-32', '815bbd53-2ab7-3d', '4772806e-2fd3-31');
INSERT INTO `account_role` (`id`, `account_id`, `role_id`) VALUES ('f8ef6bd8-c90b-3f', '68097506-f0b5-34', 'd1b55722-05ec-3d');


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('14b324d1-10cd-31', 'c790c252-fc1b-3e', '7e434376-8c33-3c');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('182695c8-6e99-37', '3decc534-0fdc-31', '0254a575-2790-34');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('245ff177-923f-37', 'b9100da4-822c-3e', '751145c6-c72d-38');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('276dd733-f577-32', 'a6c6c7ce-cd28-35', '0254a575-2790-34');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('3872e9e8-9daf-3d', '71b37efa-740d-3d', '2c22f82b-296e-3e');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('774861a5-9379-35', 'd0790a9f-e220-33', '614771af-ffcd-3b');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('823beda5-6f4d-3b', '71b37efa-740d-3d', 'a5427a88-d597-31');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('85ee5061-2be5-3a', 'a55ae298-f880-3b', 'd068cc39-dcc7-3d');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('901ebfb0-e8b9-34', 'c8ab792d-47d3-37', '5597c543-dcaa-3e');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('91b4881f-9a2a-34', 'd0790a9f-e220-33', '95a70295-7c0e-3c');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('9674fa61-d9aa-37', 'c790c252-fc1b-3e', '2c22f82b-296e-3e');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('98741313-19f3-38', '48614d4d-77ee-32', '05321fc3-49f0-3a');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('a3c427ea-b1cd-33', '8283c6b3-5740-34', '5597c543-dcaa-3e');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('ad5a16a6-bd01-30', 'b9100da4-822c-3e', '05321fc3-49f0-3a');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('b02d44dd-be32-30', 'c8ab792d-47d3-37', '835ee937-a82b-3c');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('ba6fd50c-1e93-3c', '48614d4d-77ee-32', '9c2ff1ed-33ff-38');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('bdb378ac-6e05-32', 'a6c6c7ce-cd28-35', '7353b9aa-12ef-33');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('d961fce7-829c-3a', 'a55ae298-f880-3b', '614771af-ffcd-3b');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('e6f87fd1-d2b7-35', '8283c6b3-5740-34', 'b1fdae9e-639f-3e');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('fc31d284-a536-36', '3decc534-0fdc-31', '9863e4c3-9a23-31');


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('152ca76d-83f4-3f', 'aut', 'deserunt', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('1b221306-1934-3b', 'quam', 'doloribus', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('2f1d3f41-b53a-34', 'voluptate', 'qui', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('2f502325-9077-37', 'quisquam', 'non', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('4aba1da8-c38a-32', 'nihil', 'quod', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('5db03975-10c4-3e', 'alias', 'nihil', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('93d9f9e8-28d9-37', 'laboriosam', 'totam', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('9bea52e8-95be-3f', 'nemo', 'aperiam', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('a6cac3ee-1e66-39', 'corporis', 'consequatur', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('a6ed497f-dac3-35', 'fuga', 'illo', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('b451c1b2-be96-3d', 'ad', 'sint', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('ba59de45-636d-36', 'corporis', 'veniam', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('d07039a4-61c6-3d', 'voluptatem', 'molestiae', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('dacea2a4-61a2-33', 'eveniet', 'dolorem', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('f4c63cbd-86d3-30', 'excepturi', 'quia', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('1821f81a-8d98-35', 'aperiam', 6, 'https://loremflickr.com/640/480/', '2003-12-16', 54, 'b', 'consectetur', 'Omnis et officiis aliquam ullam nostrum aut qui. Totam aliquam aut consequatur suscipit. Quaerat eveniet harum voluptatem quasi totam rerum.', 7885, 2, 1, '2f1d3f41-b53a-34');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('1b161912-b3bd-36', 'deserunt', 5, 'https://loremflickr.com/640/480/', '2002-07-27', 55, 'b', 'esse', 'Et reiciendis facere ullam asperiores veniam asperiores. Nostrum molestiae sint placeat ipsam omnis placeat. Occaecati maxime unde inventore. Et praesentium quis enim expedita quo.', 5638, 0, 1, '1b221306-1934-3b');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('1d934d45-f370-37', 'aliquid', 23, 'https://loremflickr.com/640/480/', '1980-02-20', 72, 'i', 'quaerat', 'At sequi omnis dolor officia atque quia aut rem. Assumenda molestiae ea earum. Necessitatibus ut quo velit corrupti voluptatem aut laborum sed. Amet nihil perferendis tenetur aut rerum commodi facere.', 3258, 0, 1, '5db03975-10c4-3e');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('2483097a-5001-3c', 'ut', 4, 'https://loremflickr.com/640/480/', '2008-03-24', 75, 'n', 'ut', 'Unde sapiente omnis voluptas tempore. Sunt id velit nemo iusto eos rerum nulla. Sit quia voluptas ut ad repellendus.', 2378, 1, 1, 'd07039a4-61c6-3d');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('2f523870-31a6-38', 'sit', 2, 'https://loremflickr.com/640/480/', '1981-01-09', 64, 'f', 'quae', 'Amet omnis modi quasi omnis harum. Voluptates fuga in in qui vitae qui est consequatur. Et nulla labore et quis.', 8041, 0, 1, '2f1d3f41-b53a-34');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('4a8af152-b4a9-3d', 'aliquam', 4, 'https://loremflickr.com/640/480/', '1998-04-04', 92, 'b', 'eos', 'Quia ea sunt perspiciatis sint. Nihil est quod dolores beatae accusamus provident voluptate. Aspernatur animi eveniet delectus aut temporibus.', 2202, 1, 1, '2f502325-9077-37');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('4c0d6f7e-c328-36', 'ut', 13, 'https://loremflickr.com/640/480/', '1976-10-21', 55, 'p', 'enim', 'Ad aperiam alias nisi alias. Dicta quis saepe modi deleniti sed. Velit in nam est sed accusantium consequatur.', 5727, 1, 1, '4aba1da8-c38a-32');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('55054fed-e0bd-31', 'repellendus', 11, 'https://loremflickr.com/640/480/', '2004-02-03', 94, 'f', 'eveniet', 'Quasi velit magnam iste repudiandae et aut nisi hic. Eos excepturi libero molestiae enim ullam sed. Et aliquid dolores nam odit in quod nihil nisi.', 2875, 2, 1, '1b221306-1934-3b');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('55d6ddf3-e2d9-3e', 'tenetur', 21, 'https://loremflickr.com/640/480/', '2016-08-24', 50, 'j', 'culpa', 'Vel omnis inventore suscipit adipisci. Animi facilis amet adipisci in. Eius laborum sit dolor delectus tenetur. Est maxime cum porro vero et quis quia.', 3888, 2, 1, 'b451c1b2-be96-3d');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('633b5c40-e25e-3c', 'autem', 18, 'https://loremflickr.com/640/480/', '2022-05-23', 52, 'v', 'ut', 'Commodi ipsum consequuntur labore temporibus enim cumque. Ea mollitia ut pariatur porro exercitationem est consequatur.', 6608, 2, 1, '152ca76d-83f4-3f');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('67886f6e-1944-3c', 'maxime', 18, 'https://loremflickr.com/640/480/', '1991-01-30', 76, 'b', 'eligendi', 'Ea accusamus delectus doloribus necessitatibus quidem qui accusantium quos. Pariatur in vel fugiat eos quibusdam et. Enim ex quod velit ut sint recusandae. Quibusdam et maxime et veritatis iusto ad nihil.', 6494, 0, 1, '152ca76d-83f4-3f');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('696b5049-9c7b-38', 'ea', 10, 'https://loremflickr.com/640/480/', '2002-04-25', 87, 'l', 'repudiandae', 'Quo quis minima qui laborum architecto accusamus quibusdam optio. Expedita ea repellat cumque eveniet dolore numquam autem ut. In dolorem architecto molestiae qui eius error ullam quia. Facere dicta fugit nobis earum qui.', 4791, 2, 1, '93d9f9e8-28d9-37');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('73e7d31e-f167-3d', 'omnis', 24, 'https://loremflickr.com/640/480/', '1987-09-08', 95, 'c', 'omnis', 'Sed cum libero quia facere doloribus. Quis et omnis ut sint qui non eum. Quidem nisi ducimus autem accusantium illum voluptatem quidem. Sit sapiente deleniti saepe.', 6786, 0, 1, '9bea52e8-95be-3f');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('8353eca8-807a-37', 'voluptas', 22, 'https://loremflickr.com/640/480/', '2016-10-06', 57, 'i', 'temporibus', 'Culpa ipsam illo neque animi repellat consectetur. Ullam voluptas quibusdam sed repellat. Aut nihil ut sunt nisi. Est vel voluptates vitae enim quasi.', 6267, 2, 1, 'f4c63cbd-86d3-30');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('a5b3bf81-bc65-3f', 'dicta', 17, 'https://loremflickr.com/640/480/', '1978-06-18', 69, 'c', 'fugiat', 'Pariatur asperiores earum officia veritatis at. Blanditiis maxime nam asperiores dolores reiciendis at. Dignissimos debitis nihil porro vel.', 3310, 1, 1, 'a6cac3ee-1e66-39');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('a925584f-35fd-3a', 'reprehenderit', 14, 'https://loremflickr.com/640/480/', '1992-12-30', 55, 'b', 'dicta', 'Deserunt dolores magni ex adipisci ad. Doloribus ullam asperiores quis fugit commodi ipsam. Quia possimus ab eveniet in provident. Eius non atque doloremque enim a fugiat doloribus.', 2370, 0, 1, '2f502325-9077-37');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('b1e3017b-499b-3e', 'enim', 8, 'https://loremflickr.com/640/480/', '1996-01-21', 57, 'r', 'nulla', 'Dolore rerum et totam suscipit quia. Iure voluptate placeat doloribus harum est reiciendis ab. Maiores expedita id vel voluptatem ut alias.', 9041, 2, 1, '4aba1da8-c38a-32');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('bdc6462c-c6cc-32', 'eveniet', 12, 'https://loremflickr.com/640/480/', '1980-05-14', 63, 'n', 'eaque', 'Facilis asperiores ab accusantium nihil sed aut temporibus omnis. Neque et sit et soluta natus ex asperiores. Nobis voluptatem dolorem iusto quia et.', 6725, 0, 1, 'ba59de45-636d-36');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('c8f0cad8-0e85-3c', 'dolor', 23, 'https://loremflickr.com/640/480/', '2012-10-15', 96, 'g', 'eaque', 'Nihil exercitationem qui dolorem cumque dolor. Aspernatur est culpa enim dicta minus et dolores. Natus atque labore animi adipisci et harum. Est inventore rem tempora temporibus. Enim distinctio et sed eligendi ut fuga.', 6737, 0, 1, 'a6ed497f-dac3-35');
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`) VALUES ('fdb2eca0-8270-3b', 'repellendus', 22, 'https://loremflickr.com/640/480/', '1995-05-17', 74, 'y', 'a', 'Reiciendis quos ut id exercitationem voluptates porro minus. Aspernatur sit nam nemo nostrum nam qui et. Excepturi veritatis ut voluptas ut excepturi.', 5217, 2, 1, 'dacea2a4-61a2-33');



#
# TABLE STRUCTURE FOR: celebrity
#

DROP TABLE IF EXISTS `celebrity`;

CREATE TABLE `celebrity` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `bio` mediumtext DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('08353c30-a104-39', 'Bria Kozey', '1989-07-13', 'Guinea-Bissau', 'neque', 'Sint commodi atque voluptas perferendis et praesentium aspernatur. Assumenda nihil minus molestias perferendis corrupti est sit. Reiciendis est omnis eum. Et voluptatem numquam qui quibusdam.', 'https://loremflickr.com/640/480/');
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('13c013b3-a2a6-36', 'Burnice Reinger MD', '2002-09-26', 'Botswana', 'omnis', 'Nobis sint earum deserunt neque debitis consequatur. Architecto quo quaerat et ipsam soluta vel architecto. Debitis quia aut itaque aut. Error eaque maiores veniam alias excepturi.', 'https://loremflickr.com/640/480/');
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('1f4d9e4b-e702-33', 'Weston Volkman', '1985-01-02', 'Egypt', 'numquam', 'Est aut excepturi a voluptatum qui suscipit. Doloribus amet nulla veritatis consectetur sit non et. Et nihil consequuntur quidem a nulla aliquid.', 'https://loremflickr.com/640/480/');
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('23827b07-e0c9-30', 'Melvina Kunde', '2005-08-25', 'Maldives', 'cupiditate', 'Voluptas ad illum itaque iste omnis. Omnis aut odit corporis itaque modi sit. Sed incidunt natus unde impedit.', 'https://loremflickr.com/640/480/');
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('3b3bda7f-dd6e-3f', 'Willa Balistreri Jr.', '2004-07-16', 'Micronesia', 'iure', 'Eaque hic provident molestiae alias vel ea aut. Eveniet et sapiente qui unde. Velit voluptas eaque qui id.', 'https://loremflickr.com/640/480/');
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('441b6120-fd59-30', 'Albina Sporer', '2021-04-28', 'Suriname', 'amet', 'Qui explicabo quisquam minima sed ut et ullam exercitationem. Vero sed magnam laborum vel. Minus eaque voluptates quia nostrum sequi. Voluptatem suscipit possimus sapiente et deserunt atque.', 'https://loremflickr.com/640/480/');
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('4f0039a3-0b35-31', 'Kaycee Herman', '1974-12-06', 'New Zealand', 'aut', 'Id deserunt sunt et molestias aperiam. Autem et qui eum. Tempore perferendis ab dolorem inventore et non ratione.', 'https://loremflickr.com/640/480/');
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('5199c08b-13e4-37', 'Gonzalo Hettinger', '1979-04-19', 'Serbia', 'laborum', 'Voluptas dicta consectetur laudantium dolores quibusdam at aspernatur. Et sapiente cum placeat itaque dolores et porro. Accusantium sint necessitatibus reiciendis reprehenderit.', 'https://loremflickr.com/640/480/');
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('56c4829d-6d49-3d', 'Damion Schamberger', '1996-05-18', 'Niue', 'accusantium', 'Rerum fuga autem quasi aut ut. Autem incidunt laboriosam vitae ab. Nulla vitae ut libero adipisci.', 'https://loremflickr.com/640/480/');
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('5ee14fc7-652c-30', 'Rudy Hirthe Sr.', '1976-01-07', 'Kazakhstan', 'omnis', 'Soluta placeat quia excepturi eos ut. Consequatur possimus consequatur debitis eaque quidem nostrum. Quasi accusamus voluptas vitae voluptates.', 'https://loremflickr.com/640/480/');
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('83860e82-aa21-38', 'Kaylee Block', '1985-03-19', 'Montserrat', 'harum', 'Dolor voluptatem quidem dolor nobis non quisquam rerum. Cupiditate voluptatem aut quia dolores nisi. Nam qui dolor voluptatum aut odit est.', 'https://loremflickr.com/640/480/');
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('9fa0416e-c008-34', 'Dr. Laverna Klocko Sr.', '1985-07-10', 'Iran', 'et', 'Recusandae ut dolorum maiores. Ullam est quia et dolor non. Sunt sunt inventore eos quam enim maxime repudiandae. Et consectetur sequi ad tempore voluptates.', 'https://loremflickr.com/640/480/');
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('a5a83b3b-3781-35', 'Wallace Roob Sr.', '1970-10-08', 'Cameroon', 'ullam', 'Excepturi et vel ut dolore similique ipsum culpa. Ea sit architecto vel voluptas quam.', 'https://loremflickr.com/640/480/');
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('bc68da83-19c4-39', 'Miss Elyse Bergnaum II', '1977-01-20', 'Faroe Islands', 'corrupti', 'Exercitationem ex ut et est itaque et. Perspiciatis id molestiae cupiditate assumenda possimus voluptas. Neque deserunt officiis sed hic. Aut pariatur ea qui omnis distinctio et nesciunt.', 'https://loremflickr.com/640/480/');
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`) VALUES ('cfcb7647-5d26-3b', 'Berry Mante', '2016-03-02', 'Bermuda', 'quia', 'Sit iure deleniti consequatur. Consequuntur dolorem autem omnis nam excepturi ducimus labore dolores. Perferendis optio sit ab.', 'https://loremflickr.com/640/480/');



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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('12128a8c-0504-33', 'Balanced scalable hardware', 'http://smitham.com/', 'Pariatur error dolores est occaecati ut. Consequatur debitis autem soluta voluptatem delectus cupiditate est. Placeat nobis autem magni quia ad. Expedita laudantium voluptatum nobis.', '2f523870-31a6-38');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('12d0fab8-2bfb-30', 'Focused holistic solution', 'http://www.roob.com/', 'Officia ab aut provident maxime et autem illo. Quod nihil cupiditate aliquid exercitationem soluta dicta ut tempore. Est provident laborum omnis sed illo aut.', '2483097a-5001-3c');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('1352d758-b06c-39', 'Open-source multi-state project', 'http://pagacpurdy.com/', 'Rerum atque est similique tempora ratione dignissimos. Exercitationem quia enim inventore eligendi optio. Quam soluta reiciendis harum veniam dolores. Tempora voluptatem ducimus eligendi cumque saepe.', '633b5c40-e25e-3c');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('1953aa89-6fe3-39', 'Extended client-driven policy', 'http://www.swift.com/', 'Officia esse enim aspernatur est sint sint. Consectetur laboriosam eligendi illo qui consectetur voluptatem aut. Sapiente adipisci eos pariatur praesentium. Aliquid aut exercitationem doloribus cupiditate error.', '67886f6e-1944-3c');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('2d86abbf-7167-32', 'Object-based non-volatile hierarchy', 'http://prohaska.info/', 'Amet exercitationem nostrum amet distinctio illo libero. Eum illum autem consequatur ea. Velit placeat eveniet consequatur officiis fugit voluptatem consectetur. Quae quibusdam est quidem laboriosam omnis.', 'fdb2eca0-8270-3b');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('3261dfb3-cce7-33', 'Multi-layered well-modulated throughput', 'http://carterglover.com/', 'Molestiae deserunt saepe quas pariatur possimus nobis. Hic consequuntur et laudantium adipisci laboriosam non voluptatum. Non aut labore tempora vel.', '1b161912-b3bd-36');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('4100ef85-d388-33', 'Persevering national initiative', 'http://hauck.com/', 'Provident eum nihil explicabo nobis ut eos eum. Animi harum quidem laboriosam blanditiis. Ea qui amet modi ut id rerum.', '4a8af152-b4a9-3d');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('4f1f22a4-2ec1-35', 'Reverse-engineered radical utilisation', 'http://www.windler.biz/', 'Rerum alias harum et eligendi. Minima voluptas et enim illo enim ea enim amet. Quia architecto adipisci aut rerum ab nulla.', 'a925584f-35fd-3a');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('6d2561cc-3181-3a', 'Sharable bi-directional extranet', 'http://www.dickens.com/', 'Quidem voluptatem et blanditiis. Ea vero quas aut eius sint quos ut. Consequatur accusantium repellendus quia aliquam aperiam facilis fugit.', 'a5b3bf81-bc65-3f');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('8137022a-da63-34', 'Fully-configurable modular protocol', 'http://www.daugherty.net/', 'Quibusdam repellendus adipisci aliquid doloribus illo sed id sint. Eos sunt ut animi aliquid ab omnis ratione. Cumque quod et voluptatem modi et perferendis in. Rerum eum minima ut molestias necessitatibus cumque debitis.', 'bdc6462c-c6cc-32');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('8e929532-35cd-32', 'Polarised regional function', 'http://www.huel.org/', 'Et perspiciatis sed sed. Quia facilis suscipit recusandae ex vel. Facere velit qui quis quia.', '55054fed-e0bd-31');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('923fc9f7-57c6-36', 'Digitized high-level extranet', 'http://www.walter.com/', 'Vel velit et provident sint veniam. Et suscipit culpa facilis accusantium veritatis cum quas. Aut libero ut ab aut et molestias error.', '55d6ddf3-e2d9-3e');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('a2ba482f-2147-34', 'Managed homogeneous capacity', 'http://ortizemard.com/', 'Error aut occaecati id qui fuga ut voluptatibus. Sit et commodi molestiae perspiciatis assumenda. Placeat aliquam voluptate minus sapiente perferendis.', 'b1e3017b-499b-3e');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('b50d410b-8d92-3e', 'Exclusive actuating approach', 'http://thielmonahan.net/', 'Consequatur dolor pariatur ipsam voluptas cum nihil. Esse pariatur recusandae optio eum animi.', '696b5049-9c7b-38');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('b9383a7a-54d4-37', 'Reverse-engineered coherent toolset', 'http://blick.com/', 'Quia cumque error non consequuntur culpa. Rerum perferendis aliquam quaerat minus. Eum blanditiis illum ipsum et.', '1821f81a-8d98-35');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('bc23460a-cd66-30', 'Organized optimizing processimprovement', 'http://www.brekke.com/', 'Ab alias quo et qui facere placeat molestiae. Officia fugit possimus explicabo sapiente accusantium blanditiis. Voluptates sunt officia quia. Possimus quod accusamus quia ut dolore est tempora.', '73e7d31e-f167-3d');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('ca6d9e8f-a3fa-35', 'Quality-focused actuating website', 'http://deckow.com/', 'Deserunt voluptate vitae id sunt nesciunt nisi. Beatae corrupti similique et ipsam soluta assumenda. Doloremque corrupti sapiente quae. Qui dicta eum autem eos qui. Labore autem tempora saepe vitae.', '8353eca8-807a-37');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('e5c32325-ab1b-3e', 'Triple-buffered actuating solution', 'http://www.howelllarson.com/', 'Numquam voluptate quas eaque dolor aspernatur. Aliquid pariatur sunt cum non neque odit doloribus. Voluptas sint reprehenderit ut.', '4c0d6f7e-c328-36');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('e9771a9a-27a6-34', 'Enterprise-wide zerotolerance moratorium', 'http://www.effertz.com/', 'Ad vero nesciunt provident id. Omnis ea quibusdam quis. Optio qui eligendi consequuntur quas. Qui dignissimos et ut ab blanditiis.', 'c8f0cad8-0e85-3c');
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`) VALUES ('f83efc9a-8a29-34', 'Robust 24/7 interface', 'http://www.beierbernier.biz/', 'Pariatur rem id iure vel vero consequatur ut. Rerum deleniti similique molestias minus. Dolore quod maiores vero expedita delectus ut. Ipsa occaecati nobis cum libero voluptates praesentium iure necessitatibus.', '1d934d45-f370-37');


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('18ed12e0-cec8-31', 'cb8a263d-ee89-31', '9ce237b8-e597-37');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('2400990b-f07a-31', '815bbd53-2ab7-3d', '36f0f568-ea76-35');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('26b24a38-888a-38', 'ba6037a7-b7f5-38', '833ad691-7bae-3c');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('287faea3-5b3e-37', '205a88f7-fb5b-34', '07082047-bfc3-3c');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('2e0872c9-5b01-3d', '68097506-f0b5-34', '2d7859d0-dc8b-35');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('2f4d67db-275c-35', '230dc986-c666-36', '07844ff4-307e-34');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('62ffab2b-266a-31', 'f06365cd-4630-37', 'cc04f3c0-9aa6-3a');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('6869a1bb-3f3b-3c', '2816e0c3-884a-3e', '12dc38f3-d889-3a');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('6bb677d6-c715-3f', '975b9ac5-0a5d-35', '4629ebf9-763f-36');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('77e51b69-214f-37', '42ae1dd9-da97-31', '177536ca-d019-39');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('af6066c9-f9be-35', '205a88f7-fb5b-34', '07082047-bfc3-3c');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('c97a8fac-02f5-3c', '230dc986-c666-36', '07844ff4-307e-34');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('cd46e24b-e1be-31', 'a839c3f8-155f-35', '74101454-ea00-34');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('d14a118c-c31d-37', 'f4f05bbb-e445-35', 'ddcbbce2-1446-35');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('db5b7a3d-f125-3d', 'a9f7526b-a682-3b', '7959b2b2-5a7f-3a');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('dcd90d06-693d-32', 'f20cb8d3-7be5-3d', 'd7e25ace-c22b-3b');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('eb09ce42-c248-30', '2816e0c3-884a-3e', '12dc38f3-d889-3a');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('eba0114a-6b51-3e', '42ae1dd9-da97-31', '177536ca-d019-39');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('ebd4d588-1b46-32', 'e99659e7-03ea-3b', 'aeb481e0-dbb0-30');
INSERT INTO `favorite_genres` (`id`, `accout_id`, `genres_id`) VALUES ('f6299685-c58f-32', '68097506-f0b5-34', '2d7859d0-dc8b-35');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('0b6fec6d-9482-3e', 'cb8a263d-ee89-31', '67886f6e-1944-3c');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('3618e1bf-391f-37', '68097506-f0b5-34', '2f523870-31a6-38');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('41db64d6-a356-36', '2816e0c3-884a-3e', '1d934d45-f370-37');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('4f5f9ca3-663a-31', 'a839c3f8-155f-35', '55054fed-e0bd-31');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('50c35e12-8eb9-3a', 'a9f7526b-a682-3b', '55d6ddf3-e2d9-3e');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('52b2eb64-76ba-3f', '68097506-f0b5-34', 'fdb2eca0-8270-3b');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('5797eccc-10ce-3c', '230dc986-c666-36', 'b1e3017b-499b-3e');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('5a755369-dd5a-35', '205a88f7-fb5b-34', '1821f81a-8d98-35');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('8c759e64-3a9f-3a', 'f20cb8d3-7be5-3d', '8353eca8-807a-37');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('90bb948e-e21b-32', '975b9ac5-0a5d-35', '4c0d6f7e-c328-36');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('9a9807e5-f107-34', 'ba6037a7-b7f5-38', '633b5c40-e25e-3c');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('aadc6d78-2fc4-33', '42ae1dd9-da97-31', '2483097a-5001-3c');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('b2b009ff-5bbf-38', '2816e0c3-884a-3e', 'bdc6462c-c6cc-32');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('b6aacdd8-d386-36', 'f06365cd-4630-37', '73e7d31e-f167-3d');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('bef826a6-cc11-3a', '42ae1dd9-da97-31', 'c8f0cad8-0e85-3c');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('bfb84654-3dd8-3c', 'e99659e7-03ea-3b', '696b5049-9c7b-38');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('c3f7922d-c3c8-36', '230dc986-c666-36', '1b161912-b3bd-36');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('d39e95b1-92cf-3a', 'f4f05bbb-e445-35', 'a5b3bf81-bc65-3f');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('e77a496e-5c4d-3d', '205a88f7-fb5b-34', 'a925584f-35fd-3a');
INSERT INTO `favourites` (`id`, `account_id`, `movie_id`) VALUES ('ea797a20-bbd8-3e', '815bbd53-2ab7-3d', '4a8af152-b4a9-3d');


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('17761d9a-630e-36', 'Dolor ut eum earum consequatur quis.', 2, 'The Hatter shook his head off outside,\' the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of breath, and said \'No, never\') \'--so you can find them.\' As she said to live. \'I\'ve.', '2018-01-10 04:14:50', '73e7d31e-f167-3d', 'f06365cd-4630-37');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('25598319-40fc-36', 'Reprehenderit nihil enim expedita provident placeat excepturi sit voluptatum.', 5, 'Alice with one elbow against the roof of the legs of the court,\" and I could not think of nothing better to say which), and they repeated their arguments to her, And mentioned me to him: She gave me.', '1970-07-27 19:22:14', '55d6ddf3-e2d9-3e', 'a9f7526b-a682-3b');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('2687e0a2-3c27-35', 'Veniam nesciunt est et enim.', 9, 'So Alice got up this morning, but I grow at a king,\' said Alice. \'Call it what you were all crowded round her at the Caterpillar\'s making such VERY short remarks, and she thought it over afterwards,.', '2020-09-20 15:29:58', '8353eca8-807a-37', 'f20cb8d3-7be5-3d');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('27a507d5-9c3f-3a', 'Quia animi officia officia praesentium id.', 6, 'Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, \'as all the creatures wouldn\'t be in before the end of the house if it began ordering people about like mad things all this time, and was.', '2017-12-23 12:05:05', '633b5c40-e25e-3c', 'ba6037a7-b7f5-38');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('3505bd16-2cba-3c', 'Ut corporis aut dolores recusandae aut molestiae.', 7, 'All the time they had at the Footman\'s head: it just missed her. Alice caught the baby was howling so much into the teapot. \'At any rate it would all come wrong, and she put her hand in her head,.', '1978-08-27 12:13:32', '2f523870-31a6-38', '68097506-f0b5-34');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('3f829b64-ed1b-30', 'Ea aperiam amet quaerat consequatur molestiae quaerat sed.', 5, 'Alice, she went on just as if nothing had happened. \'How am I then? Tell me that first, and then I\'ll tell him--it was for bringing the cook till his eyes very wide on hearing this; but all he SAID.', '1976-07-30 01:47:50', '1b161912-b3bd-36', '230dc986-c666-36');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('506d8a76-7bcd-36', 'Non sed magni error et delectus porro et accusantium.', 10, 'Take your choice!\' The Duchess took her choice, and was immediately suppressed by the time he had come back again, and we won\'t talk about her any more HERE.\' \'But then,\' thought she, \'what would.', '2020-06-13 06:52:07', 'bdc6462c-c6cc-32', '2816e0c3-884a-3e');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('53e3be61-209c-3a', 'Incidunt ipsam in consequatur eaque.', 4, 'Hatter: and in his note-book, cackled out \'Silence!\' and read as follows:-- \'The Queen will hear you! You see, she came rather late, and the happy summer days. THE.', '1971-06-18 13:14:38', '4c0d6f7e-c328-36', '975b9ac5-0a5d-35');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('53f00c98-0b17-39', 'Iure temporibus debitis est officiis dolorem est nulla.', 10, 'Lobster Quadrille?\' the Gryphon hastily. \'Go on with the Queen,\' and she ran with all speed back to finish his story. CHAPTER IV. The Rabbit started violently, dropped the white kid gloves, and she.', '2019-08-05 22:07:18', '1821f81a-8d98-35', '205a88f7-fb5b-34');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('64b4ce9a-b0d9-36', 'At voluptatibus non doloremque sed.', 10, 'PLEASE mind what you\'re doing!\' cried Alice, jumping up in a very curious sensation, which puzzled her very earnestly, \'Now, Dinah, tell me who YOU are, first.\' \'Why?\' said the Mock Turtle: \'why, if.', '1988-06-06 02:43:05', 'a925584f-35fd-3a', '205a88f7-fb5b-34');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('686a528a-48a6-3a', 'Sequi ut rerum ab ipsa nihil repellendus ab enim.', 4, 'After a while she remembered the number of bathing machines in the sea. But they HAVE their tails fast in their proper places--ALL,\' he repeated with great emphasis, looking hard at Alice the moment.', '1988-08-19 01:29:02', 'a5b3bf81-bc65-3f', 'f4f05bbb-e445-35');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('6a150193-68c6-37', 'Praesentium non minima debitis laborum esse.', 10, 'But she went on eagerly. \'That\'s enough about lessons,\' the Gryphon interrupted in a natural way again. \'I wonder how many miles I\'ve fallen by this time, and was delighted to find her way through.', '1994-05-02 13:07:53', 'c8f0cad8-0e85-3c', '42ae1dd9-da97-31');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('77a5c59e-06b0-3a', 'Aut voluptates aut fugiat.', 7, 'Her chin was pressed so closely against her foot, that there was a dead silence instantly, and Alice guessed who it was, even before she found it advisable--\"\' \'Found WHAT?\' said the Duck: \'it\'s.', '1996-02-22 18:36:26', '4a8af152-b4a9-3d', '815bbd53-2ab7-3d');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('8248907a-2088-3c', 'Libero dolores distinctio molestiae sunt unde expedita consequatur illum.', 7, 'When the procession moved on, three of the trial.\' \'Stupid things!\' Alice thought decidedly uncivil. \'But perhaps it was addressed to the Knave. The Knave of Hearts, and I don\'t put my arm round.', '1986-08-23 18:30:04', 'fdb2eca0-8270-3b', '68097506-f0b5-34');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('82e65b79-74f5-31', 'Ea debitis sunt magni autem quia.', 2, 'Gryphon remarked: \'because they lessen from day to day.\' This was quite impossible to say anything. \'Why,\' said the Cat, and vanished. Alice was beginning very angrily, but the Mouse replied rather.', '1982-01-14 12:16:39', '55054fed-e0bd-31', 'a839c3f8-155f-35');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('92520439-388b-3d', 'Sed molestiae omnis hic mollitia accusamus.', 5, 'NEVER come to the tarts on the bank, and of having nothing to what I eat\" is the reason and all dripping wet, cross, and uncomfortable. The moment Alice appeared, she was to get us dry would be.', '2011-08-01 15:31:18', '2483097a-5001-3c', '42ae1dd9-da97-31');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('9b9078b7-0908-34', 'Sit quam facilis ut.', 6, 'The Queen smiled and passed on. \'Who ARE you talking to?\' said one of them at dinn--\' she checked herself hastily, and said to live. \'I\'ve seen a good deal on where you want to go! Let me see: that.', '2022-10-06 09:36:22', '696b5049-9c7b-38', 'e99659e7-03ea-3b');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('a47b3a44-0ee8-39', 'Qui vitae sapiente modi ut voluptate dolorum facere alias.', 7, 'Alice looked very anxiously into its face was quite silent for a minute, trying to explain it is all the jurymen are back in a trembling voice, \'Let us get to the Classics master, though. He was an.', '1983-12-13 15:13:08', '1d934d45-f370-37', '2816e0c3-884a-3e');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('bce72639-3cc6-31', 'Placeat in nihil consectetur est ut animi.', 10, 'Mock Turtle said: \'I\'m too stiff. And the Eaglet bent down its head impatiently, and walked two and two, as the other.\' As soon as it is.\' \'Then you keep moving round, I suppose?\' said Alice. \'Well,.', '1981-07-24 05:50:15', 'b1e3017b-499b-3e', '230dc986-c666-36');
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`) VALUES ('db379b59-0157-3c', 'Minus aperiam corrupti natus at aspernatur sed.', 6, 'I was thinking I should like to show you! A little bright-eyed terrier, you know, this sort in her lessons in the last concert!\' on which the March Hare: she thought it must be collected at once.', '2016-01-22 06:50:40', '67886f6e-1944-3c', 'cb8a263d-ee89-31');



#
# TABLE STRUCTURE FOR: images_celebrity
#

DROP TABLE IF EXISTS `images_celebrity`;

CREATE TABLE `images_celebrity` (
  `id` binary(16) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `celebrity_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `celebrity_id` (`celebrity_id`),
  CONSTRAINT `images_celebrity_ibfk_1` FOREIGN KEY (`celebrity_id`) REFERENCES `celebrity` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('05e3d591-1658-37', 'https://loremflickr.com/640/480/', '441b6120-fd59-30');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('0e681372-98b0-34', 'https://loremflickr.com/640/480/', '13c013b3-a2a6-36');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('35b53bb8-97cd-30', 'https://loremflickr.com/640/480/', '5ee14fc7-652c-30');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('3c29389f-d366-3c', 'https://loremflickr.com/640/480/', '08353c30-a104-39');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('3f1c9f84-683d-36', 'https://loremflickr.com/640/480/', '1f4d9e4b-e702-33');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('45671a82-d4aa-3f', 'https://loremflickr.com/640/480/', 'cfcb7647-5d26-3b');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('5f71d86d-8f90-34', 'https://loremflickr.com/640/480/', 'bc68da83-19c4-39');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('63b9cd05-1d8c-38', 'https://loremflickr.com/640/480/', '5199c08b-13e4-37');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('681fe391-0aaa-39', 'https://loremflickr.com/640/480/', '23827b07-e0c9-30');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('73a36b47-3397-3f', 'https://loremflickr.com/640/480/', '9fa0416e-c008-34');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('73a99154-444f-3f', 'https://loremflickr.com/640/480/', '3b3bda7f-dd6e-3f');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('7d4c63fb-3cf4-39', 'https://loremflickr.com/640/480/', '08353c30-a104-39');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('81bf746b-cdb2-30', 'https://loremflickr.com/640/480/', 'a5a83b3b-3781-35');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('97968a6a-5903-36', 'https://loremflickr.com/640/480/', '83860e82-aa21-38');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('98da18dc-d58f-3e', 'https://loremflickr.com/640/480/', '23827b07-e0c9-30');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('c07b9ddf-71b0-3f', 'https://loremflickr.com/640/480/', '1f4d9e4b-e702-33');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('c308db44-0df4-31', 'https://loremflickr.com/640/480/', '4f0039a3-0b35-31');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('ebdb4eed-a9b0-3b', 'https://loremflickr.com/640/480/', '13c013b3-a2a6-36');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('ebe2374e-2a92-3c', 'https://loremflickr.com/640/480/', '56c4829d-6d49-3d');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('ec86c7bf-8e5c-33', 'https://loremflickr.com/640/480/', '3b3bda7f-dd6e-3f');


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('27ffb3cd-0648-3d', 'https://loremflickr.com/640/480/', '696b5049-9c7b-38');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('3307ab2c-88d2-39', 'https://loremflickr.com/640/480/', '2f523870-31a6-38');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('4310e19b-d327-3e', 'https://loremflickr.com/640/480/', 'a925584f-35fd-3a');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('564132fc-78e7-31', 'https://loremflickr.com/640/480/', '1b161912-b3bd-36');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('651b7bb1-a069-37', 'https://loremflickr.com/640/480/', '1821f81a-8d98-35');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('6996aae5-6242-3f', 'https://loremflickr.com/640/480/', '55054fed-e0bd-31');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('6c518103-5fe4-3d', 'https://loremflickr.com/640/480/', 'b1e3017b-499b-3e');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('75e0393c-e28a-3e', 'https://loremflickr.com/640/480/', 'bdc6462c-c6cc-32');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('78056582-765f-31', 'https://loremflickr.com/640/480/', '4a8af152-b4a9-3d');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('934ad522-74c6-3d', 'https://loremflickr.com/640/480/', '4c0d6f7e-c328-36');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('991a57bc-4954-34', 'https://loremflickr.com/640/480/', '633b5c40-e25e-3c');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('dac9fb31-e07c-3a', 'https://loremflickr.com/640/480/', '8353eca8-807a-37');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('e0fc2bd6-1813-32', 'https://loremflickr.com/640/480/', '55d6ddf3-e2d9-3e');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('e268a298-dd93-3c', 'https://loremflickr.com/640/480/', '73e7d31e-f167-3d');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('e2c63b79-136d-30', 'https://loremflickr.com/640/480/', '67886f6e-1944-3c');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('e470b811-3acb-32', 'https://loremflickr.com/640/480/', 'fdb2eca0-8270-3b');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('e771ff28-2d94-33', 'https://loremflickr.com/640/480/', '1d934d45-f370-37');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('eb0b4850-183e-3f', 'https://loremflickr.com/640/480/', 'a5b3bf81-bc65-3f');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('fa7b099c-257b-33', 'https://loremflickr.com/640/480/', 'c8f0cad8-0e85-3c');
INSERT INTO `images_movies` (`id`, `link`, `movies_id`) VALUES ('fb3ed0e0-881b-3d', 'https://loremflickr.com/640/480/', '2483097a-5001-3c');


#
# TABLE STRUCTURE FOR: job
#

DROP TABLE IF EXISTS `job`;

CREATE TABLE `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `celebrity_id` binary(16) DEFAULT NULL,
  `crew_role_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `celebrity_id` (`celebrity_id`),
  KEY `crew_role_id` (`crew_role_id`),
  CONSTRAINT `job_ibfk_1` FOREIGN KEY (`celebrity_id`) REFERENCES `celebrity` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `job_ibfk_2` FOREIGN KEY (`crew_role_id`) REFERENCES `crew_role` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `job` (`id`, `celebrity_id`, `crew_role_id`) VALUES (1, '08353c30-a104-39', '55626a67-48ed-3d');
INSERT INTO `job` (`id`, `celebrity_id`, `crew_role_id`) VALUES (2, '13c013b3-a2a6-36', '939614a2-25bd-3b');
INSERT INTO `job` (`id`, `celebrity_id`, `crew_role_id`) VALUES (3, '1f4d9e4b-e702-33', 'a698c050-b812-38');
INSERT INTO `job` (`id`, `celebrity_id`, `crew_role_id`) VALUES (4, '23827b07-e0c9-30', '55626a67-48ed-3d');
INSERT INTO `job` (`id`, `celebrity_id`, `crew_role_id`) VALUES (5, '3b3bda7f-dd6e-3f', '939614a2-25bd-3b');
INSERT INTO `job` (`id`, `celebrity_id`, `crew_role_id`) VALUES (6, '441b6120-fd59-30', 'a698c050-b812-38');
INSERT INTO `job` (`id`, `celebrity_id`, `crew_role_id`) VALUES (7, '4f0039a3-0b35-31', '55626a67-48ed-3d');
INSERT INTO `job` (`id`, `celebrity_id`, `crew_role_id`) VALUES (8, '5199c08b-13e4-37', '939614a2-25bd-3b');
INSERT INTO `job` (`id`, `celebrity_id`, `crew_role_id`) VALUES (9, '56c4829d-6d49-3d', 'a698c050-b812-38');
INSERT INTO `job` (`id`, `celebrity_id`, `crew_role_id`) VALUES (10, '5ee14fc7-652c-30', '55626a67-48ed-3d');
INSERT INTO `job` (`id`, `celebrity_id`, `crew_role_id`) VALUES (11, '83860e82-aa21-38', '939614a2-25bd-3b');
INSERT INTO `job` (`id`, `celebrity_id`, `crew_role_id`) VALUES (12, '9fa0416e-c008-34', 'a698c050-b812-38');
INSERT INTO `job` (`id`, `celebrity_id`, `crew_role_id`) VALUES (13, 'a5a83b3b-3781-35', '55626a67-48ed-3d');
INSERT INTO `job` (`id`, `celebrity_id`, `crew_role_id`) VALUES (14, 'bc68da83-19c4-39', '939614a2-25bd-3b');
INSERT INTO `job` (`id`, `celebrity_id`, `crew_role_id`) VALUES (15, 'cfcb7647-5d26-3b', 'a698c050-b812-38');
INSERT INTO `job` (`id`, `celebrity_id`, `crew_role_id`) VALUES (16, '08353c30-a104-39', '55626a67-48ed-3d');
INSERT INTO `job` (`id`, `celebrity_id`, `crew_role_id`) VALUES (17, '13c013b3-a2a6-36', '939614a2-25bd-3b');
INSERT INTO `job` (`id`, `celebrity_id`, `crew_role_id`) VALUES (18, '1f4d9e4b-e702-33', 'a698c050-b812-38');
INSERT INTO `job` (`id`, `celebrity_id`, `crew_role_id`) VALUES (19, '23827b07-e0c9-30', '55626a67-48ed-3d');
INSERT INTO `job` (`id`, `celebrity_id`, `crew_role_id`) VALUES (20, '3b3bda7f-dd6e-3f', '939614a2-25bd-3b');



#
# TABLE STRUCTURE FOR: movies_celebrity
#

DROP TABLE IF EXISTS `movies_celebrity`;

CREATE TABLE `movies_celebrity` (
  `id` binary(16) NOT NULL,
  `movie_id` binary(16) DEFAULT NULL,
  `celebrity_id` binary(16) DEFAULT NULL,
  `crew_roles` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `movie_id` (`movie_id`),
  KEY `celebrity_id` (`celebrity_id`),
  KEY `crew_roles` (`crew_roles`),
  CONSTRAINT `movies_celebrity_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `movies_celebrity_ibfk_2` FOREIGN KEY (`celebrity_id`) REFERENCES `celebrity` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `movies_celebrity_ibfk_3` FOREIGN KEY (`crew_roles`) REFERENCES `crew_role` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('049f34d7-d1fa-3e', 'fdb2eca0-8270-3b', '3b3bda7f-dd6e-3f', '939614a2-25bd-3b');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('084c11de-31ea-39', '4a8af152-b4a9-3d', '441b6120-fd59-30', 'a698c050-b812-38');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('09c3e78f-340f-34', '1b161912-b3bd-36', '4f0039a3-0b35-31', '55626a67-48ed-3d');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('0bba3a42-1953-3c', '55d6ddf3-e2d9-3e', '56c4829d-6d49-3d', 'a698c050-b812-38');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('0f32d8ce-3298-3d', 'c8f0cad8-0e85-3c', '23827b07-e0c9-30', '55626a67-48ed-3d');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('18e11faf-ec05-30', '4c0d6f7e-c328-36', '4f0039a3-0b35-31', '55626a67-48ed-3d');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('1c36b9fb-1f6f-32', '2483097a-5001-3c', '23827b07-e0c9-30', '55626a67-48ed-3d');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('2313986a-8dd4-3c', 'bdc6462c-c6cc-32', '1f4d9e4b-e702-33', 'a698c050-b812-38');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('236c004a-a9c5-39', '1d934d45-f370-37', '5199c08b-13e4-37', '939614a2-25bd-3b');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('29e2cb06-0bc6-3c', '73e7d31e-f167-3d', 'a5a83b3b-3781-35', '55626a67-48ed-3d');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('4372d2f1-f4ab-36', '67886f6e-1944-3c', '83860e82-aa21-38', '939614a2-25bd-3b');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('53319f2b-f151-39', '2483097a-5001-3c', '56c4829d-6d49-3d', 'a698c050-b812-38');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('6384f65b-2518-3a', 'a925584f-35fd-3a', '08353c30-a104-39', '55626a67-48ed-3d');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('881c336a-ee16-3a', 'b1e3017b-499b-3e', '13c013b3-a2a6-36', '939614a2-25bd-3b');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('8944853f-8af2-31', 'a5b3bf81-bc65-3f', 'cfcb7647-5d26-3b', 'a698c050-b812-38');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('a99f15ca-a740-35', '696b5049-9c7b-38', '9fa0416e-c008-34', 'a698c050-b812-38');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('b6202285-592e-3c', '2f523870-31a6-38', '5ee14fc7-652c-30', '55626a67-48ed-3d');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('b9fa835b-0bc0-39', '1d934d45-f370-37', '1f4d9e4b-e702-33', 'a698c050-b812-38');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('cd446423-47ad-36', '1821f81a-8d98-35', '441b6120-fd59-30', 'a698c050-b812-38');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('cfb4a25f-c665-3e', '2f523870-31a6-38', '3b3bda7f-dd6e-3f', '939614a2-25bd-3b');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('e0a8bada-52c4-33', '633b5c40-e25e-3c', '5ee14fc7-652c-30', '55626a67-48ed-3d');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('e68e90cd-730d-34', '8353eca8-807a-37', 'bc68da83-19c4-39', '939614a2-25bd-3b');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('f4b5cad1-60e2-33', '55054fed-e0bd-31', '5199c08b-13e4-37', '939614a2-25bd-3b');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('f50444be-9831-39', '1821f81a-8d98-35', '08353c30-a104-39', '55626a67-48ed-3d');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `crew_roles`) VALUES ('fd02ca12-23d0-3a', '1b161912-b3bd-36', '13c013b3-a2a6-36', '939614a2-25bd-3b');


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('145fbd45-9b60-36', '2f523870-31a6-38', '2d7859d0-dc8b-35');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('410c2d5c-eb26-30', '55d6ddf3-e2d9-3e', '7959b2b2-5a7f-3a');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('5a02f35f-1439-37', '2483097a-5001-3c', '177536ca-d019-39');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('6b44705f-bab7-32', '67886f6e-1944-3c', '9ce237b8-e597-37');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('7823652e-fb9f-38', '8353eca8-807a-37', 'd7e25ace-c22b-3b');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('80940972-9186-37', '1821f81a-8d98-35', '07082047-bfc3-3c');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('837e0120-db03-3a', '696b5049-9c7b-38', 'aeb481e0-dbb0-30');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('9f0c9997-89ae-3e', '73e7d31e-f167-3d', 'cc04f3c0-9aa6-3a');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('b190efb2-044a-38', '633b5c40-e25e-3c', '833ad691-7bae-3c');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('bc25cbf2-a7ec-3a', '1b161912-b3bd-36', '07844ff4-307e-34');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('cfa08402-fb61-39', '4c0d6f7e-c328-36', '4629ebf9-763f-36');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('dc45f79b-9b99-3c', '1d934d45-f370-37', '12dc38f3-d889-3a');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('e10ed34c-1134-3a', '55054fed-e0bd-31', '74101454-ea00-34');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('f0b4525c-2d41-32', '4a8af152-b4a9-3d', '36f0f568-ea76-35');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('f99bee29-b591-3e', 'a5b3bf81-bc65-3f', 'ddcbbce2-1446-35');


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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (1, '205a88f7-fb5b-34', '1821f81a-8d98-35', '1971-02-04 01:37:00', '4989702428035217', '45271389.4019');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (2, '230dc986-c666-36', '1b161912-b3bd-36', '2012-07-03 16:14:26', '5333844291270944', '435.7188');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (3, '2816e0c3-884a-3e', '1d934d45-f370-37', '1991-07-08 16:35:58', '5450221999176545', '5.9005');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (4, '42ae1dd9-da97-31', '2483097a-5001-3c', '2015-07-24 10:50:47', '4532010712485963', '350744.7669');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (5, '68097506-f0b5-34', '2f523870-31a6-38', '1992-06-26 05:55:44', '4556725574485', '875.2174');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (6, '815bbd53-2ab7-3d', '4a8af152-b4a9-3d', '1972-12-01 22:06:47', '4485223124345279', '129.5372');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (7, '975b9ac5-0a5d-35', '4c0d6f7e-c328-36', '1989-05-27 14:39:36', '4024007169347', '14355095.3095');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (8, 'a839c3f8-155f-35', '55054fed-e0bd-31', '1995-01-14 15:57:07', '342399818941919', '39010.5725');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (9, 'a9f7526b-a682-3b', '55d6ddf3-e2d9-3e', '1970-07-01 23:30:29', '4929124282507', '408356.2450');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (10, 'ba6037a7-b7f5-38', '633b5c40-e25e-3c', '2009-11-02 02:25:15', '5576560218353536', '101139.9338');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (11, 'cb8a263d-ee89-31', '67886f6e-1944-3c', '2001-12-01 09:04:10', '372810874010184', '10.6908');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (12, 'e99659e7-03ea-3b', '696b5049-9c7b-38', '2023-12-22 17:30:49', '6011393527547436', '99999999.9999');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (13, 'f06365cd-4630-37', '73e7d31e-f167-3d', '1993-12-06 07:51:22', '5530881305459642', '59733463.6746');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (14, 'f20cb8d3-7be5-3d', '8353eca8-807a-37', '2007-11-23 18:59:55', '5149686909337839', '324.8089');
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `bank`, `price`) VALUES (15, 'f4f05bbb-e445-35', 'a5b3bf81-bc65-3f', '1987-10-20 14:41:48', '5259578037259954', '292866.1831');





