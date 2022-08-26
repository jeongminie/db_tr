CREATE TABLE `theater` (
  `theaterSeq` int(11) NOT NULL AUTO_INCREMENT,
  `metropolitanCity` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `theaterCode` int(11) DEFAULT NULL,
  `cinemaName` varchar(45) DEFAULT NULL,
  `totalScreen` int(11) DEFAULT NULL,
  `totalSeat` int(11) DEFAULT NULL,
  `businessName` varchar(45) DEFAULT NULL,
  `openingDate` date DEFAULT NULL,
  `operatingStatus` varchar(45) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `callNumber` varchar(45) DEFAULT NULL,
  `homePage` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`theaterSeq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `user` (
  `userSeq` INT NOT NULL AUTO_INCREMENT,
  `userId` VARCHAR(45) NOT NULL COMMENT '회원 아이디',
  `password` VARCHAR(100) NOT NULL COMMENT '회원 비밀번호',
  `phone` VARCHAR(45) NOT NULL COMMENT '회원 휴대전화',
  `name` VARCHAR(45) NOT NULL COMMENT '회원 이름',
  `birth` VARCHAR(45) NULL COMMENT '회원 생일',
  `email` VARCHAR(45) NULL COMMENT '회원 이메일',
  `createdAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성날짜',
  `updatedAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정날짜',
  PRIMARY KEY (`userSeq`))
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `ccGroup` (
  `ccgSeq` int NOT NULL AUTO_INCREMENT,
  `ccgName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ccgSeq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `commonCode` (
  `ccSeq` int NOT NULL AUTO_INCREMENT,
  `ccName` varchar(45) DEFAULT NULL,
  `ccGroup_ccgSeq` int NOT NULL,
  PRIMARY KEY (`ccSeq`),
  KEY `fk_commonCode_ccGroup1_idx` (`ccGroup_ccgSeq`),
  CONSTRAINT `fk_commonCode_ccGroup1` FOREIGN KEY (`ccGroup_ccgSeq`) REFERENCES `ccGroup` (`ccgSeq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `boxOffice` (
  `movieSeq` INT NOT NULL AUTO_INCREMENT COMMENT '영화 시퀀스',
  `rank` INT NULL COMMENT '박스오피스 순위',
  `movieNm` VARCHAR(45) NULL COMMENT '영화명',
  `openDt` VARCHAR(45) NULL COMMENT '영화 개봉일',
  `audiCnt` INT NULL COMMENT '해당일의 관객수',
  `audiAcc` INT NULL COMMENT '누적관객수',
  `scrnCnt` INT NULL COMMENT '해당일자에 상영한 스크린수',
  `createdAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성날짜',
  `updatedAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정날짜',
  PRIMARY KEY (`movieSeq`))
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `movie`.`movie` (
  `movieSeq` INT NOT NULL AUTO_INCREMENT COMMENT '영화 시퀀스',
  `movieNm` VARCHAR(45) NULL COMMENT '영화명',
  `movieNmEn` VARCHAR(100) NULL COMMENT '영화명(영문)',
  `prdtYear` INT NULL COMMENT '영화 제작연도',
  `nationAlt` VARCHAR(45) NULL COMMENT '제작국가',
  `typeNm` VARCHAR(45) NULL COMMENT '영화 유형',
  `genreAlt` VARCHAR(45) NULL COMMENT '영화장르',
  `prdtStatNm` VARCHAR(45) NULL COMMENT '제작상태',
  `directors` VARCHAR(45) NULL COMMENT '영화감독',
  `companys` VARCHAR(45) NULL COMMENT '제작사',
  `createdAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성날짜',
  `updatedAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정날짜',
  PRIMARY KEY (`movieSeq`))
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;

alter table movie modify movieNmEn  VARCHAR(100);
drop table movie;

CREATE TABLE IF NOT EXISTS `movie`.`movieUploaded` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `type` TINYINT NULL,
  `defaultNy` TINYINT NULL,
  `sort` TINYINT NULL,
  `originalNm` VARCHAR(100) NULL,
  `uuidNm` VARCHAR(100) NULL,
  `ext` VARCHAR(45) NULL COMMENT '파일 확장자명',
  `size` BIGINT NULL,
  `delNy` TINYINT NULL COMMENT '삭제여부',
  `movieSeq` INT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;