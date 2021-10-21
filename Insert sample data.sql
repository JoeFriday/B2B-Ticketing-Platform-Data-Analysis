-- customer table
INSERT INTO `customer` VALUES (1, 'Sarah', 'Tian', 'sat7@gmail.com', '4165590709');
INSERT INTO `customer` VALUES (2, 'Peggy', 'Ma', 'pem5@gmail.com', '6473563413');
INSERT INTO `customer` VALUES (3, 'John', 'Chen', 'joc8@gmail.com', '6477870920');
INSERT INTO `customer` VALUES (4, 'Luke', 'Xia', 'lux9@gmail.com', '6471314526');
INSERT INTO `customer` VALUES (5, 'Nova', 'Ji', 'noj3@gmail.com', '2180992809');
INSERT INTO `customer` VALUES (6, 'Joe', 'Tang', 'jot7@gmail.com', '6471451919');
INSERT INTO `customer` VALUES (7, 'Jake', 'Lau', 'jal2@gmail.com', '4163337856');
INSERT INTO `customer` VALUES (8, 'Terry', 'Wang', 'tew8@gmail.com', '4165598987');
INSERT INTO `customer` VALUES (9, 'Rosa', 'Qi', 'roq6@gmail.com', '6473233831');
INSERT INTO `customer` VALUES (10, 'Christina', 'Yu', 'chy4@gmail.com', '0217723560');
INSERT INTO `customer` VALUES (11, 'Cathy', 'Ru', 'car1@gmail.com', '6478280930');

-- event table
INSERT INTO `event` VALUES (1, 'concert');
INSERT INTO `event` VALUES (2, 'film');
INSERT INTO `event` VALUES (3, 'drama');
INSERT INTO `event` VALUES (4, 'ballet');
INSERT INTO `event` VALUES (5, 'acrobatics');

-- reseller table
INSERT INTO `reseller` VALUES (1, 'MoonStar');
INSERT INTO `reseller` VALUES (2, 'TitanTickets');
INSERT INTO `reseller` VALUES (3, 'AllEvent');

-- reseller_branch table
INSERT INTO `reseller_branch` VALUES (1, 'North York');
INSERT INTO `reseller_branch` VALUES (2, 'Downtown');
INSERT INTO `reseller_branch` VALUES (3, 'Newmarket');
INSERT INTO `reseller_branch` VALUES (4, 'Markham');

-- sales_channel table
INSERT INTO `sales_channel` VALUES (1, 'WebSite');
INSERT INTO `sales_channel` VALUES (2, 'OnSite');

-- ticket table
INSERT INTO `ticket` VALUES (1, 5, 1, 4, 2, Null, Null, '2020-02-04', 192.70, 2, 0.224);
INSERT INTO `ticket` VALUES (2, 10, 1, 5, 1, Null, Null, '2020-02-05', 200.50, 1, 0.168);
INSERT INTO `ticket` VALUES (3, 2, 2, 2, 1, 4, Null, '2020-02-11', 23.49, 4, Null);
INSERT INTO `ticket` VALUES (4, 8, 2, 3, 1, 1, Null, '2020-02-14', 64.79, 3, 0.164);
INSERT INTO `ticket` VALUES (5, 3, 2, 2, 3, 2, Null, '2020-02-20', 22.09, 1, Null);
INSERT INTO `ticket` VALUES (6, 10, 2, 4, Null, Null, 1, '2020-02-28', 390.00, 2, 0.300);
INSERT INTO `ticket` VALUES (7, 11, 2, 2, 1, 2, Null, '2020-02-28', 35.05, 1, 0.014);
INSERT INTO `ticket` VALUES (8, 6, 2, 1, 2, 1, Null, '2021-02-01', 179.09, 2, 0.223);
INSERT INTO `ticket` VALUES (9, 1, 1, 2, 1, Null, Null, '2021-02-09', 29.99, 2, 0.018);
INSERT INTO `ticket` VALUES (10, 10, 2, 3, 1, 1, Null, '2021-02-10', 70.20, 2, 0.100);
INSERT INTO `ticket` VALUES (11, 4, 2, 4, 3, 2, Null, '2021-02-11', 201.00, 1, 0.169);
INSERT INTO `ticket` VALUES (12, 9, 1, 2, 1, Null, Null, '2021-02-16', 47.50, 2, 0.060);
INSERT INTO `ticket` VALUES (13, 11, 2, 2, 2, 1, Null, '2021-02-17', 57.98, 2, 0.087);
INSERT INTO `ticket` VALUES (14, 7, 2, 2, Null, Null, 1, '2021-02-20', 37.22, 2, 0.020);
INSERT INTO `ticket` VALUES (15, 10, 2, 2, 1, 4, Null, '2021-02-21', 40.00, 3, 0.098);
INSERT INTO `ticket` VALUES (16, 7, 1, 3, 3, Null, Null, '2021-02-23', 69.96, 4, 0.220);
INSERT INTO `ticket` VALUES (17, 1, 1, 1, 2, Null, Null, '2021-02-24', 308.80, 1, 0.221);
INSERT INTO `ticket` VALUES (18, 5, 2, 5, Null, 2, 1, '2021-02-26', 198.89, 2, 0.225);
INSERT INTO `ticket` VALUES (19, 8, 2, 2, 1, 1, Null, '2021-02-27', 19.99, 6, 0.090);
INSERT INTO `ticket` VALUES (20, 10, 2, 2, 1, 4, Null, '2021-02-28', 51.00, 2, 0.074);

-- venue_organizer table
INSERT INTO `venue_organizer` VALUES (1, 'ScotiaArena');