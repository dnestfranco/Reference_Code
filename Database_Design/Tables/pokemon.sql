-- all credit to 'brianr852' for their pokemon database project
-- check out more of their work at: https://github.com/brianr852/Pokemon-Database


-- Creating the database for the pokemon features
-- CREATE DATABASE `pokemon_db2`;


-- creating table for the pokemon themselves
CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(79) NOT NULL,
  `height` float(11) DEFAULT NULL, -- meters
  `weight` float(11) DEFAULT NULL, -- kilograms
  `bstats_tot` int(11) DEFAULT NULL, -- total sum of base statistics
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=724 DEFAULT CHARSET=utf8;


-- adding generation 1 pokemon data to table
INSERT INTO `pokemon` (`id`, `name`, `height`, `weight`, `bstats_tot`) VALUES 
  (1,'bulbasaur',0.7,6.9,318),(2,'ivysaur',0.1,13.0,405),(3,'venusaur',2.0,100.0,525),
  (4,'charmander',0.6,8.5,309),(5,'charmeleon',1.1,19.0,405),(6,'charizard',1.7,90.5,534),
  (7,'squirtle',0.5,9.0,314),(8,'wartortle',1.0,22.5,405),(9,'blastoise',1.6,85.5,530),
  (10,'caterpie',0.3,2.9,195),(11,'metapod',0.7,9.9,205),(12,'butterfree',1.1,32.0,395),
  (13,'weedle',0.3,3.2,195),(14,'kakuna',0.6,10.0,205),(15,'beedrill',1.0,29.5,395),
  (16,'pidgey',0.3,1.8,251),(17,'pidgeotto',1.1,30.0,349),(18,'pidgeot',1.5,39.5,479),
  (19,'rattata',0.3,3.5,253),(20,'raticate',0.7,18.5,413),(21,'spearow',0.3,2.0,262),
  (22,'fearow',1.2,38.0,442),(23,'ekans',2.0,6.9,288),(24,'arbok',3.5,65.0,448),
  (25,'pikachu',0.4,6.0,320),(26,'raichu',0.8,30.0,485),(27,'sandshrew',0.6,12.0,300),
  (28,'sandslash',1.0,29.5,450),(29,'nidoran-f',0.4,7.0,275),(30,'nidorina',0.8,20.0,365),
  (31,'nidoqueen',1.3,60.0,505),(32,'nidoran-m',0.5,9.0,273),(33,'nidorino',0.9,19.5,365),
  (34,'nidoking',1.4,62.0,505),(35,'clefairy',0.6,7.5,323),(36,'clefable',1.3,40.0,483),
  (37,'vulpix',0.6,9.9,299),(38,'ninetales',1.1,19.9,505),(39,'jigglypuff',0.5,5.5,270),
  (40,'wigglytuff',1.0,12.0,435),(41,'zubat',0.8,7.5,245),(42,'golbat',1.6,55.0,455),
  (43,'oddish',0.5,5.4,320),(44,'gloom',0.8,8.6,395),(45,'vileplume',1.2,18.6,490),
  (46,'paras',0.3,5.4,285),(47,'parasect',1.0,29.5,405),(48,'venonat',1.0,30.0,305),
  (49,'venomoth',1.5,12.5,450),(50,'diglett',0.2,0.8,265),(51,'dugtrio',0.7,33.3,425),
  (52,'meowth',0.4,4.2,290),(53,'persian',1.0,32.0,440),(54,'psyduck',0.8,19.6,320),
  (55,'golduck',1.7,76.6,500),(56,'mankey',0.5,28.0,305),(57,'primeape',1.0,32.0,455),
  (58,'growlithe',0.7,19.0,350),(59,'arcanine',1.9,155.0,555),(60,'poliwag',0.6,12.4,300),
  (61,'poliwhirl',1.0,20.0,385),(62,'poliwrath',1.3,54.0,510),(63,'abra',0.9,19.5,310),
  (64,'kadabra',1.3,56.5,400),(65,'alakazam',1.5,48.0,500),(66,'machop',0.8,19.5,305),
  (67,'machoke',1.5,70.5,405),(68,'machamp',1.6,130.0,505),(69,'bellsprout',0.7,4.0,300),
  (70,'weepinbell',1.0,6.4,390),(71,'victreebel',1.7,15.5,490),(72,'tentacool',0.9,45.5,335)
  ,(73,'tentacruel',1.6,55.0,515),(74,'geodude',0.4,20.0,300),(75,'graveler',1.0,105.0,390),
  (76,'golem',1.4,300.0,495),(77,'ponyta',1.0,30.0,410),(78,'rapidash',1.7,95.0,500),
  (79,'slowpoke',1.2,36.0,315),(80,'slowbro',1.6,78.5,490),(81,'magnemite',0.3,6.0,325),
  (82,'magneton',1.0,60.0,465),(83,'farfetchd',0.8,15.0,377),(84,'doduo',1.4,39.2,310),
  (85,'dodrio',1.8,85.2,470),(86,'seel',1.1,90.0,325),(87,'dewgong',1.7,120.0,475),
  (88,'grimer',0.9,30.0,325),(89,'muk',1.2,30.0,500),(90,'shellder',0.3,4.0,305),
  (91,'cloyster',1.5,132.5,525),(92,'gastly',1.3,0.1,310),(93,'haunter',1.6,0.1,405),
  (94,'gengar',1.5,40.5,500),(95,'onix',8.8,210.0,385),(96,'drowzee',1.0,32.4,328),
  (97,'hypno',1.6,75.6,483),(98,'krabby',0.4,6.5,325),(99,'kingler',1.3,60.0,475),
  (100,'voltorb',0.5,10.4,330),(101,'electrode',1.2,66.6,490),(102,'exeggcute',0.4,2.5,325),
  (103,'exeggutor',2.0,120.0,530),(104,'cubone',0.4,6.5,320),(105,'marowak',1.0,45.0,425),
  (106,'hitmonlee',1.5,49.8,455),(107,'hitmonchan',1.4,50.2,455),(108,'lickitung',1.2,65.5,385),
  (109,'koffing',0.6,1.0,340),(110,'weezing',1.2,9.5,490),(111,'rhyhorn',1.0,115.0,345),
  (112,'rhydon',1.9,120.0,485),(113,'chansey',1.1,34.6,450),(114,'tangela',1.0,35.0,435),
  (115,'kangaskhan',2.2,80.0,490),(116,'horsea',0.4,8.0,295),(117,'seadra',1.2,25.0,440),
  (118,'goldeen',0.6,15.0,320),(119,'seaking',1.3,39.0,450),(120,'staryu',0.8,34.5,340),
  (121,'starmie',1.1,80.0,520),(122,'mr-mime',1.3,54.5,460),(123,'scyther',1.5,56.0,500),
  (124,'jynx',1.4,40.6,455),(125,'electabuzz',1.1,30.0,490),(126,'magmar',1.3,44.5,495),
  (127,'pinsir',1.5,55.0,500),(128,'tauros',1.4,88.4,490),(129,'magikarp',0.9,10.0,200),
  (130,'gyarados',6.5,235.0,540),(131,'lapras',2.5,220.0,535),(132,'ditto',0.3,4.0,288),
  (133,'eevee',0.3,6.5,325),(134,'vaporeon',1.0,29.0,525),(135,'jolteon',0.8,24.5,525),
  (136,'flareon',0.9,25.0,525),(137,'porygon',0.8,36.5,355),(138,'omanyte',0.4,7.5,495),
  (139,'omastar',1.0,35.0,495),(140,'kabuto',0.5,11.5,355),(141,'kabutops',1.3,40.5,495),
  (142,'aerodactyl',1.8,59.0,515),(143,'snorlax',2.1,460.0,540),(144,'articuno',1.7,55.4,580),
  (145,'zapdos',1.6,52.6,580),(146,'moltres',2.0,60.0,580),(147,'dratini',1.8,3.3,300),
  (148,'dragonair',4.0,16.5,420),(149,'dragonite',2.2,210.0,600),(150,'mewtwo',2.0,122.0,680),
  (151,'mew',0.4,4.0,600);
