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

INSERT INTO `roles` (`id`, `name`) VALUES ('5fea7f52-dadd-33', 'Admin');
INSERT INTO `roles` (`id`, `name`) VALUES ('c9a2e5d2-40f0-3a', 'Customer');
INSERT INTO `roles` (`id`, `name`) VALUES ('d364669c-8140-3c', 'Manager');


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
  `level` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('20bdd38c-ff43-37', 'ttromp', '25f73950cf46ffc5852cb5a5aeb01803a9cf2b80', 'Ms. Christina Collins III', '632 Braun Wall Suite 042\nLetaborough, IN 81192-4112', 1, 'boyle.rose@example.org', '5207969217446824', 'Operative clear-thinking migration', 'https://loremflickr.com/640/480/', 0);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('3a9aba15-65cb-35', 'hillard78', 'd4ef2b5f51ee920f240135fee3a5eff8eb55aeb3', 'Prof. Lenny Roob', '341 Kozey Club Suite 497\nHeaneybury, MS 30722', 1, 'daphnee54@example.com', '4485087769280683', 'Synchronised optimizing toolset', 'https://loremflickr.com/640/480/', 2);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('3be37ada-3a97-3d', 'ekassulke', '0420f10d1165bd3dc25d86967f28f1178b61019b', 'Jake Beatty DVM', '837 Kovacek Coves\nKrajcikville, AR 96658-9243', 1, 'mroob@example.com', '4929813823509', 'Visionary zerodefect capacity', 'https://loremflickr.com/640/480/', 0);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('450dfb9e-a506-3f', 'salma.nienow', '3769e15a099efa4724c73b9ca7065920c9368d6e', 'Gunnar Macejkovic', '0041 Dovie Causeway\nNew Katharinaport, OK 29630-3107', 1, 'tharris@example.org', '5142453358969585', 'Organic multimedia productivity', 'https://loremflickr.com/640/480/', 2);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('55161e85-2160-3c', 'vicky49', '24d2ba7a44ab522ad2a3e2d89300631df25e8135', 'Allen Dibbert', '799 Zieme Common Apt. 209\nDietrichview, MI 56889-2490', 0, 'langworth.leland@example.net', '5256322253740688', 'Upgradable optimal firmware', 'https://loremflickr.com/640/480/', 2);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('5a77c334-6bf8-30', 'yrohan', '62bb4f8a040e381571cbcaba2fff28647b5acfba', 'Chadd Orn', '0558 Ora Mission\nWest Efren, RI 94634', 0, 'hermann.newell@example.com', '5146918550331055', 'Synergistic didactic data-warehouse', 'https://loremflickr.com/640/480/', 2);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('5c20e7bd-e038-3c', 'naomi58', 'c24038016e94de6908cbc114cf1e085d376c93ea', 'Cordell Dietrich II', '8126 Weissnat Field\nHintzfurt, NY 96833-9678', 1, 'rita.bernier@example.com', '4929399045164', 'Stand-alone encompassing instructionset', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('752c98a4-be31-37', 'langosh.ross', '55fbba418dc04ebbe6b1a637e40684b3c5e8806b', 'Prof. Keshaun Schinner', '18358 Stroman Locks\nNorth Rolando, IN 55020-7907', 0, 'nkiehn@example.com', '4716274831093964', 'Devolved 4thgeneration GraphicalUserInterface', 'https://loremflickr.com/640/480/', 0);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('79c0e8d4-26c0-30', 'alfredo.schmitt', '9da58d4e0071e5512b2ebf9ec03dc18412ad6b6d', 'Maddison Kuhic', '28450 Schuster Curve\nSusiefort, VT 65930-1335', 0, 'hlind@example.net', '5570869022085399', 'Optional incremental toolset', 'https://loremflickr.com/640/480/', 0);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('8a3a726a-5f54-34', 'rroberts', 'b6de2ddf809802c6fb54ff89821d89416e50ea44', 'Simone Wolf', '7861 Leuschke Views\nDashawnview, MS 32492-4745', 1, 'kari97@example.net', '378152772637920', 'Automated bandwidth-monitored emulation', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('8ed15c45-71e7-30', 'aaron.cassin', 'f55cac53f7adcf73a0bded9c7816aadd9ec480e7', 'Prof. Clinton Osinski', '346 Altenwerth Wells\nPort Karleeport, DC 72562', 1, 'cdoyle@example.net', '6011805168356180', 'Cross-platform 24hour firmware', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('a3a7cf52-c318-3c', 'wflatley', '428408fe9cdc01ab6dd1a3007c309f483176e22b', 'Linnie Schamberger', '0475 Franz Wall\nEast Gabechester, NY 78040-7817', 0, 'juliet64@example.org', '343121255411180', 'Networked holistic initiative', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('ca531538-4cbf-36', 'mhackett', 'bbcb44cbd9c124729837ef8bae51d692a45aefa9', 'Miss Bethel Kohler II', '24853 Nelda Grove Suite 737\nMetzside, RI 43493', 0, 'ulind@example.com', '371873873502453', 'Inverse bi-directional projection', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('caeda214-623c-3e', 'ytorphy', 'b3c8ba321ef3aab01884a8d064846b347d1f192a', 'Dr. Christelle Macejkovic', '534 Aidan Highway\nBertafurt, VT 89376-9488', 1, 'lkling@example.org', '6011769254285475', 'Enterprise-wide 24hour definition', 'https://loremflickr.com/640/480/', 2);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('d171c4f0-dadb-37', 'hernser', 'b0b46370983c1a346c0457f34c2fdd04c05468ea', 'Opal Cole', '452 Felicity Well Suite 616\nNew Tristinmouth, NM 14699', 0, 'legros.shanie@example.net', '6011273514624881', 'Mandatory object-oriented paradigm', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('d22dfaef-7c67-35', 'ihegmann', '3af515e18f90723c6c9da73d4cbd8d0996dc9967', 'Taryn Kuhn', '1474 Mitchell Crescent\nPort Gagehaven, NM 84695-5842', 1, 'margret45@example.net', '4716962706474115', 'Function-based exuding matrices', 'https://loremflickr.com/640/480/', 2);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('dd70d56f-4fe5-3e', 'jeanie.hand', '305281968a8a8ac2d60874a232b231b62d3846fd', 'Kiera Kilback', '35190 Kylie Light Suite 264\nLeannview, NJ 13491-6848', 1, 'mueller.marilie@example.net', '5104717809616039', 'Self-enabling multimedia contingency', 'https://loremflickr.com/640/480/', 0);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('ea7fd7e4-6e93-3c', 'towne.eliza', '393671b3dcfe9c0826d93e2178c110e87faccfe3', 'Luis Monahan', '50408 Bogisich Keys\nNorth Dejah, CA 72619', 0, 'brianne.spinka@example.net', '6011072410735452', 'Optimized motivating paradigm', 'https://loremflickr.com/640/480/', 0);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('f121d286-1447-3e', 'joany.balistreri', '381ed00129f9d0a6979fea05c47e241166c8e938', 'Dr. Joseph Hackett IV', '25280 Leslie Bridge Apt. 333\nSouth Yasmeenborough, IA 70566-7185', 1, 'sedrick.johns@example.org', '4592326197390', 'Advanced web-enabled info-mediaries', 'https://loremflickr.com/640/480/', 2);
INSERT INTO `accounts` (`id`, `username`, `password`, `fullname`, `address`, `gender`, `email`, `google_id`, `remember`, `avatar`, `level`) VALUES ('f9ca2613-80b0-30', 'ehalvorson', '034ab41e56cfc04f09bec477f224285446bccc41', 'Ashlynn Heaney', '8062 Kuvalis Cliff Suite 333\nKyleemouth, LA 81028-3762', 1, 'dbashirian@example.com', '6011228419179999', 'Down-sized solution-oriented encoding', 'https://loremflickr.com/640/480/', 0);

#
# TABLE STRUCTURE FOR: account_role
#

DROP TABLE IF EXISTS `account_role`;

CREATE TABLE `account_role` (
  `id` binary(16) NOT NULL,
  `accounts_id` binary(16) DEFAULT NULL,
  `role_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `role_id` (`role_id`),
  KEY `accounts_id` (`accounts_id`),
  CONSTRAINT `account_role_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `account_role_ibfk_2` FOREIGN KEY (`accounts_id`) REFERENCES `accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `account_role` (`id`, `accounts_id`, `role_id`) VALUES ('058362e5-d7c1-37', 'caeda214-623c-3e', 'c9a2e5d2-40f0-3a');
INSERT INTO `account_role` (`id`, `accounts_id`, `role_id`) VALUES ('20b19250-1d4d-35', '8ed15c45-71e7-30', 'c9a2e5d2-40f0-3a');
INSERT INTO `account_role` (`id`, `accounts_id`, `role_id`) VALUES ('36214836-eea8-31', '55161e85-2160-3c', 'c9a2e5d2-40f0-3a');
INSERT INTO `account_role` (`id`, `accounts_id`, `role_id`) VALUES ('48a5c353-dba9-3a', 'd22dfaef-7c67-35', '5fea7f52-dadd-33');
INSERT INTO `account_role` (`id`, `accounts_id`, `role_id`) VALUES ('4ade1c4d-993e-3f', '450dfb9e-a506-3f', '5fea7f52-dadd-33');
INSERT INTO `account_role` (`id`, `accounts_id`, `role_id`) VALUES ('7ac2eb51-35a7-3e', 'a3a7cf52-c318-3c', 'd364669c-8140-3c');
INSERT INTO `account_role` (`id`, `accounts_id`, `role_id`) VALUES ('7cf5404f-36f5-38', '3be37ada-3a97-3d', 'd364669c-8140-3c');
INSERT INTO `account_role` (`id`, `accounts_id`, `role_id`) VALUES ('83b2a95e-eed7-3f', 'f9ca2613-80b0-30', 'c9a2e5d2-40f0-3a');
INSERT INTO `account_role` (`id`, `accounts_id`, `role_id`) VALUES ('99ca4437-d5ce-36', 'ca531538-4cbf-36', '5fea7f52-dadd-33');
INSERT INTO `account_role` (`id`, `accounts_id`, `role_id`) VALUES ('9e9048b8-479f-39', 'ea7fd7e4-6e93-3c', 'd364669c-8140-3c');
INSERT INTO `account_role` (`id`, `accounts_id`, `role_id`) VALUES ('b32bead0-b55a-3e', '8a3a726a-5f54-34', '5fea7f52-dadd-33');
INSERT INTO `account_role` (`id`, `accounts_id`, `role_id`) VALUES ('b3911c4a-d5d6-31', '5a77c334-6bf8-30', 'd364669c-8140-3c');
INSERT INTO `account_role` (`id`, `accounts_id`, `role_id`) VALUES ('bf82a063-6d33-3b', 'dd70d56f-4fe5-3e', 'c9a2e5d2-40f0-3a');
INSERT INTO `account_role` (`id`, `accounts_id`, `role_id`) VALUES ('c053e6ce-80c1-37', 'f121d286-1447-3e', '5fea7f52-dadd-33');
INSERT INTO `account_role` (`id`, `accounts_id`, `role_id`) VALUES ('c8b42d18-d018-3a', '752c98a4-be31-37', 'c9a2e5d2-40f0-3a');
INSERT INTO `account_role` (`id`, `accounts_id`, `role_id`) VALUES ('cddbb414-ec94-37', '20bdd38c-ff43-37', '5fea7f52-dadd-33');
INSERT INTO `account_role` (`id`, `accounts_id`, `role_id`) VALUES ('d8e60b1a-8eac-36', '5c20e7bd-e038-3c', '5fea7f52-dadd-33');
INSERT INTO `account_role` (`id`, `accounts_id`, `role_id`) VALUES ('dbf65fcf-b231-34', '3a9aba15-65cb-35', 'c9a2e5d2-40f0-3a');
INSERT INTO `account_role` (`id`, `accounts_id`, `role_id`) VALUES ('e76a0013-fc42-3b', 'd171c4f0-dadb-37', 'd364669c-8140-3c');
INSERT INTO `account_role` (`id`, `accounts_id`, `role_id`) VALUES ('efc874ec-c85d-3e', '79c0e8d4-26c0-30', 'd364669c-8140-3c');

#
# TABLE STRUCTURE FOR: category
#

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `category` (`id`, `name`) VALUES ('0bc6c83a-7a8b-37', 'dolor');
INSERT INTO `category` (`id`, `name`) VALUES ('3e586ac3-b5a1-3c', 'qui');
INSERT INTO `category` (`id`, `name`) VALUES ('5fb8d37d-1c87-34', 'impedit');
INSERT INTO `category` (`id`, `name`) VALUES ('611f8ee5-70d0-34', 'quam');
INSERT INTO `category` (`id`, `name`) VALUES ('9ca166b9-0f9f-3f', 'animi');
INSERT INTO `category` (`id`, `name`) VALUES ('bab5b9a9-a92c-3c', 'dolorum');
INSERT INTO `category` (`id`, `name`) VALUES ('f3d5a279-a6ca-39', 'consequuntur');
INSERT INTO `category` (`id`, `name`) VALUES ('f776f264-a4c1-30', 'quae');
INSERT INTO `category` (`id`, `name`) VALUES ('f8d561d6-e58d-31', 'dolor');
INSERT INTO `category` (`id`, `name`) VALUES ('f9b0e54c-1d69-36', 'et');


#
# TABLE STRUCTURE FOR: category_movie
#

DROP TABLE IF EXISTS `category_movie`;

CREATE TABLE `category_movie` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('13e41f24-6007-33', 'ut', 'qui', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('232483e6-499d-37', 'et', 'natus', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('2ac9081d-32e2-39', 'aliquam', 'omnis', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('31344e8a-84fd-36', 'cupiditate', 'saepe', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('606878b3-5829-31', 'assumenda', 'qui', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('7b8eaadf-adf8-32', 'et', 'aperiam', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('b05cbf3d-210c-37', 'voluptas', 'optio', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('b223b03e-af73-31', 'rerum', 'sequi', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('b7a2708c-60b1-35', 'officia', 'culpa', 1);
INSERT INTO `category_movie` (`id`, `name`, `slug`, `status`) VALUES ('cf6f4195-237c-30', 'beatae', 'molestias', 1);


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
  `status` smallint(6) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('01d49b86-cfe7-33', 'Thad Kuhlman', '2006-05-05', 'Bouvet Island (Bouvetoya)', 'omnis', 'Et nostrum et sit perspiciatis omnis animi doloremque. Voluptatum vel commodi sequi consequuntur veniam. Quia occaecati eligendi ut iste. Quia accusamus minima odit eos nostrum.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('086cae15-2e56-3d', 'Brook Barrows', '1992-08-04', 'Gibraltar', 'beatae', 'Tenetur et minus quia non qui unde eos. Ut libero dolor laboriosam illo quia. Ea ducimus voluptas excepturi eius aut architecto. Dolorum harum in labore labore quo dolores est autem.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('0fcf924a-6d5c-34', 'Moshe Tromp', '1994-08-11', 'Spain', 'harum', 'Corporis minima provident excepturi minus. Dolorum non modi perspiciatis quos repellendus quod. Et cupiditate earum eligendi iste.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('1c630e5e-534d-35', 'Heloise Satterfield DVM', '1971-08-07', 'Maldives', 'et', 'Nesciunt qui ex animi. Autem et incidunt corrupti voluptates iure. Libero aut placeat velit est quis. Eligendi praesentium excepturi et incidunt voluptatem.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('31c49e05-5538-33', 'Joseph Quigley', '1998-06-01', 'Germany', 'quia', 'Voluptas aut quia officia error dolores architecto rerum dolorem. Temporibus dolorum doloribus enim ut. Officiis nemo perferendis dolorem aliquid quo nemo. Facere fugit cupiditate ducimus et.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('44ac2a77-f0f5-38', 'Moises Dickinson', '2008-09-01', 'Zimbabwe', 'quisquam', 'Mollitia et optio vitae nemo veniam sed qui. Aspernatur voluptatibus numquam ut voluptas. Et dolore enim velit expedita ut in id. Nisi officiis beatae rerum facilis minima dolorum fugiat.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('482f09e2-6013-3e', 'Dr. Luna Emmerich', '1989-10-04', 'Sweden', 'repellat', 'Voluptatibus quia enim impedit. Minima eligendi sed ut hic deserunt in. Unde dicta voluptatem porro quia atque occaecati. Quia officiis veniam enim.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('51c87e1e-feeb-3d', 'Jackson Christiansen DVM', '1974-11-07', 'Portugal', 'voluptatibus', 'Laborum asperiores voluptatibus sit doloremque sequi ea. Et corporis et aliquid perferendis aliquid qui. Sit laboriosam minus et itaque ut modi.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('60220499-6cf2-39', 'Rene Muller', '2006-03-23', 'Solomon Islands', 'et', 'Odio voluptas a dicta dicta eos. Aliquid quis eum non culpa et. Perspiciatis reiciendis eaque dicta doloribus sint consectetur voluptatum.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('60afea27-51b0-34', 'Dolly Dach DDS', '2011-06-28', 'Guinea-Bissau', 'dolore', 'Nihil dolor unde repellendus dolores quis a. Repellat magnam et enim porro id. Pariatur modi assumenda dolores maxime iusto nesciunt. Sunt sit placeat ex.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('624fcbe4-4225-3c', 'Dr. Victoria Daugherty', '2015-09-16', 'Haiti', 'odio', 'Asperiores et dolor voluptates voluptas. Reprehenderit voluptas facilis tenetur ut eos ad. Sunt esse occaecati quo est. Veritatis rerum quaerat sint quis id soluta.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('667feee3-2f89-33', 'Annetta Paucek', '2013-11-09', 'Armenia', 'saepe', 'Iste aperiam ex est cum suscipit nihil. Est distinctio sapiente hic repellat. Et impedit doloremque debitis cumque rerum nemo earum. Aut et aut perferendis nam. Ea laudantium sunt voluptate non.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('789b0aea-9251-36', 'Prof. Gail Rath I', '2000-06-01', 'Cook Islands', 'ea', 'Qui sunt qui ex nulla est tempore et. Quo id perferendis quia natus. Suscipit veritatis voluptate vitae optio voluptatem omnis omnis. Distinctio expedita modi dolorum quia excepturi.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('8117a247-8e2b-33', 'Dr. Danial Cummings', '1987-01-03', 'Afghanistan', 'qui', 'Sit velit accusantium blanditiis ipsa velit. Et maiores optio autem. Optio eum reprehenderit quibusdam autem. Ex quo tempore ipsam sit sint.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('81ace09a-2a34-31', 'Joy Mante V', '1993-01-22', 'Falkland Islands (Malvinas)', 'omnis', 'Error ipsam eos pariatur necessitatibus quis. Aliquam ducimus atque ipsam id. Voluptas perferendis adipisci omnis eum deserunt.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('85c97398-5618-3f', 'Barney Satterfield Sr.', '1984-03-24', 'Australia', 'dolorem', 'Voluptas eos eos eveniet labore ducimus. Excepturi nemo qui minus quia nihil ducimus molestiae. Debitis neque est vero rem.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('886527c6-a760-3d', 'Dr. Mekhi Nikolaus MD', '1990-01-04', 'Bhutan', 'voluptatibus', 'Amet id eum dolor quam. Nam reprehenderit et possimus minima odit est. Inventore consequuntur incidunt veritatis aut ipsa odio. Reprehenderit dolor itaque qui voluptas molestiae.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('923ed824-6151-30', 'Dr. Gerson Macejkovic DVM', '1993-03-26', 'Mongolia', 'repellendus', 'Quas quaerat in corporis pariatur. Et dolore dolor natus et impedit. Ducimus nemo explicabo repellendus enim sed temporibus iste dolore.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('9a48711f-6b72-3b', 'Douglas Bailey', '1994-05-03', 'New Caledonia', 'et', 'Facere provident odio hic error. Facilis eveniet illum consequuntur tempora modi nesciunt. Aspernatur distinctio reprehenderit laudantium dolor.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('a598ce83-b689-37', 'Prof. Dewitt Harvey PhD', '1973-06-01', 'Uzbekistan', 'iusto', 'Qui ratione amet laborum nihil. Pariatur veritatis molestiae amet. Eos veritatis consequatur rerum.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('a7848bcb-1b5e-39', 'Leonel Smitham', '1976-01-27', 'Malta', 'occaecati', 'Neque ut magnam nisi omnis voluptas minus rerum. Et fugit eos asperiores iste dolorum. Soluta dolorem sunt qui est ullam est soluta. Omnis sed dolorum nam vero voluptatem molestiae.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('a7bb36b7-f2c8-39', 'Alberta Kutch', '1999-11-07', 'Belize', 'laudantium', 'Omnis quas ipsum ipsam perspiciatis. Quae qui sunt ullam quia explicabo cum pariatur. Qui consequatur incidunt omnis sit.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('bc1c293e-c272-3f', 'Mr. Aaron Veum', '2014-06-28', 'Falkland Islands (Malvinas)', 'rerum', 'Cum rem sed iste in odit impedit. Quisquam veniam delectus in dicta molestiae. Ducimus voluptates alias architecto quisquam qui.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('bcf5d6b0-d202-39', 'Dr. Carmela Harris II', '1984-09-07', 'Saudi Arabia', 'sit', 'Aliquid exercitationem quia hic sint reiciendis. Consectetur ea laudantium sunt inventore. Voluptatem ut vel recusandae corporis expedita. Dolor dolores nihil in.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('bdac793b-ac9a-38', 'Drake Balistreri', '1989-08-26', 'Mali', 'explicabo', 'Harum et iure quo dicta nam numquam. Unde ut et veniam et et. Fugiat tenetur voluptatem debitis vel ipsam. Et vel omnis vero eos.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('cc7ba50f-1c1a-34', 'Miss Ivah West V', '1990-05-16', 'Svalbard & Jan Mayen Islands', 'velit', 'Ut nam molestiae qui deserunt molestiae quam. Eos et est maxime consequatur. In explicabo in quibusdam et minima. Consequatur autem exercitationem quo dolorem perferendis voluptas aut necessitatibus.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('d1621897-a4fa-3c', 'Willa Gutkowski MD', '1992-04-12', 'Zambia', 'ducimus', 'Molestias consequatur a eaque dignissimos tenetur. Sit molestiae vel aut perspiciatis voluptatem cum ea qui. Quos impedit nam atque tenetur.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('f6d9efb1-48a2-39', 'Eli Stokes', '1987-12-29', 'South Africa', 'natus', 'Et harum pariatur sed sed. Est vero veniam unde temporibus voluptatem. Magni laborum rem qui sunt.\nIpsam neque ea ut. Cumque eum velit quia autem quis tempore animi.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('f867d74b-c562-3c', 'Hulda Bechtelar', '1987-05-03', 'Congo', 'labore', 'Quia delectus voluptas est quia soluta qui. Perspiciatis eaque omnis magni provident. Eligendi quisquam aut nobis et. Et consequatur est omnis libero.', 'https://loremflickr.com/640/480/', 1);
INSERT INTO `celebrity` (`id`, `name`, `birthday`, `country`, `keywords`, `bio`, `poster`, `status`) VALUES ('f9b3642c-9bf0-35', 'Name Boyer', '1990-02-11', 'Kenya', 'maxime', 'Quae ut mollitia magnam repellat magni sint delectus ut. Nostrum minima quisquam non molestiae. Dolorem aliquid natus maiores corrupti aut. Quia nesciunt eos quas eos.', 'https://loremflickr.com/640/480/', 1);

#
# TABLE STRUCTURE FOR: job
#

DROP TABLE IF EXISTS `job`;

CREATE TABLE `job` (
  `id` binary(16) NOT NULL,
  `roles_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `job` (`id`, `roles_name`) VALUES ('145d07be-0133-3c', 'writer');
INSERT INTO `job` (`id`, `roles_name`) VALUES ('74457865-b691-3b', 'director');
INSERT INTO `job` (`id`, `roles_name`) VALUES ('d43864a2-29e1-34', 'actor');

#
# TABLE STRUCTURE FOR: celebrity_job
#

DROP TABLE IF EXISTS `celebrity_job`;

CREATE TABLE `celebrity_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `celebrity_id` binary(16) DEFAULT NULL,
  `job_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `celebrity_id` (`celebrity_id`),
  KEY `job_id` (`job_id`),
  CONSTRAINT `celebrity_job_ibfk_1` FOREIGN KEY (`celebrity_id`) REFERENCES `celebrity` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `celebrity_job_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `celebrity_job` (`id`, `celebrity_id`, `job_id`) VALUES (1, '01d49b86-cfe7-33', '145d07be-0133-3c');
INSERT INTO `celebrity_job` (`id`, `celebrity_id`, `job_id`) VALUES (2, '086cae15-2e56-3d', '74457865-b691-3b');
INSERT INTO `celebrity_job` (`id`, `celebrity_id`, `job_id`) VALUES (3, '0fcf924a-6d5c-34', 'd43864a2-29e1-34');
INSERT INTO `celebrity_job` (`id`, `celebrity_id`, `job_id`) VALUES (4, '1c630e5e-534d-35', '145d07be-0133-3c');
INSERT INTO `celebrity_job` (`id`, `celebrity_id`, `job_id`) VALUES (5, '31c49e05-5538-33', '74457865-b691-3b');
INSERT INTO `celebrity_job` (`id`, `celebrity_id`, `job_id`) VALUES (6, '44ac2a77-f0f5-38', 'd43864a2-29e1-34');
INSERT INTO `celebrity_job` (`id`, `celebrity_id`, `job_id`) VALUES (7, '482f09e2-6013-3e', '145d07be-0133-3c');
INSERT INTO `celebrity_job` (`id`, `celebrity_id`, `job_id`) VALUES (8, '51c87e1e-feeb-3d', '74457865-b691-3b');
INSERT INTO `celebrity_job` (`id`, `celebrity_id`, `job_id`) VALUES (9, '60220499-6cf2-39', 'd43864a2-29e1-34');
INSERT INTO `celebrity_job` (`id`, `celebrity_id`, `job_id`) VALUES (10, '60afea27-51b0-34', '145d07be-0133-3c');
INSERT INTO `celebrity_job` (`id`, `celebrity_id`, `job_id`) VALUES (11, '624fcbe4-4225-3c', '74457865-b691-3b');
INSERT INTO `celebrity_job` (`id`, `celebrity_id`, `job_id`) VALUES (12, '667feee3-2f89-33', 'd43864a2-29e1-34');
INSERT INTO `celebrity_job` (`id`, `celebrity_id`, `job_id`) VALUES (13, '789b0aea-9251-36', '145d07be-0133-3c');
INSERT INTO `celebrity_job` (`id`, `celebrity_id`, `job_id`) VALUES (14, '8117a247-8e2b-33', '74457865-b691-3b');
INSERT INTO `celebrity_job` (`id`, `celebrity_id`, `job_id`) VALUES (15, '81ace09a-2a34-31', 'd43864a2-29e1-34');
INSERT INTO `celebrity_job` (`id`, `celebrity_id`, `job_id`) VALUES (16, '85c97398-5618-3f', '145d07be-0133-3c');
INSERT INTO `celebrity_job` (`id`, `celebrity_id`, `job_id`) VALUES (17, '886527c6-a760-3d', '74457865-b691-3b');
INSERT INTO `celebrity_job` (`id`, `celebrity_id`, `job_id`) VALUES (18, '923ed824-6151-30', 'd43864a2-29e1-34');
INSERT INTO `celebrity_job` (`id`, `celebrity_id`, `job_id`) VALUES (19, '9a48711f-6b72-3b', '145d07be-0133-3c');
INSERT INTO `celebrity_job` (`id`, `celebrity_id`, `job_id`) VALUES (20, 'a598ce83-b689-37', '74457865-b691-3b');

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
  `level` smallint(6) DEFAULT NULL,
  `status` smallint(6) DEFAULT 1,
  `categories_movies_id` binary(16) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `movie_or_series` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `categories_movies_id` (`categories_movies_id`),
  CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`categories_movies_id`) REFERENCES `category_movie` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`, `create_at`, `movie_or_series`) VALUES ('050244cf-6cf0-3e', 'velit', 4, 'https://loremflickr.com/640/480/', '1978-02-27', 54, 'x', 'nostrum', 'Vel saepe et omnis illo eius cupiditate natus. Nobis voluptas suscipit fugiat fugiat expedita. Provident enim odit eligendi consequuntur at hic. Pariatur odio laudantium error.', 3819, 1, 1, '13e41f24-6007-33', '1974-02-10 15:02:33', 1);
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`, `create_at`, `movie_or_series`) VALUES ('0ed2f2d4-5585-32', 'odio', 8, 'https://loremflickr.com/640/480/', '1986-04-09', 90, 'y', 'et', 'Nemo dolorem nemo nam. Rerum occaecati doloremque temporibus. Aliquam quia voluptatem sed omnis assumenda velit temporibus libero.', 3842, 1, 1, '31344e8a-84fd-36', '2001-10-15 08:06:15', 1);
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`, `create_at`, `movie_or_series`) VALUES ('1233364f-b096-39', 'est', 4, 'https://loremflickr.com/640/480/', '1978-10-15', 64, 't', 'distinctio', 'Quia et maiores distinctio eum autem sunt. Eos adipisci provident non itaque. Enim ut ex ut numquam.', 6600, 2, 1, '13e41f24-6007-33', '2019-02-10 01:53:16', 1);
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`, `create_at`, `movie_or_series`) VALUES ('23e18136-caae-36', 'et', 4, 'https://loremflickr.com/640/480/', '1988-06-29', 85, 'p', 'voluptatibus', 'Consectetur expedita quam eum fugit odit qui. Aut quia non in facilis qui fugiat molestiae. Voluptatem iusto corporis nam labore. Beatae blanditiis expedita aut est est.', 3813, 0, 1, 'b7a2708c-60b1-35', '1985-06-09 23:24:47', 1);
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`, `create_at`, `movie_or_series`) VALUES ('3b2c0513-db3c-32', 'dolore', 2, 'https://loremflickr.com/640/480/', '1982-02-12', 69, 'w', 'vel', 'Fugiat et laboriosam dolorem quam maiores et. Veritatis perferendis soluta consectetur pariatur. Sunt enim similique ut dolorem consequatur iste. Aut enim accusantium officiis eos.', 8898, 1, 1, 'b223b03e-af73-31', '1979-03-25 12:03:24', 1);
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`, `create_at`, `movie_or_series`) VALUES ('3ce8d9f1-dc47-31', 'aut', 11, 'https://loremflickr.com/640/480/', '1972-11-09', 51, 'b', 'ducimus', 'Eveniet veniam sequi ut consequatur. Laudantium a qui provident eos porro voluptatibus. Doloribus accusantium ut fuga qui nostrum modi facilis ut.', 1405, 2, 1, '2ac9081d-32e2-39', '2010-07-02 11:26:29', 1);
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`, `create_at`, `movie_or_series`) VALUES ('536022e7-2b24-33', 'nulla', 11, 'https://loremflickr.com/640/480/', '1976-07-28', 63, 'h', 'dolores', 'Aliquid accusamus atque corrupti sit non. Ex consequatur quia voluptatem ratione qui sed dolor. Aut temporibus ut ut in reprehenderit debitis aliquam ut. Repudiandae labore perferendis ut esse tempore sed dolores.', 8431, 1, 1, 'cf6f4195-237c-30', '2015-09-27 15:19:59', 1);
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`, `create_at`, `movie_or_series`) VALUES ('74b13c89-2359-32', 'aut', 21, 'https://loremflickr.com/640/480/', '1991-11-16', 100, 'h', 'temporibus', 'Eaque veritatis hic iure itaque. Ducimus pariatur nihil dolores cum enim porro debitis. Deleniti eveniet consequatur autem voluptatum.', 9495, 1, 1, '606878b3-5829-31', '2004-12-27 07:16:45', 1);
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`, `create_at`, `movie_or_series`) VALUES ('8309b633-4132-3b', 'magni', 17, 'https://loremflickr.com/640/480/', '1995-07-09', 52, 'w', 'repudiandae', 'Qui quisquam voluptate voluptate. Iure harum est eaque ex quia sit accusantium. Dolor quo dolorum sunt vel. Quos aut maiores unde quae ea accusantium ducimus. Ea odit et iusto quisquam.', 8227, 2, 1, '232483e6-499d-37', '1981-12-21 19:55:45', 1);
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`, `create_at`, `movie_or_series`) VALUES ('84cb95fb-d0d6-3d', 'libero', 5, 'https://loremflickr.com/640/480/', '2023-12-19', 83, 'c', 'ab', 'Ullam totam officia excepturi saepe. Expedita quasi earum est sint odit dolore explicabo provident.', 6264, 1, 1, 'b7a2708c-60b1-35', '1982-04-22 08:01:26', 1);
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`, `create_at`, `movie_or_series`) VALUES ('918e74a8-00f2-33', 'libero', 16, 'https://loremflickr.com/640/480/', '1985-02-09', 84, 'g', 'ullam', 'Et eius alias sit est vitae soluta voluptas. Et dignissimos possimus cupiditate dolor delectus asperiores. Nihil aperiam dolore quos. Officia aut magnam hic qui modi ducimus.', 1304, 1, 1, '7b8eaadf-adf8-32', '2005-04-11 09:25:26', 1);
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`, `create_at`, `movie_or_series`) VALUES ('95bd982f-a375-3c', 'velit', 10, 'https://loremflickr.com/640/480/', '1981-12-13', 73, 'l', 'qui', 'Laboriosam animi quia ipsam pariatur est modi cumque. Corrupti dolor ut voluptatum est. Est dolorem ducimus saepe dolorem omnis.', 1241, 0, 1, 'cf6f4195-237c-30', '2020-06-30 09:39:59', 1);
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`, `create_at`, `movie_or_series`) VALUES ('ab437800-7976-33', 'est', 12, 'https://loremflickr.com/640/480/', '1986-12-21', 55, 'q', 'dolorem', 'Aliquid esse nihil ex nostrum. Aut non maiores aut autem voluptatem rerum corporis. Soluta consectetur mollitia doloribus. Aut quidem sapiente est perspiciatis atque excepturi enim.', 2995, 1, 1, 'b223b03e-af73-31', '2005-04-26 11:01:05', 1);
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`, `create_at`, `movie_or_series`) VALUES ('c3ac4b41-ec02-36', 'vero', 13, 'https://loremflickr.com/640/480/', '2014-06-13', 58, 'y', 'quia', 'Iste provident ut repudiandae quae minus quia in. Quibusdam vero ut sequi aspernatur molestiae. Ut voluptas ut blanditiis fugiat est officiis. Numquam et quia eum quaerat.', 6413, 0, 1, '7b8eaadf-adf8-32', '1979-04-13 10:18:53', 1);
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`, `create_at`, `movie_or_series`) VALUES ('c6505f64-60d9-35', 'eius', 2, 'https://loremflickr.com/640/480/', '1994-12-26', 85, 's', 'sed', 'Repellat magnam et odio quaerat rerum voluptatem reprehenderit. Tempora consequatur qui et excepturi reiciendis odit. Est odio eius molestiae repellendus in.', 5624, 1, 1, '2ac9081d-32e2-39', '2014-04-01 15:20:30', 0);
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`, `create_at`, `movie_or_series`) VALUES ('d3c03e10-974c-3e', 'voluptatem', 2, 'https://loremflickr.com/640/480/', '1977-04-03', 60, 'o', 'ullam', 'Vero dolores officiis eaque quia voluptate. Nostrum voluptates cumque occaecati nihil autem. Soluta asperiores recusandae facere rerum est optio.', 4116, 2, 1, '31344e8a-84fd-36', '2006-05-01 07:16:21', 0);
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`, `create_at`, `movie_or_series`) VALUES ('d5bc7415-70d7-37', 'perferendis', 2, 'https://loremflickr.com/640/480/', '1971-07-22', 93, 'c', 'quia', 'Ab explicabo ducimus dolores et consequatur numquam. Quae porro sunt optio aut. Nihil aliquam odit velit voluptatem quisquam modi. Et et omnis facere vel voluptas ipsa nisi.', 2996, 0, 1, '606878b3-5829-31', '2008-09-17 21:54:01', 0);
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`, `create_at`, `movie_or_series`) VALUES ('d89019f6-92cc-30', 'et', 23, 'https://loremflickr.com/640/480/', '1993-02-17', 98, 't', 'cupiditate', 'Odit omnis magnam dicta praesentium omnis. Aut corrupti est illo iste sit saepe id eum. Voluptas officiis rerum id qui sit est.', 9732, 2, 1, 'b05cbf3d-210c-37', '1970-03-27 17:32:13', 1);
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`, `create_at`, `movie_or_series`) VALUES ('ec1008fd-23ae-38', 'minus', 10, 'https://loremflickr.com/640/480/', '1981-05-22', 92, 'u', 'quidem', 'Blanditiis fugiat exercitationem quasi dicta. Corrupti consequuntur tenetur eius optio ipsam dolores. Iste ut rem est ducimus ullam consequatur.', 4511, 1, 1, '232483e6-499d-37', '2013-09-10 21:40:54', 1);
INSERT INTO `movies` (`id`, `name`, `total_episode`, `poster`, `release`, `run_time`, `mmpa_rating`, `keywords`, `description`, `view`, `level`, `status`, `categories_movies_id`, `create_at`, `movie_or_series`) VALUES ('f0148f77-1c3c-35', 'aut', 24, 'https://loremflickr.com/640/480/', '2024-02-23', 64, 't', 'libero', 'Optio repellat delectus corporis ullam perspiciatis. A voluptatum quam non quia. Nesciunt sit voluptates cumque neque dolores facilis.', 9209, 2, 1, 'b05cbf3d-210c-37', '1994-11-07 03:01:10', 0);



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
  `status` smallint(6) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `episodes_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`, `status`) VALUES ('01f12be4-fdc6-35', 'eum', 'http://terry.net/', 'Aut est reprehenderit sint reiciendis. Quasi sunt ipsum incidunt voluptas voluptatem. Cum pariatur necessitatibus porro dolor porro delectus. Fuga rem ab quibusdam.', '3b2c0513-db3c-32', 1);
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`, `status`) VALUES ('021ab15c-a37b-3b', 'inventore', 'http://murray.com/', 'Pariatur quaerat sunt et officiis qui. Omnis eum a repellendus dolorum. Voluptatem quo sed quia dignissimos nemo ducimus. Distinctio rerum sed saepe laudantium. Facere iste quaerat et consequatur.', 'd5bc7415-70d7-37', 1);
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`, `status`) VALUES ('06e09356-cf6e-34', 'deleniti', 'http://www.sauerblick.com/', 'Cum dolores iusto rerum. Molestias ut consequatur fuga necessitatibus beatae asperiores quam sit. Ut qui rem aspernatur in.', 'd89019f6-92cc-30', 1);
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`, `status`) VALUES ('0e7bda9e-d0a6-36', 'dignissimos', 'http://www.emmerich.com/', 'In vel ea neque enim. Quo et beatae tempore est nihil. Et fugiat nemo natus. Et illum atque ut ut sunt id illum.', 'c3ac4b41-ec02-36', 1);
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`, `status`) VALUES ('11bb7307-dbbb-3a', 'impedit', 'http://www.sporer.com/', 'Tempora commodi asperiores quasi praesentium deleniti quisquam. Et esse dolor deleniti iusto quas inventore sint. Magni qui autem omnis aut omnis rem.', '95bd982f-a375-3c', 1);
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`, `status`) VALUES ('202e1476-fd58-3f', 'est', 'http://www.trantowhilpert.com/', 'Dolorem sint accusantium ut dolores ut iure. Maxime omnis non quam ab magni autem. Qui doloremque quis laboriosam. Nihil rem quo molestiae nostrum voluptas voluptates ducimus.', '74b13c89-2359-32', 1);
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`, `status`) VALUES ('286b09e5-f5f4-30', 'expedita', 'http://schambergerschroeder.com/', 'Voluptatem reiciendis vero aut. Voluptas laborum et sapiente sit officia ullam et quaerat.', 'c6505f64-60d9-35', 1);
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`, `status`) VALUES ('41fc0246-ac76-31', 'architecto', 'http://schaden.com/', 'Officiis nihil autem laboriosam itaque cum. Minus veniam consequuntur quos est harum minus. Et voluptas suscipit velit quo quia sunt illum.', 'd3c03e10-974c-3e', 1);
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`, `status`) VALUES ('51ae172a-b377-3a', 'dolorem', 'http://dietrich.org/', 'Odit rerum cum facere minima nobis eum. Corporis sit magni adipisci assumenda deserunt. Voluptas unde quis modi cum reiciendis vero. Atque nisi qui ipsum laborum expedita voluptatibus.', '1233364f-b096-39', 1);
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`, `status`) VALUES ('5eff692d-cef5-3b', 'nobis', 'http://champlinrunolfsson.com/', 'Culpa aut itaque sit ut. Alias quo aut saepe consequatur. Corporis optio vitae aut.', '050244cf-6cf0-3e', 1);
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`, `status`) VALUES ('7d96bf6a-b0f9-3f', 'sed', 'http://volkmanbernier.biz/', 'Molestiae sed nulla voluptas neque numquam. Et quae sit voluptates eveniet cumque in. Quas doloremque eaque consequatur aut. Et ut natus laudantium beatae soluta eum. Enim sint corporis non in voluptas et qui nulla.', '8309b633-4132-3b', 1);
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`, `status`) VALUES ('7f663527-a834-3a', 'dolor', 'http://hahngrady.com/', 'Sint ut quia dolor incidunt. Fugiat illum similique excepturi est sint quia nam. Qui repellendus est et itaque hic neque temporibus magnam.', 'ab437800-7976-33', 1);
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`, `status`) VALUES ('a0b04ef3-eb7a-31', 'quas', 'http://www.ruecker.com/', 'Et et at rerum architecto suscipit eligendi aliquam odit. Distinctio molestiae eius praesentium quidem voluptatem. Dolore eum tenetur amet cum quidem.', '0ed2f2d4-5585-32', 1);
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`, `status`) VALUES ('ae35c435-3c85-36', 'vitae', 'http://www.ziemannturner.com/', 'Quis assumenda eum ea quasi non. Quia est ratione nobis. Consequatur voluptatum ut officiis iure ipsum placeat similique totam. Possimus facilis earum suscipit.', '84cb95fb-d0d6-3d', 1);
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`, `status`) VALUES ('b0032fe9-1501-3b', 'dolore', 'http://www.klein.net/', 'Aliquam iste non velit eos quod atque laudantium recusandae. Provident fugiat distinctio velit sint.', '3ce8d9f1-dc47-31', 1);
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`, `status`) VALUES ('bc1002a0-c4a4-31', 'minima', 'http://kertzmann.com/', 'Incidunt est corporis reprehenderit laudantium. Optio eius saepe reiciendis nihil qui error. Suscipit eligendi ullam autem aut qui ducimus id. Pariatur odit et sed molestiae. Id perspiciatis atque dignissimos cum aut consequatur.', '918e74a8-00f2-33', 1);
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`, `status`) VALUES ('ed061e77-4d3b-3d', 'explicabo', 'http://www.ryangibson.com/', 'Commodi unde omnis id molestiae porro adipisci. Voluptas omnis autem nihil id cupiditate. Sed velit explicabo aut et quidem. Consequatur delectus error nulla consequatur quaerat quod.', '536022e7-2b24-33', 1);
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`, `status`) VALUES ('f84cea53-a737-34', 'temporibus', 'http://www.lesch.com/', 'Voluptatum asperiores corrupti doloremque molestiae tenetur aliquid recusandae. Id commodi facilis qui rem quia qui nostrum aut. Voluptatem odio vel sit minima quia velit molestias.', 'f0148f77-1c3c-35', 1);
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`, `status`) VALUES ('f8eb1a30-1aae-3e', 'nobis', 'http://www.ankundingcole.com/', 'Magni sunt debitis odio repellendus sed non. Ut mollitia in corrupti sint cumque asperiores eos. Vel molestiae occaecati harum molestiae. Omnis doloribus ipsum accusantium accusantium rerum et amet.', 'ec1008fd-23ae-38', 1);
INSERT INTO `episodes` (`id`, `name`, `link`, `description`, `movie_id`, `status`) VALUES ('fead2349-4a47-34', 'esse', 'http://www.runte.com/', 'In voluptate et voluptate autem corrupti. Aut amet a iste odit. Alias quia optio consequuntur repellat est voluptatem. Enim saepe tempora ut qui et esse molestiae.', '23e18136-caae-36', 1);

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
  `status` smallint(6) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('0c4f5ab5-50db-32', 'fugiat', '2020-08-23 04:24:55', 'voluptatem', 'Aut enim nobis iure aut. Distinctio itaque atque amet optio. Dolore eum ratione necessitatibus sapiente perferendis doloribus ullam. Eligendi quo modi expedita.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('0da9ee87-c8af-3d', 'non', '1974-04-05 22:48:53', 'accusantium', 'Culpa est placeat sunt sunt. Et odio quo veniam rerum et temporibus. Ut accusantium provident libero impedit. Et voluptas enim qui.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('103b7927-17e1-39', 'cum', '1982-09-22 23:06:42', 'minima', 'Dolor corporis mollitia reiciendis in ut et. Est dicta voluptas itaque aliquid. Ipsa et molestiae dolore tempore nam.\nDolor similique in expedita est ea. Qui voluptatum non aliquid sint et et.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('171830d6-f76d-31', 'dolor', '2013-03-16 10:14:11', 'alias', 'Laudantium saepe repudiandae ullam enim quia voluptatem. Ab perferendis id voluptate inventore dolorem error. Et molestiae rerum quidem commodi quod et. Sed fugit aliquid est aut rerum.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('1f944c8a-4bf8-32', 'praesentium', '1989-09-11 12:50:13', 'qui', 'Corporis qui odio labore facere. Inventore perspiciatis omnis aperiam nisi ea corporis. Molestiae ullam et et enim. Eius voluptatum esse optio aperiam repudiandae magni.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('285f7c48-df47-33', 'at', '1988-09-25 22:11:06', 'necessitatibus', 'Eum placeat quis id repudiandae. Ut quos nisi libero. Voluptatem excepturi repellendus quod et accusantium quia eveniet. Facere culpa nam qui est ratione quos.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('2add1b3f-e997-30', 'consequatur', '1974-07-24 20:40:09', 'eveniet', 'Ratione sapiente doloribus distinctio. Et quaerat dolor sit. Dolor accusantium et numquam iusto. Minima dolorem quaerat reiciendis repellendus reprehenderit.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('2bb3d2e5-773f-3e', 'sequi', '1971-08-17 08:36:16', 'doloribus', 'Explicabo culpa excepturi earum omnis voluptatum a. Sapiente earum deleniti dolore quidem sed architecto labore quis. Vitae voluptatibus et enim autem distinctio expedita.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('2d12d5f4-c940-35', 'corrupti', '1972-07-16 03:28:04', 'dolor', 'Est praesentium magnam aut doloremque magni culpa. Explicabo amet labore quasi. Et sequi sapiente et enim consequatur. Rerum ipsa consequatur non delectus et consequatur.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('37018255-5882-38', 'consequuntur', '1971-12-26 17:24:02', 'magnam', 'Qui omnis corporis itaque. Velit et similique animi aliquid totam.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('38405d0f-158e-36', 'dolore', '2012-05-01 04:59:32', 'et', 'Consequuntur aspernatur voluptatibus velit fuga. Rerum eveniet enim cumque nostrum mollitia. Qui nihil sequi voluptas eligendi. Non temporibus pariatur dolor minima quis quia.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('496991ee-e123-3e', 'dolorem', '1999-08-12 19:03:30', 'molestiae', 'Eos accusantium qui et omnis. Dolore ab ab odit in voluptas nemo. Et illo saepe dolor suscipit aliquid earum. Incidunt quia porro sint aut.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('4c01a930-0b3a-30', 'quidem', '1992-02-23 20:39:23', 'enim', 'Alias impedit velit saepe porro quos quae officia. Ad officiis et recusandae tenetur quia molestias provident atque.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('4d6ccb89-6335-31', 'magni', '2015-06-25 16:26:39', 'harum', 'Qui beatae nihil facere explicabo perferendis. Blanditiis reprehenderit non in sunt. Ipsam neque quis ut.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('51db90d3-47d2-3d', 'deleniti', '1978-01-06 18:40:51', 'quidem', 'Et sed temporibus totam est. At quo libero quasi sed.\nAut molestiae quia molestiae nisi. Et quidem rem incidunt ad molestias. Laborum aut fuga illo amet eveniet. Omnis vel eligendi qui eaque animi.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('63024c77-08c9-39', 'quis', '2018-10-03 11:08:44', 'expedita', 'Est asperiores earum non enim iste incidunt eum. Voluptates distinctio eaque est magnam.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('6b760755-e740-32', 'ut', '1988-10-09 08:54:17', 'porro', 'Praesentium in aut hic ut. Error voluptate enim accusantium dolores. Laborum dicta quia dolores suscipit.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('81f66331-a14e-3b', 'et', '1973-11-14 14:10:59', 'est', 'Eos odio quos nemo vero repudiandae. Est quo doloremque dolores autem. Aliquam itaque consequatur quam et enim earum.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('a2f537fe-2a55-3a', 'inventore', '1999-06-26 04:49:54', 'enim', 'Et non quaerat expedita consectetur officiis. Quis exercitationem quaerat pariatur. Aut vero ipsum expedita eveniet ipsa et maxime. Sunt expedita nemo sint et.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('b1373aab-b479-37', 'dolorem', '1986-03-02 01:42:42', 'numquam', 'Et ipsam est voluptas sint. Placeat incidunt autem rerum aut praesentium quia. Eligendi mollitia tempora neque dolor facere odio. Tenetur esse iusto odio repellat harum nam.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('d230fb57-0032-38', 'quia', '1993-08-29 15:08:38', 'accusantium', 'Qui quis dolor expedita voluptatem qui delectus. Aut magni sequi iusto nemo excepturi asperiores. Rerum totam cumque sed dolorem. Neque deleniti voluptas consequatur fuga et incidunt.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('da0a4a1f-a1b3-36', 'suscipit', '2005-06-04 12:38:36', 'officia', 'Vel ipsum voluptates totam in minima iusto qui aliquam. Rerum ex molestias omnis accusantium accusamus repellat. Sunt tenetur aspernatur dolorem id quam. Rerum laborum facilis aut aut.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('f8881870-15dc-3a', 'voluptate', '1971-11-23 13:59:13', 'at', 'Occaecati nemo magni est voluptatem itaque. Qui dignissimos et aut cumque repudiandae. Expedita assumenda pariatur architecto placeat.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('f8e62031-ec02-3c', 'at', '1975-08-17 06:29:53', 'a', 'Dolor eaque tempora officiis inventore. Modi doloribus voluptatem nobis numquam. Porro eveniet omnis sunt accusantium quasi. Exercitationem dignissimos qui magnam hic.', 1);
INSERT INTO `news` (`id`, `name`, `created_at`, `tag`, `description`, `status`) VALUES ('fe5a70b4-5db8-37', 'iure', '1984-12-08 17:19:21', 'ex', 'Commodi animi ullam necessitatibus et doloribus est rerum impedit. Et nobis provident omnis quia dolorum. Earum mollitia quidem neque blanditiis.', 1);


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
  CONSTRAINT `categories_news_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `categories_news_ibfk_2` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('1acc2c8e-8ca0-3d', 'f9b0e54c-1d69-36', '37018255-5882-38');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('1eca0eee-cb99-38', 'f776f264-a4c1-30', '2bb3d2e5-773f-3e');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('2236e6ca-2369-30', '0bc6c83a-7a8b-37', '0c4f5ab5-50db-32');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('33cf6e73-dd54-37', '9ca166b9-0f9f-3f', '1f944c8a-4bf8-32');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('3684f16c-fb70-3a', '3e586ac3-b5a1-3c', '496991ee-e123-3e');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('4f1b3136-d832-35', '5fb8d37d-1c87-34', '103b7927-17e1-39');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('5b37714a-b613-3f', '611f8ee5-70d0-34', '171830d6-f76d-31');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('62d917df-5b79-3e', 'bab5b9a9-a92c-3c', '285f7c48-df47-33');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('80105cb1-9d6a-36', '5fb8d37d-1c87-34', '4c01a930-0b3a-30');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('850557c2-5731-30', 'f8d561d6-e58d-31', '2d12d5f4-c940-35');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('8a895b5f-45e7-3c', '0bc6c83a-7a8b-37', '38405d0f-158e-36');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('d31472b4-19da-38', '9ca166b9-0f9f-3f', '51db90d3-47d2-3d');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('d368fd42-96c4-3e', '611f8ee5-70d0-34', '4d6ccb89-6335-31');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('d3abae76-9162-39', 'f3d5a279-a6ca-39', '2add1b3f-e997-30');
INSERT INTO `categories_news` (`id`, `category_id`, `news_id`) VALUES ('e77e9b1c-0e99-31', '3e586ac3-b5a1-3c', '0da9ee87-c8af-3d');




#
# TABLE STRUCTURE FOR: favourites
#

DROP TABLE IF EXISTS `favourites`;

CREATE TABLE `favourites` (
  `id` binary(16) NOT NULL,
  `accounts_id` binary(16) DEFAULT NULL,
  `movie_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `accounts_id` (`accounts_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `favourites_ibfk_1` FOREIGN KEY (`accounts_id`) REFERENCES `accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `favourites_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `favourites` (`id`, `accounts_id`, `movie_id`) VALUES ('07b1987d-874e-36', '450dfb9e-a506-3f', '23e18136-caae-36');
INSERT INTO `favourites` (`id`, `accounts_id`, `movie_id`) VALUES ('222816cc-8e13-35', 'ca531538-4cbf-36', 'ab437800-7976-33');
INSERT INTO `favourites` (`id`, `accounts_id`, `movie_id`) VALUES ('240ab485-21f6-38', '3be37ada-3a97-3d', '1233364f-b096-39');
INSERT INTO `favourites` (`id`, `accounts_id`, `movie_id`) VALUES ('24a67062-02a6-35', 'f121d286-1447-3e', 'ec1008fd-23ae-38');
INSERT INTO `favourites` (`id`, `accounts_id`, `movie_id`) VALUES ('3fda871a-760a-35', '79c0e8d4-26c0-30', '8309b633-4132-3b');
INSERT INTO `favourites` (`id`, `accounts_id`, `movie_id`) VALUES ('4845769c-f9b3-39', 'd22dfaef-7c67-35', 'd3c03e10-974c-3e');
INSERT INTO `favourites` (`id`, `accounts_id`, `movie_id`) VALUES ('4d058c4e-be61-35', 'dd70d56f-4fe5-3e', 'd5bc7415-70d7-37');
INSERT INTO `favourites` (`id`, `accounts_id`, `movie_id`) VALUES ('5877b7db-d81b-33', 'a3a7cf52-c318-3c', '95bd982f-a375-3c');
INSERT INTO `favourites` (`id`, `accounts_id`, `movie_id`) VALUES ('647ed2ba-e2f8-30', '8ed15c45-71e7-30', '918e74a8-00f2-33');
INSERT INTO `favourites` (`id`, `accounts_id`, `movie_id`) VALUES ('89b6b476-9c8b-30', 'f9ca2613-80b0-30', 'f0148f77-1c3c-35');
INSERT INTO `favourites` (`id`, `accounts_id`, `movie_id`) VALUES ('9f1fd3b3-78eb-30', '752c98a4-be31-37', '74b13c89-2359-32');
INSERT INTO `favourites` (`id`, `accounts_id`, `movie_id`) VALUES ('ad8ab181-3086-30', 'ea7fd7e4-6e93-3c', 'd89019f6-92cc-30');
INSERT INTO `favourites` (`id`, `accounts_id`, `movie_id`) VALUES ('afb43126-6163-3d', '20bdd38c-ff43-37', '050244cf-6cf0-3e');
INSERT INTO `favourites` (`id`, `accounts_id`, `movie_id`) VALUES ('c3599169-4176-3b', 'd171c4f0-dadb-37', 'c6505f64-60d9-35');
INSERT INTO `favourites` (`id`, `accounts_id`, `movie_id`) VALUES ('c7ab898c-e5fd-32', '55161e85-2160-3c', '3b2c0513-db3c-32');
INSERT INTO `favourites` (`id`, `accounts_id`, `movie_id`) VALUES ('d0a7f671-aa41-3e', '8a3a726a-5f54-34', '84cb95fb-d0d6-3d');
INSERT INTO `favourites` (`id`, `accounts_id`, `movie_id`) VALUES ('d95f1ba6-b457-3d', '5a77c334-6bf8-30', '3ce8d9f1-dc47-31');
INSERT INTO `favourites` (`id`, `accounts_id`, `movie_id`) VALUES ('ebf93f18-6724-36', '5c20e7bd-e038-3c', '536022e7-2b24-33');
INSERT INTO `favourites` (`id`, `accounts_id`, `movie_id`) VALUES ('f1b59d2d-93bc-3f', 'caeda214-623c-3e', 'c3ac4b41-ec02-36');
INSERT INTO `favourites` (`id`, `accounts_id`, `movie_id`) VALUES ('fe4df934-8f4f-33', '3a9aba15-65cb-35', '0ed2f2d4-5585-32');


#
# TABLE STRUCTURE FOR: genres
#

DROP TABLE IF EXISTS `genres`;

CREATE TABLE `genres` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('1dd5ed30-0bfc-3f', 'hic', 'cumque', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('2d2eead8-8487-37', 'dolorem', 'inventore', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('4cce3de1-0ec7-38', 'qui', 'voluptatibus', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('86e89f28-3ced-3a', 'sunt', 'qui', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('88e2c898-45b5-3e', 'amet', 'adipisci', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('8cddda7f-afd9-3a', 'repellendus', 'voluptatem', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('958896eb-5795-35', 'nemo', 'quidem', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('c73cba64-3a44-3f', 'voluptatum', 'harum', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('eaecc254-bd28-32', 'veniam', 'atque', 1);
INSERT INTO `genres` (`id`, `name`, `slug`, `status`) VALUES ('f33c3180-1b59-31', 'temporibus', 'optio', 1);

#
# TABLE STRUCTURE FOR: favorite_genres
#

DROP TABLE IF EXISTS `favorite_genres`;

CREATE TABLE `favorite_genres` (
  `id` binary(16) NOT NULL,
  `accounts_id` binary(16) DEFAULT NULL,
  `genres_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `accounts_id` (`accounts_id`),
  KEY `genres_id` (`genres_id`),
  CONSTRAINT `favorite_genres_ibfk_1` FOREIGN KEY (`accounts_id`) REFERENCES `accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `favorite_genres_ibfk_2` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `favorite_genres` (`id`, `accounts_id`, `genres_id`) VALUES ('131ba66f-233e-31', '8ed15c45-71e7-30', '1dd5ed30-0bfc-3f');
INSERT INTO `favorite_genres` (`id`, `accounts_id`, `genres_id`) VALUES ('17ec5500-f210-35', '3a9aba15-65cb-35', '2d2eead8-8487-37');
INSERT INTO `favorite_genres` (`id`, `accounts_id`, `genres_id`) VALUES ('1952ed6c-f309-36', 'caeda214-623c-3e', '86e89f28-3ced-3a');
INSERT INTO `favorite_genres` (`id`, `accounts_id`, `genres_id`) VALUES ('28f5c65b-cc53-3d', '5a77c334-6bf8-30', '8cddda7f-afd9-3a');
INSERT INTO `favorite_genres` (`id`, `accounts_id`, `genres_id`) VALUES ('2a3a71f3-e4ac-35', 'a3a7cf52-c318-3c', '2d2eead8-8487-37');
INSERT INTO `favorite_genres` (`id`, `accounts_id`, `genres_id`) VALUES ('2cf30101-53d9-3b', 'f9ca2613-80b0-30', 'f33c3180-1b59-31');
INSERT INTO `favorite_genres` (`id`, `accounts_id`, `genres_id`) VALUES ('58c68eb4-3f7e-30', 'ca531538-4cbf-36', '4cce3de1-0ec7-38');
INSERT INTO `favorite_genres` (`id`, `accounts_id`, `genres_id`) VALUES ('6ef47f41-321d-36', '79c0e8d4-26c0-30', 'eaecc254-bd28-32');
INSERT INTO `favorite_genres` (`id`, `accounts_id`, `genres_id`) VALUES ('71ad9f37-a1c6-3b', 'f121d286-1447-3e', 'eaecc254-bd28-32');
INSERT INTO `favorite_genres` (`id`, `accounts_id`, `genres_id`) VALUES ('80b5208d-705f-36', '3be37ada-3a97-3d', '4cce3de1-0ec7-38');
INSERT INTO `favorite_genres` (`id`, `accounts_id`, `genres_id`) VALUES ('95212745-441a-35', 'ea7fd7e4-6e93-3c', 'c73cba64-3a44-3f');
INSERT INTO `favorite_genres` (`id`, `accounts_id`, `genres_id`) VALUES ('9fa5cb46-2f78-3f', '8a3a726a-5f54-34', 'f33c3180-1b59-31');
INSERT INTO `favorite_genres` (`id`, `accounts_id`, `genres_id`) VALUES ('ab81db0e-a1fe-36', '5c20e7bd-e038-3c', '958896eb-5795-35');
INSERT INTO `favorite_genres` (`id`, `accounts_id`, `genres_id`) VALUES ('b60601b5-9f9e-3b', 'd22dfaef-7c67-35', '8cddda7f-afd9-3a');
INSERT INTO `favorite_genres` (`id`, `accounts_id`, `genres_id`) VALUES ('bfdc8b17-98bc-3c', '55161e85-2160-3c', '88e2c898-45b5-3e');
INSERT INTO `favorite_genres` (`id`, `accounts_id`, `genres_id`) VALUES ('cbb4eb34-96bb-30', 'dd70d56f-4fe5-3e', '958896eb-5795-35');
INSERT INTO `favorite_genres` (`id`, `accounts_id`, `genres_id`) VALUES ('cead90b1-f922-39', '752c98a4-be31-37', 'c73cba64-3a44-3f');
INSERT INTO `favorite_genres` (`id`, `accounts_id`, `genres_id`) VALUES ('d8ba163c-f1f7-3b', 'd171c4f0-dadb-37', '88e2c898-45b5-3e');
INSERT INTO `favorite_genres` (`id`, `accounts_id`, `genres_id`) VALUES ('f5cc74db-e69d-32', '450dfb9e-a506-3f', '86e89f28-3ced-3a');
INSERT INTO `favorite_genres` (`id`, `accounts_id`, `genres_id`) VALUES ('fab812ef-3e3e-3a', '20bdd38c-ff43-37', '1dd5ed30-0bfc-3f');

#
# TABLE STRUCTURE FOR: helps
#

DROP TABLE IF EXISTS `helps`;

CREATE TABLE `helps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` mediumtext DEFAULT NULL,
  `answer` mediumtext DEFAULT NULL,
  `status` smallint(6) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (1, 'Eum eum molestiae natus.', 'Hatter: \'but you could keep it to make out that one of its mouth, and addressed her in the wind, and was gone in a very humble tone, going down on her face like the right distance--but then I wonder.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (2, 'Dolor et totam harum.', 'I might venture to go through next walking about at the place of the birds hurried off at once: one old Magpie began wrapping itself up and down in a wondering tone. \'Why, what are they doing?\'.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (3, 'Occaecati rerum nulla itaque consequatur doloremque.', 'I\'ll eat it,\' said Alice. \'Then you shouldn\'t talk,\' said the Mock Turtle went on planning to herself that perhaps it was only sobbing,\' she thought, \'it\'s sure to happen,\' she said to the table,.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (4, 'Vitae aut ut nesciunt excepturi.', 'Alice: \'she\'s so extremely--\' Just then she walked up towards it rather timidly, saying to her in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an unusually large saucepan flew close by.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (5, 'Aut cum excepturi aut voluptas accusantium maiores cumque.', 'I\'m not the same, the next verse,\' the Gryphon said to herself, and nibbled a little bird as soon as the hall was very fond of pretending to be in before the officer could get away without speaking,.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (6, 'Voluptas officiis aperiam ad enim et.', 'Alice, and she felt that she knew that it had finished this short speech, they all looked puzzled.) \'He must have been changed for any lesson-books!\' And so it was addressed to the end: then stop.\'.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (7, 'Architecto molestias in esse repellat eligendi.', 'At last the Dodo had paused as if she meant to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'I\'ve so often read in the other: the Duchess sang the second time round, she came.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (8, 'Neque quod voluptas animi.', 'You gave us three or more; They all made of solid glass; there was no use speaking to a snail. \"There\'s a porpoise close behind it when she had nothing yet,\' Alice replied very gravely. \'What else.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (9, 'Voluptas est et vero asperiores.', 'There was certainly English. \'I don\'t know what \"it\" means well enough, when I sleep\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must be what he did it,) he did with the.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (10, 'Maxime rem alias dolorem.', 'Alice thought to herself, \'if one only knew the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, quite forgetting that she still held the pieces of mushroom in her haste, she had.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (11, 'Eveniet sed consequatur neque velit consequatur nemo nulla.', 'Hatter. \'Stolen!\' the King said to one of the ground, Alice soon began talking to him,\' the Mock Turtle in the schoolroom, and though this was not a VERY good opportunity for showing off a little.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (12, 'Et molestiae dolorum eos omnis.', 'Wonderland, though she felt a little quicker. \'What a funny watch!\' she remarked. \'It tells the day and night! You see the Mock Turtle, \'Drive on, old fellow! Don\'t be all day to such stuff? Be off,.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (13, 'Asperiores velit qui ipsam.', 'Alice remarked. \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in here? Why, there\'s hardly room for her. \'Yes!\' shouted Alice. \'Come on, then!\' roared the Queen, and.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (14, 'Error quia et facere impedit eos rem.', 'I don\'t take this child away with me,\' thought Alice, \'shall I NEVER get any older than you, and must know better\'; and this was her dream:-- First, she tried to beat time when she had never seen.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (15, 'Vero sed et veritatis dolores.', 'EVEN finish, if he doesn\'t begin.\' But she did not at all the children she knew that were of the lefthand bit. * * * * * * * * * * * * * * * * * * * * CHAPTER II. The Pool of Tears \'Curiouser and.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (16, 'Omnis porro excepturi ea consequatur.', 'Alice hastily replied; \'only one doesn\'t like changing so often, you know.\' \'Not the same thing, you know.\' \'I DON\'T know,\' said Alice, as she could see her after the rest of the sort!\' said Alice..', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (17, 'Numquam magni omnis autem non.', 'King, and the Queen had never been so much at first, the two sides of it; and as for the immediate adoption of more energetic remedies--\' \'Speak English!\' said the Caterpillar took the hookah out of.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (18, 'Nemo aut nostrum magnam error voluptatum officia velit.', 'I wish you wouldn\'t have come here.\' Alice didn\'t think that proved it at all. \'But perhaps it was YOUR table,\' said Alice; \'but a grin without a porpoise.\' \'Wouldn\'t it really?\' said Alice to.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (19, 'Minus modi cupiditate consequatur ad vero rerum voluptatum.', 'Said he thanked the whiting kindly, but he could go. Alice took up the other, and making quite a long hookah, and taking not the smallest idea how confusing it is all the while, and fighting for the.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (20, 'Minima earum natus eum magnam quo quod.', 'Sir, With no jury or judge, would be so proud as all that.\' \'With extras?\' asked the Mock Turtle, and to hear her try and say \"Who am I to get her head down to her chin in salt water. Her first idea.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (21, 'Quas libero eveniet eum in expedita at velit sit.', 'I suppose.\' So she set the little dears came jumping merrily along hand in her face, with such a rule at processions; \'and besides, what would happen next. The first thing she heard something like.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (22, 'Dignissimos rerum dolorem eius.', 'March Hare went on. \'Or would you tell me,\' said Alice, who was talking. Alice could see this, as she picked up a little timidly, for she had hurt the poor little Lizard, Bill, was in the distance,.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (23, 'Aliquam omnis eaque doloremque blanditiis dicta atque.', 'White Rabbit; \'in fact, there\'s nothing written on the bank--the birds with draggled feathers, the animals with their heads off?\' shouted the Queen. First came ten soldiers carrying clubs; these.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (24, 'Aliquam libero ut commodi voluptate porro nostrum.', 'Mock Turtle to the Gryphon. \'I\'ve forgotten the little creature down, and felt quite relieved to see some meaning in them, after all. I needn\'t be afraid of interrupting him,) \'I\'ll give him.', 1);
INSERT INTO `helps` (`id`, `question`, `answer`, `status`) VALUES (25, 'Autem molestiae voluptas sit iure veniam qui qui velit.', 'March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t take this young lady tells us a story!\' said the Mock Turtle went on just as well as she went slowly after it: \'I never went to.', 1);


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('05f71794-6886-31', 'https://loremflickr.com/640/480/', '9a48711f-6b72-3b');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('08a37d20-71c5-3b', 'https://loremflickr.com/640/480/', '51c87e1e-feeb-3d');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('155fce28-e52c-31', 'https://loremflickr.com/640/480/', '8117a247-8e2b-33');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('3117bdc6-4373-30', 'https://loremflickr.com/640/480/', '789b0aea-9251-36');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('3c3509e8-e2e9-3f', 'https://loremflickr.com/640/480/', '01d49b86-cfe7-33');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('40e513fc-124f-3a', 'https://loremflickr.com/640/480/', '0fcf924a-6d5c-34');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('6158efca-3694-3c', 'https://loremflickr.com/640/480/', '482f09e2-6013-3e');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('63a8abcc-1f16-3f', 'https://loremflickr.com/640/480/', '60220499-6cf2-39');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('6e7d5f63-1774-35', 'https://loremflickr.com/640/480/', '81ace09a-2a34-31');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('6f3b438a-4c18-33', 'https://loremflickr.com/640/480/', '624fcbe4-4225-3c');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('72d0f48b-4f34-30', 'https://loremflickr.com/640/480/', '85c97398-5618-3f');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('75cb2c45-4bd7-3b', 'https://loremflickr.com/640/480/', '923ed824-6151-30');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('7ac3467f-5a52-35', 'https://loremflickr.com/640/480/', 'a598ce83-b689-37');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('9722e451-26ea-30', 'https://loremflickr.com/640/480/', '31c49e05-5538-33');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('9765a3a5-d391-3c', 'https://loremflickr.com/640/480/', '667feee3-2f89-33');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('ac584b68-8d64-3b', 'https://loremflickr.com/640/480/', '086cae15-2e56-3d');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('b55ddb50-de55-3e', 'https://loremflickr.com/640/480/', '44ac2a77-f0f5-38');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('d2b6dde5-3ce3-31', 'https://loremflickr.com/640/480/', '60afea27-51b0-34');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('e74c9f05-bf8f-37', 'https://loremflickr.com/640/480/', '886527c6-a760-3d');
INSERT INTO `images_celebrity` (`id`, `link`, `celebrity_id`) VALUES ('f5d32e3f-919a-3e', 'https://loremflickr.com/640/480/', '1c630e5e-534d-35');


#
# TABLE STRUCTURE FOR: images_movies
#

DROP TABLE IF EXISTS `images_movies`;

CREATE TABLE `images_movies` (
  `id` binary(16) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `movies_id` binary(16) DEFAULT NULL,
  `status` smallint(6) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `movies_id_index` (`movies_id`),
  CONSTRAINT `images_movies_ibfk_1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('036705dd-ac88-3c', 'https://loremflickr.com/640/480/', 'd3c03e10-974c-3e', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('192c4ba9-e1d6-38', 'https://loremflickr.com/640/480/', '23e18136-caae-36', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('1bd644e9-0769-37', 'https://loremflickr.com/640/480/', 'c3ac4b41-ec02-36', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('1f210016-4db0-38', 'https://loremflickr.com/640/480/', '23e18136-caae-36', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('2b484181-a6c1-32', 'https://loremflickr.com/640/480/', '3ce8d9f1-dc47-31', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('37eaafe5-548c-3e', 'https://loremflickr.com/640/480/', '536022e7-2b24-33', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('3dbaaca3-51e9-36', 'https://loremflickr.com/640/480/', '1233364f-b096-39', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('40c3457e-ec4d-35', 'https://loremflickr.com/640/480/', '3b2c0513-db3c-32', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('4590102e-3f30-30', 'https://loremflickr.com/640/480/', '1233364f-b096-39', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('4b5cf8ff-8309-35', 'https://loremflickr.com/640/480/', 'ab437800-7976-33', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('78d8826b-5746-3f', 'https://loremflickr.com/640/480/', '8309b633-4132-3b', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('8bcae6ce-4c56-37', 'https://loremflickr.com/640/480/', '3b2c0513-db3c-32', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('a184817e-a06a-3f', 'https://loremflickr.com/640/480/', '0ed2f2d4-5585-32', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('ac49f074-b0ba-3d', 'https://loremflickr.com/640/480/', '95bd982f-a375-3c', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('ae8215c9-ebb5-3d', 'https://loremflickr.com/640/480/', '050244cf-6cf0-3e', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('b2601428-648d-36', 'https://loremflickr.com/640/480/', 'd89019f6-92cc-30', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('b3ff6b62-9177-31', 'https://loremflickr.com/640/480/', '84cb95fb-d0d6-3d', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('bbfbbdbd-a0a8-3b', 'https://loremflickr.com/640/480/', 'f0148f77-1c3c-35', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('cb7869e2-81d9-30', 'https://loremflickr.com/640/480/', 'c6505f64-60d9-35', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('cbbe3784-101c-31', 'https://loremflickr.com/640/480/', 'd5bc7415-70d7-37', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('e10ae8e0-67dc-31', 'https://loremflickr.com/640/480/', 'ec1008fd-23ae-38', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('e5b27c05-e7db-37', 'https://loremflickr.com/640/480/', '918e74a8-00f2-33', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('f2d69e5e-6361-30', 'https://loremflickr.com/640/480/', '050244cf-6cf0-3e', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('f7529491-7663-39', 'https://loremflickr.com/640/480/', '74b13c89-2359-32', 1);
INSERT INTO `images_movies` (`id`, `link`, `movies_id`, `status`) VALUES ('f7a26259-2b69-3d', 'https://loremflickr.com/640/480/', '0ed2f2d4-5585-32', 1);




#
# TABLE STRUCTURE FOR: movies_celebrity
#

DROP TABLE IF EXISTS `movies_celebrity`;

CREATE TABLE `movies_celebrity` (
  `id` binary(16) NOT NULL,
  `movie_id` binary(16) DEFAULT NULL,
  `celebrity_id` binary(16) DEFAULT NULL,
  `job_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `movie_id` (`movie_id`),
  KEY `celebrity_id` (`celebrity_id`),
  KEY `job_id` (`job_id`),
  CONSTRAINT `movies_celebrity_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `movies_celebrity_ibfk_2` FOREIGN KEY (`celebrity_id`) REFERENCES `celebrity` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `movies_celebrity_ibfk_3` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('06253dd1-f243-31', 'c3ac4b41-ec02-36', '8117a247-8e2b-33', '74457865-b691-3b');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('0929b401-2156-3a', 'd89019f6-92cc-30', '923ed824-6151-30', 'd43864a2-29e1-34');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('0a6870e3-ba6d-37', '74b13c89-2359-32', 'f6d9efb1-48a2-39', '145d07be-0133-3c');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('12678bf4-e516-34', '95bd982f-a375-3c', '667feee3-2f89-33', 'd43864a2-29e1-34');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('1926e52b-2949-38', 'd5bc7415-70d7-37', '886527c6-a760-3d', '74457865-b691-3b');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('1d4495f6-b73c-31', '23e18136-caae-36', '1c630e5e-534d-35', '145d07be-0133-3c');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('24493156-8a73-31', 'c6505f64-60d9-35', '81ace09a-2a34-31', 'd43864a2-29e1-34');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('3ce9188a-4421-3c', '74b13c89-2359-32', '51c87e1e-feeb-3d', '74457865-b691-3b');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('43e54736-bd04-3d', '84cb95fb-d0d6-3d', 'f9b3642c-9bf0-35', 'd43864a2-29e1-34');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('459f570a-1ada-30', '536022e7-2b24-33', '482f09e2-6013-3e', '145d07be-0133-3c');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('48ab9c1f-4d41-31', 'f0148f77-1c3c-35', 'a598ce83-b689-37', '74457865-b691-3b');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('59ae8a5f-037a-34', '1233364f-b096-39', '0fcf924a-6d5c-34', 'd43864a2-29e1-34');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('6517de84-772c-33', '8309b633-4132-3b', 'f867d74b-c562-3c', '74457865-b691-3b');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('66e1a13f-436f-3f', '23e18136-caae-36', 'bcf5d6b0-d202-39', 'd43864a2-29e1-34');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('77340217-15cd-31', '918e74a8-00f2-33', '624fcbe4-4225-3c', '74457865-b691-3b');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('7a83c930-9d07-37', '3ce8d9f1-dc47-31', '44ac2a77-f0f5-38', 'd43864a2-29e1-34');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('9055067f-3b45-3b', '050244cf-6cf0-3e', '01d49b86-cfe7-33', '145d07be-0133-3c');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('90e22d19-94bc-36', '3b2c0513-db3c-32', 'bdac793b-ac9a-38', '145d07be-0133-3c');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('95fd27f1-56c0-33', '050244cf-6cf0-3e', 'a7848bcb-1b5e-39', 'd43864a2-29e1-34');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('a3fbadfd-1447-38', 'ab437800-7976-33', '789b0aea-9251-36', '145d07be-0133-3c');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('aeef4947-02f3-39', '0ed2f2d4-5585-32', 'a7bb36b7-f2c8-39', '145d07be-0133-3c');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('afa8937e-5afe-33', 'd3c03e10-974c-3e', '85c97398-5618-3f', '145d07be-0133-3c');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('cd23ca80-562c-33', '1233364f-b096-39', 'bc1c293e-c272-3f', '74457865-b691-3b');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('d1037e6d-9a55-37', '84cb95fb-d0d6-3d', '60afea27-51b0-34', '145d07be-0133-3c');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('d51ed34d-06c3-3f', '0ed2f2d4-5585-32', '086cae15-2e56-3d', '74457865-b691-3b');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('def6a984-1b86-31', '3b2c0513-db3c-32', '31c49e05-5538-33', '74457865-b691-3b');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('e27abafb-cda9-3b', 'ec1008fd-23ae-38', '9a48711f-6b72-3b', '145d07be-0133-3c');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('eb15ec2e-b39b-31', '3ce8d9f1-dc47-31', 'cc7ba50f-1c1a-34', '74457865-b691-3b');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('f01e0bcd-3f52-3c', '536022e7-2b24-33', 'd1621897-a4fa-3c', 'd43864a2-29e1-34');
INSERT INTO `movies_celebrity` (`id`, `movie_id`, `celebrity_id`, `job_id`) VALUES ('f981ca72-b9ff-32', '8309b633-4132-3b', '60220499-6cf2-39', 'd43864a2-29e1-34');


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

INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('0b6be350-90ca-3d', 'd89019f6-92cc-30', 'c73cba64-3a44-3f');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('1c109e64-dcfc-3e', '050244cf-6cf0-3e', '1dd5ed30-0bfc-3f');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('210d4bdb-5196-35', 'f0148f77-1c3c-35', 'f33c3180-1b59-31');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('293b23c1-6977-39', '918e74a8-00f2-33', '1dd5ed30-0bfc-3f');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('30c1f8ea-19bb-35', '8309b633-4132-3b', 'eaecc254-bd28-32');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('33a11fec-41d1-31', '536022e7-2b24-33', '958896eb-5795-35');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('34b757b5-1726-34', '1233364f-b096-39', '4cce3de1-0ec7-38');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('44fe4ac0-f719-3b', '0ed2f2d4-5585-32', '2d2eead8-8487-37');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('4845147e-850f-3f', '95bd982f-a375-3c', '2d2eead8-8487-37');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('53bb7448-add7-3e', 'd5bc7415-70d7-37', '958896eb-5795-35');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('56822048-0881-36', 'c6505f64-60d9-35', '88e2c898-45b5-3e');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('5b1c5dd7-c958-34', 'ec1008fd-23ae-38', 'eaecc254-bd28-32');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('5b7d3df2-1ce4-35', '0ed2f2d4-5585-32', '2d2eead8-8487-37');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('6da4ca36-e950-34', 'd3c03e10-974c-3e', '8cddda7f-afd9-3a');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('78c8666c-46da-31', '3ce8d9f1-dc47-31', '8cddda7f-afd9-3a');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('80d94c58-5ec1-3e', '3b2c0513-db3c-32', '88e2c898-45b5-3e');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('9140336a-e928-38', '84cb95fb-d0d6-3d', 'f33c3180-1b59-31');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('93c25b17-04a8-31', '74b13c89-2359-32', 'c73cba64-3a44-3f');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('9db7d44a-2e1e-35', '23e18136-caae-36', '86e89f28-3ced-3a');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('adbc124e-4bd1-30', '1233364f-b096-39', '4cce3de1-0ec7-38');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('baf9071f-661c-3f', '050244cf-6cf0-3e', '1dd5ed30-0bfc-3f');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('bfc98dff-c8b6-37', '23e18136-caae-36', '86e89f28-3ced-3a');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('c2ac937c-076e-33', '3b2c0513-db3c-32', '88e2c898-45b5-3e');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('e0b262e6-46b2-31', 'c3ac4b41-ec02-36', '86e89f28-3ced-3a');
INSERT INTO `movies_genres` (`id`, `movie_id`, `genres_id`) VALUES ('ef13fb95-25b7-3d', 'ab437800-7976-33', '4cce3de1-0ec7-38');



#
# TABLE STRUCTURE FOR: payments
#

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` binary(16) DEFAULT NULL,
  `movie_id` binary(16) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `creditcard_type` varchar(255) DEFAULT NULL,
  `creditcard_number` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `movie_id` (`movie_id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `price`, `creditcard_type`, `creditcard_number`, `status`) VALUES (1, '20bdd38c-ff43-37', '050244cf-6cf0-3e', '2004-11-16 19:44:07', '99999999.9999', 'Visa', '348908335759340', 1);
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `price`, `creditcard_type`, `creditcard_number`, `status`) VALUES (2, '3a9aba15-65cb-35', '0ed2f2d4-5585-32', '2012-05-11 03:06:19', '33325635.2374', 'MasterCard', '5243110226625628', 1);
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `price`, `creditcard_type`, `creditcard_number`, `status`) VALUES (3, '3be37ada-3a97-3d', '1233364f-b096-39', '2019-11-02 23:51:12', '809170.9861', 'Visa', '5483989258983224', 1);
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `price`, `creditcard_type`, `creditcard_number`, `status`) VALUES (4, '450dfb9e-a506-3f', '23e18136-caae-36', '2013-06-29 14:18:35', '20.0938', 'MasterCard', '4916411686470', 1);
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `price`, `creditcard_type`, `creditcard_number`, `status`) VALUES (5, '55161e85-2160-3c', '3b2c0513-db3c-32', '1984-04-27 22:25:51', '26783.4774', 'Discover Card', '4532155780343055', 1);
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `price`, `creditcard_type`, `creditcard_number`, `status`) VALUES (6, '5a77c334-6bf8-30', '3ce8d9f1-dc47-31', '2009-03-14 08:19:22', '404123.6443', 'MasterCard', '5521837740946762', 1);
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `price`, `creditcard_type`, `creditcard_number`, `status`) VALUES (7, '5c20e7bd-e038-3c', '536022e7-2b24-33', '1994-11-26 05:09:25', '21.8065', 'Visa', '5529812872981779', 1);
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `price`, `creditcard_type`, `creditcard_number`, `status`) VALUES (8, '752c98a4-be31-37', '74b13c89-2359-32', '2020-09-30 17:35:56', '34684631.3299', 'MasterCard', '4539210331183933', 1);
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `price`, `creditcard_type`, `creditcard_number`, `status`) VALUES (9, '79c0e8d4-26c0-30', '8309b633-4132-3b', '2009-08-27 17:55:21', '305.4648', 'MasterCard', '4532512924797866', 1);
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `price`, `creditcard_type`, `creditcard_number`, `status`) VALUES (10, '8a3a726a-5f54-34', '84cb95fb-d0d6-3d', '2005-05-27 08:00:52', '20.7806', 'MasterCard', '372284965379465', 1);
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `price`, `creditcard_type`, `creditcard_number`, `status`) VALUES (11, '8ed15c45-71e7-30', '918e74a8-00f2-33', '1970-07-18 11:26:05', '21.6059', 'MasterCard', '5501622370731781', 1);
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `price`, `creditcard_type`, `creditcard_number`, `status`) VALUES (12, 'a3a7cf52-c318-3c', '95bd982f-a375-3c', '1997-03-28 02:51:16', '14.4561', 'Visa', '374996205165203', 1);
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `price`, `creditcard_type`, `creditcard_number`, `status`) VALUES (13, 'ca531538-4cbf-36', 'ab437800-7976-33', '2020-05-03 10:58:45', '19591614.5348', 'MasterCard', '344065695868730', 1);
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `price`, `creditcard_type`, `creditcard_number`, `status`) VALUES (14, 'caeda214-623c-3e', 'c3ac4b41-ec02-36', '1977-01-05 14:34:13', '1506808.6936', 'MasterCard', '4716175037761740', 1);
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `price`, `creditcard_type`, `creditcard_number`, `status`) VALUES (15, 'd171c4f0-dadb-37', 'c6505f64-60d9-35', '1986-07-27 16:03:46', '1.1142', 'Visa', '4024007126143351', 1);
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `price`, `creditcard_type`, `creditcard_number`, `status`) VALUES (16, 'd22dfaef-7c67-35', 'd3c03e10-974c-3e', '1994-03-12 11:11:25', '2839697.7649', 'Discover Card', '4716598170057439', 1);
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `price`, `creditcard_type`, `creditcard_number`, `status`) VALUES (17, 'dd70d56f-4fe5-3e', 'd5bc7415-70d7-37', '2016-05-01 18:49:45', '5022.8266', 'Visa', '4539193013104', 1);
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `price`, `creditcard_type`, `creditcard_number`, `status`) VALUES (18, 'ea7fd7e4-6e93-3c', 'd89019f6-92cc-30', '2017-02-19 00:30:45', '3552.3075', 'Discover Card', '4929849626418701', 1);
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `price`, `creditcard_type`, `creditcard_number`, `status`) VALUES (19, 'f121d286-1447-3e', 'ec1008fd-23ae-38', '2000-01-21 15:30:24', '168.4456', 'Visa', '4556190242814102', 1);
INSERT INTO `payments` (`id`, `account_id`, `movie_id`, `created_at`, `price`, `creditcard_type`, `creditcard_number`, `status`) VALUES (20, 'f9ca2613-80b0-30', 'f0148f77-1c3c-35', '2001-10-18 16:03:03', '1846.1379', 'Visa', '4916400693195234', 1);


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
  `status` smallint(6) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `movie_id` (`movie_id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('080b65d7-c2b2-3b', 'Autem fuga unde esse.', 9, 'I\'m not the smallest notice of her skirt, upsetting all the time she saw in another moment that it felt quite relieved to see what I used to come out among the branches, and every now and then, if I.', '2022-09-24 11:51:34', '74b13c89-2359-32', '752c98a4-be31-37', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('08aec963-b5ff-3a', 'Et qui tempora odio et odio.', 3, 'Alice could hear the rattle of the trees had a consultation about this, and after a pause: \'the reason is, that there\'s any one of these cakes,\' she thought, \'till its ears have come, or at least.', '2016-12-11 09:29:26', '3b2c0513-db3c-32', '55161e85-2160-3c', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('1b97cb7d-d6dc-31', 'Est aut et est voluptas vel laboriosam.', 9, 'I THINK I can listen all day to such stuff? Be off, or I\'ll have you got in as well,\' the Hatter said, tossing his head off outside,\' the Queen was in such a new idea to Alice, flinging the baby.', '1990-02-22 00:08:27', '0ed2f2d4-5585-32', '3a9aba15-65cb-35', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('34f92d0c-86d4-34', 'Omnis sint veritatis reprehenderit ad eius quidem temporibus.', 1, 'I think?\' \'I had NOT!\' cried the Gryphon. Alice did not like to see what I say,\' the Mock Turtle Soup is made from,\' said the Gryphon: and Alice was just in time to go, for the Dormouse,\' thought.', '1985-01-02 03:07:44', 'ec1008fd-23ae-38', 'f121d286-1447-3e', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('4a5515ff-9db1-3f', 'Ducimus eaque vitae error doloremque ut maxime.', 5, 'Alice heard the King replied. Here the other end of the month is it?\' The Gryphon lifted up both its paws in surprise. \'What! Never heard of uglifying!\' it exclaimed. \'You know what to uglify is,.', '1982-06-27 17:38:23', 'f0148f77-1c3c-35', 'f9ca2613-80b0-30', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('4f1ad6c2-82d8-3b', 'Nobis non odio ducimus possimus eius aut.', 10, 'In the very tones of her head to feel very uneasy: to be listening, so she took up the chimney, and said \'No, never\') \'--so you can have no notion how delightful it will be When they take us up and.', '1995-07-20 15:16:50', '23e18136-caae-36', '450dfb9e-a506-3f', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('54c9847a-5067-3c', 'Repellat enim eum neque iste velit et minus et.', 5, 'Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mouse, turning to Alice, \'Have you guessed the riddle yet?\' the Hatter with a large caterpillar, that was lying under the window, I only knew.', '1994-10-22 13:41:17', 'ab437800-7976-33', 'ca531538-4cbf-36', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('56cfc668-bc8f-34', 'Molestiae odit voluptas earum doloribus hic expedita tempore.', 10, 'Mock Turtle. \'Certainly not!\' said Alice in a very decided tone: \'tell her something about the games now.\' CHAPTER X. The Lobster Quadrille is!\' \'No, indeed,\' said Alice. The King laid his hand upon.', '2023-02-25 03:54:27', '1233364f-b096-39', '3be37ada-3a97-3d', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('60538b85-1d2d-3b', 'Inventore numquam consectetur atque modi repellendus facilis.', 2, 'Rabbit\'s little white kid gloves in one hand and a pair of boots every Christmas.\' And she began shrinking directly. As soon as look at the March Hare. Alice sighed wearily. \'I think you could draw.', '1971-12-09 07:40:27', '95bd982f-a375-3c', 'a3a7cf52-c318-3c', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('6ea9f033-843c-35', 'Sit sit possimus provident fugit inventore hic hic.', 1, 'After these came the royal children, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the bread-knife.\' The March Hare and the pair of white kid gloves and the.', '1998-02-18 12:49:47', 'c6505f64-60d9-35', 'd171c4f0-dadb-37', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('782c086e-5c46-3a', 'Non fugit et dolorem voluptatem quod est aut.', 8, 'Alice. \'Who\'s making personal remarks now?\' the Hatter went on, spreading out the proper way of nursing it, (which was to eat her up in spite of all this time, sat down with her arms round it as far.', '1978-03-06 01:39:38', 'd5bc7415-70d7-37', 'dd70d56f-4fe5-3e', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('79102715-5463-33', 'Repellat ut iure iusto est et.', 9, 'Dormouse; \'--well in.\' This answer so confused poor Alice, \'to pretend to be executed for having cheated herself in a tone of the e--e--evening, Beautiful, beautiful Soup! Soup of the Shark, But,.', '2005-09-13 10:27:27', '050244cf-6cf0-3e', '20bdd38c-ff43-37', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('8f5d518f-a1f4-3c', 'Dicta dolor voluptates commodi distinctio totam.', 10, 'SHE, of course,\' said the Pigeon; \'but I know all the time at the end of the singers in the sun. (IF you don\'t explain it is you hate--C and D,\' she added in an offended tone, \'was, that the reason.', '1989-02-27 08:04:01', '1233364f-b096-39', '3be37ada-3a97-3d', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('90756b4a-dbf8-3d', 'Blanditiis corporis autem totam perspiciatis ut mollitia.', 8, 'Alice cautiously replied, not feeling at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s ears--\' the Rabbit was no one to listen to her, \'if we had the dish as its share of the bill, \"French,.', '1980-04-07 10:01:40', '3ce8d9f1-dc47-31', '5a77c334-6bf8-30', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('91a3eb9b-7004-3e', 'Laborum aliquam enim quo soluta.', 3, 'I know THAT well enough; and what does it to be seen: she found a little way forwards each time and a piece of evidence we\'ve heard yet,\' said Alice; \'all I know THAT well enough; don\'t be nervous,.', '1971-01-27 10:15:03', '918e74a8-00f2-33', '8ed15c45-71e7-30', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('a1bc33c2-8a8a-3e', 'Nihil occaecati numquam quia veniam suscipit illum magni.', 1, 'Said his father; \'don\'t give yourself airs! Do you think I can find out the answer to it?\' said the King, \'unless it was just in time to be lost: away went Alice like the look of it altogether; but.', '1993-12-13 23:34:17', '536022e7-2b24-33', '5c20e7bd-e038-3c', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('a8e8305f-0a6a-39', 'Optio nisi omnis quas non eius hic.', 2, 'Alice said to the porpoise, \"Keep back, please: we don\'t want to stay in here any longer!\' She waited for some way of expressing yourself.\' The baby grunted again, so that they had a wink of sleep.', '2003-05-18 10:43:30', '3b2c0513-db3c-32', '55161e85-2160-3c', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('ab569ced-d3a1-30', 'Ipsum rerum ipsum odio aut error distinctio.', 3, 'Caterpillar. \'Well, perhaps you haven\'t found it very hard indeed to make out that part.\' \'Well, at any rate he might answer questions.--How am I then? Tell me that first, and then, and holding it.', '2009-12-16 23:24:11', '8309b633-4132-3b', '79c0e8d4-26c0-30', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('bdf32d3f-9743-3c', 'Voluptas incidunt ut vitae corrupti odit debitis inventore.', 10, 'I\'ll get into her eyes; and once she remembered having seen such a fall as this, I shall see it written up somewhere.\' Down, down, down. There was a most extraordinary noise going on rather better.', '1990-02-26 21:05:47', '050244cf-6cf0-3e', '20bdd38c-ff43-37', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('d7db9392-f68e-38', 'Eaque molestiae accusantium et placeat ut maxime.', 1, 'Alice did not at all like the tone of great surprise. \'Of course not,\' said the Queen, the royal children, and make one quite giddy.\' \'All right,\' said the Duck: \'it\'s generally a ridge or furrow in.', '1975-06-21 01:41:44', 'd3c03e10-974c-3e', 'd22dfaef-7c67-35', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('e187cbea-a1c8-31', 'Cumque incidunt quis molestiae.', 2, 'The great question is, Who in the distance, screaming with passion. She had not gone far before they saw her, they hurried back to the waving of the fact. \'I keep them to be a lesson to you never.', '1993-04-19 20:47:59', 'c3ac4b41-ec02-36', 'caeda214-623c-3e', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('e34f22dd-1933-32', 'Quo et rerum ipsa nobis sit ut.', 6, 'As she said this, she looked back once or twice, and shook itself. Then it got down off the fire, licking her paws and washing her face--and she is such a fall as this, I shall remember it in less.', '2007-08-21 08:34:06', '0ed2f2d4-5585-32', '3a9aba15-65cb-35', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('ea07b2f2-e6b3-3a', 'Eius modi fugiat delectus nulla.', 8, 'Alice; \'I might as well go in at once.\' And in she went. Once more she found it so yet,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, \'we learned French and music.\' \'And.', '2001-11-12 02:53:11', '84cb95fb-d0d6-3d', '8a3a726a-5f54-34', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('ef510819-abb3-3e', 'Reprehenderit voluptatem pariatur assumenda eveniet.', 7, 'Come on!\' So they began solemnly dancing round and swam slowly back to them, they were getting extremely small for a minute, while Alice thought she had put the hookah into its mouth open, gazing up.', '2012-01-03 11:47:30', '23e18136-caae-36', '450dfb9e-a506-3f', 1);
INSERT INTO `reviews` (`id`, `title`, `star`, `comment`, `created_at`, `movie_id`, `account_id`, `status`) VALUES ('fc43e57f-bb8a-3d', 'Qui blanditiis enim ea dicta velit.', 5, 'VERY deeply with a whiting. Now you know.\' \'Not the same age as herself, to see if he were trying to find it out, we should all have our heads cut off, you know. But do cats eat bats? Do cats eat.', '1976-04-04 09:24:39', 'd89019f6-92cc-30', 'ea7fd7e4-6e93-3c', 1);

--bỏ movie_id ở payments
ALTER TABLE payments DROP FOREIGN KEY `payments_ibfk_1`;
ALTER TABLE payments DROP COLUMN movie_id;

-- sửa account_id ở payments là unique do mỗi tài khoản chỉ cần trả tiền 1 lần là được(theo yêu cầu của nhóm trưởng)

ALTER IGNORE TABLE `payments` ADD UNIQUE (`account_id`);

