USE `Turtles` ;

-- -----------------------------------------------------
-- Drop Tables "Turtles"
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Turtles`.`turtleSexGrowthRate`;
DROP TABLE IF EXISTS `Turtles`.`turtleGrowthRate`;
DROP TABLE IF EXISTS `Turtles`.`turtleSex`;

-- -----------------------------------------------------
-- Table `Turtles`.`turtleSex`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Turtles`.`turtleSex` (
  `turtleSex_ID` VARCHAR(50) NOT NULL,
  `Stranding_ID_Number` VARCHAR(50) NOT NULL,
  `Sex` VARCHAR(50) NOT NULL,
  `Year` INT NOT NULL,
  PRIMARY KEY (`turtleSex_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

-- -----------------------------------------------------
-- Table `Turtles`.`turtleGrowthRate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Turtles`.`turtleGrowthRate` (
  `turtleGrowthRate_ID` VARCHAR(50) NOT NULL,
  `Stranding_ID_Number` VARCHAR(50) NOT NULL,
  `Growth_Rate` DOUBLE NOT NULL,
  `Year` INT NOT NULL,
  PRIMARY KEY (`turtleGrowthRate_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

-- -----------------------------------------------------
-- Dynamic Table `Turtles`.`turtleSexGrowthRate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Turtles`.`turtleSexGrowthRate` (
  `turtleSex_ID` VARCHAR(50) NOT NULL,
  `turtleGrowthRate_ID` VARCHAR(50) NOT NULL,
  
  `sexGrowthRate_Stranding_ID_Number` VARCHAR(50) NOT NULL,
  `sexGrowthRate_Year` INT NOT NULL,
  
  `Sex` VARCHAR(50) NOT NULL,
  `Growth_Rate` DOUBLE NOT NULL,
  PRIMARY KEY (`turtleSex_ID`, `turtleGrowthRate_ID`, `sexGrowthRate_Year`),
INDEX (turtleSex_ID, turtleGrowthRate_ID),
FOREIGN KEY (turtleSex_ID)
REFERENCES turtleSex(turtleSex_ID),
FOREIGN KEY (turtleGrowthRate_ID)
REFERENCES turtleGrowthRate(turtleGrowthRate_ID)
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

-- -----------------------------------------------------
-- Insert statements for all tables
-- -----------------------------------------------------
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (1,'Cm 018','Female',2004);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (2,'Cm 018','Female',2005);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (3,'Cm 018','Female',2006);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (4,'Cm 018','Female',2007);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (5,'Cm 018','Female',2008);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (6,'Cm 018','Female',2009);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (7,'Cm 024','Male',2004);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (8,'Cm 024','Male',2005);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (9,'Cm 024','Male',2006);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (10,'Cm 024','Male',2007);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (11,'Cm 024','Male',2008);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (12,'Cm 024','Male',2009);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (13,'Cm 026','Male',2002);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (14,'Cm 026','Male',2003);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (15,'Cm 026','Male',2004);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (16,'Cm 026','Male',2005);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (17,'Cm 026','Male',2006);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (18,'Cm 026','Male',2007);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (19,'Cm 026','Male',2008);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (20,'Cm 026','Male',2009);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (21,'Cm 030','Female',2005);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (22,'Cm 030','Female',2006);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (23,'Cm 030','Female',2007);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (24,'Cm 030','Female',2008);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (25,'Cm 030','Female',2009);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (26,'Cm 032','Male',2008);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (27,'Cm 032','Male',2009);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (28,'Cm 046','Female',2005);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (29,'Cm 046','Female',2006);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (30,'Cm 046','Female',2007);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (31,'Cm 046','Female',2008);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (32,'Cm 046','Female',2009);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (33,'Cm 048','Female',2003);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (34,'Cm 048','Female',2004);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (35,'Cm 048','Female',2005);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (36,'Cm 048','Female',2006);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (37,'Cm 048','Female',2007);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (38,'Cm 048','Female',2008);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (39,'Cm 048','Female',2009);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (40,'Cm 049','Female',2003);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (41,'Cm 049','Female',2004);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (42,'Cm 049','Female',2005);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (43,'Cm 049','Female',2006);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (44,'Cm 049','Female',2007);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (45,'Cm 049','Female',2008);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (46,'Cm 049','Female',2009);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (47,'Cm 053','Female',2006);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (48,'Cm 053','Female',2007);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (49,'Cm 053','Female',2008);
INSERT INTO turtleSex(turtleSex_ID,Stranding_ID_Number,Sex,Year) VALUES (50,'Cm 053','Female',2009);

INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('1','Cm 018','2.4','2004');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('2','Cm 018','3.2','2005');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('3','Cm 018','4.4','2006');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('4','Cm 018','3.9','2007');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('5','Cm 018','4.7','2008');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('6','Cm 018','4.6','2009');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('7','Cm 024','2.6','2004');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('8','Cm 024','2.5','2005');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('9','Cm 024','5.2','2006');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('10','Cm 024','4.1','2007');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('11','Cm 024','3.3','2008');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('12','Cm 024','2.3','2009');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('13','Cm 026','1.2','2002');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('14','Cm 026','0.6','2003');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('15','Cm 026','0.5','2004');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('16','Cm 026','2.3','2005');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('17','Cm 026','5','2006');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('18','Cm 026','3','2007');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('19','Cm 026','3.3','2008');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('20','Cm 026','3','2009');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('21','Cm 030','3.2','2005');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('22','Cm 030','2.8','2006');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('23','Cm 030','3.3','2007');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('24','Cm 030','1.5','2008');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('25','Cm 030','1.3','2009');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('26','Cm 032','4.3','2008');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('27','Cm 032','6.3','2009');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('28','Cm 046','2.2','2005');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('29','Cm 046','4.2','2006');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('30','Cm 046','4.4','2007');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('31','Cm 046','4.7','2008');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('32','Cm 046','3.5','2009');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('33','Cm 048','0.4','2003');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('34','Cm 048','3.7','2004');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('35','Cm 048','3.8','2005');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('36','Cm 048','4.1','2006');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('37','Cm 048','2.3','2007');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('38','Cm 048','3.4','2008');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('39','Cm 048','3.5','2009');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('40','Cm 049','1.4','2003');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('41','Cm 049','3.6','2004');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('42','Cm 049','3.4','2005');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('43','Cm 049','4.3','2006');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('44','Cm 049','2.9','2007');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('45','Cm 049','3.6','2008');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('46','Cm 049','1.9','2009');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('47','Cm 053','4.4','2006');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('48','Cm 053','1.9','2007');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('49','Cm 053','2.2','2008');
INSERT INTO turtleGrowthRate(turtleGrowthRate_ID,Stranding_ID_Number,Growth_Rate,Year) VALUES ('50','Cm 053','2.9','2009');

INSERT INTO turtleSexGrowthRate(turtleSex_ID,turtleGrowthRate_ID,sexGrowthRate_Stranding_ID_Number,Sex,Growth_Rate,sexGrowthRate_Year) VALUES ('1','1','Cm 018','Female','2.4','2004');
INSERT INTO turtleSexGrowthRate(turtleSex_ID,turtleGrowthRate_ID,sexGrowthRate_Stranding_ID_Number,Sex,Growth_Rate,sexGrowthRate_Year) VALUES ('2','2','Cm 018','Female','3.2','2005');
INSERT INTO turtleSexGrowthRate(turtleSex_ID,turtleGrowthRate_ID,sexGrowthRate_Stranding_ID_Number,Sex,Growth_Rate,sexGrowthRate_Year) VALUES ('3','3','Cm 018','Female','4.4','2006');
INSERT INTO turtleSexGrowthRate(turtleSex_ID,turtleGrowthRate_ID,sexGrowthRate_Stranding_ID_Number,Sex,Growth_Rate,sexGrowthRate_Year) VALUES ('38','38','Cm 048','Female','3.4','2008');
INSERT INTO turtleSexGrowthRate(turtleSex_ID,turtleGrowthRate_ID,sexGrowthRate_Stranding_ID_Number,Sex,Growth_Rate,sexGrowthRate_Year) VALUES ('39','39','Cm 048','Female','3.5','2009');
INSERT INTO turtleSexGrowthRate(turtleSex_ID,turtleGrowthRate_ID,sexGrowthRate_Stranding_ID_Number,Sex,Growth_Rate,sexGrowthRate_Year) VALUES ('40','40','Cm 049','Female','1.4','2003');
INSERT INTO turtleSexGrowthRate(turtleSex_ID,turtleGrowthRate_ID,sexGrowthRate_Stranding_ID_Number,Sex,Growth_Rate,sexGrowthRate_Year) VALUES ('12','12','Cm 024','Male','2.3','2009');
INSERT INTO turtleSexGrowthRate(turtleSex_ID,turtleGrowthRate_ID,sexGrowthRate_Stranding_ID_Number,Sex,Growth_Rate,sexGrowthRate_Year) VALUES ('19','19','Cm 026','Male','3.3','2008');