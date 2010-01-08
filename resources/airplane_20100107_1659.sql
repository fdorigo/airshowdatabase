-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.37-1ubuntu5


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema airplane
--

CREATE DATABASE IF NOT EXISTS airplane;
USE airplane;

--
-- Definition of table `airplane`.`Record`
--

DROP TABLE IF EXISTS `airplane`.`Record`;
CREATE TABLE  `airplane`.`Record` (
  `nnumber` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `addressone` varchar(50) DEFAULT NULL,
  `addresstwo` varchar(50) DEFAULT NULL,
  `addresscity` varchar(50) DEFAULT NULL,
  `addressstate` varchar(50) DEFAULT NULL,
  `addresszip` varchar(50) DEFAULT NULL,
  `primaryphone` varchar(50) DEFAULT NULL,
  `secondaryphone` varchar(50) DEFAULT NULL,
  `emailaddress` varchar(50) DEFAULT NULL,
  `arrivaldate` varchar(50) DEFAULT NULL,
  `airplanemodel` varchar(50) DEFAULT NULL,
  `airplanemake` varchar(50) DEFAULT NULL,
  `manufactureyear` varchar(50) DEFAULT NULL,
  `airplanecolor` varchar(50) DEFAULT NULL,
  `numberofoccupants` varchar(50) DEFAULT NULL,
  `homebase` varchar(50) DEFAULT NULL,
  `needjudging` tinyint(1) DEFAULT NULL,
  `judged` tinyint(1) DEFAULT '0',
  `category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nnumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airplane`.`Record`
--

/*!40000 ALTER TABLE `Record` DISABLE KEYS */;
LOCK TABLES `Record` WRITE;
INSERT INTO `airplane`.`Record` VALUES  ('13453','BELL ORNITHOPTERS FLYING CLUB INC                 ','','PO BOX 1714                      ','                                 ','EASTLAKE          ','CO','80614-1714','3038829754','','ROBERT.NARRO@COMCAST.NET','2009-7-22','172M                ','CESSNA                        ','1973','','','',0,0,'SELECT CATEGORY'),
 ('76382','UNGER H MARIJKE                                   ','','1314 CARNATION CIR               ','                                 ','LONGMONT          ','CO','80503-7543','303-9813431','','MARIJKE.UNGER@GMAIL.COM','2009-7-22','7KCAB               ','BELLANCA                      ','1976','','','',0,0,'SELECT CATEGORY'),
 ('5313C','PAUL EUBANKS                                 ','','2321 MONTEZUMA RD           ','                                 ','PUEBLO      ','CO','81003','719-583-1230','719-369-6263','ADAS@','2009-7-22','140A                ','CESSNA                        ','1950','','2','1V6',1,1,'VINTAGE'),
 ('58RK','KAUBER ROD                                   ','','PO BOX 16                        ','                                 ','GRANBY            ','CO','80446-0016','970-531-0004','','ROD.KAUBS@GMAIL.COM','2009-7-22','VANS RV-4           ','KAUBER R K/ROSS H W           ','1994','','2','GMB',0,0,'SELECT CATEGORY'),
 ('6533W','MARK HARRINGTON                          ','','PO BOX 67                        ','                                 ','GRANBY            ','CO','80446-0067','970-531-0437','','RKYMTNMARK@MSN.COM','2009-7-22','PA-28-140           ','PIPER                         ','1965','','2','GMB',0,0,'SELECT CATEGORY');
INSERT INTO `airplane`.`Record` VALUES  ('816RC','JOHN HENSLEY                      ','','1219 MANSFIELD DR                 ','                                 ','FORT COLLINS     ','CO','80525','970-262-3590','970-232-8072','NAVLON59C@AOL.COM','2009-7-21','VANS RV-10          ','SERANI ERIC S                 ','2006','','2','GXY',1,1,'VINTAGE'),
 ('320AD','DAVIS RONALD J                                    ','','2193 AUGUSTA DR                  ','                                 ','EVERGREEN         ','CO','80439-8923','303-912-7726','303-679-9732','RJDINSURANCE@AOL.COM','2009-7-21','VANS RV-7           ','DAVIS RONALD JAMES            ','2007','','2','KFTG',1,1,'HOMEKIT'),
 ('212MW','ROBINSON BRIAN D                                  ','','6753 S LOCUST CT                 ','                                 ','CENTENNIAL        ','CO','80112-1007','720-969-7085','','ROBINMAGU@YAHOO.COM','2009-7-21','M-20G               ','MOONEY                        ','1969','','2','KAPA',0,0,'SELECT CATEGORY'),
 ('6865B','INGS DEBORAH                                      ','','5287 S LISBON WAY                ','                                 ','CENTENNIAL        ','CO','80015-6420','303-999-71','','ALPHAFLOOR@AOL.COM','2009-7-21','PA-22-150           ','PIPER                         ','1956','','2','1C08',0,0,'SELECT CATEGORY');
INSERT INTO `airplane`.`Record` VALUES  ('1888C','WAYMAN IAN A                                      ','','14125 JUDGE ORR RD               ','                                 ','PEYTON            ','CO','80831-8426','719-651-2428','','IRWAYMAN@ATT.NET','2009-7-21','170B                ','CESSNA                        ','1953','','2','00V',0,0,'SELECT CATEGORY'),
 ('53503','ROB DUNCAN','','3427 STEARMAN LANE                  ','                                 ','CRAWFORD  ','CO','81415  ','970-250-9009','','DUNCAN@AIRBASE1.COM','2009-7-21','TBM-3E              ','GRUMMAN                       ','1948','','4','KGJT',1,1,'WARBIRD'),
 ('4741N','GARY ROGGE                               ','','PO BOX 1603         ','                                 ','PUEBLO            ','CO','81002','7195450388','','@COM','2009-7-22','182Q                ','CESSNA                        ','1979','','','',0,0,'SELECT CATEGORY'),
 ('970MC','CALLEN MELVIN                                     ','','9952 COUNTY ROAD 54              ','                                 ','MILLIKEN          ','CO','80543-9607','970-567-4824','','MCALLEN@SPECTRUMENG.COM','2009-7-21','GLASTAR             ','CALLEN MELVIN                 ','    1999','','2','',0,0,'SELECT CATEGORY'),
 ('3479W','CTC TRUCKING','','1241 COUNTY ROAD 13A','','FLORENCE','CO','81226','719-784-3878','','NICKBELLINO@CTC-TRUCKING.COM','2009-7-22','M-4-180V            ','MAULE                         ','2007','','3','V6',1,1,'MODERN');
INSERT INTO `airplane`.`Record` VALUES  ('82G','HENSLEY JOHN R                                    ','','1219 MANSFIELD DR                ','                                 ','FORT COLLINS      ','CO','80525-2823','970-282-8072','','NAVION59C@AOL.COM','2009-7-22','NAVION B            ','RYAN                          ','1951','','1','GXY',1,1,'VINTAGE'),
 ('750CG','GEORGE ROSEL                          ','','8907 GREEN MEADOWS DR.','                                 ','LITTLETON','CO','80126','620-655-8217','','ROSEL_GEORGE@YAHOO.COM','2009-7-21','LANCAIR IV-PT       ','ROSEL GEORGE F                ','2006','','','',1,0,'HOMEKIT'),
 ('83365','SERANI ENTERPRISES LLC                            ','','1500 DAPHNE ST                   ','                                 ','BROOMFIELD        ','CO','80020-1151','123456','','GHY@AOL.COM','2009-7-22','7AC                 ','AERONCA                       ','1946','','2','',1,1,'VINTAGE'),
 ('57AZ','MATUSKA FLOYD DALE                                ','','58114 COUNTY ROAD 15             ','                                 ','CARR              ','CO','80612-8901','970-231-2378','','DALE@FRII.COM','2009-7-22','YAK-52TW            ','S C AEROSTAR S A              ','2003','','','',0,0,'SELECT CATEGORY'),
 ('50917','NEFE STEVEN J                                     ','','1211 CRESPI DR                   ','                                 ','PACIFICA          ','CA','94044-3602','3039064325','','BOMBERMAN_15@HOTMAIL.COM','2009-7-22','172P                ','CESSNA                        ','1980','','','',0,0,'SELECT CATEGORY');
INSERT INTO `airplane`.`Record` VALUES  ('114RM','IMMELMAN LEASING COMPANY LLC                      ','','2 MOUNTAIN ASH                   ','                                 ','LITTLETON         ','CO','80127-3537','7209885749','','TSTANS@YAHOO.COM','2009-7-22','S-2C                ','AVIAT AIRCRAFT INC            ','1999','','','',0,0,'SELECT CATEGORY'),
 ('575KM','MICKELSON KARL W                                  ','','6372 MEDICINE SPRINGS DR         ','                                 ','COLORADO SPRINGS  ','CO','80923-7316','7197210535','','KWMICKELSON@YAHOO.COM','2009-7-22','BULLDOG 120         ','SCOTTISH AVIATION             ','1975','','','',1,0,'SELECT CATEGORY'),
 ('747JG','GRAY JAMES W                                      ','','29371 CAMELBACK LN               ','                                 ','EVERGREEN         ','CO','80439-9456','3039499531','','N747JG@EARTHLINK.NET','2009-7-22','RV-8                ','GRAY JAMES W                  ','2008','','','',1,1,'SELECT CATEGORY'),
 ('9092W','GORE JASON S                                      ','','2250 A SPRUCE ST                 ','                                 ','BOULDER           ','CO','80302     ','4152050667','','SPEZIO@JASONGORE.COM','2009-7-22','DAL-1               ','WEBER DEL                     ','1997','','','',1,0,'SELECT CATEGORY');
INSERT INTO `airplane`.`Record` VALUES  ('117CM','MURPHY CHRIS C                                    ','','5905 HIGHLAND HILLS CIR          ','                                 ','FORT COLLINS      ','CO','80528-9337','970-2199295','','C40MURPHY@MSN.COM','2009-7-22','VANS RV-4           ','MURPHY CHRIS                  ','2001','','1','KFNL',1,0,'SELECT CATEGORY'),
 ('207MS','YERMILOV ALEKSANDR B                              ','','8779 W 86TH DR                   ','                                 ','WESTMINSTER       ','CO','80005     ','3032464508','','AYERMILOV@GMAIL.COM','2009-7-22','MUSTANG II          ','YERMILOV ALEKSANDR B          ','    ','','2','',1,1,'HOMEKIT'),
 ('20522','ROWE DALE I                                       ','','15695 RAMROD DR                  ','                                 ','PEYTON            ','CO','80831-9221','7193920302','','BOEING24@MSN.COM','2009-7-22','R182                ','CESSNA                        ','1982','','','',1,0,'SELECT CATEGORY'),
 ('59C','HENSLEY JOHN R                                    ','','PO BOX 875082                    ','                                 ','WASILLA           ','AK','99687     ','9702823590','','NAVION59C@AOL.COM','2009-7-22','NAVION              ','NORTH AMERICAN                ','1946','','','',1,0,'SELECT CATEGORY');
INSERT INTO `airplane`.`Record` VALUES  ('140AG','MATEYKO GREGORY A                                 ','','18148 E WEAVER DR                ','                                 ','CENTENNIAL        ','CO','80016-3136','3039156662','','GMALEYKO@COMCAST.NET','2009-7-22','T-28C               ','NORTH AMERICAN                ','1956','','','',1,0,'SELECT CATEGORY'),
 ('838BC','COOK DAVID R                                      ','','3201 COUNTY ROAD 41              ','                                 ','GRANBY            ','CO','80446     ','970-531-3773','','MTNFLYER@MSN.COM','2009-7-22','RV7A                ','COOK DAVID R                  ','2008','','2','GMB',0,0,'SELECT CATEGORY'),
 ('124AB','BERGEVIN STEVEN C                                 ','','5664 HERZMAN DR                  ','                                 ','EVERGREEN         ','CO','80439-5456','303-949-8208','','N124AB@AOL.COM','2009-7-22','GILES G-202         ','BERGEVIN STEVEN               ','2003','','2','BJC',1,1,'HOMEKIT'),
 ('1996C','GOODWIN JAMES A                                   ','','139 49TH AVENUE CT               ','                                 ','GREELEY           ','CO','80634-4396','970-430-0291','','JGOODCO@MSN.COM','2009-7-22','170B                ','CESSNA                        ','1953','','2','GYX',1,1,'VINTAGE');
INSERT INTO `airplane`.`Record` VALUES  ('2973M','PAGE MACK F                                       ','','10096 E BEECHWOOD DR             ','                                 ','PARKER            ','CO','80134     ','303-841-5279','','FRAGILEXBAND@MSN.COM','2009-7-22','PA-12               ','PIPER                         ','1946','','2','EVERITT FIELD',0,0,'SELECT CATEGORY'),
 ('28KT','SHPAKOW THOMAS M                                  ','','4212 W PONDVIEW PL               ','                                 ','LITTLETON         ','CO','80123-6556','3037349821','','G3INTIGION.COM','2009-7-22','SA 750              ','SHPAKOW THOMAS                ','2005','','','',1,1,'HOMEPLAN'),
 ('675RE','MACDOUGALD JAMES A                                ','','2508 RIMROCK DR                  ','                                 ','COLORADO SPRINGS  ','CO','80915-1019','719-964-1678','','MEMACDO@AOL.COM','2009-7-22','RV6A                ','ATTAWAY ROBERT H              ','2002','','1','MEADOW LAKE 00V',0,0,'SELECT CATEGORY'),
 ('3605K','LEWIS JEFFREY R                                   ','','5719 GOLDEN CURRANT WAY          ','                                 ','PARKER            ','CO','80134     ','3038414951','','JEFFRLEW5@AOL.COM','2009-7-22','J3C-65              ','PIPER                         ','1946','','','',0,0,'SELECT CATEGORY');
INSERT INTO `airplane`.`Record` VALUES  ('520L','WALKER DALE A JR                                  ','','PO BOX 866                       ','                                 ','LIMON             ','CO','80828-0866','719-775-2234','719-760-0307','TWOWALKER@Q.COM','2009-7-22','LANCAIR LEGACY      ','WALKER DALE A JR              ','2004','','2','KLIC',0,0,'SELECT CATEGORY'),
 ('2101K','GLEITZ JAY D                                      ','','927 3RD AVE                      ','                                 ','LONGMONT          ','CO','80501-5413','720-201-8700','','JDLEITZ@COMCAST.NET','2009-7-22','8E                  ','LUSCOMBE                      ','1947','','2','LMO',0,0,'SELECT CATEGORY'),
 ('1240F','JOE PATTON','','7516 INDIAN WELLS WAY            ','                                 ','LONE TREE         ','CO','80124-4212','3039466400','','JOE.PATTON@COMAST.NET','2009-7-22','172N                ','CESSNA                        ','1979','','2','KAPA',0,0,'SELECT CATEGORY'),
 ('247AA','BURGER TERRY                                      ','','5024 W SHIPTON RD                ','                                 ','SALINA            ','KS','67401-9358','0000000000','','@COM','2009-7-22','K35                 ','BEECH                         ','1959','','','',1,1,'SELECT CATEGORY'),
 ('184CB','SPAUR CHARLES W                                   ','','3911 S ELKHART ST                ','                                 ','AURORA            ','CO','80014-4112','720-934-3427','','CHUCKSPAUR.COM','2009-7-22','VANS RV-6           ','SPAUR CHARLES                 ','2002','','2','FTG',0,0,'SELECT CATEGORY');
INSERT INTO `airplane`.`Record` VALUES  ('727PP','PETERSON STANLEY H JR                             ','','3960 ARBOL CT                    ','                                 ','BOULDER           ','CO','80301-1752','7203342320','','N727PP@AOL.COM','2009-7-22','BOWERS FLY BABY     ','PETERSON STANLEY H JR         ','2004','','','',1,1,'SELECT CATEGORY'),
 ('493OM','DARYL CINQUANT','','PO BOX 1343','','ARVADA','CO','80001','303-423-9846','','CQ7014@AOL.COM','2009-7-22','','','','','2','EJC',1,1,'VINTAGE'),
 ('346B','JOHNSON JAMES J                                   ','','7399 CALHOUN BYERS RD            ','                                 ','BYERS             ','CO','80103-8719','3035180141','','@COM','2009-7-22','KITFOX SPEEDSTER    ','BARNETT C/WILSON J N          ','1996','','','KFTG',1,1,'LIGHTSPORT'),
 ('511GS','HARRIS RANDALL L                                  ','','16246 E 81ST CT N                ','                                 ','OWASSO            ','OK','74055-8400','9182741324','','SKYBOLT300@COX.NET','2009-7-22','SKYBOLT 300         ','RUNYAN S / HARRIS R           ','1993','','','',1,1,'HOMEPLAN'),
 ('767JA','APFELBAUM JONATHAN                                ','','5462 GOLDEN CURRANT WAY               ','                                 ','PARKER','CO','80134','303-862-8604','','JONATHAN.APFELBAUM@GMAIL.COM','2009-7-22','STD HMLTN GLASTAR   ','APFELBAUM JONATHAM            ','2004','','1','FTG',1,1,'HOMEKIT');
INSERT INTO `airplane`.`Record` VALUES  ('226MH','HENNEY MICHAEL A                                  ','','23255 BAY OAKS AVE               ','                                 ','PARKER            ','CO','80138-5742','303-325-6148','','N226MH@COMCAST.NET','2009-7-22','VANS RV-6A          ','HENNEY MICHAEL A              ','2004','','2','FTG',0,0,'SELECT CATEGORY'),
 ('224SG','CASEY GARY L                                      ','','24872 KOLSTAD LOOP               ','                                 ','ELBERT            ','CO','80106-9500','303-648-3192','','CASEY.GARY@YAHOO.COM','2009-7-22','LANCAIR ES          ','CASEY GARY L                  ','2006','','2','CO15',1,1,'HOMEKIT'),
 ('53959','JOHN GOOD                        ','','2004 S HELENA ST APT D           ','                                 ','AURORA            ','CO','80013-4047','303-522-4355','','JGOOD737@MSN.COM','2009-7-22','7KCAB               ','BELLANCA                      ','1977','','2','APA',0,0,'SELECT CATEGORY'),
 ('9739A','KEVIN MAXWELL                          ','','103 N. DOUGLAS               ','                                 ','GLENDIVE        ','MT','59330','406-941-0872','','KEVMAXWELL@MAC.COM','2009-7-22','170A                ','CESSNA                        ','1950','','1','GDV',0,0,'SELECT CATEGORY'),
 ('226RA','DUSTIN                                     ','','150 WEST 9TH AVE           APT 2104','                                 ','DENVER','CO','80204','303-503-1926','','777PIC@GMAIL.COM','2009-7-22','TBM 700             ','SOCATA                        ','2008','','2','APA',0,0,'SELECT CATEGORY');
INSERT INTO `airplane`.`Record` VALUES  ('814BJ','JEWETT BRANDON                                    ','','15686 ELK CIR                    ','                                 ','BRIGHTON          ','CO','80603-3810','303-521-3238','','BRANDONDC3@COMCAST.NET','2009-7-22','BREEZY              ','JEWETT BRANDON                ','2009','','1','CO12',1,1,'HOMEPLAN'),
 ('2448P','ROBERTS RICHARD C                                 ','','617 COLORADO ST                  ','                                 ','FORT COLLINS      ','CO','80524-3107','970-407-8523','','R_C_ROBERTS@MSN.COM','2009-7-22','PAZER 150           ','ROBERTS RICHARD C             ','    ','','1','CO48',0,0,'SELECT CATEGORY'),
 ('53PG','PICKERELL LARRY E                                 ','','233 LA PAZ PL                    ','                                 ','LONGMONT          ','CO','80501-1522','720-212-9853','','BUZMIDNITE@AOL.COM','2009-7-22','HARMON ROCKET II    ','PICKERELL L/GIBSON G          ','2001','','2','LMO',1,1,'HOMEPLAN'),
 ('4235R','RUBINO ROBERT J                                   ','','11945 AIRPORT WAY                ','                                 ','BROOMFIELD        ','CO','80021-2564','303-119-7881','','BOBRUBINO@AOL.COM','2009-7-22','M-7-235C            ','MAULE                         ','1999','','3','BDU',0,0,'SELECT CATEGORY');
INSERT INTO `airplane`.`Record` VALUES  ('40291','TURNER VAUGHN E                                   ','','15684 DEGAULLE CIR               ','                                 ','BRIGHTON          ','CO','80603-3802','111111111','111111111','AAA@AAA.COM','2009-7-22','CHIPMUNK            ','TURNER VAUGHN E               ','2002','','','',1,1,'MODERN'),
 ('3773S','FIELDEN DONALD J                                  ','','14180 CITATION LN                ','                                 ','PEYTON            ','CO','80831-8035','817=550-3127','','DFIELDEN@REPUBLICOFAVIATION','2009-7-22','172E                ','CESSNA                        ','1963','','2','00V',0,0,'SELECT CATEGORY'),
 ('82BJ','WILSON ROBERT A                                   ','','1818 SUNLIGHT DR                 ','                                 ','LONGMONT          ','CO','80501-2091','3036821857','','@COM','2009-7-22','LONG EZ             ','WILSON ROBERT A               ','    ','','','LMO',0,0,'SELECT CATEGORY'),
 ('315AR','ERIC KRELL                                 ','','9897 SUNSET HILL CIRLE               ','                                 ','LONE TR EE    ','CO','80124','303-799-5124','','EKRELLPT@AOL.COM','2009-7-22','SR20                ','CIRRUS DESIGN CORP            ','2007','','2','KAPA',0,0,'SELECT CATEGORY');
INSERT INTO `airplane`.`Record` VALUES  ('828DB','SMITH JAMES A                                     ','','2324 MUGHO RD                    ','                                 ','CHEYENNE          ','WY','82009-9100','307-432-0472','','VERALYNJIMALIQ@AOL.COM','2009-7-22','VANS RV-6           ','SMITH J A/SMITH V A           ','2000','','1','WY05',0,0,'SELECT CATEGORY'),
 ('2965X','LYNCH THOMAS L                                    ','','1718 RIDGEWOOD              ','                                 ','FORT COLLINS      ','CO','80526','970-430-5030','','LYNCH@JURISDATA.COM','2009-7-22','177                 ','CESSNA                        ','1967','','4','KFML',0,0,'SELECT CATEGORY'),
 ('7390K','MICHAEL BOND                           ','','1100 NORWICH CT                  ','                                 ','FORT COLLINS      ','CO','80525-3330','970-227-1620','','N30ND@ALASCOINVESTMENTS.COM','2009-7-22','R172K               ','CESSNA                        ','1976','','2','FNL',0,0,'SELECT CATEGORY'),
 ('2963F','ERIK DYCE                    ','','7810 S MONROE WAY                ','                                 ','CENTENNIAL        ','CO','80122-3535','7202123015','','ERIKDYCE@COMCAST.NET','2009-7-22','182J                ','CESSNA                        ','1966','','','',1,1,'VINTAGE');
INSERT INTO `airplane`.`Record` VALUES  ('3144V','KARIE DANIEL                ','','3601 VESTAL LOOP','                                 ','BROOMFIELD','CO','80023','303-604-6555','','KARIE44@MSN.COM','2009-7-22','172S                ','CESSNA                        ','2002','','2','KEIK',0,0,'SELECT CATEGORY'),
 ('1190P','BEN ROHALD                                 ','','7192 PARKLAND ST             ','                                 ','BROOMFIELD','CO','80021','720-879-3199','','BROHALD@AOL.COM','2009-7-22','PA-23               ','PIPER                         ','1955','','2','KBDU',1,1,'VINTAGE'),
 ('255TV','NABORS DAVID R                                    ','','109 S TAFT HILL RD               ','                                 ','FT COLLINS        ','CO','80521     ','9704902505','','FLYNTVMAN@MSN.COM','2009-7-23','SKYSTAR KITFOX III  ','NABORS DAVID R                ','2006','','','FNL',0,0,'SELECT CATEGORY'),
 ('631PS','SHIREMAN PAUL M TRUSTEE                           ','','16710 E 80TH ST N                ','                                 ','OWASSO            ','OK','74055-5836','9182727135','','PSHIREMAN@AOL.COM','2009-7-23','RANS S6ES           ','SHIREMAN PAUL M               ','2007','','','O38',0,0,'SELECT CATEGORY'),
 ('12063','WALT DORLAC                                   ','','1903 ELISS PLACE','                                 ','WINDSOR','CO','80550','2222222222','','@COM','2009-7-23','N3N-3               ','NAVAL AIRCRAFT FACTORY        ','1941','','2','FNL',0,0,'SELECT CATEGORY');
INSERT INTO `airplane`.`Record` VALUES  ('1601S','JEREMIAH HORNER                       ','','813 INDEPENDENCE DR','                                 ','LONGMONT','CO','80501','303-957-7602','','JEREMIAHHORNER@HOTMAIL.COM','2009-7-23','PA-28-181           ','PIPER                         ','1976','','3','KGXY',0,0,'SELECT CATEGORY'),
 ('222LV','LEY JOHN R                                        ','','10532 E MAPLEWOOD DR             ','                                 ','ENGLEWOOD         ','CO','80111-5753','303-740-9000','','JRLEY@LEYIELAW.COM','2009-7-23','RV-6                ','VON MOOS LARRY WAYNE          ','1995','','1','APA',0,0,'SELECT CATEGORY'),
 ('951LP','PRESTON LESLIE J                                  ','','2032 MEANDER RD                  ','                                 ','WINDSOR           ','CO','80550-4627','970-674-0281','','LESANDPEGGY@AOL.COM','2009-7-23','VANS RV-7           ','PRESTON LESLIE J              ','2008','','1','KFNL',0,0,'SELECT CATEGORY'),
 ('881GP','PUCKETT GREGORY N                                 ','','34788 MORGAN TRL                 ','                                 ','ELIZABETH         ','CO','80107-8414','3036465343','','RV8ER@MYAWAI.COM','2009-7-23','VANS RV-8           ','PUCKETT GREGORY N             ','2006','','1','KFTG',0,0,'SELECT CATEGORY'),
 ('525PP','PHILLIPS PAUL H                                   ','','210710 E 42ND ST                 ','                                 ','SCOTTSBLUFF       ','NE','69361-5825','308-632-3338','','MARILYNPHILLI90@HOTMAIL.COM','2009-7-23','KITFOX SPEEDSTER    ','PHILLIPS PAUL HENRY           ','1992','','1','BFF',0,0,'SELECT CATEGORY');
INSERT INTO `airplane`.`Record` VALUES  ('3744N','VASENDEN, ARNY                                   ','','2060 RODGERS CT                  ','                                 ','LOVELAND          ','CO','80537-3317','2417045709','','@COM','2009-7-23','TIGER MOTH DH 82A   ','DEHAVILLAND                   ','1944','','1','NMO',0,0,'SELECT CATEGORY');
UNLOCK TABLES;
/*!40000 ALTER TABLE `Record` ENABLE KEYS */;


--
-- Definition of table `airplane`.`airplanescore2`
--

DROP TABLE IF EXISTS `airplane`.`airplanescore2`;
CREATE TABLE  `airplane`.`airplanescore2` (
  `nnumber` varchar(20) NOT NULL,
  `category` varchar(20) DEFAULT NULL,
  `fuselage` smallint(6) DEFAULT '0',
  `lifting` smallint(6) DEFAULT '0',
  `pitch` smallint(6) DEFAULT '0',
  `landing` smallint(6) DEFAULT '0',
  `cockpit` smallint(6) DEFAULT '0',
  `power` smallint(6) DEFAULT '0',
  `finish` smallint(6) DEFAULT '0',
  `innovation` smallint(6) DEFAULT '0',
  `overall` smallint(6) DEFAULT '0',
  `fuselage2` smallint(6) DEFAULT '0',
  `lifting2` smallint(6) DEFAULT '0',
  `pitch2` smallint(6) DEFAULT '0',
  `landing2` smallint(6) DEFAULT '0',
  `cockpit2` smallint(6) DEFAULT '0',
  `power2` smallint(6) DEFAULT '0',
  `finish2` smallint(6) DEFAULT '0',
  `innovation2` smallint(6) DEFAULT '0',
  `overall2` smallint(6) DEFAULT '0',
  `fuselage3` smallint(6) DEFAULT '0',
  `lifting3` smallint(6) DEFAULT '0',
  `pitch3` smallint(6) DEFAULT '0',
  `landing3` smallint(6) DEFAULT '0',
  `cockpit3` smallint(6) DEFAULT '0',
  `power3` smallint(6) DEFAULT '0',
  `finish3` smallint(6) DEFAULT '0',
  `innovation3` smallint(6) DEFAULT '0',
  `overall3` smallint(6) DEFAULT '0',
  `total1` smallint(6) DEFAULT '0',
  `total2` smallint(6) DEFAULT '0',
  `total3` smallint(6) DEFAULT '0',
  `grandtotal` smallint(6) DEFAULT '0',
  PRIMARY KEY (`nnumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airplane`.`airplanescore2`
--

/*!40000 ALTER TABLE `airplanescore2` DISABLE KEYS */;
LOCK TABLES `airplanescore2` WRITE;
INSERT INTO `airplane`.`airplanescore2` VALUES  ('4',NULL,5,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('1',NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('1SD',NULL,4,2,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('269',NULL,3,3,3,6,7,3,4,6,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('1FD2',NULL,3,3,3,3,3,3,3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('TEST01',NULL,8,7,12,3,3,7,3,8,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('5629A',NULL,3,3,3,3,6,3,3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('5629C',NULL,3,3,3,3,3,3,3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('38X',NULL,5,3,3,6,3,9,5,6,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('1000',NULL,30,3,4,3,3,5,4,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('1212',NULL,3,3,3,3,14,3,3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('12',NULL,8,7,3,7,3,3,3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('1FY',NULL,7,4,4,5,5,3,4,3,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('3479W',NULL,27,26,25,25,26,15,26,24,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `airplane`.`airplanescore2` VALUES  ('816RC',NULL,21,22,22,20,25,15,20,22,23,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('320AD',NULL,26,19,19,18,20,15,25,24,27,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('82G',NULL,27,26,25,25,28,26,28,26,27,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('747JG',NULL,29,28,28,28,27,15,29,26,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('124AB','HOMEKIT',1,2,3,4,5,6,7,8,9,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,45,9,9,63),
 ('1996C',NULL,27,23,23,25,26,19,26,26,27,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('28KT',NULL,29,27,28,27,26,28,29,29,29,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('40291',NULL,24,24,22,23,17,15,23,24,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('5313C',NULL,26,24,25,26,26,22,24,25,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('224SG',NULL,26,26,26,27,28,24,26,26,27,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('814BJ',NULL,25,27,25,25,27,28,29,28,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('346B',NULL,26,23,24,25,27,15,25,24,27,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `airplane`.`airplanescore2` VALUES  ('247AA',NULL,24,24,25,22,25,15,22,19,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('767JA',NULL,27,25,24,22,29,15,23,24,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('207MS','HOMEKIT',1,2,1,1,1,1,1,1,5,1,1,3,1,1,1,4,1,1,1,1,1,1,5,1,1,1,6,14,14,18,46),
 ('53503',NULL,23,23,24,23,24,19,21,19,24,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('53PG',NULL,28,28,27,27,26,15,26,17,27,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('511GS',NULL,26,28,27,27,24,20,26,28,29,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('83365',NULL,26,25,26,27,27,19,26,22,27,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('727PP',NULL,23,23,24,24,22,21,22,24,23,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('1190P',NULL,16,18,18,16,16,16,12,11,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('2963F',NULL,19,19,13,19,20,15,16,6,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 ('493OM','VINTAGE',1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,9,18,27,54);
UNLOCK TABLES;
/*!40000 ALTER TABLE `airplanescore2` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
