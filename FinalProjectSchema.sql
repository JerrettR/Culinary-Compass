CREATE DATABASE  IF NOT EXISTS `y87lekvpr5g6041b` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `y87lekvpr5g6041b`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: uzb4o9e2oe257glt.cbetxkdyhwsb.us-east-1.rds.amazonaws.com    Database: y87lekvpr5g6041b
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `favoriteId` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `recipeId` int DEFAULT NULL,
  PRIMARY KEY (`favoriteId`),
  KEY `fk_favorites users1_idx` (`userId`),
  KEY `fk_favorites_users1_idx` (`userId`),
  KEY `fk_favorites_recipes1_idx` (`recipeId`),
  CONSTRAINT `fk_favorites_recipes1` FOREIGN KEY (`recipeId`) REFERENCES `recipes` (`recipeId`),
  CONSTRAINT `fk_favorites_users1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (1,1,2),(2,1,3),(3,2,5),(4,1,5),(5,1,8),(6,1,3),(7,1,8);
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredients` (
  `ingredientId` int NOT NULL AUTO_INCREMENT,
  `recipeId` int DEFAULT NULL,
  `ingredient` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `measurement` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ingredientId`),
  KEY `fk_ingredients_recipes1_idx` (`recipeId`),
  CONSTRAINT `fk_ingredients_recipes1` FOREIGN KEY (`recipeId`) REFERENCES `recipes` (`recipeId`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,1,'1/4 cup bourbon','1/4','cup'),(2,1,'2 tbsp Dijon mustard','2','tbsp'),(3,1,'1tbsp chili powder','1','tbsp'),(4,1,'1 tbsp smoked paprika','1','tbsp'),(5,1,'1 tbsp lightly packed dark brown sugar','1','tbsp'),(6,1,'2 tsp granulated garlic','2','tsp'),(7,1,'2 tsp onion powder','2','tsp'),(8,1,'1 1/2 tsp ground cumin','1 1/2 ','tsp'),(9,1,'kosher salt',NULL,NULL),(10,1,'ground cumin',NULL,NULL),(11,1,'3 1/2 lb flat-cut beef brisket','3 1/2 ','lb'),(12,1,'1 tsp vegetable oil','1','tsp'),(13,2,'1 chorizo sausage link, casing removed and me','1',NULL),(14,2,'2 chipotle peppers in adobo sauce','2','tbsp'),(15,2,'4 corn tortillas','4',NULL),(16,2,'2 tbsp chopped onion, or to taste','2','tbsp'),(17,2,'2 tbsp chopped fresh cilantro, or to taste (O','2','tbsp'),(18,3,'8 thick slices brioche bread','8',NULL),(19,3,'1/4 cup peanut butter','1/4','cup'),(20,3,'1/4 cup jelly','1/4','cup'),(21,3,'3 large eggs','3',NULL),(22,3,'1/2 cup whole milk','1/2','cup'),(23,3,'1/2 tsp cinnamon','1/2','tsp'),(24,3,'1/4 cup butter','1/4','cup'),(25,3,'1/2 tbsp powdered sugar','1/2 ','tbsp'),(38,4,'8 ounces uncooked elbow macaroni','8','oz'),(39,4,'1/4 cup salted butter','1/4','cup'),(40,4,'3 tbsp all-purpose flour','3','tbsp'),(41,4,'2 1/2 cups milk, or more as needed','2 1/2','cups'),(42,4,'2 cups shredded sharp Cheddar cheese','2','cups'),(43,4,'1/2 cup finely grated Parmesan cheese','1/2','cup'),(44,4,'salt and ground black pepper to taste',NULL,NULL),(45,4,'2 tbsp salted butter','2','tbsp'),(46,4,'1/2 cup dry bread crumbs','1/2','cup'),(47,4,'1 pinch ground paprika','1','pinch'),(48,5,'1 lb tri-colored spiral pasta','1','lb'),(49,5,'16 oz bottle Italian-style salad dressing','1',''),(50,5,'6 tbsp salad seasoning mix','6','tbsp'),(51,5,'2 cups cherry tomatoes, diced','2','cups'),(52,5,'1 green bell pepper, chopped','1',NULL),(53,5,'1 red bell pepper, diced','1',NULL),(54,5,'1/2 yellow bell pepper, chopped','1/2',NULL),(55,5,'1 (2.25 oz) can black olives, chopped','1','');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes` (
  `recipeId` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `authorFirstName` varchar(45) DEFAULT NULL,
  `authorLastName` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `directions` mediumtext,
  `time` varchar(45) DEFAULT NULL,
  `servings` varchar(45) DEFAULT NULL,
  `pictureUrl` mediumtext,
  PRIMARY KEY (`recipeId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES (1,'Slow-Cooker Brisket','Joe','Smith','Dinner','Step 1: Whisk the bourbon, mustard, chili powder, paprika, sugar, granulated garlic, onion powder, cumin, 1 tablespoon salt and 1 teaspoon pepper together in the insert of a 6-quart slow cooker. Use a fork to pierce deeply all over the brisket, then place in the slow cooker and rub all over with the paste. Cover with a lid and cook on low heat until a meat thermometer reads an internal temperature of 185 to 200 degrees F in the thickest part, about 4 hours. Step 2: Turn the heat off and remove the insert from the slow cooker. Cool the brisket for at least 15 minutes in the cooking liquid. Step 3: Transfer the brisket from the cooking liquid to a large plate or baking sheet, and pat dry with paper towels. Reserve the cooking liquid. In a large cast-iron pan set over medium-high heat, add the oil and heat until it starts to shimmer. Add the brisket, fat-side down, and sear until browned and slightly crispy, 2 to 3 minutes. Use tongs or two metal spatulas to carefully flip the brisket. Cook until browned and slightly crispy on all sides, 1 to 2 minutes. Step 4: Transfer to a cutting board and slice the brisket against the grain. Serve hot with the cooking liquid.','4 Hours 35 Minutes','4 to 6','https://food.fnr.sndimg.com/content/dam/images/food/fullset/2016/3/29/0/FNK_Slow-Cooker-Brisket_s4x3.jpg.rend.hgtvcom.826.620.suffix/1459268342761.jpeg'),(2,'Easy Chorizo Street Tacos','David','Joseph','Lunch','Step 1: Combine crumbled chorizo and chipotle peppers in adobo sauce in a bowl. Step 2: Heat a skillet over medium-high heat; add chorizo mixture and cook until crisp, 5 to 7 minutes. Transfer to a plate, reserving grease in the skillet. Step 3: Heat tortillas in reserved grease in the skillet over medium heat until warmed, 1 to 2 minutes per side. Stack 2 tortillas for each taco, then fill with chorizo, onion, and cilantro.','20 Minutes','2','https://www.allrecipes.com/thmb/pO7UCdv-W9wOMKIdnGZViERT91g=/1280x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/image-321-1acc9ef3a3cf44dc93bea4921c0d517a.jpg'),(3,'PB&J Stuffed French Toast','Ben','Meyer','Breakfast & Brunch','Step 1: Spread 1 tablespoon peanut butter over the center of 4 slices of bread, taking care not to spread it all the way to the edges. Repeat with remaining bread slices and jelly.  Place peanut butter slices on top of the jelly slices to make a peanut butter and jelly sandwich. Step 2: Whisk eggs, milk, and cinnamon together in a shallow dish until well combined.  Place one sandwich in egg mixture, allowing it to soak through just slightly.  Flip and repeat. Step 3: Heat 1 tablespoon butter in a skillet over medium heat.  Place sandwich into skillet and cook until golden and lightly toasted, about 4 minutes.  Flip and repeat until egg is cooked through and the sandwich is toasted on both sides.  Repeat with the remaining sandwiches,  egg mixture, and butter. Step 4: Dust with powdered sugar and serve immediately. ','18 Minutes','4','https://www.allrecipes.com/thmb/UIgSeMfZbogXnYCyF2pBOXDH5-Y=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/7966411PBJFrenchToast_4x3-a9446a0c1aec484eacd91cb469302f65.jpg'),(4,'Homemade Mac and Cheese','Jose','Garcia','Dinner','Step 1: Preheat the oven to 350 degrees F (175 degrees C). Grease an 8-inch square baking dish. Step 2: Make the macaroni and cheese: Bring a large pot of lightly salted water to a boil. Add macaroni and simmer, stirring occasionally, until tender yet firm to the bite, about 8 minutes; it will finish cooking in the oven. Drain and transfer to the prepared baking dish. Step 3: While the macaroni is cooking, melt 1/4 cup butter in a medium skillet over low heat. Whisk in flour and stir until the mixture becomes paste-like and light golden brown, 3 to 5 minutes. Step 4: Gradually whisk 2 1/2 cups milk into the flour mixture, and bring to a simmer. Stir in shredded Cheddar and finely grated Parmesan cheeses; season with salt and pepper. Cook and stir over low heat until cheese is melted and sauce has thickened, 3 to 5 minutes, adding up to 1/2 cup more milk if needed. Pour cheese sauce over macaroni and stir until well combined. Step 5: Make the bread crumb topping: Melt 2 tablespoons butter in a skillet over medium heat. Add bread crumbs; cook and stir until well coated and browned. Spread bread crumbs over macaroni and cheese, then sprinkle with paprika. Step 6: Bake in the preheated oven until topping is golden brown and macaroni and cheese is bubbling, about 30 minutes.','55 minutes','4','https://www.allrecipes.com/thmb/JDCXVoI3xKJkEIxUfn_B2L5dMvc=/650x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/2440173-Homemade-Mac-and-Cheese-Photo-by-Allrecipes-Magazine-resized-9ce8e17b2e464d65a91ab94657919936.jpg'),(5,'Pasta Salad','Susan','Boyle','Lunch','Step 1: Gather all ingredients. Step 2: Bring a large pot of lightly salted water to a boil. Cook pasta in the boiling water, stirring occasionally, until tender yet firm to the bite, about 10 to 12 minutes; rinse under cold water and drain. Step 3: Whisk Italian dressing and salad spice mix together until smooth. Combine pasta, tomatoes, bell peppers, and olives in a salad bowl. Step 4: Pour dressing over salad and toss to coat. Step 5: Refrigerate salad, 8 hours to overnight.','8 Hours 30 Minutes','6','https://www.allrecipes.com/thmb/d6s6C6WN6LQeYaU9QI99A2C1h1M=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/14385-pasta-salad-DDMFS-4x3-28eb5dbe00624780b36cabfef15ca183.jpg'),(8,'Burger','john','doe','Lunch','make it','20 min','1','https://www.in-n-out.com/Frontend-Assembly/Telerik.Sitefinity.Frontend/content/images/menu/foodquality/double-double.png?package=INNOUT&v=2023');
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppinglist`
--

DROP TABLE IF EXISTS `shoppinglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoppinglist` (
  `shoppingListId` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `ingredientId` int DEFAULT NULL,
  PRIMARY KEY (`shoppingListId`),
  KEY `fk_shoppingList_users1_idx` (`userId`),
  KEY `fk_shoppingList_ingredients1_idx` (`ingredientId`),
  CONSTRAINT `fk_shoppingList_ingredients1` FOREIGN KEY (`ingredientId`) REFERENCES `ingredients` (`ingredientId`),
  CONSTRAINT `fk_shoppingList_users1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppinglist`
--

LOCK TABLES `shoppinglist` WRITE;
/*!40000 ALTER TABLE `shoppinglist` DISABLE KEYS */;
INSERT INTO `shoppinglist` VALUES (1,1,1),(2,1,2),(3,1,4),(4,1,5),(5,1,6),(6,2,7),(7,2,8),(8,2,10),(9,2,11),(10,2,12),(11,1,18),(12,1,25);
/*!40000 ALTER TABLE `shoppinglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(72) NOT NULL,
  `userType` varchar(45) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2a$10$06ofFgXJ9wysAOzQh0D0..RcDp1w/urY3qhO6VuUJL2c6tzAJPfj6','admin'),(2,'user','$2a$10$06ofFgXJ9wysAOzQh0D0..RcDp1w/urY3qhO6VuUJL2c6tzAJPfj6','user');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-13 19:20:18
