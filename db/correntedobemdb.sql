-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: library_management_system
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(200) NOT NULL,
  `admin_number` varchar(200) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_profile_pic` varchar(200) NOT NULL,
  `admin_bio` longtext NOT NULL,
  `admin_phone_number` varchar(200) NOT NULL,
  `admin_login_id` varchar(200) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (1,'lucas','LMS-001','sysadmin@lms.org','','                                                                                                                                                                                                                                                                                                                                                                                                                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ','+254737229776','1');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_categories`
--

DROP TABLE IF EXISTS `book_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_code` varchar(200) NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `category_description` longtext NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_categories`
--

LOCK TABLES `book_categories` WRITE;
/*!40000 ALTER TABLE `book_categories` DISABLE KEYS */;
INSERT INTO `book_categories` VALUES (15,'LMS-OVDJ-0257','Fiction','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,'),(16,'LMS-BNQE-5706','Paranormal','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,');
/*!40000 ALTER TABLE `book_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `book_category_id` int NOT NULL,
  `book_title` varchar(200) NOT NULL,
  `book_author` varchar(200) NOT NULL,
  `book_isbn_no` varchar(200) NOT NULL,
  `book_publisher` varchar(200) NOT NULL,
  `book_coverimage` varchar(200) NOT NULL,
  `book_status` varchar(200) NOT NULL,
  `book_summary` longtext NOT NULL,
  `book_copies` varchar(200) NOT NULL,
  PRIMARY KEY (`book_id`),
  KEY `book_category_id` (`book_category_id`),
  CONSTRAINT `BooksBookCategory` FOREIGN KEY (`book_category_id`) REFERENCES `book_categories` (`category_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (4,15,'Nineteen Eighty-Four','George Orwell','VIKS-6498','Secker & Warburg ','220px-1984first.jpg','Available','In the year 1984, civilisation has been damaged by war, civil conflict, and revolution. Airstrip One (formerly known as Great Britain) is a province of Oceania, one of the three totalitarian super-states that rule the world. It is ruled by the \"Party\" under the ideology of \"Ingsoc\" (a newspeak shortening of \"English Socialism\") and the mysterious leader Big Brother, who has an intense cult of personality. The Party purges anyone who does not fully conform to their regime using the Thought Police and constant surveillance through devices such as Telescreens (two-way televisions). Those who fall out of favour with the Party become \"unpersons\", disappearing with all evidence of their existence removed.\r\n\r\nIn London, Winston Smith is a member of the middle-class Outer Party, working at the Ministry of Truth, where he rewrites historical records to conform to the state\'s ever-changing version of history. Winston revises past editions of The Times, while the original documents are destroyed. He secretly opposes the Party\'s rule and dreams of rebellion, despite knowing that he is already a \"thoughtcriminal\" and likely to be caught one day.\r\n\r\nWhile in a proletariat (prole) neighbourhood, he meets Mr. Charrington, the owner of an antiques shop, and buys a diary where he writes thoughts criticising the Party and Big Brother, and also writes that \"if there is hope, it lies in the proles\". To his dismay, when he visits a prole quarter he discovers they have no political consciousness. An old man he talks to there has no significant memory of life before the Revolution. As he works in the Ministry of Truth, he observes Julia, a young woman maintaining the novel-writing machines at the ministry, whom Winston suspects of being a spy against him, and develops an intense hatred of her. He vaguely suspects that his superior, an Inner Party official O\'Brien, is part of an enigmatic underground resistance movement known as the Brotherhood, formed by Big Brother\'s reviled political rival Emmanuel Goldstein. In a lunch conversation with his co-worker Syme, who is assisting in developing a revised version of Newspeak (a controlled language of limited vocabulary), Syme bluntly reveals the true purpose of Newspeak: to reduce the capacity of human thought. Winston reflects that Syme will disappear as he is \"too intelligent\" and therefore dangerous to the Party. Winston also discusses preparations for Hate Week with his neighbour and colleague Parsons.\r\n\r\nOne day, Julia secretly hands Winston a note saying she loves him, and the two begin a torrid affair; an act of rebellion as the Party insists that sex is only for reproduction. Julia shares Winston\'s loathing of the Party, but he realizes that she is politically apathetic and uninterested in overthrowing the regime, thinking it impossible. Initially meeting in the country, they later meet in a rented room above Mr. Charrington\'s shop. During his affair with Julia, Winston remembers the disappearance of his family during the civil war of the 1950s and his terse relationship with his wife Katharine, from whom he is separated (divorce is not permitted by the Party). He also notices the disappearance of Syme during one of his working days. Weeks later, Winston is approached by O\'Brien, who invites Winston over to his flat, which is noted as being of far higher quality than Winston\'s. O\'Brien introduces himself as a member of the Brotherhood and sends Winston a copy of The Theory and Practice of Oligarchical Collectivism by Goldstein. Meanwhile, during the nation\'s Hate Week, Oceania\'s enemy suddenly changes from Eurasia to Eastasia, with no-one seemingly noticing the shift. Winston is recalled to the Ministry to help make the major necessary revisions of the records. Afterwards Winston and Julia read parts of the book, which explains more about how the Party maintains power, the true meanings of its slogans, and the concept of perpetual war. It argues that the Party can be overthrown if proles rise up against it. However, to Winston, it does not answer \'why\' the Party maintains power.\r\n\r\nWinston and Julia are captured and imprisoned when Mr. Charrington is revealed to be a Thought Police agent. At the Ministry of Love, Winston briefly interacts with colleagues who have been arrested for other offences. O\'Brien arrives, revealing himself as a Thought Police agent, who tells Winston that the Brotherhood does not exist and Emmanuel Goldstein\'s book was written by O\'Brien himself as part of a special sting operation to catch thought-criminals. Over several months, Winston is starved and tortured to \"cure\" himself of his \"insanity\" by changing his own perception to fit in line with the Party. O\'Brien reveals to Winston that the Party \"seeks power for its own sake.\" When he taunts Winston by asking him if there is any humiliation which he has not yet been made to suffer, Winston points out that the Party has not managed to make him betray Julia, even after he accepted the party\'s invincibility and its principles. He fantasizes that moments before his execution his heretic side will emerge, which, as long as he is killed while unrepentant, will be his great victory over the party.\r\n\r\nO\'Brien takes Winston to Room 101 for the final stage of re-education, which contains each prisoner\'s worst fear, indicating that the level of surveillance on the public is far more thorough than initially believed by Winston. Confronted with a wire cage holding frenzied rats, his biggest fear, in his face, Winston willingly betrays Julia. Winston is released back into public life and continues to frequent the Chestnut Tree Caf????. One day, Winston encounters Julia, who was also tortured. Both reveal betraying the other and no longer possess feelings for one other. Back in the caf????, a news alert sounds and celebrates Oceania\'s supposed massive victory over Eurasian armies in Africa. Winston finally accepts that he loves Big Brother. ','18'),(5,16,'The Handmaid\'s Tale','Margaret Atwood','XRBI-0138','McClelland and Stewart','TheHandmaidsTale(1stEd).jpg','Available','After a staged attack that killed the President of the United States and most of Congress, a radical political group called the \"Sons of Jacob\" used quasi-Christian ideology to launch a revolution. The United States Constitution was suspended, newspapers were censored, and what was formerly the United States of America was changed into a military dictatorship known as the Republic of Gilead. The new regime moved quickly to consolidate its power, overtaking all other religious groups, including traditional Christian denominations. In addition, the regime reorganized society using a peculiar interpretation of some Old Testament ideas, and a new militarized, hierarchical model of social and religious fanaticism among its newly created social classes. Above all, the biggest change is the severe limitation of people\'s rights, especially those of women, who are not allowed to read, write, own property or handle money. Most significantly, women are deprived of control over their own reproductive functions.\r\n\r\nThe story is told in first-person narration by a woman named Offred. In this era of environmental pollution and radiation, she is one of few fertile women remaining. Therefore, she is forcibly assigned to produce children for the \"Commanders\", the ruling class of men, and is known as a \"Handmaid\" based on the biblical story of Rachel and her handmaid Bilhah. Apart from Handmaids, other women are also classed socially and follow a strict dress code, ranked highest to lowest: the Commanders\' Wives in blue; the Handmaids in red with white veils around their faces; the Aunts (who train and indoctrinate the Handmaids) in brown; the Marthas (cooks and maids) in green; Econowives (who handle everything in the domestic sphere) in stripes; young, unmarried girls in white; and widows in black.\r\n\r\nOffred details her life starting with her third assignment as a Handmaid to a Commander. Interspersed with her narratives of her present-day experiences are flashbacks of her life before and during the beginning of the revolution, including her failed attempt to escape to Canada with her husband and child, her indoctrination into life as a Handmaid by the Aunts, and the escape of her friend Moira from the indoctrination facility. At her new home, she is treated poorly by the Commander\'s wife, a former Christian media personality named Serena Joy who supported women\'s domesticity and subordinate role well before Gilead was established. To Offred\'s surprise, the Commander requests to see her outside of the \"Ceremony\", a sexual ritual obligatory for handmaids and intended to result in conception in the presence of his wife. The two begin an illegal relationship where they play Scrabble and Offred is allowed to ask favours of him, whether in terms of information or material items. Finally, he gives her lingerie and takes her to a covert, government-run brothel called Jezebel\'s. Offred unexpectedly encounters Moira there, with her will broken, and she learns that those who are found breaking the law are sent to the Colonies to clean up toxic waste or are allowed to work at Jezebel\'s as punishment.\r\n\r\nIn the days between her visits to the Commander, Offred also learns from her shopping partner, a woman called Ofglen, of the Mayday resistance, an underground network working to overthrow the Republic of Gilead. Not knowing of Offred\'s criminal acts with her husband, Serena begins to suspect that the Commander is infertile, and arranges for Offred to begin a covert sexual relationship with Nick, the Commander\'s personal servant. After their initial sexual encounter, Offred and Nick begin to meet on their own initiative as well, with Offred discovering that she enjoys these intimate moments despite memories of her husband, and shares potentially dangerous information about her past with him. However, shortly after, Ofglen disappears (reported as a suicide), and Serena finds evidence of the relationship between Offred and the Commander, which causes Offred to contemplate suicide.\r\n\r\nOffred tells Nick that she thinks she is pregnant. Shortly afterward, men arrive at the house wearing the uniform of the secret police, the Eyes of God, known informally as \"the Eyes\", to take her away. As she is led to a waiting van, Nick tells her to trust him and go with the men. It is unclear whether the men are actually Eyes, or members of the Mayday resistance. Offred is still unsure if Nick is a member of Mayday or an Eye posing as one, and does not know if leaving will result in her escape or her capture. Ultimately, she enters the van with her future uncertain.\r\n\r\nThe novel concludes with a metafictional epilogue, described as a partial transcript of an international historical association conference taking place in the year 2195. The keynote speaker explains that Offred\'s account of the events of the novel was recorded onto cassette tapes later found and transcribed by historians studying what is then called \"the Gilead Period.\" Professor Pieixoto makes a sexist joke about Professor Maryann Crescent Moon, causing laughter from the audience ???????? highlighting lingering issues regarding attitudes towards women, and his ignorance toward the situation. ','199'),(6,15,'Teste do Livro','Autor teste','BPHC-5390','editora X','71PLoOGQB3L.jpeg','Available','livro sobre o sert??o','1');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charges`
--

DROP TABLE IF EXISTS `charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `charges` (
  `charge_id` varchar(200) NOT NULL,
  `charge_name` varchar(200) NOT NULL,
  `charge_desc` longtext NOT NULL,
  `charge_amount` varchar(200) NOT NULL,
  PRIMARY KEY (`charge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charges`
--

LOCK TABLES `charges` WRITE;
/*!40000 ALTER TABLE `charges` DISABLE KEYS */;
INSERT INTO `charges` VALUES ('4a10d46ea17a','Lost Book Charge','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.','2500'),('af99bb7d56eb','Lost Book Charge','Ksh 250 For a lost book','250'),('b17c82464e6a','Lost Book Charge','Ksh 5600 Paid for a lost book.','5600');
/*!40000 ALTER TABLE `charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `cliente_id` int NOT NULL AUTO_INCREMENT,
  `cliente_name` varchar(200) NOT NULL,
  `cliente_reg_number` varchar(200) NOT NULL,
  `cliente_email` varchar(200) NOT NULL,
  `cliente_gender` varchar(200) NOT NULL,
  `cliente_phone_number` varchar(200) NOT NULL,
  `cliente_bio` longtext NOT NULL,
  `cliente_address` varchar(200) NOT NULL,
  `cliente_profile_picture` varchar(200) NOT NULL,
  `cliente_account_status` varchar(200) NOT NULL,
  `cliente_login_id` varchar(200) NOT NULL,
  PRIMARY KEY (`cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'cliente 001','LMS-YWJN-8650','cliente001@lms.org','Male','+254737229776','textp','127.0.0.1, LocalHost Street','','Can Login','4aad612a113497376ad535e1a8a5047b02c5c298'),(2,'cliente 002','LMS-KUGW-4185','cliente002@lms.org','Male','+254123456780','texto','127.0.0.1, LocalHost Street','','Can Login','c52aaa9e15e31b7aeee6437d1afe58226559028a');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `librarians`
--

DROP TABLE IF EXISTS `librarians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `librarians` (
  `librarian_id` int NOT NULL AUTO_INCREMENT,
  `librarian_name` varchar(200) NOT NULL,
  `librarian_number` varchar(200) NOT NULL,
  `librarian_email` varchar(200) NOT NULL,
  `librarian_phone_number` varchar(200) NOT NULL,
  `librarian_address` longtext NOT NULL,
  `librarian_profile_picture` varchar(200) NOT NULL,
  `librarian_account_status` varchar(200) NOT NULL,
  `librarian_login_id` varchar(200) NOT NULL,
  `librarian_bio` longtext NOT NULL,
  PRIMARY KEY (`librarian_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `librarians`
--

LOCK TABLES `librarians` WRITE;
/*!40000 ALTER TABLE `librarians` DISABLE KEYS */;
INSERT INTO `librarians` VALUES (9,'Librarian 001','LMS-SCJM-6594','librarian001@lms.org','+254737229776','127.0.0.1, LocalHost Street','','Can Login','c89e185d1aad4b60d5f38490e7df31e881b59e74','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,');
/*!40000 ALTER TABLE `librarians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_operations`
--

DROP TABLE IF EXISTS `library_operations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library_operations` (
  `operation_id` varchar(200) NOT NULL,
  `operation_number` varchar(200) NOT NULL,
  `operation_checksum` varchar(200) NOT NULL,
  `operation_type` varchar(200) NOT NULL,
  `operation_desc` longtext NOT NULL,
  PRIMARY KEY (`operation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_operations`
--

LOCK TABLES `library_operations` WRITE;
/*!40000 ALTER TABLE `library_operations` DISABLE KEYS */;
INSERT INTO `library_operations` VALUES ('37a37354','LMS-GZMC-2960','63243e60ade222f2f911a459','Return','In the year 1984, civilisation has been damaged by war, civil conflict, and revolution. Airstrip One (formerly known as Great Britain) is a province of Oceania, one of the three totalitarian super-states that rule the world. It is ruled by the \"Party\" under the ideology of \"Ingsoc\" (a newspeak shortening of \"English Socialism\") and the mysterious leader Big Brother, who has an intense cult of personality. The Party purges anyone who does not fully conform to their regime using the Thought Police and constant surveillance through devices such as Telescreens (two-way televisions). Those who fall out of favour with the Party become \"unpersons\", disappearing with all evidence of their existence removed.\r\n\r\nIn London, Winston Smith is a member of the middle-class Outer Party, working at the Ministry of Truth, where he rewrites historical records to conform to the state\'s ever-changing version of history. Winston revises past editions of The Times, while the original documents are destroyed. He secretly opposes the Party\'s rule and dreams of rebellion, despite knowing that he is already a \"thoughtcriminal\" and likely to be caught one day.\r\n\r\nWhile in a proletariat (prole) neighbourhood, he meets Mr. Charrington, the owner of an antiques shop, and buys a diary where he writes thoughts criticising the Party and Big Brother, and also writes that \"if there is hope, it lies in the proles\". To his dismay, when he visits a prole quarter he discovers they have no political consciousness. An old man he talks to there has no significant memory of life before the Revolution. As he works in the Ministry of Truth, he observes Julia, a young woman maintaining the novel-writing machines at the ministry, whom Winston suspects of being a spy against him, and develops an intense hatred of her. He vaguely suspects that his superior, an Inner Party official O\'Brien, is part of an enigmatic underground resistance movement known as the Brotherhood, formed by Big Brother\'s reviled political rival Emmanuel Goldstein. In a lunch conversation with his co-worker Syme, who is assisting in developing a revised version of Newspeak (a controlled language of limited vocabulary), Syme bluntly reveals the true purpose of Newspeak: to reduce the capacity of human thought. Winston reflects that Syme will disappear as he is \"too intelligent\" and therefore dangerous to the Party. Winston also discusses preparations for Hate Week with his neighbour and colleague Parsons.\r\n\r\nOne day, Julia secretly hands Winston a note saying she loves him, and the two begin a torrid affair; an act of rebellion as the Party insists that sex is only for reproduction. Julia shares Winston\'s loathing of the Party, but he realizes that she is politically apathetic and uninterested in overthrowing the regime, thinking it impossible. Initially meeting in the country, they later meet in a rented room above Mr. Charrington\'s shop. During his affair with Julia, Winston remembers the disappearance of his family during the civil war of the 1950s and his terse relationship with his wife Katharine, from whom he is separated (divorce is not permitted by the Party). He also notices the disappearance of Syme during one of his working days. Weeks later, Winston is approached by O\'Brien, who invites Winston over to his flat, which is noted as being of far higher quality than Winston\'s. O\'Brien introduces himself as a member of the Brotherhood and sends Winston a copy of The Theory and Practice of Oligarchical Collectivism by Goldstein. Meanwhile, during the nation\'s Hate Week, Oceania\'s enemy suddenly changes from Eurasia to Eastasia, with no-one seemingly noticing the shift. Winston is recalled to the Ministry to help make the major necessary revisions of the records. Afterwards Winston and Julia read parts of the book, which explains more about how the Party maintains power, the true meanings of its slogans, and the concept of perpetual war. It argues that the Party can be overthrown if proles rise up against it. However, to Winston, it does not answer \'why\' the Party maintains power.\r\n\r\nWinston and Julia are captured and imprisoned when Mr. Charrington is revealed to be a Thought Police agent. At the Ministry of Love, Winston briefly interacts with colleagues who have been arrested for other offences. O\'Brien arrives, revealing himself as a Thought Police agent, who tells Winston that the Brotherhood does not exist and Emmanuel Goldstein\'s book was written by O\'Brien himself as part of a special sting operation to catch thought-criminals. Over several months, Winston is starved and tortured to \"cure\" himself of his \"insanity\" by changing his own perception to fit in line with the Party. O\'Brien reveals to Winston that the Party \"seeks power for its own sake.\" When he taunts Winston by asking him if there is any humiliation which he has not yet been made to suffer, Winston points out that the Party has not managed to make him betray Julia, even after he accepted the party\'s invincibility and its principles. He fantasizes that moments before his execution his heretic side will emerge, which, as long as he is killed while unrepentant, will be his great victory over the party.\r\n\r\nO\'Brien takes Winston to Room 101 for the final stage of re-education, which contains each prisoner\'s worst fear, indicating that the level of surveillance on the public is far more thorough than initially believed by Winston. Confronted with a wire cage holding frenzied rats, his biggest fear, in his face, Winston willingly betrays Julia. Winston is released back into public life and continues to frequent the Chestnut Tree Caf????. One day, Winston encounters Julia, who was also tortured. Both reveal betraying the other and no longer possess feelings for one other. Back in the caf????, a news alert sounds and celebrates Oceania\'s supposed massive victory over Eurasian armies in Africa. Winston finally accepts that he loves Big Brother. '),('40c9dd61','LMS-IUQD-9625','947bee8ad9dc17ae33cdd808','Lost','In the year 1984, civilisation has been damaged by war, civil conflict, and revolution. Airstrip One (formerly known as Great Britain) is a province of Oceania, one of the three totalitarian super-states that rule the world. It is ruled by the \"Party\" under the ideology of \"Ingsoc\" (a newspeak shortening of \"English Socialism\") and the mysterious leader Big Brother, who has an intense cult of personality. The Party purges anyone who does not fully conform to their regime using the Thought Police and constant surveillance through devices such as Telescreens (two-way televisions). Those who fall out of favour with the Party become \"unpersons\", disappearing with all evidence of their existence removed.\r\n\r\nIn London, Winston Smith is a member of the middle-class Outer Party, working at the Ministry of Truth, where he rewrites historical records to conform to the state\'s ever-changing version of history. Winston revises past editions of The Times, while the original documents are destroyed. He secretly opposes the Party\'s rule and dreams of rebellion, despite knowing that he is already a \"thoughtcriminal\" and likely to be caught one day.\r\n\r\nWhile in a proletariat (prole) neighbourhood, he meets Mr. Charrington, the owner of an antiques shop, and buys a diary where he writes thoughts criticising the Party and Big Brother, and also writes that \"if there is hope, it lies in the proles\". To his dismay, when he visits a prole quarter he discovers they have no political consciousness. An old man he talks to there has no significant memory of life before the Revolution. As he works in the Ministry of Truth, he observes Julia, a young woman maintaining the novel-writing machines at the ministry, whom Winston suspects of being a spy against him, and develops an intense hatred of her. He vaguely suspects that his superior, an Inner Party official O\'Brien, is part of an enigmatic underground resistance movement known as the Brotherhood, formed by Big Brother\'s reviled political rival Emmanuel Goldstein. In a lunch conversation with his co-worker Syme, who is assisting in developing a revised version of Newspeak (a controlled language of limited vocabulary), Syme bluntly reveals the true purpose of Newspeak: to reduce the capacity of human thought. Winston reflects that Syme will disappear as he is \"too intelligent\" and therefore dangerous to the Party. Winston also discusses preparations for Hate Week with his neighbour and colleague Parsons.\r\n\r\nOne day, Julia secretly hands Winston a note saying she loves him, and the two begin a torrid affair; an act of rebellion as the Party insists that sex is only for reproduction. Julia shares Winston\'s loathing of the Party, but he realizes that she is politically apathetic and uninterested in overthrowing the regime, thinking it impossible. Initially meeting in the country, they later meet in a rented room above Mr. Charrington\'s shop. During his affair with Julia, Winston remembers the disappearance of his family during the civil war of the 1950s and his terse relationship with his wife Katharine, from whom he is separated (divorce is not permitted by the Party). He also notices the disappearance of Syme during one of his working days. Weeks later, Winston is approached by O\'Brien, who invites Winston over to his flat, which is noted as being of far higher quality than Winston\'s. O\'Brien introduces himself as a member of the Brotherhood and sends Winston a copy of The Theory and Practice of Oligarchical Collectivism by Goldstein. Meanwhile, during the nation\'s Hate Week, Oceania\'s enemy suddenly changes from Eurasia to Eastasia, with no-one seemingly noticing the shift. Winston is recalled to the Ministry to help make the major necessary revisions of the records. Afterwards Winston and Julia read parts of the book, which explains more about how the Party maintains power, the true meanings of its slogans, and the concept of perpetual war. It argues that the Party can be overthrown if proles rise up against it. However, to Winston, it does not answer \'why\' the Party maintains power.\r\n\r\nWinston and Julia are captured and imprisoned when Mr. Charrington is revealed to be a Thought Police agent. At the Ministry of Love, Winston briefly interacts with colleagues who have been arrested for other offences. O\'Brien arrives, revealing himself as a Thought Police agent, who tells Winston that the Brotherhood does not exist and Emmanuel Goldstein\'s book was written by O\'Brien himself as part of a special sting operation to catch thought-criminals. Over several months, Winston is starved and tortured to \"cure\" himself of his \"insanity\" by changing his own perception to fit in line with the Party. O\'Brien reveals to Winston that the Party \"seeks power for its own sake.\" When he taunts Winston by asking him if there is any humiliation which he has not yet been made to suffer, Winston points out that the Party has not managed to make him betray Julia, even after he accepted the party\'s invincibility and its principles. He fantasizes that moments before his execution his heretic side will emerge, which, as long as he is killed while unrepentant, will be his great victory over the party.\r\n\r\nO\'Brien takes Winston to Room 101 for the final stage of re-education, which contains each prisoner\'s worst fear, indicating that the level of surveillance on the public is far more thorough than initially believed by Winston. Confronted with a wire cage holding frenzied rats, his biggest fear, in his face, Winston willingly betrays Julia. Winston is released back into public life and continues to frequent the Chestnut Tree Caf????. One day, Winston encounters Julia, who was also tortured. Both reveal betraying the other and no longer possess feelings for one other. Back in the caf????, a news alert sounds and celebrates Oceania\'s supposed massive victory over Eurasian armies in Africa. Winston finally accepts that he loves Big Brother. '),('43f16355','LMS-JSXV-8460','be166a51a18b082682ff8a12','Return','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,'),('80bc805a','LMS-GTIF-7629','f1c2545b4f93f34ac21f879b','Lost','In the year 1984, civilisation has been damaged by war, civil conflict, and revolution. Airstrip One (formerly known as Great Britain) is a province of Oceania, one of the three totalitarian super-states that rule the world. It is ruled by the \"Party\" under the ideology of \"Ingsoc\" (a newspeak shortening of \"English Socialism\") and the mysterious leader Big Brother, who has an intense cult of personality. The Party purges anyone who does not fully conform to their regime using the Thought Police and constant surveillance through devices such as Telescreens (two-way televisions). Those who fall out of favour with the Party become \"unpersons\", disappearing with all evidence of their existence removed.\r\n\r\nIn London, Winston Smith is a member of the middle-class Outer Party, working at the Ministry of Truth, where he rewrites historical records to conform to the state\'s ever-changing version of history. Winston revises past editions of The Times, while the original documents are destroyed. He secretly opposes the Party\'s rule and dreams of rebellion, despite knowing that he is already a \"thoughtcriminal\" and likely to be caught one day.\r\n\r\nWhile in a proletariat (prole) neighbourhood, he meets Mr. Charrington, the owner of an antiques shop, and buys a diary where he writes thoughts criticising the Party and Big Brother, and also writes that \"if there is hope, it lies in the proles\". To his dismay, when he visits a prole quarter he discovers they have no political consciousness. An old man he talks to there has no significant memory of life before the Revolution. As he works in the Ministry of Truth, he observes Julia, a young woman maintaining the novel-writing machines at the ministry, whom Winston suspects of being a spy against him, and develops an intense hatred of her. He vaguely suspects that his superior, an Inner Party official O\'Brien, is part of an enigmatic underground resistance movement known as the Brotherhood, formed by Big Brother\'s reviled political rival Emmanuel Goldstein. In a lunch conversation with his co-worker Syme, who is assisting in developing a revised version of Newspeak (a controlled language of limited vocabulary), Syme bluntly reveals the true purpose of Newspeak: to reduce the capacity of human thought. Winston reflects that Syme will disappear as he is \"too intelligent\" and therefore dangerous to the Party. Winston also discusses preparations for Hate Week with his neighbour and colleague Parsons.\r\n\r\nOne day, Julia secretly hands Winston a note saying she loves him, and the two begin a torrid affair; an act of rebellion as the Party insists that sex is only for reproduction. Julia shares Winston\'s loathing of the Party, but he realizes that she is politically apathetic and uninterested in overthrowing the regime, thinking it impossible. Initially meeting in the country, they later meet in a rented room above Mr. Charrington\'s shop. During his affair with Julia, Winston remembers the disappearance of his family during the civil war of the 1950s and his terse relationship with his wife Katharine, from whom he is separated (divorce is not permitted by the Party). He also notices the disappearance of Syme during one of his working days. Weeks later, Winston is approached by O\'Brien, who invites Winston over to his flat, which is noted as being of far higher quality than Winston\'s. O\'Brien introduces himself as a member of the Brotherhood and sends Winston a copy of The Theory and Practice of Oligarchical Collectivism by Goldstein. Meanwhile, during the nation\'s Hate Week, Oceania\'s enemy suddenly changes from Eurasia to Eastasia, with no-one seemingly noticing the shift. Winston is recalled to the Ministry to help make the major necessary revisions of the records. Afterwards Winston and Julia read parts of the book, which explains more about how the Party maintains power, the true meanings of its slogans, and the concept of perpetual war. It argues that the Party can be overthrown if proles rise up against it. However, to Winston, it does not answer \'why\' the Party maintains power.\r\n\r\nWinston and Julia are captured and imprisoned when Mr. Charrington is revealed to be a Thought Police agent. At the Ministry of Love, Winston briefly interacts with colleagues who have been arrested for other offences. O\'Brien arrives, revealing himself as a Thought Police agent, who tells Winston that the Brotherhood does not exist and Emmanuel Goldstein\'s book was written by O\'Brien himself as part of a special sting operation to catch thought-criminals. Over several months, Winston is starved and tortured to \"cure\" himself of his \"insanity\" by changing his own perception to fit in line with the Party. O\'Brien reveals to Winston that the Party \"seeks power for its own sake.\" When he taunts Winston by asking him if there is any humiliation which he has not yet been made to suffer, Winston points out that the Party has not managed to make him betray Julia, even after he accepted the party\'s invincibility and its principles. He fantasizes that moments before his execution his heretic side will emerge, which, as long as he is killed while unrepentant, will be his great victory over the party.\r\n\r\nO\'Brien takes Winston to Room 101 for the final stage of re-education, which contains each prisoner\'s worst fear, indicating that the level of surveillance on the public is far more thorough than initially believed by Winston. Confronted with a wire cage holding frenzied rats, his biggest fear, in his face, Winston willingly betrays Julia. Winston is released back into public life and continues to frequent the Chestnut Tree Caf????. One day, Winston encounters Julia, who was also tortured. Both reveal betraying the other and no longer possess feelings for one other. Back in the caf????, a news alert sounds and celebrates Oceania\'s supposed massive victory over Eurasian armies in Africa. Winston finally accepts that he loves Big Brother. '),('829bbe9c','LMS-JICP-0143','4aab7e6af8f0b0e250c9784f','Lost','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,'),('937865bb','LMS-RNGK-4852','be652dd608b8d2492d61626b','Damanged','In the year 1984, civilisation has been damaged by war, civil conflict, and revolution. Airstrip One (formerly known as Great Britain) is a province of Oceania, one of the three totalitarian super-states that rule the world. It is ruled by the \"Party\" under the ideology of \"Ingsoc\" (a newspeak shortening of \"English Socialism\") and the mysterious leader Big Brother, who has an intense cult of personality. The Party purges anyone who does not fully conform to their regime using the Thought Police and constant surveillance through devices such as Telescreens (two-way televisions). Those who fall out of favour with the Party become \"unpersons\", disappearing with all evidence of their existence removed.\r\n\r\nIn London, Winston Smith is a member of the middle-class Outer Party, working at the Ministry of Truth, where he rewrites historical records to conform to the state\'s ever-changing version of history. Winston revises past editions of The Times, while the original documents are destroyed. He secretly opposes the Party\'s rule and dreams of rebellion, despite knowing that he is already a \"thoughtcriminal\" and likely to be caught one day.\r\n\r\nWhile in a proletariat (prole) neighbourhood, he meets Mr. Charrington, the owner of an antiques shop, and buys a diary where he writes thoughts criticising the Party and Big Brother, and also writes that \"if there is hope, it lies in the proles\". To his dismay, when he visits a prole quarter he discovers they have no political consciousness. An old man he talks to there has no significant memory of life before the Revolution. As he works in the Ministry of Truth, he observes Julia, a young woman maintaining the novel-writing machines at the ministry, whom Winston suspects of being a spy against him, and develops an intense hatred of her. He vaguely suspects that his superior, an Inner Party official O\'Brien, is part of an enigmatic underground resistance movement known as the Brotherhood, formed by Big Brother\'s reviled political rival Emmanuel Goldstein. In a lunch conversation with his co-worker Syme, who is assisting in developing a revised version of Newspeak (a controlled language of limited vocabulary), Syme bluntly reveals the true purpose of Newspeak: to reduce the capacity of human thought. Winston reflects that Syme will disappear as he is \"too intelligent\" and therefore dangerous to the Party. Winston also discusses preparations for Hate Week with his neighbour and colleague Parsons.\r\n\r\nOne day, Julia secretly hands Winston a note saying she loves him, and the two begin a torrid affair; an act of rebellion as the Party insists that sex is only for reproduction. Julia shares Winston\'s loathing of the Party, but he realizes that she is politically apathetic and uninterested in overthrowing the regime, thinking it impossible. Initially meeting in the country, they later meet in a rented room above Mr. Charrington\'s shop. During his affair with Julia, Winston remembers the disappearance of his family during the civil war of the 1950s and his terse relationship with his wife Katharine, from whom he is separated (divorce is not permitted by the Party). He also notices the disappearance of Syme during one of his working days. Weeks later, Winston is approached by O\'Brien, who invites Winston over to his flat, which is noted as being of far higher quality than Winston\'s. O\'Brien introduces himself as a member of the Brotherhood and sends Winston a copy of The Theory and Practice of Oligarchical Collectivism by Goldstein. Meanwhile, during the nation\'s Hate Week, Oceania\'s enemy suddenly changes from Eurasia to Eastasia, with no-one seemingly noticing the shift. Winston is recalled to the Ministry to help make the major necessary revisions of the records. Afterwards Winston and Julia read parts of the book, which explains more about how the Party maintains power, the true meanings of its slogans, and the concept of perpetual war. It argues that the Party can be overthrown if proles rise up against it. However, to Winston, it does not answer \'why\' the Party maintains power.\r\n\r\nWinston and Julia are captured and imprisoned when Mr. Charrington is revealed to be a Thought Police agent. At the Ministry of Love, Winston briefly interacts with colleagues who have been arrested for other offences. O\'Brien arrives, revealing himself as a Thought Police agent, who tells Winston that the Brotherhood does not exist and Emmanuel Goldstein\'s book was written by O\'Brien himself as part of a special sting operation to catch thought-criminals. Over several months, Winston is starved and tortured to \"cure\" himself of his \"insanity\" by changing his own perception to fit in line with the Party. O\'Brien reveals to Winston that the Party \"seeks power for its own sake.\" When he taunts Winston by asking him if there is any humiliation which he has not yet been made to suffer, Winston points out that the Party has not managed to make him betray Julia, even after he accepted the party\'s invincibility and its principles. He fantasizes that moments before his execution his heretic side will emerge, which, as long as he is killed while unrepentant, will be his great victory over the party.\r\n\r\nO\'Brien takes Winston to Room 101 for the final stage of re-education, which contains each prisoner\'s worst fear, indicating that the level of surveillance on the public is far more thorough than initially believed by Winston. Confronted with a wire cage holding frenzied rats, his biggest fear, in his face, Winston willingly betrays Julia. Winston is released back into public life and continues to frequent the Chestnut Tree Caf????. One day, Winston encounters Julia, who was also tortured. Both reveal betraying the other and no longer possess feelings for one other. Back in the caf????, a news alert sounds and celebrates Oceania\'s supposed massive victory over Eurasian armies in Africa. Winston finally accepts that he loves Big Brother. '),('98bcbc76','LMS-TBMN-2154','308a4cd720625e200935a905','Damanged','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,');
/*!40000 ALTER TABLE `library_operations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `login_id` varchar(200) NOT NULL,
  `login_user_name` varchar(200) NOT NULL,
  `login_password` varchar(200) NOT NULL,
  `login_user_permission` varchar(200) NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('1','lucas','adcd7048512e64b48da55b027577886ee5a36350','1'),('4aad612a113497376ad535e1a8a5047b02c5c298','empresa1','adcd7048512e64b48da55b027577886ee5a36350','0'),('c52aaa9e15e31b7aeee6437d1afe58226559028a','prestador2','adcd7048512e64b48da55b027577886ee5a36350',''),('c89e185d1aad4b60d5f38490e7df31e881b59e74','prestador1','a3dd91d922fcff42f64ac37e9140b02a00e4ce01','0');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_charges`
--

DROP TABLE IF EXISTS `operation_charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operation_charges` (
  `operation_charge_id` int NOT NULL AUTO_INCREMENT,
  `operation_charge_charge_id` varchar(200) NOT NULL,
  `operation_charge_student_operation_id` varchar(200) NOT NULL,
  PRIMARY KEY (`operation_charge_id`),
  KEY `operation_charge_charge_id` (`operation_charge_charge_id`,`operation_charge_student_operation_id`),
  CONSTRAINT `OperationRelation` FOREIGN KEY (`operation_charge_charge_id`) REFERENCES `charges` (`charge_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_charges`
--

LOCK TABLES `operation_charges` WRITE;
/*!40000 ALTER TABLE `operation_charges` DISABLE KEYS */;
INSERT INTO `operation_charges` VALUES (14,'4a10d46ea17a','40c9dd61'),(17,'af99bb7d56eb','40c9dd61'),(15,'b17c82464e6a','80bc805a');
/*!40000 ALTER TABLE `operation_charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestadores`
--

DROP TABLE IF EXISTS `prestadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestadores` (
  `prestador_id` int NOT NULL AUTO_INCREMENT,
  `prestador_name` varchar(200) NOT NULL,
  `prestador_number` varchar(200) NOT NULL,
  `prestador_email` varchar(200) NOT NULL,
  `prestador_phone_number` varchar(200) NOT NULL,
  `prestador_address` longtext NOT NULL,
  `prestador_profile_picture` varchar(200) NOT NULL,
  `prestador_account_status` varchar(200) NOT NULL,
  `prestador_login_id` varchar(200) NOT NULL,
  `prestador_bio` longtext NOT NULL,
  PRIMARY KEY (`prestador_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestadores`
--

LOCK TABLES `prestadores` WRITE;
/*!40000 ALTER TABLE `prestadores` DISABLE KEYS */;
INSERT INTO `prestadores` VALUES (1,'Prestador Bacana Super','LMS-SCJM-6594','mudou@email.com','+5511987654320','Morada da Floresta, 13','veiorio.png','Can Login','c89e185d1aad4b60d5f38490e7df31e881b59e74','O prestador bacana trabalha com amor e carinho para ajudar a humanidade. Ele adicionou texto.\r\nMais um teste');
/*!40000 ALTER TABLE `prestadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_categories`
--

DROP TABLE IF EXISTS `service_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_code` varchar(200) NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `category_description` longtext NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_categories`
--

LOCK TABLES `service_categories` WRITE;
/*!40000 ALTER TABLE `service_categories` DISABLE KEYS */;
INSERT INTO `service_categories` VALUES (1,'LMS-OVDJ-0257','Azulejos','Veja os profissionais que instalam azulejos'),(2,'LMS-BNQE-5706','Pintura','Os pintores associados a Corrente do Bem s??o profissionais treinados'),(3,'LMS_XPTO-1234','El??trica','Quem mexe com el??trica est?? aqui'),(4,'LMS-XPTO-1235','Hidr??ulica','Encanamentos'),(5,'LMS-XPTO-1236','Gesso e forro','Gesserios');
/*!40000 ALTER TABLE `service_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicos`
--

DROP TABLE IF EXISTS `servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicos` (
  `servico_id` int NOT NULL AUTO_INCREMENT,
  `servico_category_id` int NOT NULL,
  `servico_title` varchar(200) NOT NULL,
  `servico_login_id` varchar(200) NOT NULL,
  `servico_coverimage` varchar(200) NOT NULL,
  `servico_status` varchar(200) NOT NULL,
  `servico_summary` longtext NOT NULL,
  PRIMARY KEY (`servico_id`),
  KEY `servico_category_id` (`servico_category_id`),
  CONSTRAINT `ServicosServicoCategory` FOREIGN KEY (`servico_category_id`) REFERENCES `service_categories` (`category_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicos`
--

LOCK TABLES `servicos` WRITE;
/*!40000 ALTER TABLE `servicos` DISABLE KEYS */;
INSERT INTO `servicos` VALUES (1,1,'Pedreiro na Zona Sul','4aad612a113497376ad535e1a8a5047b02c5c298','220px-1984first.jpg','Available','Tenho 10 anos de experiencia'),(2,2,'Azulejista de primeira','c52aaa9e15e31b7aeee6437d1afe58226559028a','220px-1984first.jpg','Available','Conte comigo');
/*!40000 ALTER TABLE `servicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_operations`
--

DROP TABLE IF EXISTS `student_operations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_operations` (
  `student_operation_id` int NOT NULL AUTO_INCREMENT,
  `student_operation_student_id` int NOT NULL,
  `Student_operation_operation_id` varchar(200) NOT NULL,
  `student_operation_librarian_id` int NOT NULL,
  `student_operation_book_id` int NOT NULL,
  `student_operation_start_date` varchar(200) NOT NULL,
  `student_operation_end_date` varchar(200) NOT NULL,
  PRIMARY KEY (`student_operation_id`),
  KEY `student_operation_student_id` (`student_operation_student_id`),
  KEY `student_operation_librarian_id` (`student_operation_librarian_id`),
  KEY `student_operation_book_id` (`student_operation_book_id`),
  KEY `Operation` (`Student_operation_operation_id`),
  CONSTRAINT `BookOperation` FOREIGN KEY (`student_operation_book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE,
  CONSTRAINT `Operation` FOREIGN KEY (`Student_operation_operation_id`) REFERENCES `library_operations` (`operation_id`) ON DELETE CASCADE,
  CONSTRAINT `StudentOperation` FOREIGN KEY (`student_operation_student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_operations`
--

LOCK TABLES `student_operations` WRITE;
/*!40000 ALTER TABLE `student_operations` DISABLE KEYS */;
INSERT INTO `student_operations` VALUES (44,14,'40c9dd61',0,4,'08-18-2020','2020-08-25'),(45,14,'80bc805a',0,4,'08-18-2020','2020-08-25'),(46,14,'37a37354',0,4,'08-18-2020','2020-08-25'),(47,14,'937865bb',0,4,'08-18-2020','2020-08-25'),(48,14,'37a37354',0,4,'08-18-2020','2020-08-25'),(49,14,'40c9dd61',0,4,'08-18-2020','08-18-2020'),(50,14,'80bc805a',0,4,'08-18-2020','08-18-2020'),(51,14,'937865bb',0,4,'08-18-2020','2020-08-25'),(52,15,'43f16355',9,5,'08-18-2020','2020-08-25'),(53,15,'43f16355',9,5,'08-18-2020','2020-08-25'),(54,15,'829bbe9c',9,5,'08-18-2020','2020-08-25'),(55,15,'829bbe9c',9,5,'08-18-2020','08-18-2020'),(56,15,'98bcbc76',9,4,'08-18-2020','2020-08-31'),(57,15,'98bcbc76',9,4,'08-18-2020','2020-08-31');
/*!40000 ALTER TABLE `student_operations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(200) NOT NULL,
  `student_reg_number` varchar(200) NOT NULL,
  `student_email` varchar(200) NOT NULL,
  `student_gender` varchar(200) NOT NULL,
  `student_phone_number` varchar(200) NOT NULL,
  `student_bio` longtext NOT NULL,
  `student_address` varchar(200) NOT NULL,
  `student_profile_picture` varchar(200) NOT NULL,
  `student_account_status` varchar(200) NOT NULL,
  `student_login_id` varchar(200) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (14,'Student 001','LMS-YWJN-8650','student001@lms.org','Male','+254737229776','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,','127.0.0.1, LocalHost Street','','Can Login','4aad612a113497376ad535e1a8a5047b02c5c298'),(15,'Student 002','LMS-KUGW-4185','student002@lms.org','Male','+254123456780','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,','127.0.0.1, LocalHost Street','','Can Login','c52aaa9e15e31b7aeee6437d1afe58226559028a');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-30 22:31:57
