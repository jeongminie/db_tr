SELECT * FROM `user` u 
WHERE 1=1 
-- AND name LIKE '%5'
-- AND name LIKE 'a%'
AND name LIKE '%dm%';

SELECT * FROM `user` u 
WHERE 1=1
-- AND userSeq > 5
-- AND userSeq >=5
AND userSeq BETWEEN 1 and 7;

SELECT * FROM `user` u 
WHERE 1=1
AND userId IS NULL;

CREATE TABLE IF NOT EXISTS `db`.`commonCode` (
  `ccSeq` INT NOT NULL AUTO_INCREMENT,
  `ccName` VARCHAR(45) NULL,
  PRIMARY KEY (`ccSeq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `db`.`ccGroup` (
  `ccgSeq` INT NOT NULL AUTO_INCREMENT,
  `ccgName` VARCHAR(45) NULL,
  PRIMARY KEY (`ccgSeq`))
ENGINE = InnoDB;