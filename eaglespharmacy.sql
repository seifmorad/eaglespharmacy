-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 05:37 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eaglespharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Gharbia'),
(2, 'Alexandria'),
(3, 'Cairo'),
(4, 'Dakahlia'),
(5, 'Damietta'),
(6, 'Faiyum'),
(7, 'Giza'),
(8, 'Ismailia'),
(9, 'Kafr El Sheikh'),
(10, 'Luxor'),
(11, 'Matruh'),
(12, 'Aswan'),
(13, 'Asyut'),
(14, 'Beheira'),
(15, 'Beni Suef'),
(16, ' Dakahlia'),
(17, 'Bahrain'),
(18, 'Monufia'),
(19, 'New Valley'),
(20, 'North Sinai'),
(21, 'Port Said'),
(22, 'Qalyubia'),
(23, 'Qena'),
(24, 'Red Sea'),
(25, 'Sharqia');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_country` int(11) NOT NULL,
  `cust_b_address` text NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(1, 'Liam Moore', 'WV Company', 'liam@mail.com', '7458965410', 230, '788 Cottonwood Lane', 'Nashville', 'TN', '37072', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', '0081e99a29cacd4b553db15c5c5c047e', '2022-03-17 11:09:34', '1647544174', 1),
(2, 'Chad N. Carney', 'none', 'chad@mail.com', '4785690000', 230, '469 Diamond Street', 'Charlotte', 'NC', '28808', 'Chad N. Carney', 'none', '7477474440', 230, '469 Diamond Street', 'Charlotte', 'NC', '28808', 'Chad N. Carney', 'none', '7477474440', 230, '469 Diamond Street', 'Charlotte', 'NC', '28808', '5f4dcc3b5aa765d61d8327deb882cf99', 'ca87666426f4bc5c5128a96dabfecefb', '2022-03-17 11:15:26', '1647544526', 1),
(3, 'Jean Collins', 'none', 'jean@mail.com', '1478523698', 230, '1508 Crosswind Drive', 'Owensboro', 'KY', '13040', 'Jean Collins', 'none', '1478523698', 230, '1508 Crosswind Drive', 'Owensboro', 'KY', '13040', 'Jean Collins', 'none', '1478523698', 230, '1508 Crosswind Drive', 'Owensboro', 'KY', '13040', '5f4dcc3b5aa765d61d8327deb882cf99', '6b3439bf95644a36a1ed92bef374ebb7', '2022-03-20 10:29:39', '1647797379', 1),
(4, 'Annie Young', 'XYZ Company', 'annie@mail.com', '7770001144', 230, '79 Burwell Heights Road', 'Beaumont', 'TX', '77400', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', 'fc8f07537cdd6b3f89eb94f1cad78060', '2022-03-20 10:31:35', '1647797495', 1),
(5, 'Matthew Morales', 'ABC Company', 'matthew@mail.com', '7896587450', 230, '81 Felosa Drive', 'Mira Loma', 'CA', '91002', 'Matthew Morales', 'ABC Company', '7896587450', 230, '81 Felosa Drive', 'Mira Loma', 'CA', '91002', 'Matthew Morales', 'ABC Company', '7896587450', 230, '81 Felosa Drive', 'Mira Loma', 'CA', '91002', '5f4dcc3b5aa765d61d8327deb882cf99', 'c391105908fe01a636bfa5fc39eed33d', '2022-03-20 10:33:15', '1647797595', 1),
(6, 'August F. Freels', 'none', 'august@mail.com', '1478547850', 230, '96 Johnny Lane', 'Milwaukee', 'WI', '55550', 'August F. Freels', 'none', '1478547850', 230, '96 Johnny Lane', 'Milwaukee', 'WI', '55550', 'August F. Freels', 'none', '1478547850', 230, '96 Johnny Lane', 'Milwaukee', 'WI', '55550', '5f4dcc3b5aa765d61d8327deb882cf99', 'decc1fc2c5dd9935df82c0233002ce66', '2022-03-20 10:34:08', '1647797648', 1),
(7, 'Carl M. Dineen', 'none', 'carl@mail.com', '789878987', 230, '77 Lyndon Street', 'Kutztown', 'PA', '19855', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', 'c79bac688e70cc9665a2164c57ec172c', '2022-03-20 10:35:02', '1647797702', 1),
(8, 'Benjamin B. Louque', 'none', 'benjamin@mail.com', '7777889955', 230, '32 Bridge Street', 'Tulsa', 'OK', '74220', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', '5a0e096368f9669508af7b7203382b07', '2022-03-20 10:36:31', '1647797791', 1),
(9, 'Joe K. Richardson', 'none', 'joe@mail.com', '4444445555', 230, '17 Derek Drive', 'Youngstown', 'OH', '44500', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', 'e74ac0178d7833988d4b1625c42ba26e', '2022-03-20 10:37:18', '1647797838', 1),
(10, 'Will Williams', 'Test Company', 'williams@mail.com', '7410000000', 230, '39 Marcus Street', 'Anniston', 'AL', '37207', 'Will Williams', 'Test Company', '7410000000', 230, '39 Marcus Street', 'Anniston', 'AL', '37207', 'Will Williams', 'Test Company', '7410000000', 230, '39 Marcus Street', 'Anniston', 'AL', '37207', '5f4dcc3b5aa765d61d8327deb882cf99', '941c9265fb920f691cf01b12a15f80f8', '2022-03-20 11:15:59', '1647800159', 1),
(11, '123', '123', 'admin@gmail.com', '111111111', 237, '12312', '123', '123', '123', '21321', '12333333333333333333', '123', 237, '12312', '123', '123', '123', '123', '123123', '12333123', 237, 'HA NOI', '123', '123', '123123', '202cb962ac59075b964b07152d234b70', '25446e4af3a68c6e474d5ee35f49a098', '2023-03-11 05:33:08', '1678541588', 1),
(12, 'tran le anh vu', '123', 'vucute775@gmail.com', '123', 237, '123', '123', '123', '123', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '202cb962ac59075b964b07152d234b70', '19073aa888d43eb0840dece2f3a46aa4', '2023-03-11 08:09:25', '1678594165', 1),
(14, 'Ahmed', 'KK', 'ahmed@mail.com', '0124445577656', 1, 'Tanta', 'Tanta', 'gg', '1010', 'esrt``', 'g', 'fvgf', 1, 'g', 'g', 'f', 'ff', 'ff', 'CM', 'f', 6, 'sssd', 'f', 'f', 'f', '202cb962ac59075b964b07152d234b70', '8492ce9a4b0607c7d79009170d712560', '2023-04-19 08:04:09', '1681916649', 1),
(15, 'hania', '', 'hania@gmail.com', '012245242744', 1, 'tana', 'tanta', '2', '123', 'haniaa', 'haniaa', 'haniaa', 16, 'haniaa', 'haniaa', 'haniaa', 'haniaa', 'haniaa', 'haniaa', 'haniaa', 16, 'haniaa', 'haniaa', 'haniaa', 'haniaa', '827ccb0eea8a706c4c34a16891f84e7b', 'cdf55ef8486bd76d9e8d351c95af4b1c', '2023-04-26 08:27:35', '1682522855', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_customer_message`
--

INSERT INTO `tbl_customer_message` (`customer_message_id`, `subject`, `message`, `order_detail`, `cust_id`) VALUES
(9, 'gnhfghf', 'ffghfhfh', '\nCustomer Name: hania<br>\nCustomer Email: hania@gmail.com<br>\nPayment Method: PayPal<br>\nPayment Date: 2023-04-26 09:38:31<br>\nPayment Details: <br>\nTransaction Id: <br>\n        		<br>\nPaid Amount: 140<br>\nPayment Status: Completed<br>\nShipping Status: Completed<br>\nPayment Id: 1682527111<br>\n            ', 15),
(10, 'gnhfghf', 'ffghfhfh', '\nCustomer Name: hania<br>\nCustomer Email: hania@gmail.com<br>\nPayment Method: PayPal<br>\nPayment Date: 2023-04-26 09:38:31<br>\nPayment Details: <br>\nTransaction Id: <br>\n        		<br>\nPaid Amount: 140<br>\nPayment Status: Completed<br>\nShipping Status: Completed<br>\nPayment Id: 1682527111<br>\n            ', 15),
(11, 'gnhfghf', 'ffghfhfh', '\nCustomer Name: hania<br>\nCustomer Email: hania@gmail.com<br>\nPayment Method: PayPal<br>\nPayment Date: 2023-04-26 09:38:31<br>\nPayment Details: <br>\nTransaction Id: <br>\n        		<br>\nPaid Amount: 140<br>\nPayment Status: Completed<br>\nShipping Status: Completed<br>\nPayment Id: 1682527111<br>\n            ', 15),
(12, 'gnhfghf', 'ffghfhfh', '\nCustomer Name: hania<br>\nCustomer Email: hania@gmail.com<br>\nPayment Method: PayPal<br>\nPayment Date: 2023-04-26 09:38:31<br>\nPayment Details: <br>\nTransaction Id: <br>\n        		<br>\nPaid Amount: 140<br>\nPayment Status: Completed<br>\nShipping Status: Completed<br>\nPayment Id: 1682527111<br>\n            ', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(80, 'Oil', 18),
(81, 'shampoo', 19),
(82, 'skin routine ', 20),
(83, 'make-up', 21),
(84, 'men', 22),
(85, 'women', 22),
(86, 'other', 19),
(87, 'Analgesics', 24),
(88, 'Anti hyperglycemia', 24),
(89, 'Antibiotics', 24),
(90, 'Anti hyperglycemia', 24),
(91, 'Anti hypertension', 24),
(92, 'Anti cold and flu', 24),
(93, 'GIT disorders treatment', 24),
(94, 'Effervescent granules', 27),
(95, 'injection', 25),
(96, 'Anti cold and flu', 26),
(97, 'Multivitamin', 26);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(1, 'How to find an item?', '<h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">We have a wide range of fabulous products to choose from.</span></font></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><span style=\"font-size: 15.7143px; color: rgb(34, 34, 34); font-family: opensans, \"Helvetica Neue\", Helvetica, Helvetica, Arial, sans-serif;\">Tip 1: If you\'re looking for a specific product, use the keyword search box located at the top of the site. Simply type what you are looking for, and prepare to be amazed!</span></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Tip 2: If you want to explore a category of products, use the Shop Categories in the upper menu, and navigate through your favorite categories where we\'ll feature the best products in each.</span></font><br><br></h3>\r\n'),
(2, 'What is your return policy?', '<p><span style=\"color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\">You have 15 days to make a refund request after your order has been delivered.</span><br></p>\r\n'),
(3, ' I received a defective/damaged item, can I get a refund?', '<p>In case the item you received is damaged or defective, you could return an item in the same condition as you received it with the original box and/or packaging intact. Once we receive the returned item, we will inspect it and if the item is found to be defective or damaged, we will process the refund along with any shipping fees incurred.<br></p>\r\n'),
(4, 'When are ‘Returns’ not possible?', '<p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px; font-size: 14px; color: rgb(10, 10, 10); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\">There are a few certain scenarios where it is difficult for us to support returns:</p><ol style=\"box-sizing: inherit; line-height: 1.6; margin-right: 0px; margin-bottom: 0px; margin-left: 1.25rem; padding: 0px; list-style-position: outside; color: rgb(10, 10, 10); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Return request is made outside the specified time frame, of 15 days from delivery.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Product is used, damaged, or is not in the same condition as you received it.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\"><span style=\"font-size: inherit;\">Defective products which are covered under the manufacturer\'s warranty.</span><br></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Any consumable item which has been used or installed.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Products with tampered or missing serial numbers.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Anything missing from the package you\'ve received including price tags, labels, original packing, freebies and accessories.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Fragile items, hygiene related items.</li></ol>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', 'EGP'),
(2, 'Search Product', 'Search Product'),
(3, 'Search', 'Search'),
(4, 'Submit', 'Submit'),
(5, 'Update', 'Update'),
(6, 'Read More', 'Read More'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Photo'),
(9, 'Login', 'Login'),
(10, 'Customer Login', 'Customer Login'),
(11, 'Click here to login', 'Click here to login'),
(12, 'Back to Login Page', 'Back to Login Page'),
(13, 'Logged in as', 'Logged in as'),
(14, 'Logout', 'Logout'),
(15, 'Register', 'Register'),
(16, 'Customer Registration', 'Customer Registration'),
(17, 'Registration Successful', 'Registration Successful'),
(18, 'Cart', 'Cart'),
(19, 'View Cart', 'View Cart'),
(20, 'Update Cart', 'Update Cart'),
(21, 'Back to Cart', 'Back to Cart'),
(22, 'Checkout', 'Checkout'),
(23, 'Proceed to Checkout', 'Proceed to Checkout'),
(24, 'Orders', 'Orders'),
(25, 'Order History', 'Order History'),
(26, 'Order Details', 'Order Details'),
(27, 'Payment Date and Time', 'Payment Date and Time'),
(28, 'Transaction ID', 'Transaction ID'),
(29, 'Paid Amount', 'Paid Amount'),
(30, 'Payment Status', 'Payment Status'),
(31, 'Payment Method', 'Payment Method'),
(32, 'Payment ID', 'Payment ID'),
(33, 'Payment Section', 'Payment Section'),
(34, 'Select Payment Method', 'Select Payment Method'),
(35, 'Select a Method', 'Select a Method'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Bank Deposit'),
(39, 'Card Number', 'Card Number'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Month'),
(42, 'Year', 'Year'),
(43, 'Send to this Details', 'Send to this Details'),
(44, 'Transaction Information', 'Transaction Information'),
(45, 'Include transaction id and other information correctly', 'Include transaction id and other information correctly'),
(46, 'Pay Now', 'Pay Now'),
(47, 'Product Name', 'Product Name'),
(48, 'Product Details', 'Product Details'),
(49, 'Categories', 'Categories'),
(50, 'Category:', 'Category:'),
(51, 'All Products Under', 'All Products Under'),
(52, 'Select Size', 'Select Size'),
(53, 'Select Color', 'Select Color'),
(54, 'Product Price', 'Product Price'),
(55, 'Quantity', 'Quantity'),
(56, 'Out of Stock', 'Out of Stock'),
(57, 'Share This', 'Share This'),
(58, 'Share This Product', 'Share This Product'),
(59, 'Product Description', 'Product Description'),
(60, 'Features', 'Features'),
(61, 'Conditions', 'Conditions'),
(62, 'Return Policy', 'Return Policy'),
(63, 'Reviews', 'Reviews'),
(64, 'Review', 'Review'),
(65, 'Give a Review', 'Give a Review'),
(66, 'Write your comment (Optional)', 'Write your comment (Optional)'),
(67, 'Submit Review', 'Submit Review'),
(68, 'You already have given a rating!', 'You already have given a rating!'),
(69, 'You must have to login to give a review', 'You must have to login to give a review'),
(70, 'No description found', 'No description found'),
(71, 'No feature found', 'No feature found'),
(72, 'No condition found', 'No condition found'),
(73, 'No return policy found', 'No return policy found'),
(74, 'Review not found', 'Review not found'),
(75, 'Customer Name', 'Customer Name'),
(76, 'Comment', 'Comment'),
(77, 'Comments', 'Comments'),
(78, 'Rating', 'Rating'),
(79, 'Previous', 'Previous'),
(80, 'Next', 'Next'),
(81, 'Sub Total', 'Sub Total'),
(82, 'Total', 'Total'),
(83, 'Action', 'Action'),
(84, 'Shipping Cost', 'Shipping Cost'),
(85, 'Continue Shopping', 'Continue Shopping'),
(86, 'Update Billing Address', 'Update Billing Address'),
(87, 'Update Shipping Address', 'Update Shipping Address'),
(88, 'Update Billing and Shipping Info', 'Update Billing and Shipping Info'),
(89, 'Dashboard', 'Dashboard'),
(90, 'Welcome to the Dashboard', 'Welcome to the Dashboard'),
(91, 'Back to Dashboard', 'Back to Dashboard'),
(92, 'Subscribe', 'Subscribe'),
(93, 'Subscribe To Our Newsletter', 'Subscribe To Our Newsletter'),
(94, 'Email Address', 'Email Address'),
(95, 'Enter Your Email Address', 'Enter Your Email Address'),
(96, 'Password', 'Password'),
(97, 'Forget Password', 'Forget Password'),
(98, 'Retype Password', 'Retype Password'),
(99, 'Update Password', 'Update Password'),
(100, 'New Password', 'New Password'),
(101, 'Retype New Password', 'Retype New Password'),
(102, 'Full Name', 'Full Name'),
(103, 'Company Name', 'Company Name'),
(104, 'Phone Number', 'Phone Number'),
(105, 'Address', 'Address'),
(106, 'Country', 'Country'),
(107, 'City', 'City'),
(108, 'State', 'State'),
(109, 'Zip Code', 'Zip Code'),
(110, 'About Us', 'About Us'),
(111, 'Featured Posts', 'Featured Posts'),
(112, 'Popular Posts', 'Popular Posts'),
(113, 'Recent Posts', 'Recent Posts'),
(114, 'Contact Information', 'Contact Information'),
(115, 'Contact Form', 'Contact Form'),
(116, 'Our Office', 'Our Office'),
(117, 'Update Profile', 'Update Profile'),
(118, 'Send Message', 'Send Message'),
(119, 'Message', 'Message'),
(120, 'Find Us On Map', 'Find Us On Map'),
(121, 'Congratulation! Payment is successful.', 'Congratulation! Payment is successful.'),
(122, 'Billing and Shipping Information is updated successfully.', 'Billing and Shipping Information is updated successfully.'),
(123, 'Customer Name can not be empty.', 'Customer Name can not be empty.'),
(124, 'Phone Number can not be empty.', 'Phone Number can not be empty.'),
(125, 'Address can not be empty.', 'Address can not be empty.'),
(126, 'You must have to select a country.', 'You must have to select a country.'),
(127, 'City can not be empty.', 'City can not be empty.'),
(128, 'State can not be empty.', 'State can not be empty.'),
(129, 'Zip Code can not be empty.', 'Zip Code can not be empty.'),
(130, 'Profile Information is updated successfully.', 'Profile Information is updated successfully.'),
(131, 'Email Address can not be empty', 'Email Address can not be empty'),
(132, 'Email and/or Password can not be empty.', 'Email and/or Password can not be empty.'),
(133, 'Email Address does not match.', 'Email Address does not match.'),
(134, 'Email address must be valid.', 'Email address must be valid.'),
(135, 'You email address is not found in our system.', 'You email address is not found in our system.'),
(136, 'Please check your email and confirm your subscription.', 'Please check your email and confirm your subscription.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Your email is verified successfully. You can now login to our website.'),
(138, 'Password can not be empty.', 'Password can not be empty.'),
(139, 'Passwords do not match.', 'Passwords do not match.'),
(140, 'Please enter new and retype passwords.', 'Please enter new and retype passwords.'),
(141, 'Password is updated successfully.', 'Password is updated successfully.'),
(142, 'To reset your password, please click on the link below.', 'To reset your password, please click on the link below.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'The password reset email time (24 hours) has expired. Please again try to reset your password.'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'A confirmation link is sent to your email address. You will get the password reset information in there.'),
(146, 'Password is reset successfully. You can now login.', 'Password is reset successfully. You can now login.'),
(147, 'Email Address Already Exists', 'Email Address Already Exists.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Sorry! Your account is inactive. Please contact to the administrator.'),
(149, 'Change Password', 'Change Password'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Registration Email Confirmation for YOUR WEBSITE.'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Thank you for your registration! Your account has been created. To active your account click on the link below:'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Your registration is completed. Please check your email address to follow the process to confirm your registration.'),
(153, 'No Product Found', 'No Product Found'),
(154, 'Add to Cart', 'Add to Cart'),
(155, 'Related Products', 'Related Products'),
(156, 'See all related products from below', 'See all the related products from below'),
(158, 'test', 'test'),
(157, 'test', 'test'),
(159, 'Price', 'Price'),
(160, 'Please login as customer to checkout', 'Please login as customer to checkout'),
(161, 'Billing Address', 'Billing Address'),
(162, 'Shipping Address', 'Shipping Address'),
(163, 'Rating is Submitted Successfully!', 'Rating is Submitted Successfully!');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(18, 'Hair Care', 7),
(19, 'body care', 7),
(20, 'skin care', 7),
(21, 'make-up', 7),
(22, 'perfume', 7),
(24, 'tablets', 10),
(25, 'injection', 10),
(26, 'syrup', 10),
(27, 'Effervescent granules', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_banner` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_banner` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_banner` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 'About Us', '<p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><br></p>\r\n', 'about-banner.jpg', 'Eagles pharmacy - About Us', '', '', 'FAQ', 'faq-banner.jpg', 'Eagles Pharmacy - FAQ', '', '', 'Blog', 'blog-banner.jpg', 'Ecommerce - Blog', '', '', 'Contact Us', 'contact-banner.jpg', 'Pharmacy - Contact', '', '', 'Photo Gallery', 'pgallery-banner.jpg', 'Ecommerce - Photo Gallery', '', '', 'Video Gallery', 'vgallery-banner.jpg', 'Ecommerce - Video Gallery', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `txnid`, `paid_amount`, `card_number`, `card_cvv`, `card_month`, `card_year`, `bank_transaction_info`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
(64, 15, 'hania', 'hania@gmail.com', '2023-04-26 08:32:39', '', 420, '', '', '', '', '', 'PayPal', 'Completed', 'Completed', '1682523159'),
(65, 15, 'hania', 'hania@gmail.com', '2023-04-26 09:38:31', '', 140, '', '', '', '', '', 'PayPal', 'Completed', 'Completed', '1682527111'),
(66, 15, 'hania', 'hania@gmail.com', '2023-04-27 09:39:56', '', 712, '', '', '', '', '', 'PayPal', 'Completed', 'Completed', '1682613596'),
(67, 15, 'hania', 'hania@gmail.com', '2023-04-27 09:39:59', '', 712, '', '', '', '', '', 'PayPal', 'Completed', 'Completed', '1682613599'),
(68, 15, 'hania', 'hania@gmail.com', '2023-04-27 09:40:08', '', 712, '', '', '', '', 'vfklvfjffjdi', 'Bank Deposit', 'Completed', 'Completed', '1682613608');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_date`, `photo`, `category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Cu vel choro exerci pri et oratio iisque', 'cu-vel-choro-exerci-pri-et-oratio-iisque', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-1.jpg', 3, 14, 'Cu vel choro exerci pri et oratio iisque', '', ''),
(2, 'Epicurei necessitatibus eu facilisi postulant ', 'epicurei-necessitatibus-eu-facilisi-postulant-', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-2.jpg', 3, 6, 'Epicurei necessitatibus eu facilisi postulant ', '', ''),
(3, 'Mei ut errem legimus periculis eos liber', 'mei-ut-errem-legimus-periculis-eos-liber', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-3.jpg', 3, 1, 'Mei ut errem legimus periculis eos liber', '', ''),
(4, 'Id pro unum pertinax oportere vel', 'id-pro-unum-pertinax-oportere-vel', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-4.jpg', 4, 0, 'Id pro unum pertinax oportere vel', '', ''),
(5, 'Tollit cetero cu usu etiam evertitur', 'tollit-cetero-cu-usu-etiam-evertitur', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-5.jpg', 4, 24, 'Tollit cetero cu usu etiam evertitur', '', ''),
(6, 'Omnes ornatus qui et te aeterno', 'omnes-ornatus-qui-et-te-aeterno', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-6.jpg', 4, 2, 'Omnes ornatus qui et te aeterno', '', ''),
(7, 'Vix tale noluisse voluptua ad ne', 'vix-tale-noluisse-voluptua-ad-ne', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-7.jpg', 2, 0, 'Vix tale noluisse voluptua ad ne', '', ''),
(8, 'Liber utroque vim an ne his brute', 'liber-utroque-vim-an-ne-his-brute', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-8.jpg', 2, 12, 'Liber utroque vim an ne his brute', '', ''),
(9, 'Nostrum copiosae argumentum has', 'nostrum-copiosae-argumentum-has', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-9.jpg', 1, 12, 'Nostrum copiosae argumentum has', '', ''),
(10, 'An labores explicari qui eu', 'an-labores-explicari-qui-eu', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-10.jpg', 1, 4, 'An labores explicari qui eu', '', ''),
(11, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-11.jpg', 1, 18, 'Lorem ipsum dolor sit amet', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(118, 'L\'Oreal Paris Elvive Hyaluron Moisture Plump Serum 150ml', '234', '185', 22, 'product-featured-118.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:\"Arial\",sans-serif;mso-fareast-font-family:\r\n\"Times New Roman\";color:#0F1111\">For Dehydrated, Dry Hair<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:\"Arial\",sans-serif;mso-fareast-font-family:\r\n\"Times New Roman\";color:#0F1111\">Powered by 2% Hyaluronic acid for 10x\r\nhydration for your hair and locks in moisture<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:\"Arial\",sans-serif;mso-fareast-font-family:\r\n\"Times New Roman\";color:#0F1111\">Results: Hair feels instantly replumped and\r\nintensely hydrated with shine<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:\"Arial\",sans-serif;mso-fareast-font-family:\r\n\"Times New Roman\";color:#0F1111\">72-hour hydration with no weigh down<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:\"Arial\",sans-serif;mso-fareast-font-family:\r\n\"Times New Roman\";color:#0F1111\">Used after shower or on dry hair for an extra\r\nboost of hydration<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:\"Arial\",sans-serif;mso-fareast-font-family:\r\n\"Times New Roman\";color:#0F1111\">Fresh fragrance combining layers\r\nof bright berries, cherry blossom, sweet vanilla, and sandalwood<o:p></o:p></span></p>', '', '', 0, 1, 1, 80),
(119, 'Vaseline Intensive Care Cocoa Radiant Body Gel Oil', '', '315', 35, 'product-featured-119.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#0F1111\">Capacity: 6.8oz<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#0F1111\">Brand: Vaseline<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#0F1111\">Hygienic packing<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#0F1111\">Formulated with care<o:p></o:p></span></p>', '', '', 0, 0, 1, 81),
(120, 'Starville Roll On Whitening light Pink Free 60 ML', '115', '97', 58, 'product-featured-120.jpeg', '<h1 style=\"margin-top: 0in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Lightening Coconut Scent Roll On for\r\ntreatment,and elimination of dark spots and patches present in the underarm\r\narea.<o:p></o:p></span></p></h1>', '', '', 0, 0, 1, 81),
(121, ' CeraVe, Moisturizing Cream, 16 ounce - 454 g', '', '530', 26, 'product-featured-121.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">ESSENTIAL CERAMIDES: Contains 3 essential\r\nceramides (1, 3, 6 II) to help protect the skin\'s natural barrier<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">ALL DAY HYDRATION: Formulated with patented\r\nMVE Technology to release skin nourishing ingredients for up to 24 hours<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">MOISTURE RETAINING INGREDIENTS: Formulated\r\nwith hyaluronic acid to help retain skin\'s natural moisture<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">GENTLE ON SKIN: Fragrance free and non\r\ncomedogenic<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">FAST ABSORBING: Hydrates Face, Body &amp;\r\nHands without leaving skin feeling greasy<o:p></o:p></span></p>', '', '', 0, 0, 1, 81),
(122, 'Himalaya Purifying Neem Mask - 50 Ml', '', '41', 102, 'product-featured-122.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Brand: Himalaya<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Category Type:<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Manufacturer Number: N/A<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Type: All Skin Type<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Size: 50 ml<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Type: Masks<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Texture: Cream</span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(15, 17, 17); font-family: Arial, sans-serif; font-size: 10.5pt;\">Recommended: Cleaning</span></p>', '', '', 0, 1, 1, 82),
(123, 'Mood 6 Shea Hand Scented Shower Gel Bali 750ml', '', '80', 85, 'product-featured-123.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">MOOD BALI SHOWER GEL 750ML<span class=\"a-size-large\"><o:p></o:p></span></span></p>', '', '', 0, 0, 1, 81),
(124, 'Starville Facial Cleanser Gel Tea Tree Oil Anti-Bacterial - Pack may vary', '141', '129', 15, 'product-featured-124.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Deep, nonabrasive foaming cleanser tested for\r\noily and acne-prone skin Sebum-regulating properties and mattifying effect<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Manufacturer Number: 622400<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Expirable: Yes<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Category Type: Face<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Suitable Skin Type: Oily<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Texture: Gel<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Type: Cleansers<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Brand: Starville<o:p></o:p></span></p>', '', '', 0, 0, 1, 82),
(125, 'Garnier Fast Bright Vitamin C Purifying Gel Wash – 400ml Skin Care', '118', '97', 54, 'product-featured-125.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Boosted by Vitamin C and Lemon Extract<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Oil control and removes 99.9% of bacteria from\r\nthe face<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Instantly Cleanses and Purifies Skin,\r\nrevealing a brighter complexion<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Light gel texture dermatologically tested to\r\nremove excess oil and impurities residues with no dry out<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Dermatologically tested<o:p></o:p></span></p>', '', '', 0, 0, 1, 82),
(126, 'L\'OREAL PARIS Hyaluron Expert Eye Serum with 2.5% Hyaluronic Acid, Caffeine and Niacinamide - 20ml', '395', '255', 62, 'product-featured-126.jpeg', '<h1 style=\"margin: 0in 0in 5pt 0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Deeply moisturizes around the eyes<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Fills all the lines around the eyes<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Re-energizes skin<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Reduces dark circles<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Reduces puffiness<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Reduces wrinkles<o:p></o:p></span></p></h1>', '', '', 0, 0, 1, 82),
(127, 'Neutrogena Cleansing Water Gel, Hydro Boost, Normal to Dry Skin, 200ml', '154', '140', 95, 'product-featured-127.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Non-comedogenic (won’t clog pores) and\r\nnon-greasy<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Paraben free<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Dermatologist tested<o:p></o:p></span></p>', '', '', 0, 0, 1, 82),
(128, ' Eva Skin Care Senses Body Splash - Summer Twist 240 ml', '', '120', 41, 'product-featured-128.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 13.5pt; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#0F1111\">The\r\nsparkling red fruits with a creamy combination of sugary and fluffy scents is\r\nfeminine</span></span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 13.5pt; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#0F1111\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;</span></span><!--[endif]--><span dir=\"LTR\"></span><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#0F1111\">playful\r\nand youthful.</span></span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 13.5pt; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#0F1111\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;</span></span><!--[endif]--><span dir=\"LTR\"></span><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#0F1111\">red\r\nfruits, pineapple, rose, amber and vanilla.</span></span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:22.0pt;font-family:\r\n&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F1111;\r\nmso-font-kerning:18.0pt\">&nbsp;</span></p>', '', '', 0, 0, 1, 82),
(129, 'Care & More Soft Cream With Glycerin 75 ML Strawbery', '', '30', 132, 'product-featured-129.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 13.5pt; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#0F1111\">Face And\r\nBody Cream</span></span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\"><o:p></o:p></span></p>', '', '', 0, 0, 1, 81),
(130, 'Eva Skin Care Moisturizing Shower Cream 250ml', '', '45', 95, 'product-featured-130.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Safe and speedy and stable</span></span><span style=\"font-size:\r\n10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Compact construction</span></span><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Seamless functionality</span></span><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Unparalleled performance</span></span><span style=\"font-size:\r\n10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p>', '', '', 0, 1, 1, 83),
(131, 'La Roche-posay anthelios invisible fluid - 50 ml', '', '679', 5, 'product-featured-131.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Manufacturer Number : 30162662</span></span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Expirable : Yes</span></span><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Category Type : Face</span></span><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Suitable Skin Type : All Skin Type</span></span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Texture : Liquid</span></span><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p>', '', '', 0, 0, 1, 82),
(132, 'LANEIGE LIP SLEEPING Mask (BERRY) 20gm', '', '210', 21, 'product-featured-132.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Are batteries needed to power the product or is this product a\r\nbattery: 0, Is this a Dangerous Good or a Hazardous Material, Substance or\r\nWaste that is regulated for transportation, storage, and/or disposal: 0</span></span><span style=\"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Brand: LANEIGE</span></span><span style=\"font-size:9.0pt;\r\nfont-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Category Type: Lip</span></span><span style=\"font-size:9.0pt;\r\nfont-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Suitable Skin Type: All Skin Type</span></span><span style=\"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Size: 20 grams</span></span><span style=\"font-size:9.0pt;\r\nfont-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p>', '', '', 0, 1, 1, 82),
(133, 'L\'Oreal Paris Hyaluron Expert 24H Replumping Moisturizing Tissue Mask', '55', '32', 68, 'product-featured-133.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 13.5pt; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-family:&quot;Arial&quot;,sans-serif;color:#0F1111\">Replumping\r\nMoisturizing Face Mask 24H With Concentrated Hyaluronic Acid</span></span><span class=\"a-list-item\"><span style=\"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\"><o:p></o:p></span></span></p><p>\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">&nbsp;</span></span></p>', '', '', 0, 0, 1, 82),
(134, 'E Keratin Hair Conditioning Mask, 200 gm', '130', '110', 36, 'product-featured-134.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Helps repairing extremely dry and damaged hair, providing long\r\nlasting moisture, strength, shine and manageable hair.</span></span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p>', '', '', 0, 0, 1, 80),
(135, 'Vatika Naturals Black Seed (Habba Souda) Hair Mask Treatment Cream | For Complete Hair Protection - 250 gm', '30', '22', 59, 'product-featured-135.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">NATURAL INGREDIENTS. Enriched with natural extracts of Black\r\nSeed and other Vatika Oils this cream helps to nourish the hair along with\r\nstyling</span></span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">GOODNESS OF BLACK SEED: An amazing natural ingredient that is\r\nproven to promote hair growth, prevent hair shedding and improve hydration.\r\nBlack seed oil regulates the imbalanced hair growth cycle</span></span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">INSTANT RESTORING MASK: This is the complete hair care for fine\r\nto medium hair reducing hair surface damages and and delivering shinier hair</span></span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">MULTIPLE BENEFITS: Black Seed is thought to naturally restore\r\nhair growth in thinning areas thanks to its high concentration of thymoquinone,\r\na powerful antihistamine</span></span><span style=\"font-size:10.5pt;font-family:\r\n&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">DIRECTIONS OF USE: Spread a small amount on your palm and apply\r\nthe cream on your wet hair starting from the root to the tip. Wrap it in a hot\r\ntowel and leave it for 10-15 min. Rinse thoroughly</span></span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p>', '', '', 0, 0, 1, 80),
(136, 'L\'Oreal Paris Pure Clay Mask - Charcoal, Detoxifies and Clarifies, 50ml', '186', '225', 86, 'product-featured-136.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:18.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Face mask with 3 pure clays and seaweed is best for skin with\r\nredness and imperfections get up to 10 uses from one jar</span></span><span style=\"font-size:18.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:18.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Pure clay face mask is formulated with vitamin and mineral rich\r\nseaweed that is sourced from the riches of the sea in france and is known for\r\nits soothing and comforting properties</span></span><span style=\"font-size:\r\n18.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:18.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Immediately skin feels refreshed and comfortable dirt dust and\r\noil are gently lifted from the skin is clean and appears rebalanced and skin\r\nlooks smoother</span></span><span style=\"font-size:18.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\"><o:p></o:p></span></p>', '', '', 0, 0, 1, 82),
(137, 'BATH & BODY MIST JAPANESE CHERRY BLOSSOM 236ML', '675', '295', 135, 'product-featured-137.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:\"Arial\",sans-serif;\r\ncolor:#0F1111\">BATH & BODY MIST JAPANESE CHERRY BLOSSOM 236ML</span></span><span style=\"font-size:10.5pt;font-family:\"Arial\",sans-serif;color:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:\"Arial\",sans-serif;\r\ncolor:#0F1111\">BRAND: Bath & Body Works</span></span><span style=\"font-size:10.5pt;font-family:\"Arial\",sans-serif;color:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:\"Arial\",sans-serif;\r\ncolor:#0F1111\">gl_beauty</span></span><span style=\"font-size:10.5pt;font-family:\r\n\"Arial\",sans-serif;color:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:\"Arial\",sans-serif;\r\ncolor:#0F1111\">PERSONAL_FRAGRANCE</span></span><span style=\"font-size:10.5pt;\r\nfont-family:\"Arial\",sans-serif;color:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:16.0pt;font-family:\"Arial\",sans-serif;\r\ncolor:#0F1111\"> </span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<span style=\"font-size:16.0pt;line-height:107%;font-family:\"Arial\",sans-serif;\r\nmso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;color:#0F1111;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\"><br clear=\"all\" style=\"mso-special-character:line-break;page-break-before:always\">\r\n</span>\r\n\r\n</p><p class=\"MsoNormal\"><span style=\"font-size:16.0pt;line-height:107%;font-family:\r\n\"Arial\",sans-serif;color:#0F1111\"> </span></p>', '', '', 0, 1, 1, 81),
(138, 'Bath & Body Works Japanese Cherry Blossom Super Smooth Body Lotion, 236 ml', '250', '480', 52, 'product-featured-138.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">natural product</span></span><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p>', '', '', 0, 0, 1, 81);
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(139, 'Garnier Micellar Water Face Cleanser & Daily Make-up Remover - 400ml', '180', '124', 36, 'product-featured-139.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">MAKEUP REMOVER + CLEANSER. Soothes with one\r\ncotton pad<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Number 1 MICELLAR Brand Worldwide *No rubbing\r\nneeded.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Hypoallergenic formula<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">No perfume; No alcohol<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111\">Suitable for face, eyes &amp; lips<o:p></o:p></span></p>', '', '', 0, 0, 1, 83),
(140, 'Eva Skin Care Cleansing & Makeup Remover Facial Wipes For Normal/Dry Skin 20%', '', '45', 28, 'product-featured-140.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">wipes</span></span><span style=\"font-size:10.5pt;font-family:\r\n&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Eva Skin Care Cleansing &amp; Makeup Remover Facial Wipes For\r\nNormal/Dry Skin 20%</span></span><span style=\"font-size:10.5pt;font-family:\r\n&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">product_type: SKIN_CLEANING_WIPE</span></span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">gl_product_group_type: gl_beauty</span></span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">ASIN: B0BN469HL9</span></span><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p>', '', '', 0, 0, 1, 83),
(141, 'Makeup Remover Cloth, 3 Pieces Reusable & Washable Facial Cleansing Puff, Chemical-Free Double-Sided Soft Microfibre Removal Pads - Immediately with Just Water', '', '174', 54, 'product-featured-141.jpeg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Washable and reusable: the face cleansing puffs are washable and\r\nreusable, ideal alternative to disposable cotton pads, as they are durable,\r\nenvironmentally friendly and resource-friendly</span></span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Ultra soft texture: reusable make-up remover pads are made of\r\npremium organic cotton fabric, so you deserve the softest touch and feel your\r\nskin</span></span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Widely used: the make-up remover cloth can not only be used to\r\nremove facial foundation, eye shadow, mascara, eyeliner, lipstick and much\r\nmore, but also helps to remove dirt, oil, dead skin and make-up rest ice deep\r\nin your pores</span></span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\"><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt -4.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"a-list-item\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#0F1111\">Friendly to all coats: the magical make-up removal pads are\r\nsuitable for all skin types, including sensitive skin, dry or oily skin and\r\ndelicate eye contour surface</span></span><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Arial&quot;,sans-serif;color:#0F1111\"><o:p></o:p></span></p>', '', '', 0, 0, 1, 83),
(142, 'si', '4300', '4150', 25, 'product-featured-142.jpeg', '<p>Brand Giorgio Armani</p><p>Item form Aerosol</p><p>Item volume 3.4</p><p>Scent Fresh, Fruity, Grapefruit, Floral, Cedar&nbsp;</p><p>Special features Travel Size</p><p>Age range (description) Adult</p><p>Style Modern</p><p>Material features Natural</p><p>Item weight 439 Grams</p>', '', '', 0, 1, 1, 85),
(143, 'coco chanel', '5500', '5150', 20, 'product-featured-143.jpeg', '<p>Brand</p><p>Chanel</p><p>Item form</p><p>Liquid</p><p>Item volume</p><p>100 Milliliters</p><p>Scent</p><p>Floral</p><p>Special features</p><p>Zitrus</p><p>Age range (description)</p><p>Adult</p><p>Style</p><p>Modern</p><p>Material features</p><p>Organic</p><p>Item weight</p><p>100 Grams</p><p>Number of Items</p><p>1</p>', '', '', 0, 1, 1, 85),
(144, 'sauvage', '5250', '5000', 31, 'product-featured-144.jpeg', '<p>Brand Dior</p><p>Item form Aerosol</p><p>Item volume 100 Milliliters</p><p>Scent Aromatic</p><p>Special features Travel Size</p><p>Age range (description) Adult</p><p>Style Modern</p><p>Material features Natural</p><p>Item weight 50 Grams</p>', '', '', 0, 1, 1, 84),
(145, 'one million', '4900', '4700', 6, 'product-featured-145.jpeg', '<p>Brand Paco Rabanne</p><p>Item form Liquid</p><p>Item volume 100 Milliliters</p><p>Scent Fruity</p><p>Special features Travel Size</p><p>Age range (description) Adult</p><p>Style Modern</p><p>Number of Items 1</p><p>Unit count 100 mililitre</p>', '', '', 0, 1, 1, 84),
(146, 'Avene Gel Cleansing 200 ml ', '', '228', 36, 'product-featured-146.png', '<p class=\"MsoListParagraph\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Soap-free cleanser for face and body harnesses a\r\npowerful combination of ingredients that gently eliminate dirt, oil and other\r\nimpurities without stripping the skin. * Gently removes impurities and excess\r\noil while respecting the skin\'s natural balance and pH. * For face and body.<o:p></o:p></span></p>', '', '', 0, 0, 1, 82),
(147, 'Bioderma Sebium Foaming Gel 500 ml', '', '320', 12, 'product-featured-147.png', '<p class=\"MsoListParagraph\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Sébium Foaming Gel gently cleanses and purifies\r\nthe skin without drying it : containing zinc and copper sulphates, it cleanses\r\nthe epidermis, reduces the appearance of irregularities, and absorbs excess of\r\nsebum.<o:p></o:p></span></p>', '', '', 0, 0, 1, 82),
(148, 'La Roche-Posay Effaclar Acne Foaming Cleansing Gel for Oily and Acne Prone Skin 200ml', '', '290', 56, 'product-featured-148.png', '<p class=\"MsoListParagraph\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Specifically formulated facial wash for oily|\r\nsensitive| blemish-prone skin. * Gently cleanses the skin thanks to its high\r\ntolerance foaming power. * Lifts dirt| grime, and sebum away from the surface\r\nof the skin without disrupting its delicate balance leaves<o:p></o:p></span></p>', '', '', 0, 0, 1, 82),
(149, 'Cetaphil Moisturizing Cream Face & Body 100 Gm', '', '700', 45, 'product-featured-149.jpg', '<p class=\"MsoListParagraph\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Cetaphil Moisturizing Cream is a rich| non-greasy\r\nmoisturizer that provides immediate| long-lasting relief for even severely dry\r\nskin. * It contains a superior system of extra-strength emollients and\r\nhumectants proven to bind water to the skin and prevent moisture loss for intense\r\nmoisturization with 24 hour hydration. * Ideal for areas that require extra\r\nattention| such as hands| elbows and feet.<o:p></o:p></span></p>', '', '', 0, 1, 1, 86),
(150, 'Neutrogena Hydro Boost Moisturizer Water Gel 50 Ml', '', '340', 52, 'product-featured-150.jpg', '<p class=\"MsoListParagraphCxSpFirst\"><b><span style=\"font-family: \"Segoe UI\", sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"> </span></b></p><p class=\"MsoListParagraphCxSpMiddle\"><span style=\"font-family: \"Segoe UI\", sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Forget moisturizing, start thinking hydration!\r\nHydration is the foundation of healthy looking skin. But factors such as lack\r\nof sleep, stress and not drinking enough water can lead to dehydrated, dull and\r\ntired-looking skin. Neutrogena Hydro Boost Water Gel quenches dry skin and\r\nkeeps it looking smooth and so supple that your skin bounces back. The\r\naward-winning and best-selling water gel formula absorbs quickly and instantly\r\ndelivers intense hydration. How does it work? First, Neutrogena Hydro Boost\r\nWater Gel replenishes skin with a pure boost of hydration. It contains\r\nhyaluronic acid, which is naturally found in the skin and acts as a sponge,\r\nabsorbing up to 1,000 times its weight in water. The formula then creates a\r\nreservoir which continuously releases hydration throughout the day. Neutrogena\r\nHydro Boost Water Gel strengthens the skin’s moisture barrier using a glycerin\r\nand olive extract, and prevents excessive moisture loss. It is oil-free,\r\nnon-comedogenic (doesn’t clog your pores), and is suitable even for sensitive\r\nskin. Get intense hydration with Neutrogena Hydro Boost Water Gel!<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n</p><p class=\"MsoListParagraphCxSpLast\"><span style=\"font-family: \"Segoe UI\", sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"> </span></p>', '', '', 0, 0, 1, 82),
(151, '•	Raw African | Follicle Booster Oil | Hair Growth| For Hair and Beard| Scalp Treatment | Pure Natural Oils |Lightweight Oil | Easy Application | Cruelty Free | Rosemary | Flaxseed | 100ml', '', '200', 86, 'product-featured-151.jpg', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 13.5pt; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#0F1111\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span dir=\"LTR\"></span><span style=\"font-size:\r\n10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#0F1111\">PREVENTS HAIR LOSS: A 100% natural solution that contains a\r\npowerful combination of oils to boost hair development, nourish the scalp, as\r\nwell as reinforce and strengthen thinning hair.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 13.5pt; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#0F1111\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span dir=\"LTR\"></span><span style=\"font-size:\r\n10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#0F1111\">PURE AND NATURAL: Formulated with a blend of natural oils,\r\nincluding flaxseed oil, rosemary oil, sweet almond oil, and castor oil.\r\nSulphate and paraben free.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 13.5pt; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#0F1111\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span dir=\"LTR\"></span><span style=\"font-size:\r\n10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#0F1111\">USAGE: For better results, massage a small amount into the\r\nscalp, then cover with a hair cap for 2 hours or spend 30 minutes in a\r\nsteam-filled room.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 13.5pt; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#0F1111\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span dir=\"LTR\"></span><span style=\"font-size:\r\n10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#0F1111\">USAGE: For better results, massage a small amount into the\r\nscalp, then cover with a hair cap for 2 hours or spend 30 minutes in a\r\nsteam-filled room.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 13.5pt; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#0F1111\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span dir=\"LTR\"></span><span style=\"font-size:\r\n10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#0F1111\">THICKER-LOOKING HAIR: Stimulates hair and beard growth.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 13.5pt; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#0F1111\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span dir=\"LTR\"></span><span style=\"font-size:\r\n10.5pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#0F1111\">CRUELTY-FREE: This product does not include animal products and\r\nis not tested on animals.<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoListParagraph\" style=\"margin-left: 1in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-size:14.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F1111;mso-font-kerning:18.0pt\">&nbsp;</span></b></p>', '', '', 0, 0, 1, 80),
(152, 'Loreal Hyaluron Expert Day 50ml', '', '290', 85, 'product-featured-152.jpg', '<p class=\"MsoListParagraph\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;Replumping\r\nMoistuizing Day Cream 1. Smooths Fine Lines 2. Intensively Hydrates 3. Day SPF\r\n20 From Science To Beauty For Over 30 Years, L\'Oréal Paris Laboratories Have\r\nBeen At The Forefront Of Major Scientific Innovations, Constantly Improving\r\nEfficacy So Every Woman Can Look Best For Her Age. L\'Oréal Laboratories Develop\r\nClinically Proven Formulas In Collaboration With Dermatologists Worldwide. For\r\nThe Best Results: Use Together With The Other Products From Hyaluron Expert\r\nRange: A Replumping Moisturizing Night Cream Mask To Smooth &amp; Nourish Skin,\r\nAnd A Replumping Moisturizing Eye Cream For The Eye Zone.<o:p></o:p></span></p>', '', '', 0, 0, 1, 82),
(153, 'Bioderma Sensibio Eye Contour 15ml 12', '', '400', 25, 'product-featured-153.jpg', '<p class=\"MsoListParagraph\"><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Sensibio Eye\r\ninstantly soothes sensations of discomfort and irritation in the eye area,\r\nbiologically strengthens the skin\'s resistance to attacks and increases the\r\ntolerance threshold of sensitive skin. * Soothing eye contour gel that\r\ninstantly reduces the appearance of puffiness by providing soothing comfort<o:p></o:p></span></p>', '', '', 0, 0, 1, 82),
(154, 'Avene Thermal Water Spray 300 ml', '', '570', 30, 'product-featured-154.jpg', '<p class=\"MsoListParagraphCxSpFirst\"><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">unique\r\nthermal water spray us bottled directly at the source and packaged in a sterile\r\nenvironment for guaranteed purity. * Its composition is clinically shown to\r\nsoothe, soften and calm sensitive skin.<o:p></o:p></span></p><p>\r\n\r\n</p><p class=\"MsoListParagraphCxSpLast\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;</span></p>', '', '', 0, 0, 1, 82),
(155, 'Revolution Skincare Dark Sport Concealer 30ml', '', '670', 12, 'product-featured-155.jpg', '<p class=\"MsoListParagraph\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Correct and clarify with our Dark Spot Corrector\r\nSerum. This hero product improves the look of uneven skin tones. Formulated\r\nwith Vitamin C to help brighten skin, Niacinamide to target blemishes and\r\npores, and Ferulic Acid to help regenerate skin and improve the efficiency of\r\nVitamin C.<o:p></o:p></span></p>', '', '', 0, 1, 1, 82),
(156, 'Nuxe Bio Organic Micro Exfoliating Mask 50Ml', '', '800', 15, 'product-featured-156.jpeg', '<p class=\"MsoListParagraph\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">This organic face mask detoxifies skin for a\r\nradiant complexion thanks to a formula with sesame oil and citrus extract. *\r\nCitrus-scented jalsi transforms into oil, then milk that can be rinsed off in\r\nthe blink of an eye to reveal fresh, radiant skin.<o:p></o:p></span></p>', '', '', 0, 0, 1, 82),
(157, 'Avene Sunscreen Fluide Spf 50 Sensitive Skin 50 ml', '', '760', 28, 'product-featured-157.jpg', '<p class=\"MsoListParagraphCxSpFirst\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">unscreen, very high protection for sensitive\r\nskin. * Effective against all sun radiation (short and long UVB-UVA). *\r\nStrengths: Ideal balance between pleasure and security. * 98% protection in\r\n4hrs.<o:p></o:p></span></p><p>\r\n\r\n</p><p class=\"MsoListParagraphCxSpLast\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;</span></p>', '', '', 0, 0, 1, 82),
(158, 'Maybelline Baby Skin Pore Eraser- Transparent', '', '350', 74, 'product-featured-158.jpg', '<p class=\"MsoListParagraph\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">This makeup primer leaves skin with a baby smooth\r\nand matte finish. Moisturizes all day.<o:p></o:p></span></p>', '', '', 0, 0, 1, 83),
(159, 'Essence The Blush 40- Pink', '', '150', 60, 'product-featured-159.jpeg', '<p class=\"MsoListParagraph\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">The successor of the popular blush is even\r\nsofter. * The pressed powder texture is pleasant to wear, highly-pigmented and\r\neasy to blend. * With five matt.<o:p></o:p></span></p>', '', '', 0, 0, 1, 83),
(160, 'Essence Fix And Last 18h Make-Up Fixer.', '', '180', 40, 'product-featured-160.jpg', '<p class=\"MsoListParagraph\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">A fantastic setting spray with cucumber extract.\r\nProtects and maintains makeup for up to 18 hours, mattifying to achieve a\r\nnatural finish. Its waterproof formula absorbs quickly, does not contain\r\nalcohol and is gentle on the skin.<o:p></o:p></span></p>', '', '', 0, 0, 1, 83),
(161, 'Bourjois Healthy Mix Foundation 052- Nude', '', '220', 44, 'product-featured-161.jpg', '<p class=\"MsoListParagraph\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">• Bourjois Healthy Mix Anti-Fatigue Foundation\r\ngives you a rested, natural glow that will make your skin look healthy. * With\r\nits blend of vitamins C, E and B5, it instantly erases imperfections and signs\r\nof fatigue as well as boosts skin radiance for a fresh looking complexion. *\r\nYour skin will be 70% more radiant than bare skin for up to 16 hours and will\r\nstay hydrated for up to 24 hours Moreover, thanks to non-comedogenic formula it\r\nwill not block your pores. * So, when you need beauty sleep results without the\r\nbeauty sleep itself, boost your complexion with Healthy Mix Anti-Fatigue\r\nFoundation. * Its melting texture blends perfectly into the skin and stays\r\ncomfortable all day. * The medium buildable coverage gives a natural semi-matte\r\nfinish immediately after application. * Healthy Mix Anti-Fatigue Foundation\r\nfrom Bourjois is your new secret weapon to always look fresh and radiant.<o:p></o:p></span></p>', '', '', 0, 0, 1, 83),
(162, 'Essence This Is Me. Lipstick 02- Nude', '', '120', 66, 'product-featured-162.jpeg', '<p class=\"MsoListParagraph\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">The search for the perfect nude lipstick is\r\nover! With its 20 flattering nude shades. * The new this is me! range is sure\r\nto offer the right color for your lips - no matter whether your skin tone is\r\nlight, medium, tanned or dark. * The semi-matt texture feels feathery and light\r\non the lips, is long-lasting and has a high coverage. * Combined with the nail\r\npolishes from the this is me! range, your lips and nails create a perfect\r\nbeauty match * to complete your make-up look.<o:p></o:p></span></p>', '', '', 0, 0, 1, 83),
(163, 'Moodmatcher Laquer Glosses Barely Exposed- Nude', '', '349', 33, 'product-featured-163.jpeg', '<p class=\"MsoListParagraph\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">The search for the perfect nude lipstick is over!\r\nWith its 20 flattering nude shades. * The new this is me! range is sure to\r\noffer the right color for your lips - no matter whether your skin tone is\r\nlight, medium, tanned or dark. * The semi-matt texture feels feathery and light\r\non the lips, is long-lasting and has a high coverage. * Combined with the nail\r\npolishes from the this is me! range, your lips and nails create a perfect\r\nbeauty match * to complete your make-up look.<o:p></o:p></span></p>', '', '', 0, 0, 1, 83),
(164, 'Makeup Revolution Ultra Blush Palette- Multicolors', '', '570', 22, 'product-featured-164.jpg', '<p class=\"MsoListParagraph\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Accentuated cheekbone structure and a plum red\r\nglow are a must for any basic makeup look. * With 8 unique shades, The Makeup\r\nRevolution Ultra Blush Palette Hot Spice gives you the professional that look\r\nyou have always desired. * All these eight unique and premium-quality shades\r\nfound in one blush palette make it the customers’ favorite by default. * This\r\nuser-friendly blush can also do the job of contouring and get you a\r\nwell-defined sculpted face with a touch of elegance. * If you are a lover of\r\ncolors, then play your way through with this all-new bouncy blush.<o:p></o:p></span></p>', '', '', 0, 0, 1, 83),
(165, 'Essence Skin Lovin\' Sensitive Concealer 3.5 ml, 20 Medium', '', '250', 50, 'product-featured-165.jpeg', '<p class=\"MsoListParagraph\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Lotion Color 20 Medium Skin type Normal Finish\r\ntype Natural Recommended uses for product Redness Material type free Fragrance\r\nFree Package information Tube Brand Essence Coverage Full Product benefits\r\nAnti-Redness<o:p></o:p></span></p>', '', '', 0, 0, 1, 83),
(166, 'Benefit BADgal BANG! Volumizing Mascara', '', '1150', 20, 'product-featured-166.jpeg', '<p class=\"MsoListParagraphCxSpFirst\"><strong><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-weight: normal;\">Get FULL-BLAST volume!</span></strong><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"> Using quick strokes, wiggle the brush from base\r\nof lashes to tip. Layer to build volume &amp; coat every lash. For the biggest\r\nBANG, apply to upper AND lower lashes. <strong><span style=\"font-weight: normal;\">BADgal BANG!</span></strong> creates massive volume. The\r\ngravity-defying formula builds volume the more you layer, and contains\r\naero-particles.&nbsp;One of the lightest materials from space technology. Its\r\ncustom Big Slimpact! Brush is designed to reach every lash for big volume with\r\n360-degree reach.<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;</span></p><p>\r\n\r\n\r\n\r\n</p><p class=\"MsoListParagraphCxSpLast\"><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;</span></p>', '', '', 0, 0, 1, 83),
(167, 'Panadol advance 24 tablets ', '', '22', 100, 'product-featured-167.jpg', '<p class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-size:14.0pt;\r\nfont-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#444444\">&nbsp;</span></b></p><ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"color: rgb(68, 68, 68); line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:12.0pt;\r\n     font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">??????:\r\n     ???? ?????? ???? ??? ?? ?????? ?? ???? ?? ???? ?? ?? ??? ?? ?????? ?? ???\r\n     ????? ?????? ?? ?? ???? ???? ???. ?? ???? ?????? ????? ??? ???????? ??\r\n     ?????? ????????? ?? ???? ???? ?? ?????? ???? ???: ?????? ??????? ?? ??????\r\n     ??? ????? ?? ?????? ?? ????????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(68, 68, 68); line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\">&nbsp;<span lang=\"AR-SA\" dir=\"RTL\">????\r\n     ?????? ???????</span><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(68, 68, 68); line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:12.0pt;\r\n     font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">????\r\n     ?????</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(68, 68, 68); line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:12.0pt;\r\n     font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">????\r\n     ?????????? (???? ???????)</span><span style=\"font-size:12.0pt;font-family:\r\n     &quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(68, 68, 68); line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\">&nbsp;<span lang=\"AR-SA\" dir=\"RTL\">?????\r\n     ????? ???????????</span><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(68, 68, 68); line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:12.0pt;\r\n     font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">??????\r\n     ?????</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(68, 68, 68); line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:12.0pt;\r\n     font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">????\r\n     ????? ?? ?????? ???????</span><span style=\"font-size:12.0pt;font-family:\r\n     &quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(68, 68, 68); line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:12.0pt;\r\n     font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">????\r\n     ???????</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(68, 68, 68); line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:12.0pt;\r\n     font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">???\r\n     ???????</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n</ul><p>\r\n\r\n\r\n\r\n<span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:12.0pt;line-height:107%;font-family:\r\n&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#444444;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">???:\r\n????? ???? ????? ?? ??? ????? ??? ???? ?????? ?? ?? ?????? ??? ???? ?????\r\n??????? ?????? ?? ????? ??????? ?????? ??????? ????? ????????? ????? ?? ???? ???????\r\n???? ????? ????? ???????</span><span lang=\"AR-EG\" dir=\"RTL\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#444444;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:\r\nAR-EG\">?</span><br></p>', '', '', 0, 0, 1, 87),
(168, 'Doliprane 1000 mg – 15 tablets ', '', '24', 80, 'product-featured-168.jpg', '<div style=\"border-top: none; border-right: none; border-left: none; border-image: initial; border-bottom: 1pt solid windowtext; padding: 0in 0in 1pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-left: 0.5in; margin-right: 0in;\">\r\n\r\n<p class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: none; padding: 0in;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">????\r\n?????? ?????? ???? ???? ????? ????? ????? ????? ???????????</span><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#444444\"><o:p></o:p></span></p>\r\n\r\n</div>', '', '', 0, 0, 1, 87),
(169, 'Amigrawest', '', '24', 90, 'product-featured-169.jpg', '<p>?????????? ????? ????? ?????? ?????? ??? ????? ??? ???? ????? ???? ???????????? ??? ?????? ???? ??? ???????? ??????????? ???????? ????? ??? ?????? ??????? ??????? ?? ?????? ???????? ?? ????? ?? ?????? ??????? ?? ???? ???? ?????? ?????? ?? ???? ???? ?????? ????? ???? ???<br></p>', '', '', 0, 0, 1, 87);
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(170, 'Adol 500 mg- 24 tablets ', '', '24', 60, 'product-featured-170.jpg', '<ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"color: rgb(68, 68, 68); line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:14.0pt;\r\n     font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">??????:\r\n     ???? ?????? ???? ??? ?? ?????? ?? ???? ?? ???? ?? ?? ??? ?? ?????? ?? ???\r\n     ????? ?????? ?? ?? ???? ???? ???. ?? ???? ?????? ????? ??? ???????? ??\r\n     ?????? ????????? ?? ???? ???? ?? ?????? ???? ???: ?????? ??????? ?? ??????\r\n     ??? ????? ?? ?????? ?? ????????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-size:14.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(68, 68, 68); line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:14.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\">&nbsp;<span lang=\"AR-SA\" dir=\"RTL\">????\r\n     ?????? ???????</span><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(68, 68, 68); line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:14.0pt;\r\n     font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">????\r\n     ?????</span><span style=\"font-size:14.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(68, 68, 68); line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:14.0pt;\r\n     font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">????\r\n     ?????????? (???? ???????)</span><span style=\"font-size:14.0pt;font-family:\r\n     &quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(68, 68, 68); line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:14.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\">&nbsp;<span lang=\"AR-SA\" dir=\"RTL\">?????\r\n     ????? ???????????</span><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(68, 68, 68); line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:14.0pt;\r\n     font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">??????\r\n     ?????</span><span style=\"font-size:14.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(68, 68, 68); line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:14.0pt;\r\n     font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">????\r\n     ????? ?? ?????? ???????</span><span style=\"font-size:14.0pt;font-family:\r\n     &quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(68, 68, 68); line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:14.0pt;\r\n     font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">????\r\n     ???????</span><span style=\"font-size:14.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(68, 68, 68); line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:14.0pt;\r\n     font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">???\r\n     ???????</span><span style=\"font-size:14.0pt;font-family:&quot;Arial&quot;,sans-serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n</ul><p>\r\n\r\n<span lang=\"AR-SA\" dir=\"RTL\" style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#444444;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">???:\r\n????? ???? ????? ?? ??? ????? ??? ???? ?????? ?? ?? ?????? ??? ???? ?????\r\n??????? ?????? ?? ????? ??????? ?????? ??????? ????? ????????? ????? ?? ????\r\n??????? ???? ????? ????? ????????</span><br></p>', '', '', 0, 0, 1, 87),
(171, 'Digoxin', '', '16.80', 36, 'product-featured-171.jpeg', '<div style=\"border-top: none; border-right: none; border-left: none; border-image: initial; border-bottom: 1pt solid windowtext; padding: 0in 0in 1pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-left: 0.5in; margin-right: 0in;\">\r\n\r\n<p class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: none; padding: 0in;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">????\r\n???? ???????? ????? ?????? ?? ???? ??? ???? ?????? ????? ?????? ??????? ???\r\n????? ??? ?????? ?????? ?????? ???????? ???? ???? ?????? ?? ???? ???????? ??\r\n???????? ???? ??? ???????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>. <span lang=\"AR-SA\" dir=\"RTL\" style=\"\">??????? ????????\r\n?? ????????? ?????? ???????? ???</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>: - <span lang=\"AR-SA\" dir=\"RTL\" style=\"\">????????:\r\n????? 0.25 ??? / ????? 0.5 ??? ??6 ??????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>. - <span lang=\"AR-SA\" dir=\"RTL\" style=\"\">????????: ????? / ????? 0.25 ??? ??14.5 ??????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></p>\r\n\r\n</div>', '', '', 0, 0, 1, 91),
(172, 'Dobutamine', '', '170', 56, 'product-featured-172.jpeg', '<div style=\"mso-element:para-border-div;border:none;border-bottom:solid windowtext 1.0pt;\r\nmso-border-bottom-alt:solid windowtext .5pt;padding:0in 0in 1.0pt 0in;\r\nbackground:#F4F4F5;margin-left:-2.25pt;margin-right:0in\">\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 3pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: none; padding: 0in;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\">?? ??????? ??????? ?? ????\r\n??????? ???????? ??? ???? ??????? ????? ??? ????? ???????? ???????? ?? ??????\r\n??? ???? ??? ????? ?? ????? ????????? ???? ???? ??? ?????? ??? ???? ???????\r\n???????? ???? ?????????? ?? ?????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background: white;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>. <span lang=\"AR-SA\" dir=\"RTL\">????? ?????????\r\n????? ?? ????????? ??? ??? ????? ????? ??????? ?????? 12.5 ??? / ?? ???? 170\r\n????</span></span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></p>\r\n\r\n</div>', '', '', 0, 0, 1, 91),
(173, 'Carvedilol', '', '42', 85, 'product-featured-173.jpeg', '<div style=\"border-top: none; border-right: none; border-left: none; border-image: initial; border-bottom: 1pt solid windowtext; padding: 0in 0in 1pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-left: 0.5in; margin-right: 0in;\">\r\n\r\n<p class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: none; padding: 0in;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">??????\r\n???? ?????????? ?? ???? ??? ???? ????? ??????? ??? ???? ??????? ???????? ??????\r\n?????? ??????? ??? 3 ?????? ????? ?? ???? ??? 30 ????? ?????? 25 ??? ???? 42\r\n??????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>. <span lang=\"AR-SA\" dir=\"RTL\">???? ?? ??? ?????? ????? ??????????\r\n?? ????????? ????? ???????? ????? ??????????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span> Procoralan<span dir=\"RTL\"></span><span dir=\"RTL\"></span><span lang=\"AR-SA\" dir=\"RTL\"><span dir=\"RTL\"></span><span dir=\"RTL\"></span>? ??????? ???????? 5 / 7.5 ??? ???? 196 ????</span></span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#444444\"><o:p></o:p></span></p>\r\n\r\n</div>', '', '', 0, 0, 1, 91),
(174, 'Catafast 50mg – 9 sachets', '', '46.5', 86, 'product-featured-174.jpeg', '<div style=\"border-top: none; border-right: none; border-left: none; border-image: initial; border-bottom: 1pt solid windowtext; padding: 0in 0in 1pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-left: 0.5in; margin-right: 0in;\">\r\n\r\n<p class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: none; padding: 0in;\"><span lang=\"AR-SA\" dir=\"RTL\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">??? ????\r\n??????? ???? ??? ????? ????? ? ????? ?????????? ??? ?????? ??????? ??????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span> : <span lang=\"AR-SA\" dir=\"RTL\">???? ????? ??????? ? ????? ???? ??????? ????? ? ?????? ???\r\n???????? ???????? ???? ????? ?????????? ?????? ?????? ???? ????? ? ??????? ????\r\n?????????? ?????? ??????? ???????????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>. <span lang=\"AR-SA\" dir=\"RTL\">????? ??????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.\r\n<span lang=\"AR-SA\" dir=\"RTL\">???? ?????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>. <span lang=\"AR-SA\" dir=\"RTL\">????? ??????\r\n??????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>. <span lang=\"AR-SA\" dir=\"RTL\">???? ???????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>. <span lang=\"AR-SA\" dir=\"RTL\">???????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>. <span lang=\"AR-SA\" dir=\"RTL\">?????? ???????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>. <span lang=\"AR-SA\" dir=\"RTL\">???? ??????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\"></span>. <span lang=\"AR-SA\" dir=\"RTL\">?????? ?????<o:p></o:p></span></span></p>\r\n\r\n</div>', '', '', 0, 0, 1, 94),
(175, 'Novalgin ??? ???? ????? | 2?? | 3 ???????', '', '20.25', 38, 'product-featured-175.jpeg', '<p class=\"MsoNormal\" dir=\"RTL\" style=\"margin-right:-13.5pt;text-align:justify;\r\ndirection:rtl;unicode-bidi:embed\"><b><span dir=\"LTR\" style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p>&nbsp;</o:p></span></b></p><p>\r\n\r\n</p><div style=\"mso-element:para-border-div;border:none;border-bottom:solid windowtext 1.0pt;\r\nmso-border-bottom-alt:solid windowtext .5pt;padding:0in 0in 1.0pt 0in;\r\nmargin-right:-13.5pt;margin-left:0in\">\r\n\r\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align:justify;direction:rtl;unicode-bidi:\r\nembed;border:none;mso-border-bottom-alt:solid windowtext .5pt;padding:0in;\r\nmso-padding-alt:0in 0in 1.0pt 0in\"><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">??????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span> novalgin oblong </span><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">??</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span> : </span><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">???? ????? ?????? ?? ??? ??????? ?????? ???? ??????? ???? ??????? ????\r\n??????? ????? ????? ?????? ??? ???????? ???????? ???????? ?????</span><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p>\r\n\r\n</div>', '', '', 0, 0, 1, 95),
(176, 'Rennie ????? ????? ??????? ?????????', '', '14.40', 67, 'product-featured-176.jpeg', '<p class=\"MsoNormal\" dir=\"RTL\" style=\"margin-right:-13.5pt;text-align:justify;\r\ndirection:rtl;unicode-bidi:embed\"><b><span dir=\"LTR\" style=\"font-size:20.0pt;\r\nline-height:107%\"><o:p>&nbsp;</o:p></span></b></p><p>\r\n\r\n</p><div style=\"mso-element:para-border-div;border:none;border-bottom:solid windowtext 1.0pt;\r\nmso-border-bottom-alt:solid windowtext .5pt;padding:0in 0in 1.0pt 0in;\r\nmargin-right:-13.5pt;margin-left:0in\">\r\n\r\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align:justify;direction:rtl;unicode-bidi:\r\nembed;border:none;mso-border-bottom-alt:solid windowtext .5pt;padding:0in;\r\nmso-padding-alt:0in 0in 1.0pt 0in\"><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">????? ??? ?????? ??????? : ??????? ????????? ?\r\n??????? ??????????? ???? ???? ??? ?????? ??? ??????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>. </span><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">?????? ???????? ?? ?????? ??</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span> : </span><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">?????\r\n??? ????? ?? ?????? ????? ????? ? ????? ???????? ??? ???? ????? ?? ?????? ????\r\n?????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>. ” </span><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">?? ???\r\n????? ???? ?? 10 ????? ?? ?????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span> “.<o:p></o:p></span></p>\r\n\r\n</div>', '', '', 0, 0, 1, 93),
(177, 'Contorloc ', '', '112.5', 60, 'product-featured-177.jpeg', '<div style=\"mso-element:para-border-div;border:none;border-bottom:solid windowtext 1.0pt;\r\nmso-border-bottom-alt:solid windowtext .5pt;padding:0in 0in 1.0pt 0in;\r\nmargin-right:-13.5pt;margin-left:0in\">\r\n\r\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align:justify;direction:rtl;unicode-bidi:\r\nembed;border:none;mso-border-bottom-alt:solid windowtext .5pt;padding:0in;\r\nmso-padding-alt:0in 0in 1.0pt 0in\"><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">?????? ?????? ?? ???? ????? ???? ?????? ???\r\n?????? ??????? ??????????? ???? ???? ?? ???? ????? ???? ?????? ??????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>. </span><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">?????? ???????? ?? ?????? ?? : 20 ??? 40 ???? ??? ????? ?????? ?? ??????\r\n??? ??????? ????? ?? ??? ??????? ??????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-size: 14pt; line-height: 107%; font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></p>\r\n\r\n</div>', '', '', 0, 0, 1, 93),
(178, ' Omez ????? ??????? ????????', '', '24.5', 85, 'product-featured-178.jpeg', '<div style=\"mso-element:para-border-div;border:none;border-bottom:solid windowtext 1.0pt;\r\nmso-border-bottom-alt:solid windowtext .5pt;padding:0in 0in 1.0pt 0in;\r\nmargin-right:-13.5pt;margin-left:0in\">\r\n\r\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align:justify;direction:rtl;unicode-bidi:\r\nembed;border:none;mso-border-bottom-alt:solid windowtext .5pt;padding:0in;\r\nmso-padding-alt:0in 0in 1.0pt 0in\"><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">?????? ?????? ?? ???? ??????? ????????? ??????\r\n??? ?????? ??????? ??????????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span> Omeprazole </span><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">?????\r\n???? ??? ????? ???? ????? ???? ?????? ??????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>. </span><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">?????? ???????? ?? ?????? ?? 20 ??? 40 ???? ??? ????? ?????? ?? ??????\r\n??? ??????? ????? ?? ??? ??????? ??????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></p>\r\n\r\n</div>', '', '', 0, 0, 1, 93),
(179, 'Nexium', '', '146', 20, 'product-featured-179.jpeg', '<div style=\"mso-element:para-border-div;border:none;border-bottom:solid windowtext 1.0pt;\r\nmso-border-bottom-alt:solid windowtext .5pt;padding:0in 0in 1.0pt 0in;\r\nmargin-right:-13.5pt;margin-left:0in\">\r\n\r\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align:justify;direction:rtl;unicode-bidi:\r\nembed;border:none;mso-border-bottom-alt:solid windowtext .5pt;padding:0in;\r\nmso-padding-alt:0in 0in 1.0pt 0in\"><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">?????? ?????? ?? ???? ????? ?????? ?????? ??? ?????? ???????\r\n????????????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span> Esomeprazole </span><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">?????\r\n???? ??? ????? ????? ??? ?????? ???????? ???? ?? ??????? ???????? ??????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>. </span><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">?????? ???????? ?? ?????? ?? 20 ??? 40 ???? ??? ????? ?????? ?? ??????\r\n??? ??????? ????? ?? ??? ??????? ??????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></p>\r\n\r\n</div>', '', '', 0, 0, 1, 93),
(180, 'Colona', '', '40', 52, 'product-featured-180.jpeg', '<div style=\"mso-element:para-border-div;border:none;border-bottom:solid windowtext 1.0pt;\r\nmso-border-bottom-alt:solid windowtext .5pt;padding:0in 0in 1.0pt 0in;\r\nmargin-right:-13.5pt;margin-left:0in\">\r\n\r\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align:justify;direction:rtl;unicode-bidi:\r\nembed;border:none;mso-border-bottom-alt:solid windowtext .5pt;padding:0in;\r\nmso-padding-alt:0in 0in 1.0pt 0in\"><b><span dir=\"LTR\" style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p>&nbsp;</o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align:justify;direction:rtl;unicode-bidi:\r\nembed;border:none;mso-border-bottom-alt:solid windowtext .5pt;padding:0in;\r\nmso-padding-alt:0in 0in 1.0pt 0in\"><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">?????? ?? ??????? ??????? ?????? ? ?????? ??\r\n?????? ? ????? ? ????? ? ???????? ???????? ???????? ??????? ???????? ? ???\r\n????? ???????? ??????? ???????? ? ?????? ???? ? ?????? ? ????? ???????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>.<o:p></o:p></span></p>\r\n\r\n</div>', '', '', 0, 0, 1, 93),
(181, 'librax', '', '15', 42, 'product-featured-181.jpg', '<div style=\"mso-element:para-border-div;border:none;border-bottom:solid windowtext 1.0pt;\r\nmso-border-bottom-alt:solid windowtext .5pt;padding:0in 0in 1.0pt 0in;\r\nmargin-right:-13.5pt;margin-left:0in\">\r\n\r\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align:justify;direction:rtl;unicode-bidi:\r\nembed;border:none;mso-border-bottom-alt:solid windowtext .5pt;padding:0in;\r\nmso-padding-alt:0in 0in 1.0pt 0in\"><b><span dir=\"LTR\" style=\"font-size: 14pt; line-height: 107%; font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p>&nbsp;</o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align:justify;direction:rtl;unicode-bidi:\r\nembed;border:none;mso-border-bottom-alt:solid windowtext .5pt;padding:0in;\r\nmso-padding-alt:0in 0in 1.0pt 0in\"><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">?????? ???????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>. </span><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">??????? ??????? ???????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>. </span><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">???????? ?????? ?????????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>. </span><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">???? ??????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>. </span><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">??????? ??????? ???????</span><span dir=\"LTR\"></span><span dir=\"LTR\"></span><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span dir=\"LTR\"></span><span dir=\"LTR\"></span>. </span><span lang=\"AR-SA\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">???????? ???????</span><span dir=\"LTR\" style=\"font-family: &quot;Segoe UI&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p>\r\n\r\n</div>', '', '', 0, 0, 1, 93),
(182, 'Urivin', '', '11.25', 74, 'product-featured-182.png', '<li style=\"outline: 0px; color: rgb(109, 113, 126); font-family: &quot;Open Sans&quot;; font-size: 15px; background-color: rgb(252, 252, 252);\">Colchicine is used for the relief of acute gout and prophylaxis of acute attacks</li><li style=\"color: rgb(109, 113, 126); font-family: &quot;Open Sans&quot;; font-size: 15px; background-color: rgb(252, 252, 252);\">Colchicine produces a dramatic response in acute gout by giving rapid relief from pain and reducing the inflammatory reaction to urate crystals. The effect might be due to several actions including decreased mobility of leucocytes.</li><li style=\"color: rgb(109, 113, 126); font-family: &quot;Open Sans&quot;; font-size: 15px; background-color: rgb(252, 252, 252);\">Piperazine citrate has been reported to produce an apparent decrease in measurements of serum uric acid.</li><p><span style=\"color: rgb(109, 113, 126); font-family: &quot;Open Sans&quot;; font-size: 15px; background-color: rgb(252, 252, 252);\">• Khellin and Atropine sulphate, by their relaxant action, relieve urinary tract spasm during excretion of urates. • Sodium bicarbonate is an alkalinising agent since alkaline urine is essential to prevent development of uric acid renal calculi.</span><br></p>', '', '', 0, 0, 1, 94),
(183, 'rani 150', '', '42', 20, 'product-featured-183.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">– Duodenal ulcer and benign gastric ulcer, including that associated&nbsp;</span><span id=\"more-2641\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Roboto, Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: rgb(51, 51, 51);\"></span><span style=\"color: rgb(51, 51, 51); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">with non-steroidal anti-inflammatory agents.</span><br style=\"color: rgb(51, 51, 51); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(51, 51, 51); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">– Prevention of non-steroidal anti-inflammatory drug (including aspirin) associated duodenal ulcers, especially in patients with a history of peptic ulcer disease.</span><br></p>', '', '', 0, 0, 1, 94),
(184, 'UROSOLVINE', '', '17', 23, 'product-featured-184.jpeg', '<p style=\"color: rgb(102, 114, 128); font-family: &quot;Open Sans&quot;;\">• An acute attack of gout apparently occurs as a result of an inflammatory reaction to crystals of monosodium urate that are deposited in the joint tissue.</p><p style=\"color: rgb(102, 114, 128); font-family: &quot;Open Sans&quot;;\">• Piperazine known for many years to be an active drug in the treatment of gout and urinary lithiasis. It is claimed to increase the solubility of urate in the urine. It is relatively non- toxic.</p><p style=\"color: rgb(102, 114, 128); font-family: &quot;Open Sans&quot;;\">• Colchicine gives rapid relief from pain in acute attacks of gout and the drug is specific for this condition to the extent that it can be used as a diagnostic agent in gout and gouty arthritis. Colchicine possess anti-inflammatory properties. Although it is highly effective in treating acute gouty arthritis, it is not effective for other types of pain. It is not an analgesic and does not affect uric acid clearance. Instead, colchicine binds to proteins in microtubules of neutrophils. This binding, in turn, inhibits the migration of neutrophils into the area of inflammation, thereby interfering with the inflammatory response to urate crystal deposition.&nbsp;</p>', '', '', 0, 0, 1, 94),
(185, 'PROXIMOL COMPOUND', '', '13.5', 16, 'product-featured-185.jpeg', '<p><span style=\"color: rgb(102, 114, 128); font-family: Arial, Verdana; font-size: 17px; text-align: justify;\">Each 100 gm contains:</span><br style=\"color: rgb(102, 114, 128); font-family: Arial, Verdana; font-size: 17px; text-align: justify;\"><span style=\"color: rgb(102, 114, 128); font-family: Arial, Verdana; font-size: 17px; text-align: justify;\">Halfa bar extract &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 18.6 mg</span><br style=\"color: rgb(102, 114, 128); font-family: Arial, Verdana; font-size: 17px; text-align: justify;\"><span style=\"color: rgb(102, 114, 128); font-family: Arial, Verdana; font-size: 17px; text-align: justify;\">Equivalent to 8 mg Proximadiol</span><br style=\"color: rgb(102, 114, 128); font-family: Arial, Verdana; font-size: 17px; text-align: justify;\"><span style=\"color: rgb(102, 114, 128); font-family: Arial, Verdana; font-size: 17px; text-align: justify;\">Hexamine &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; 6 &nbsp;&nbsp; &nbsp;gm</span><br style=\"color: rgb(102, 114, 128); font-family: Arial, Verdana; font-size: 17px; text-align: justify;\"><span style=\"color: rgb(102, 114, 128); font-family: Arial, Verdana; font-size: 17px; text-align: justify;\">Piperazine citrate&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><br></p>', '', '', 0, 0, 1, 94),
(186, 'Voltaren 75mg/3ml 6 ampoules', '', '58', 35, 'product-featured-186.jpeg', '<p><span style=\"color: rgb(102, 102, 102); font-family: TheSans; font-size: 14px;\">Nonsteroidal Anti-inflammatory Drug (NSAID) used in the treatment of ankylosing spondylitis, dysmenorrhea, gout, migraine, osteoarthritis, fever, rheumatoid arthritis and acute pain.</span><br></p>', '', '', 0, 0, 1, 95),
(187, 'Betolvex Ampoules', '', '27', 9, 'product-featured-187.jpg', '<p><span style=\"font-family: Dax; font-size: 16px; letter-spacing: 0.5px;\">Betolvex is the highest technology in Vitamin B12 preparations, Providing fast onset and the longest duration of action, ensuring replenishment of Vitamin B12 body stores.</span><br></p>', '', '', 0, 0, 1, 95),
(188, 'olfen', '', '30', 12, 'product-featured-188.jpeg', '<p><span style=\"color: rgb(136, 136, 136); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px; font-weight: 600; background-color: rgb(249, 249, 249);\">Description A non-steroidal anti-inflammatory agent (NSAID) with antipyretic and analgesic actions. It is primarily available as the sodium salt. Indication : For the acute and chronic treatment of signs and symptoms of osteoarthritis and rheumatoid arthritis. Mechanism of action The antiinflammatory effects of diclofenac are believed to be due to inhibition of both leukocyte migration and the enzyme cylooxygenase (COX-1 and COX-2), leading to the peripheral inhibition of prostaglandin synthesis. As prostaglandins sensitize pain receptors, inhibition of their synthesis is responsible for the analgesic effects of diclofenac. Antipyretic effects may be due to action on the hypothalamus, resulting in peripheral dilation, increased cutaneous blood flow, and subsequent heat dissipation.</span><br></p>', '', '', 0, 0, 1, 95),
(189, 'PANADOL COLD & FLU DAY 24 TAB', '', '230', 35, 'product-featured-189.jpeg', '<p>????????????????????????????</p>', '', '', 0, 0, 1, 92),
(190, 'comtrex', '', '39', 25, 'product-featured-190.jpg', '<p>??????????????????????????</p>', '', '', 0, 0, 1, 92);
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(191, 'congestal', '', '19.53', 10, 'product-featured-191.jpeg', '<ol style=\"font-family: &quot;DIN NEXTTM ARABIC&quot;, sans-serif, Arial; font-size: 16px; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; color: rgb(65, 65, 65); font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-variant-alternates: normal !important; font-kerning: auto !important; font-optical-sizing: auto !important; font-feature-settings: normal !important; font-variation-settings: normal !important; font-stretch: normal !important; line-height: 1.4 !important;\"><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; overflow-wrap: break-word; list-style: inside decimal; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-variant-alternates: normal !important; font-kerning: auto !important; font-optical-sizing: auto !important; font-feature-settings: normal !important; font-variation-settings: normal !important; font-stretch: normal !important; line-height: 1.4 !important;\">&nbsp;??????? ????? ?????.</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; overflow-wrap: break-word; list-style: inside decimal; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-variant-alternates: normal !important; font-kerning: auto !important; font-optical-sizing: auto !important; font-feature-settings: normal !important; font-variation-settings: normal !important; font-stretch: normal !important; line-height: 1.4 !important;\">&nbsp;?????? ??????? ????? ?????.</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; overflow-wrap: break-word; list-style: inside decimal; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-variant-alternates: normal !important; font-kerning: auto !important; font-optical-sizing: auto !important; font-feature-settings: normal !important; font-variation-settings: normal !important; font-stretch: normal !important; line-height: 1.4 !important;\">&nbsp;??????? ??????.</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; overflow-wrap: break-word; list-style: inside decimal; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-variant-alternates: normal !important; font-kerning: auto !important; font-optical-sizing: auto !important; font-feature-settings: normal !important; font-variation-settings: normal !important; font-stretch: normal !important; line-height: 1.4 !important;\">&nbsp;??????? ??????? ?????? ???????.</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; overflow-wrap: break-word; list-style: inside decimal; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-variant-alternates: normal !important; font-kerning: auto !important; font-optical-sizing: auto !important; font-feature-settings: normal !important; font-variation-settings: normal !important; font-stretch: normal !important; line-height: 1.4 !important;\">&nbsp;?????? ????? ?????? ??? ??????.</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; overflow-wrap: break-word; list-style: inside decimal; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-variant-alternates: normal !important; font-kerning: auto !important; font-optical-sizing: auto !important; font-feature-settings: normal !important; font-variation-settings: normal !important; font-stretch: normal !important; line-height: 1.4 !important;\">&nbsp;?????? ?? ?????? ?????? ???????.</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; overflow-wrap: break-word; list-style: inside decimal; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-variant-alternates: normal !important; font-kerning: auto !important; font-optical-sizing: auto !important; font-feature-settings: normal !important; font-variation-settings: normal !important; font-stretch: normal !important; line-height: 1.4 !important;\">&nbsp;?????? ????? ?????.</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; overflow-wrap: break-word; list-style: inside decimal; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-variant-alternates: normal !important; font-kerning: auto !important; font-optical-sizing: auto !important; font-feature-settings: normal !important; font-variation-settings: normal !important; font-stretch: normal !important; line-height: 1.4 !important;\">&nbsp;?????? ??????? ?????? ?????.</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; overflow-wrap: break-word; list-style: inside decimal; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-variant-alternates: normal !important; font-kerning: auto !important; font-optical-sizing: auto !important; font-feature-settings: normal !important; font-variation-settings: normal !important; font-stretch: normal !important; line-height: 1.4 !important;\">&nbsp;??????? ?????? ???? ???? ?????? ?????</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; overflow-wrap: break-word; list-style: inside decimal; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-variant-alternates: normal !important; font-kerning: auto !important; font-optical-sizing: auto !important; font-feature-settings: normal !important; font-variation-settings: normal !important; font-stretch: normal !important; line-height: 1.4 !important;\">&nbsp;?????? ??????.</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; overflow-wrap: break-word; list-style: inside decimal; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-variant-alternates: normal !important; font-kerning: auto !important; font-optical-sizing: auto !important; font-feature-settings: normal !important; font-variation-settings: normal !important; font-stretch: normal !important; line-height: 1.4 !important;\">&nbsp;?????? ???? ?? ?????? ??????.</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; overflow-wrap: break-word; list-style: inside decimal; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-variant-alternates: normal !important; font-kerning: auto !important; font-optical-sizing: auto !important; font-feature-settings: normal !important; font-variation-settings: normal !important; font-stretch: normal !important; line-height: 1.4 !important;\">&nbsp;????? ???????.</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; overflow-wrap: break-word; list-style: inside decimal; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-variant-alternates: normal !important; font-kerning: auto !important; font-optical-sizing: auto !important; font-feature-settings: normal !important; font-variation-settings: normal !important; font-stretch: normal !important; line-height: 1.4 !important;\">&nbsp;?????? ??????? ?????.</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; overflow-wrap: break-word; list-style: inside decimal; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-variant-alternates: normal !important; font-kerning: auto !important; font-optical-sizing: auto !important; font-feature-settings: normal !important; font-variation-settings: normal !important; font-stretch: normal !important; line-height: 1.4 !important;\">&nbsp;??????? ?????? ?? ?????.</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; overflow-wrap: break-word; list-style: inside decimal; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-variant-alternates: normal !important; font-kerning: auto !important; font-optical-sizing: auto !important; font-feature-settings: normal !important; font-variation-settings: normal !important; font-stretch: normal !important; line-height: 1.4 !important;\">&nbsp;?????? ???? ???? ???????? ??????? ??????? ??????? ???? ?????.</li></ol>', '', '', 0, 0, 1, 92),
(192, 'augmentin', '', '89.75', 12, 'product-featured-192.jpeg', '<p style=\"margin-top: 1rem; margin-bottom: 1rem; padding: 0px; font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif; font-size: 12px; cursor: none !important;\">Augmentin is a prescription medicine used to treat the symptoms of many different infections caused by bacteria such as lower respiratory tract infections, chronic obstructive pulmonary disease, bacterial sinusitis, animal/human bite wounds, and skin infections. Augmentin may be used alone or with other medications.</p>', '', '', 0, 0, 1, 89),
(193, 'HIBIOTIC', '', '91', 14, 'product-featured-193.jpeg', '<p>?????????????????????????????????????????</p><p>???????????????????????</p><p>????????????233</p>', '', '', 0, 0, 1, 89),
(194, 'klavox', '', '75', 21, 'product-featured-194.jpeg', '<ul style=\"border: 0px; font-family: &quot;Droid Sans&quot;, &quot;Trebuchet MS&quot;, Verdana, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 1.5em; margin-left: 1.231em; outline: 0px; padding: 0px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; color: rgb(51, 51, 51);\"><li style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Urinary Tract Infections.</li><li style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Skin and Soft Tissue Infections.</li><li style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Upper Respiratory Tract Infections.</li><li style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Lower Respiratory Tract Infections.</li></ul>', '', '', 0, 0, 1, 89),
(195, 'Oplx-n', '', '15', 12, 'product-featured-195.jpeg', '<p>Des</p><p>Anti cough</p><p>Form</p><p>125ml syrup</p>', '', '', 0, 0, 1, 96),
(196, 'Babetone ', '', '25', 14, 'product-featured-196.jpeg', '<p><span style=\"color: rgb(17, 27, 33); font-family: &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Lucida Grande&quot;, Arial, Ubuntu, Cantarell, &quot;Fira Sans&quot;, sans-serif; font-size: 14.2px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Des </span><span style=\"color: rgb(17, 27, 33); font-family: &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Lucida Grande&quot;, Arial, Ubuntu, Cantarell, &quot;Fira Sans&quot;, sans-serif; font-size: 14.2px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">\r\n</span><span style=\"color: rgb(17, 27, 33); font-family: &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Lucida Grande&quot;, Arial, Ubuntu, Cantarell, &quot;Fira Sans&quot;, sans-serif; font-size: 14.2px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Cough and cold</span><span style=\"color: rgb(17, 27, 33); font-family: &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Lucida Grande&quot;, Arial, Ubuntu, Cantarell, &quot;Fira Sans&quot;, sans-serif; font-size: 14.2px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">\r\n</span><span style=\"color: rgb(17, 27, 33); font-family: &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Lucida Grande&quot;, Arial, Ubuntu, Cantarell, &quot;Fira Sans&quot;, sans-serif; font-size: 14.2px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Form</span><span style=\"color: rgb(17, 27, 33); font-family: &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Lucida Grande&quot;, Arial, Ubuntu, Cantarell, &quot;Fira Sans&quot;, sans-serif; font-size: 14.2px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">\r\n</span><span style=\"color: rgb(17, 27, 33); font-family: &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Lucida Grande&quot;, Arial, Ubuntu, Cantarell, &quot;Fira Sans&quot;, sans-serif; font-size: 14.2px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">120 ml syrup</span><br></p>', '', '', 0, 0, 1, 96),
(197, 'Neo minophylline', '', '7.5', 14, 'product-featured-197.jpeg', '<p><span style=\"color: rgb(17, 27, 33); font-family: &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Lucida Grande&quot;, Arial, Ubuntu, Cantarell, &quot;Fira Sans&quot;, sans-serif; font-size: 14.2px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Cough preparation</span><span style=\"color: rgb(17, 27, 33); font-family: &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Lucida Grande&quot;, Arial, Ubuntu, Cantarell, &quot;Fira Sans&quot;, sans-serif; font-size: 14.2px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">\r\n</span><span style=\"color: rgb(17, 27, 33); font-family: &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Lucida Grande&quot;, Arial, Ubuntu, Cantarell, &quot;Fira Sans&quot;, sans-serif; font-size: 14.2px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Form </span><span style=\"color: rgb(17, 27, 33); font-family: &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Lucida Grande&quot;, Arial, Ubuntu, Cantarell, &quot;Fira Sans&quot;, sans-serif; font-size: 14.2px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">\r\n</span><span style=\"color: rgb(17, 27, 33); font-family: &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Lucida Grande&quot;, Arial, Ubuntu, Cantarell, &quot;Fira Sans&quot;, sans-serif; font-size: 14.2px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">120 ml syrup</span><br></p>', '', '', 0, 0, 1, 96),
(198, 'Cyrinol', '', '12', 25, 'product-featured-198.jpeg', '<p>Des&nbsp;</p><p>Cough</p><p>Form</p><p>60 ml syrup</p>', '', '', 0, 0, 1, 96),
(199, 'Pentamix ', '', '33', 40, 'product-featured-199.jpeg', '<p>Des&nbsp;</p><p>Anti cough</p><p>Form</p><p>120 ml syrup</p>', '', '', 0, 0, 1, 96),
(200, 'Immulant', '', '23.50', 33, 'product-featured-200.jpeg', '<p>Des</p><p>Enhance immunity</p><p>Form</p><p>120ml syrup</p>', '', '', 0, 0, 1, 97),
(201, 'Bronchicum', '', '45', 26, 'product-featured-201.jpeg', '<p>Des</p><p>Supportive supplement for cough</p><p>Form</p><p>100ml syrup</p>', '', '', 0, 0, 1, 97),
(202, 'All-vent', '', '15', 44, 'product-featured-202.jpeg', '<p>Des&nbsp;</p><p>Cough and cold</p><p>Form</p><p>125 ml syrup</p>', '', '', 0, 0, 1, 96),
(203, 'Neo-bronchophane', '', '9', 80, 'product-featured-203.jpeg', '<p>Des</p><p>Anti cough</p><p>Form</p><p>123ml syrup</p>', '', '', 0, 0, 1, 96),
(204, 'Ventocough ', '', '13', 48, 'product-featured-204.jpeg', '<p>Des&nbsp;</p><p>For chest tightness and cold</p><p>Form</p><p>125ml syrup</p>', '', '', 0, 0, 1, 96),
(205, 'Alvital lron', '', '14.75', 65, 'product-featured-205.jpeg', '<p>Des</p><p>Food supplement&nbsp;</p><p>From</p><p>120ml syrup</p>', '', '', 0, 0, 1, 97),
(206, 'Tussiatop 30mg/5ml', '', '32.50', 33, 'product-featured-206.jpeg', '<p>Des</p><p>Cough</p><p>Form&nbsp;</p><p>100ml syrup</p>', '', '', 0, 0, 1, 96),
(207, 'Efalex (lemon lime)', '', '95', 23, 'product-featured-207.jpeg', '<p>Des&nbsp;</p><p>Food supplement</p><p>Form</p><p>120 ml solutions</p>', '', '', 0, 0, 1, 97),
(208, 'Vitamount', '', '15', 32, 'product-featured-208.jpeg', '<p>Des</p><p>Vitamin and supplement&nbsp;</p><p>From&nbsp;</p><p>120ml syrup</p>', '', '', 0, 0, 1, 97),
(209, 'Ivyrospan', '', '37.50', 20, 'product-featured-209.jpeg', '<p>Des</p><p>Cough and cold</p><p>Form</p><p>100ml syrup</p>', '', '', 0, 0, 1, 96),
(210, 'Ferrobine ', '', '150', 12, 'product-featured-210.jpeg', '<p>Des</p><p>Vitamin and supplement&nbsp;</p><p>Form&nbsp;</p><p>125ml</p>', '', '', 0, 0, 1, 97),
(211, 'Alveolin p ', '', '35', 38, 'product-featured-211.jpeg', '<p>Des</p><p>Cough&amp;cold&nbsp;</p><p>Form</p><p>100ml syrup</p>', '', '', 0, 0, 1, 96);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(6, 'Free Shipping', 'Enjoy free shipping inside Tanta.', 'service-6.png'),
(7, 'Fast Shipping', 'Items are shipped within 24 hours.', 'service-7.png'),
(10, 'Money Back Guarantee', 'Offer money back guarantee on our products', 'service-10.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` varchar(255) NOT NULL,
  `receive_email_subject` varchar(255) NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` varchar(255) NOT NULL,
  `banner_registration` varchar(255) NOT NULL,
  `banner_forget_password` varchar(255) NOT NULL,
  `banner_reset_password` varchar(255) NOT NULL,
  `banner_search` varchar(255) NOT NULL,
  `banner_cart` varchar(255) NOT NULL,
  `banner_checkout` varchar(255) NOT NULL,
  `banner_product_category` varchar(255) NOT NULL,
  `banner_blog` varchar(255) NOT NULL,
  `cta_title` varchar(255) NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` varchar(255) NOT NULL,
  `cta_read_more_url` varchar(255) NOT NULL,
  `cta_photo` varchar(255) NOT NULL,
  `featured_product_title` varchar(255) NOT NULL,
  `featured_product_subtitle` varchar(255) NOT NULL,
  `latest_product_title` varchar(255) NOT NULL,
  `latest_product_subtitle` varchar(255) NOT NULL,
  `popular_product_title` varchar(255) NOT NULL,
  `popular_product_subtitle` varchar(255) NOT NULL,
  `testimonial_title` varchar(255) NOT NULL,
  `testimonial_subtitle` varchar(255) NOT NULL,
  `testimonial_photo` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_subtitle` varchar(255) NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `stripe_public_key` varchar(255) NOT NULL,
  `stripe_secret_key` varchar(255) NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.png', 'favicon.png', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.Â Ea suas pertinax has.</p>\r\n', 'Copyright © 2023 - Eagles pharmacy', 'Tanta', 'eagles_pharmacy@gmail.com', '0123456789', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d54837.43396029018!2d31.03437610566401!3d30.793108825319102!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14f7c95daafcf035%3A0x7421820c5e8cae42!2z2LfZhti32KfYjCDYt9mG2LfYpyAo2YLYs9mFIDIp2Iwg2YXYsdmD2LIg2LfZhti32KfYjCDYp9mE2LrYsdio2YrYqQ!5e0!3m2!1sar!2seg!4v1680959700490!5m2!1sar!2seg\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '', '', '', 'A confirmation link is sent to your email address. You will get the password reset information in there.', 4, 4, 5, 5, 10, 10, 10, 'Pharmacy', '', '', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Welcome To Our Ecommerce Website', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Read More', '#', 'cta.jpg', 'Featured Products', 'Our list on Top Featured Products', 'Latest Products', 'Our list of recently added products', 'Popular Products', 'Popular products based on customer\'s choice', 'Testimonials', 'See what our clients tell about us', 'testimonial.jpg', 'Latest Blog', 'See all our latest articles and news from below', 'Sign-up to our newsletter for latest promotions and discounts.', 'eagles_pharmacy@gmail.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'CIB Bank', '', '', '', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(1, 228, '11'),
(2, 167, '10'),
(3, 13, '80'),
(4, 230, '0'),
(5, 237, '2'),
(6, 2, '50'),
(7, 1, '0'),
(8, 3, '50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '100');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `position`) VALUES
(5, 'slider-5.jpg', 'Welcome to Eagles pharmacy', 'Online pharmacy For All your needs	', 'Center'),
(6, 'slider-6.jpg', '24 Hours Customer Support', 'Anytime Any where', 'Center'),
(8, 'slider-8.jpg', 'Up to 50% Discount Cosmetics', 'To take care of all your details', 'Center');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(7, 'Cosmetics', 1),
(10, 'medicine', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Administrator', 'admin@mail.com', '7777777777', 'd00f5d5217896fb7fd601412cb890830', 'user-1.png', 'Super Admin', 'Active'),
(3, 'Admin', 'admin@mail.com', '7777777777', '123', 'user-3.png', 'Super Admin', 'Active'),
(4, 'Administrator', 'admin', '7777777777', 'admin', 'user-3.png', 'Super Admin', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  ADD PRIMARY KEY (`customer_message_id`);

--
-- Indexes for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Indexes for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
