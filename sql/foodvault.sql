-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2025 at 11:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodvault`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `article_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `read_time` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article_categories`
--

CREATE TABLE `article_categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article_category_map`
--

CREATE TABLE `article_category_map` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article_comments`
--

CREATE TABLE `article_comments` (
  `comment_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article_favorites`
--

CREATE TABLE `article_favorites` (
  `favorite_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article_images`
--

CREATE TABLE `article_images` (
  `image_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article_ratings`
--

CREATE TABLE `article_ratings` (
  `rating_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `rating` tinyint(4) NOT NULL CHECK (`rating` between 1 and 5),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article_saves`
--

CREATE TABLE `article_saves` (
  `save_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `name`) VALUES
(5, 'Beverages'),
(2, 'Breakfast'),
(3, 'Dessert'),
(1, 'Snacks'),
(4, 'Staples');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `equipment_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`equipment_id`, `recipe_id`, `name`) VALUES
(1, 1, 'Air Fryer'),
(2, 1, 'Oven'),
(3, 1, 'Tawa / Griddle'),
(4, 1, 'Lid'),
(5, 1, 'Aluminium Foil'),
(6, 2, 'Mixing Bowl'),
(7, 2, 'Frying Pan'),
(8, 2, 'Spatula'),
(9, 2, 'Knife'),
(10, 2, 'Cutting Board'),
(11, 3, 'Blender or Food Processor'),
(12, 3, 'Mixing Bowl'),
(13, 3, 'Sandwich Griller or Tawa'),
(14, 3, 'Spatula'),
(15, 3, 'Knife'),
(16, 3, 'Cutting Board'),
(17, 4, 'Mixing Bowl'),
(18, 4, 'Knife'),
(19, 4, 'Cutting Board'),
(20, 4, 'Serving Bowl'),
(21, 4, 'Spoon for mixing'),
(22, 5, 'Mixing Bowl'),
(23, 5, 'Fork (for mashing banana)'),
(24, 5, 'Whisk or Spoon'),
(25, 5, 'Baking Dish'),
(26, 5, 'Oven'),
(27, 5, 'Measuring Cups & Spoons'),
(28, 6, 'Large Pot'),
(29, 6, 'Pan'),
(30, 6, 'Knife'),
(31, 6, 'Cutting Board'),
(32, 6, 'Mixing Bowl'),
(33, 6, 'Tongs'),
(34, 6, 'Serving Plate'),
(35, 7, 'Bowl'),
(36, 7, 'Sieve'),
(37, 7, 'Grinder'),
(38, 7, 'Tray or Cloth (for drying)'),
(39, 8, 'Mixing bowl'),
(40, 8, 'Pan (for frying)'),
(41, 8, 'Air fryer'),
(42, 8, 'Plastic wrap'),
(43, 8, 'Paper towels'),
(44, 9, 'Blender'),
(45, 9, 'Freezer (optional)'),
(46, 9, 'Serving bowls'),
(47, 10, 'Mixing bowl'),
(48, 10, 'Wax paper or lined tray'),
(49, 10, 'Freezer'),
(50, 11, 'Blender'),
(51, 11, 'Glass');

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `ingredient_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`ingredient_id`, `recipe_id`, `name`, `quantity`) VALUES
(1, 1, 'Half-cooked Rotis (Chapati)', '2'),
(2, 1, 'Pizza Sauce', '4 tbsp'),
(3, 1, 'Mozzarella Cheese (grated)', '½ cup'),
(4, 1, 'Onion (diced)', '½ small'),
(5, 1, 'Capsicum (diced)', '½'),
(6, 1, 'Spinach (chopped)', '¼ cup'),
(7, 1, 'Sweet Corn', '2 tbsp'),
(8, 1, 'Coriander (chopped)', '1 tbsp'),
(9, 1, 'Oregano', '½ tsp'),
(10, 1, 'Chili Flakes', '½ tsp'),
(11, 1, 'Butter (for tawa method)', '½ tsp'),
(12, 1, 'Optional Veggies (mushrooms, olives, jalapeños)', 'as needed'),
(13, 1, 'Paneer or Tofu (small cubes)', 'as needed'),
(14, 2, 'Eggs', '2'),
(15, 2, 'Cooked Rice', '1 cup'),
(16, 2, 'Onion (chopped)', '1/4'),
(17, 2, 'Carrot (grated or finely chopped)', '1/4'),
(18, 2, 'Pepper', '1/2 tsp'),
(19, 2, 'Salt', '1/2 tsp'),
(20, 2, 'Turmeric', '1/4 tsp'),
(21, 2, 'Paprika', '1/4 tsp'),
(22, 2, 'Oil or Butter (for cooking)', '1 tbsp'),
(23, 3, 'Capsicum (chopped)', '1/2 cup'),
(24, 3, 'Carrot (grated or finely chopped)', '1/2 cup'),
(25, 3, 'Onion (chopped)', '1/2 cup'),
(26, 3, 'Sprouts (moong, chickpea, or mixed)', '1 cup'),
(27, 3, 'Green Chili (finely chopped)', '1'),
(28, 3, 'Ginger (grated)', '1/2 inch'),
(29, 3, 'Garlic cloves (minced)', '2'),
(30, 3, 'Curry leaves (finely chopped)', '5-6'),
(31, 3, 'Salt', '1/2 tsp'),
(32, 3, 'Turmeric powder', '1/4 tsp'),
(33, 3, 'Coriander powder', '1/2 tsp'),
(34, 3, 'Cumin powder', '1/2 tsp'),
(35, 3, 'Chickpea flour (Besan)', '1/4 cup'),
(36, 3, 'Ghee or Butter (for grilling)', '2 tbsp'),
(37, 3, 'Bread slices (white, whole wheat, or multigrain)', '4'),
(38, 3, 'Mozzarella Cheese or Paneer slices', '2'),
(39, 4, 'Sprouts (mung bean, chickpea, or mixed)', '1 cup (soaked 30 hrs)'),
(40, 4, 'Cooked beans (kidney, chickpea, or black chickpeas)', '1/2 cup'),
(41, 4, 'Onion (finely chopped)', '1/2 cup'),
(42, 4, 'Tomato (diced, optional)', '1/2 cup'),
(43, 4, 'Green chili (finely chopped, optional)', '1'),
(44, 4, 'Fresh coriander (chopped, optional)', '2 tbsp'),
(45, 4, 'Salt', '1/2 tsp'),
(46, 4, 'Black pepper', '1/4 tsp'),
(47, 4, 'Cumin powder', '1/2 tsp'),
(48, 4, 'Chaat masala (optional)', '1/2 tsp'),
(49, 4, 'Lemon juice', '1/2 tsp'),
(50, 5, 'Ripe banana (mashed)', '1 large'),
(51, 5, 'Egg (or flax egg)', '1'),
(52, 5, 'Peanut butter', '2 tbsp'),
(53, 5, 'Maple syrup', '1/4 cup'),
(54, 5, 'Oat flour', '1 cup'),
(55, 5, 'Baking powder', '1/2 tsp'),
(56, 5, 'Chocolate chips (optional)', 'as desired'),
(57, 6, 'Cabbage leaves (Napa or green)', '8–10 large'),
(58, 6, 'Carrot, julienned', '1 medium'),
(59, 6, 'Cucumber, julienned', '1 small'),
(60, 6, 'Paneer (cottage cheese), cut into strips', '150 g'),
(61, 6, 'Oil', '1 tbsp'),
(62, 6, 'Salt', 'to taste'),
(63, 6, 'Pepper', 'to taste'),
(64, 6, 'Peanut butter (for sauce)', '2 tbsp'),
(65, 6, 'Soy sauce (for sauce)', '1 tbsp'),
(66, 6, 'Lemon juice (for sauce)', '1 tsp'),
(67, 6, 'Honey (for sauce)', '1 tsp'),
(68, 6, 'Warm water (for sauce)', 'as needed'),
(69, 7, 'Chickpeas', 'as needed'),
(70, 8, 'Hung curd', '1/2 cup'),
(71, 8, 'Onions, diced', '1/4 cup'),
(72, 8, 'Paneer or mozzarella, grated', '1/2 cup'),
(73, 8, 'Coriander, chopped', '2 tbsp'),
(74, 8, 'Green chili, finely chopped', '1'),
(75, 8, 'Cashews, chopped (optional)', '5–6'),
(76, 8, 'Salt', '1/2 tsp (to taste)'),
(77, 8, 'Black pepper', '1/4 tsp'),
(78, 8, 'Cumin powder (jeera)', '1/2 tsp'),
(79, 8, 'Garam masala', '1/4 tsp'),
(80, 8, 'Bread slices', '6–8'),
(81, 8, 'Water', 'as needed (for moistening bread)'),
(82, 8, 'Oil', 'for frying / brushing'),
(83, 9, 'Firm tofu', '400g'),
(84, 9, 'Peanut butter', '150g'),
(85, 9, 'Milk (any type)', '360ml'),
(86, 9, 'Medjool dates, pitted', '160g'),
(87, 9, 'Dark chocolate (optional)', 'as desired'),
(88, 10, 'Bananas', '2, sliced into even pieces'),
(89, 10, 'Greek yogurt (or any preferred yogurt)', '1/2 cup'),
(90, 10, 'Cacao powder (or cocoa powder)', '2 tablespoons'),
(91, 11, 'Banana', '1'),
(92, 11, 'Cashews (optional)', '1 cup'),
(93, 11, 'Medjool dates (optional)', '6'),
(94, 11, 'Oats', '1/2 cup'),
(95, 11, 'Milk (any type)', '1/2–1 cup'),
(96, 11, 'Peanut butter', '2 tablespoons');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `recipe_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `servings` int(11) DEFAULT 1,
  `prep_time` int(11) DEFAULT NULL,
  `cook_time` int(11) DEFAULT NULL,
  `total_time` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`recipe_id`, `user_id`, `course_id`, `title`, `description`, `servings`, `prep_time`, `cook_time`, `total_time`, `created_at`) VALUES
(1, 1, 1, 'Roti Pizza', 'A quick and cheesy Indian fusion snack made with half-cooked rotis, loaded with veggies, and topped like a pizza—crispy, fun, and flavorful!', 2, 10, 10, 20, '2025-08-26 06:56:04'),
(2, 1, 2, 'Egg-Rice Omelet', 'A fluffy and savory omelet made with eggs, cooked rice, veggies, and spices—perfect for a filling breakfast.', 2, 10, 10, 20, '2025-08-26 07:17:13'),
(3, 1, 1, 'Sprout Sandwich', 'A crunchy, protein-packed sandwich filled with spiced sprouts, veggies, and paneer or cheese, grilled to golden perfection.', 2, 10, 15, 25, '2025-08-26 07:22:50'),
(4, 1, 1, 'Sprout Salad', 'A refreshing, protein-rich salad made with sprouts, cooked beans, and a zingy mix of spices and lemon juice — perfect as a snack or light meal.', 2, 10, 0, 10, '2025-08-27 06:59:54'),
(5, 1, 3, 'Banana Cake', 'A soft and wholesome banana cake made with oat flour, maple syrup, and peanut butter—naturally sweet and optionally vegan.', 1, 10, 20, 30, '2025-08-27 07:13:20'),
(6, 1, 1, 'Boiled Salad Spring Rolls', 'Healthy and refreshing cabbage-wrapped spring rolls filled with crispy veggies and paneer, served with a flavorful peanut dipping sauce.', 1, 15, 10, 25, '2025-08-27 07:31:14'),
(7, 1, 4, 'Chickpea Powder', 'Homemade chickpea flour (besan) made by soaking, drying, and grinding chickpeas for fresh, preservative-free use in cooking.', 2, 300, 10, 310, '2025-08-27 09:51:55'),
(8, 1, 1, 'Dahi Cutlets / Kebabs', 'Crispy and creamy vegetarian cutlets made with hung curd, paneer, and spices—perfect as a tea-time snack or party appetizer.', 3, 15, 15, 30, '2025-08-27 10:28:41'),
(9, 1, 3, 'Snickers-like Dessert', 'A creamy, protein-packed dessert blending tofu, peanut butter, and dates, with optional dark chocolate for a Snickers-like twist.', 2, 10, 0, 10, '2025-08-27 10:36:33'),
(10, 1, 3, 'Cocoa-Banana Bites', 'Frozen banana slices dipped in chocolatey yogurt for a refreshing, healthy dessert that’s perfect for summer cravings.', 2, 10, 120, 130, '2025-08-27 10:44:24'),
(11, 1, 5, 'Banana Smoothie', 'A creamy, energizing smoothie made with banana, oats, peanut butter, and milk — with optional cashews and dates for extra richness and sweetness.', 1, 15, 0, 15, '2025-08-27 10:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_categories`
--

CREATE TABLE `recipe_categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_categories`
--

INSERT INTO `recipe_categories` (`category_id`, `name`) VALUES
(8, 'Baked Goods'),
(4, 'Breakfast'),
(15, 'Drinks'),
(14, 'Frozen Treats'),
(3, 'Fusion'),
(10, 'Healthy'),
(5, 'High Protein'),
(11, 'Low-carb'),
(12, 'Party Appetizer'),
(13, 'Quick & Easy'),
(2, 'Quick Meals'),
(7, 'Salad'),
(6, 'Snacks'),
(9, 'Vegan'),
(1, 'Vegetarian');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_category_map`
--

CREATE TABLE `recipe_category_map` (
  `recipe_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_category_map`
--

INSERT INTO `recipe_category_map` (`recipe_id`, `category_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 4),
(3, 1),
(3, 5),
(3, 6),
(4, 1),
(4, 5),
(4, 6),
(4, 7),
(5, 1),
(5, 8),
(5, 9),
(6, 1),
(6, 6),
(6, 10),
(6, 11),
(7, 1),
(7, 9),
(7, 10),
(8, 1),
(8, 6),
(8, 12),
(9, 5),
(9, 9),
(9, 13),
(10, 10),
(10, 13),
(10, 14),
(11, 4),
(11, 10),
(11, 13),
(11, 15);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_comments`
--

CREATE TABLE `recipe_comments` (
  `comment_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recipe_favorites`
--

CREATE TABLE `recipe_favorites` (
  `favorite_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recipe_images`
--

CREATE TABLE `recipe_images` (
  `image_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `is_primary` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_images`
--

INSERT INTO `recipe_images` (`image_id`, `recipe_id`, `image_url`, `is_primary`) VALUES
(1, 1, 'http://localhost/foodvault/images/roti_pizza_main.jpg', 1),
(2, 1, 'http://localhost/foodvault/images/roti_pizza_step.jpg', 0),
(3, 2, 'http://localhost/foodvault/images/egg_rice_omelet_main.jpg', 1),
(4, 2, 'http://localhost/foodvault/images/egg_rice_omelet_step.jpg', 0),
(5, 3, 'http://localhost/foodvault/images/sprout_sandwich_main.jpg', 1),
(6, 3, 'http://localhost/foodvault/images/sprout_sandwich_step.jpg', 0),
(7, 4, 'http://localhost/foodvault/images/sprout_salad_main.jpg', 1),
(8, 4, 'http://localhost/foodvault/images/sprout_salad_step.jpg', 0),
(9, 5, 'http://localhost/foodvault/images/banana_cake_main.jpg', 1),
(10, 5, 'http://localhost/foodvault/images/banana_cake_slice.jpg', 0),
(11, 6, 'http://localhost/foodvault/images/boiled_spring_rolls_main.jpg', 1),
(12, 6, 'http://localhost/foodvault/images/boiled_spring_rolls_plate.jpg', 0),
(13, 7, 'http://localhost/foodvault/images/chickpea_powder_main.jpg', 2),
(14, 7, 'http://localhost/foodvault/images/chickpea_powder_main.jpg', 1),
(15, 7, 'http://localhost/foodvault/images/chickpea_powder_main.jpg', 0),
(16, 8, 'http://localhost/foodvault/images/dahi_cutlets_main.jpg', 2),
(17, 8, 'http://localhost/foodvault/images/dahi_cutlets_main.jpg', 2),
(18, 8, 'http://localhost/foodvault/images/dahi_cutlets_main.jpg', 1),
(19, 8, 'http://localhost/foodvault/images/dahi_cutlets_main.jpg', 0),
(20, 9, 'http://localhost/foodvault/images/snickers_dessert.jpg', 2),
(21, 9, 'http://localhost/foodvault/images/snickers_dessert.jpg', 1),
(22, 9, 'http://localhost/foodvault/images/snickers_dessert.jpg', 0),
(23, 10, 'http://localhost/foodvault/images/cocoa_banana_bites1.jpg', 1),
(24, 10, 'http://localhost/foodvault/images/cocoa_banana_bites2.jpg', 0),
(25, 10, 'http://localhost/foodvault/images/cocoa_banana_bites3.jpg', 0),
(26, 11, 'http://localhost/foodvault/images/banana_smoothie1.jpg', 1),
(27, 11, 'http://localhost/foodvault/images/banana_smoothie2.jpg', 0),
(28, 11, 'http://localhost/foodvault/images/banana_smoothie3.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_instructions`
--

CREATE TABLE `recipe_instructions` (
  `instruction_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `step_number` int(11) NOT NULL,
  `instruction` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_instructions`
--

INSERT INTO `recipe_instructions` (`instruction_id`, `recipe_id`, `step_number`, `instruction`) VALUES
(1, 1, 1, 'Take a half-cooked Roti (or cook fresh chapati slightly underdone). Spread 2 tbsp of pizza sauce evenly over the roti.'),
(2, 1, 2, 'Sprinkle mozzarella cheese generously. Add diced onions, capsicum, spinach, sweet corn, and coriander. Sprinkle oregano and chili flakes for extra flavor.'),
(3, 1, 3, 'Air Fry Method: Preheat the air fryer to 180°C (350°F). Place the prepared roti pizza inside and air fry for 4-5 minutes until cheese melts and turns golden.'),
(4, 1, 4, 'Oven Method: Preheat the oven to 200°C (400°F). Place the pizza on a baking tray lined with parchment paper. Bake for 6-8 minutes or until cheese melts and crust turns crispy.'),
(5, 1, 5, 'Tawa Method: Heat a tawa on low flame and add ½ tsp butter. Place the roti on the tawa and warm it slightly. Turn off the flame, cover, and let it sit for 3 minutes or until cheese melts completely.'),
(6, 2, 1, 'Chop onions and carrots finely.'),
(7, 2, 2, 'In a bowl, beat the eggs and add cooked rice, onions, carrots, and spices. Stir well until everything is combined.'),
(8, 2, 3, 'Heat oil or butter in a pan over medium heat. Pour the mixture into the pan and spread evenly. Cook for 3-5 minutes until the bottom is golden. Flip and cook the other side for 2-3 minutes.'),
(9, 3, 1, 'In a blender or food processor, add the finely chopped vegetables (capsicum, carrot, onion) along with the sprouts. Add the green chili, ginger, garlic, and curry leaves. Blend until coarsely ground. The mixture should not become a paste but should be slightly chunky.'),
(10, 3, 2, 'Transfer the blended mixture into a mixing bowl. Add salt, turmeric powder, coriander powder, and cumin powder. Add the chickpea flour (besan) and mix well to form a thick, spreadable mixture. If needed, add a few drops of water to adjust the consistency.'),
(11, 3, 3, 'Take two slices of bread and spread an even layer of the sprout mixture on one slice. Place a slice of mozzarella cheese or paneer on top. Cover with the second slice of bread and gently press down.'),
(12, 3, 4, 'Heat a sandwich griller or a tawa (flat pan) on medium heat. Apply a little ghee or butter on both sides of the sandwich. Place the sandwich on the griller or tawa and cook for about 5-7 minutes until golden brown and crisp. If using a tawa, flip the sandwich carefully and cook on the other side for another 5 minutes.'),
(13, 4, 1, 'If you’re using store-bought sprouts, rinse them thoroughly under running water. If you’re making fresh sprouts at home, soak the beans (mung beans, chickpeas, or black chickpeas) overnight, drain the water, and let them sprout in a moist cloth for 1-2 days. Finely chop the onion, tomato, green chili, and coriander.'),
(14, 4, 2, 'In a large mixing bowl, combine the sprouts, cooked beans, chopped onions, tomatoes, and green chili. Add salt, black pepper, cumin powder, and chaat masala for flavor. Squeeze fresh lemon juice over the salad for a tangy kick. Toss everything well to ensure the spices and flavors blend evenly.'),
(15, 4, 3, 'Transfer the salad into a serving bowl. Garnish with fresh coriander. Enjoy fresh as a light meal, snack, or side dish.'),
(16, 5, 1, 'In a large bowl, mash the ripe banana until smooth.'),
(17, 5, 2, 'Mix in egg (or flax egg), peanut butter, and maple syrup. Stir well until fully combined.'),
(18, 5, 3, 'Add oat flour, baking powder, and optional chocolate chips. Mix until you get a smooth batter.'),
(19, 5, 4, 'Preheat oven to 350°F (175°C). Pour batter into a greased or lined baking dish. Bake for 15-20 minutes, or until a toothpick comes out clean.'),
(20, 6, 1, 'Bring a large pot of water to a boil. Blanch cabbage leaves for 30–45 seconds until soft. Transfer to cold water, drain, and pat dry.'),
(21, 6, 2, 'Heat 1 tbsp oil in a pan. Fry paneer strips until golden, season with salt and pepper. Meanwhile, julienne carrot and cucumber.'),
(22, 6, 3, 'Place carrot, cucumber, and paneer on a cabbage leaf. Fold sides and roll tightly into a spring roll. Repeat with remaining leaves.'),
(23, 6, 4, 'Mix peanut butter, soy sauce, lemon juice, honey, and warm water into a smooth dipping sauce. Adjust with water as needed.'),
(24, 7, 1, 'Soak chickpeas in water for 4–5 hours.'),
(25, 7, 2, 'Drain and dry them completely.'),
(26, 7, 3, 'Grind the dried chickpeas into a fine powder.'),
(27, 7, 4, 'Sieve the flour to remove larger chunks.'),
(28, 7, 5, 'Re-grind any larger lumps and sieve again for a fine powder.'),
(29, 8, 1, 'In a mixing bowl, add hung curd, diced onions, grated paneer/mozzarella, coriander, and chopped chili. If using cashews, chop and add them. Season with salt, black pepper, jeera powder, and garam masala. Mix everything well.'),
(30, 8, 2, 'Take a slice of bread and slightly moisten it with water. Place a spoonful of filling in the center and roll the bread tightly to seal the filling. Use plastic wrap to shape it. Repeat for all bread slices.'),
(31, 8, 3, 'Option 1 - Deep Frying: Heat oil in a pan, fry rolls until golden brown and crispy. Place on paper towels.'),
(32, 8, 4, 'Option 2 - Air Frying: Preheat air fryer to 180°C (350°F). Lightly brush rolls with oil, cook for 10–12 minutes flipping halfway until golden and crispy.'),
(33, 9, 1, 'Add firm tofu, peanut butter, milk, and dates to a blender. Blend until smooth and creamy.'),
(34, 9, 2, 'Optionally drizzle with melted dark chocolate or sprinkle crushed chocolate on top.'),
(35, 9, 3, 'Eat immediately as a soft creamy dessert, or freeze for a firmer chilled texture.'),
(36, 10, 1, 'Slice the bananas into even-sized rounds.'),
(37, 10, 2, 'In a bowl, mix Greek yogurt with cacao powder until smooth.'),
(38, 10, 3, 'Dip each banana slice into the chocolate yogurt and coat evenly.'),
(39, 10, 4, 'Place the coated banana pieces on wax paper or a lined tray. Freeze for 2 hours until firm.'),
(40, 11, 1, 'Add banana, cashews (if using), dates (if using), oats, milk, and peanut butter into a blender.'),
(41, 11, 2, 'Blend until smooth and creamy. Adjust consistency by adding more milk if needed.'),
(42, 11, 3, 'Pour into a glass and serve immediately.');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_ratings`
--

CREATE TABLE `recipe_ratings` (
  `rating_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `rating` tinyint(4) NOT NULL CHECK (`rating` between 1 and 5),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recipe_saves`
--

CREATE TABLE `recipe_saves` (
  `save_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('chef','admin') DEFAULT 'chef',
  `bio` text DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password_hash`, `role`, `bio`, `profile_image`, `banner_image`, `created_at`, `updated_at`) VALUES
(1, 'imagine', 'imagine', 'imagine@imagine.com', '$2b$12$u7eXZ9zklymN3owx1UknUOYQdZgA4rgFrBojJz1FV/27dCW6AHtnG', 'admin', 'good ol\' imagine boy', 'https://yt3.googleusercontent.com/s43ip8f-U_qMhj4bY0Q8XJ7YaP9geYCqEKjKR1lRPmshDTMJe9mjxPL9f421QM1LscCtd-62FzI=s160-c-k-c0x00ffffff-no-rj', 'https://yt3.googleusercontent.com/suS625tWyk4V5XZtGA26TzoHXWbyavGw_cflBbHeQjdoVaYLoAZEw4xM5SHoW6XLTTwkB9I_PA=w1707-fcrop64=1,00005a57ffffa5a8-k-c0xffffffff-no-nd-rj', '2025-08-26 06:55:22', '2025-08-26 08:22:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `article_categories`
--
ALTER TABLE `article_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `article_category_map`
--
ALTER TABLE `article_category_map`
  ADD PRIMARY KEY (`article_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `article_comments`
--
ALTER TABLE `article_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `article_id` (`article_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `article_favorites`
--
ALTER TABLE `article_favorites`
  ADD PRIMARY KEY (`favorite_id`),
  ADD UNIQUE KEY `article_id` (`article_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `article_images`
--
ALTER TABLE `article_images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexes for table `article_ratings`
--
ALTER TABLE `article_ratings`
  ADD PRIMARY KEY (`rating_id`),
  ADD UNIQUE KEY `article_id` (`article_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `article_saves`
--
ALTER TABLE `article_saves`
  ADD PRIMARY KEY (`save_id`),
  ADD UNIQUE KEY `article_id` (`article_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`equipment_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`ingredient_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`recipe_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `recipe_categories`
--
ALTER TABLE `recipe_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `recipe_category_map`
--
ALTER TABLE `recipe_category_map`
  ADD PRIMARY KEY (`recipe_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `recipe_comments`
--
ALTER TABLE `recipe_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `recipe_id` (`recipe_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `recipe_favorites`
--
ALTER TABLE `recipe_favorites`
  ADD PRIMARY KEY (`favorite_id`),
  ADD UNIQUE KEY `recipe_id` (`recipe_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `recipe_images`
--
ALTER TABLE `recipe_images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `recipe_instructions`
--
ALTER TABLE `recipe_instructions`
  ADD PRIMARY KEY (`instruction_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `recipe_ratings`
--
ALTER TABLE `recipe_ratings`
  ADD PRIMARY KEY (`rating_id`),
  ADD UNIQUE KEY `recipe_id` (`recipe_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `recipe_saves`
--
ALTER TABLE `recipe_saves`
  ADD PRIMARY KEY (`save_id`),
  ADD UNIQUE KEY `recipe_id` (`recipe_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_categories`
--
ALTER TABLE `article_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_comments`
--
ALTER TABLE `article_comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_favorites`
--
ALTER TABLE `article_favorites`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_images`
--
ALTER TABLE `article_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_ratings`
--
ALTER TABLE `article_ratings`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_saves`
--
ALTER TABLE `article_saves`
  MODIFY `save_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `equipment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `ingredient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `recipe_categories`
--
ALTER TABLE `recipe_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `recipe_comments`
--
ALTER TABLE `recipe_comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipe_favorites`
--
ALTER TABLE `recipe_favorites`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipe_images`
--
ALTER TABLE `recipe_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `recipe_instructions`
--
ALTER TABLE `recipe_instructions`
  MODIFY `instruction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `recipe_ratings`
--
ALTER TABLE `recipe_ratings`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipe_saves`
--
ALTER TABLE `recipe_saves`
  MODIFY `save_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `article_category_map`
--
ALTER TABLE `article_category_map`
  ADD CONSTRAINT `article_category_map_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`article_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_category_map_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `article_categories` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `article_comments`
--
ALTER TABLE `article_comments`
  ADD CONSTRAINT `article_comments_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`article_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `article_favorites`
--
ALTER TABLE `article_favorites`
  ADD CONSTRAINT `article_favorites_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`article_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_favorites_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `article_images`
--
ALTER TABLE `article_images`
  ADD CONSTRAINT `article_images_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`article_id`) ON DELETE CASCADE;

--
-- Constraints for table `article_ratings`
--
ALTER TABLE `article_ratings`
  ADD CONSTRAINT `article_ratings_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`article_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_ratings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `article_saves`
--
ALTER TABLE `article_saves`
  ADD CONSTRAINT `article_saves_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`article_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_saves_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `equipment`
--
ALTER TABLE `equipment`
  ADD CONSTRAINT `equipment_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE CASCADE;

--
-- Constraints for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `ingredients_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE CASCADE;

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipes_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE SET NULL;

--
-- Constraints for table `recipe_category_map`
--
ALTER TABLE `recipe_category_map`
  ADD CONSTRAINT `recipe_category_map_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipe_category_map_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `recipe_categories` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `recipe_comments`
--
ALTER TABLE `recipe_comments`
  ADD CONSTRAINT `recipe_comments_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipe_comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipe_favorites`
--
ALTER TABLE `recipe_favorites`
  ADD CONSTRAINT `recipe_favorites_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipe_favorites_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipe_images`
--
ALTER TABLE `recipe_images`
  ADD CONSTRAINT `recipe_images_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE CASCADE;

--
-- Constraints for table `recipe_instructions`
--
ALTER TABLE `recipe_instructions`
  ADD CONSTRAINT `recipe_instructions_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE CASCADE;

--
-- Constraints for table `recipe_ratings`
--
ALTER TABLE `recipe_ratings`
  ADD CONSTRAINT `recipe_ratings_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipe_ratings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipe_saves`
--
ALTER TABLE `recipe_saves`
  ADD CONSTRAINT `recipe_saves_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipe_saves_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
