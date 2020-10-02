CREATE TABLE `Users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `Mail` varchar(255),
  `UserName` varchar(255),
  `pass` varchar(255)
);

CREATE TABLE `Questions` (
  `id` int PRIMARY KEY,
  `QuestionDetail` longtext,
  `QuestionAnswer` varchar(255)
);

CREATE TABLE `Answers` (
  `Qid` int,
  `A` longtext,
  `B` longtext,
  `C` longtext,
  `D` longtext
);

CREATE TABLE `TestResults` (
  `Uid` int,
  `Result` int,
  `TimeTest` datetime
);

ALTER TABLE `Answers` ADD FOREIGN KEY (`Qid`) REFERENCES `Questions` (`id`);

ALTER TABLE `TestResults` ADD FOREIGN KEY (`Uid`) REFERENCES `Users` (`id`);
