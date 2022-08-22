-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2021 at 06:14 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mauhstores`
--

-- --------------------------------------------------------

--
-- Table structure for table `debtorslist`
--

CREATE TABLE `debtorslist` (
  `list_id` int(10) NOT NULL,
  `debtor_name` varchar(100) NOT NULL,
  `product_list` varchar(3000) NOT NULL,
  `sales_id` int(30) NOT NULL,
  `paid_amount` int(10) NOT NULL,
  `initial_arrears` int(10) NOT NULL,
  `remaining_arrears` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `debtorslist`
--

INSERT INTO `debtorslist` (`list_id`, `debtor_name`, `product_list`, `sales_id`, `paid_amount`, `initial_arrears`, `remaining_arrears`) VALUES
(7, 'HILLARY', '{p2|q2|a3,000}', 88, 2800, 200, 0),
(8, 'Dismas', '{p10|q8|a800}:{p9|q5|a115}:{p8|q2|a190}:{p14|q1|a42}:{p13|q2|a28}:{p12|q5|a550}:{p11|q3|a300}:{p21|q1|a150}:{p1|q1|a3,000}:{p2|q1|a1,500}:{p3|q1|a1,200}:{p4|q1|a1,250}:{p5|q1|a2,400}', 101, 11000, 525, 0),
(9, 'Giovani Mutinda', '{p1|q1|a3,000}:{p2|q2|a3,000}', 105, 5500, 500, 100),
(10, 'KIMANI WAMATANGI', '{p1|q2|a6,000}:{p4|q2|a2,500}:{p7|q1|a2,300}', 108, 10500, 300, 0),
(11, 'Esmond Bwire', '{p1|q1|a3,000}:{p2|q1|a1,500}:{p3|q1|a1,200}:{p4|q1|a1,250}:{p8|q1|a95}:{p7|q1|a2,300}:{p6|q1|a45}:{p5|q1|a2,400}:{p9|q1|a23}:{p10|q1|a100}:{p11|q5|a500}:{p12|q1|a110}', 109, 12500, 23, 0),
(12, 'Dismas', '{p3|q1|a1,200}:{p2|q2|a3,000}:{p1|q1|a3,000}', 110, 5000, 2200, 700),
(13, 'Mama wairimu', '{p1|q2|a6,000}', 111, 5800, 200, 200),
(14, 'Jumia salim', '{p14|q1|a42}:{p13|q2|a28}', 113, 50, 20, 0),
(15, 'Jose', '{p16|q3|a1,350}:{p17|q2|a70}', 116, 1000, 420, 0),
(16, 'Triza Njeri', '{p2|q1|a1,500}:{p14|q1|a42}', 117, 1500, 42, 0),
(17, 'Triza Njeri', '{p20|q1|a2,200}', 120, 2000, 200, 0),
(18, 'kipchoge', '{p1|q1|a3,000}:{p18|q1|a157}', 121, 3057, 100, 50),
(19, 'jose', '{p12|q1|a110}', 124, 50, 60, 0),
(20, 'Shamila Queen', '{p1|q1|a3,000}', 127, 2000, 1000, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `debt_pay_table`
--

CREATE TABLE `debt_pay_table` (
  `payment_id` int(10) NOT NULL,
  `debtor_list_id` int(10) NOT NULL,
  `amount_paid` int(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `amount_remaining` int(30) NOT NULL,
  `date_paid` date NOT NULL,
  `time_paid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `debt_pay_table`
--

INSERT INTO `debt_pay_table` (`payment_id`, `debtor_list_id`, `amount_paid`, `code`, `amount_remaining`, `date_paid`, `time_paid`) VALUES
(3, 8, 300, 'cash', 225, '2021-06-14', '16:47:58'),
(4, 9, 100, 'KJHKUH2J', 400, '2021-06-14', '16:52:12'),
(5, 10, 10, 'cash', 290, '2021-06-14', '16:55:04'),
(8, 7, 100, 'cash', 100, '2021-06-14', '17:14:25'),
(9, 8, 5, 'cash', 220, '2021-06-14', '17:14:39'),
(10, 12, 1000, 'cash', 1200, '2021-06-14', '17:17:28'),
(11, 11, 23, 'cash', 0, '2021-06-14', '17:19:01'),
(12, 9, 200, 'KJHKJH', 200, '2021-06-14', '17:20:17'),
(13, 12, 500, 'dfsgs', 700, '2021-06-14', '17:30:01'),
(14, 10, 290, 'cash', 0, '2021-06-14', '17:30:18'),
(15, 8, 5, 'cash', 215, '2021-06-14', '17:34:12'),
(16, 9, 100, 'KKLJUI899S', 100, '2021-06-14', '17:38:30'),
(17, 7, 50, 'cash', 50, '2021-06-14', '18:56:09'),
(18, 14, 10, 'cash', 10, '2021-06-15', '11:49:28'),
(19, 14, 10, 'cash', 0, '2021-06-15', '11:52:36'),
(20, 8, 215, 'cash', 0, '2021-06-15', '12:07:11'),
(21, 7, 10, 'cash', 40, '2021-06-15', '15:35:41'),
(22, 7, 40, 'cash', 0, '2021-06-18', '14:41:31'),
(23, 15, 20, 'cash', 400, '2021-06-18', '14:44:48'),
(24, 16, 42, 'cash', 0, '2021-06-18', '15:46:11'),
(25, 17, 200, 'cash', 0, '2021-06-18', '21:54:08'),
(26, 18, 50, 'cash', 50, '2021-06-18', '21:58:52'),
(27, 19, 30, 'cash', 30, '2021-06-18', '22:00:32'),
(28, 15, 400, 'PFI8B2YKOM', 0, '2021-06-18', '22:01:27'),
(29, 19, 30, 'cash', 0, '2021-06-19', '04:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `product_inventory_tbl`
--

CREATE TABLE `product_inventory_tbl` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_price` int(30) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `supplier_contact` varchar(100) NOT NULL,
  `product_active` int(1) NOT NULL,
  `product_quantity` int(10) NOT NULL COMMENT 'the number of units of the comodity',
  `product_rem` int(10) NOT NULL COMMENT 'number of units remaining after being sold',
  `quantity_measure` varchar(100) NOT NULL COMMENT 'this is the unit of measure of a product',
  `product_category` varchar(100) NOT NULL,
  `products_bought` int(10) NOT NULL COMMENT 'number of products bought ',
  `image_locale` varchar(2000) NOT NULL DEFAULT '../../images/siteimages/noimage.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_inventory_tbl`
--

INSERT INTO `product_inventory_tbl` (`product_id`, `product_name`, `product_price`, `supplier_name`, `supplier_contact`, `product_active`, `product_quantity`, `product_rem`, `quantity_measure`, `product_category`, `products_bought`, `image_locale`) VALUES
(1, 'CHELSEA BOOTS', 3000, 'KMC', '0715414410', 1, 58, 36, 'pair', 'shoes', 0, '../../images/webpages/mauhstores/IMG-20190603-WA0004.jpg'),
(2, 'Loafer Wears', 1500, 'Chelsea Ke', '0715214540', 1, 49, 16, 'pair', 'shoes', 0, '../../images/webpages/mauhstores/IMG-20190603-WA0012.jpg'),
(3, 'Vans', 1200, 'Vans Ke', '0721541121', 1, 16, 12, 'Pair', 'shoes', 0, '../../images/webpages/mauhstores/IMG-20190604-WA0005.jpg'),
(4, 'Nike Airforce 1', 1250, 'KIMANI LILTECH', '0712321241', 1, 37, 19, 'pair', 'shoes', 0, '../../images/webpages/mauhstores/IMG-20190603-WA0013.jpg'),
(5, 'PUMA NIKE', 2400, 'PUMA Kenya', '0714141414', 1, 35, 26, 'pair', 'shoes', 0, '../../images/webpages/mauhstores/IMG-20190604-WA0050.jpg'),
(6, 'Milk', 45, 'kimani wangombes', '0714151214', 1, 46, 20, '1 ltrs', 'baked', 0, '../../images/webpages/mauhstores/IMG-20190604-WA0050.jpg'),
(7, 'Fila', 2300, 'Fila Ke', '0714142525', 1, 12, 3, 'pair', 'shoes', 0, '../../images/webpages/mauhstores/IMG-20190604-WA0015.jpg'),
(8, 'Maize', 95, 'PADI WABUON', '0743246177', 1, 183, 156, 'def', 'food', 0, '../../images/siteimages/noimage.png'),
(9, 'SUGAR CANE', 23, 'KABRAS', '0713456271', 1, 35, 16, 'Sticks', 'beverages', 0, '../../images/webpages/mauhstores/Screenshot (1).png'),
(10, 'Tissues', 100, 'Tepee', '0785645640', 1, 252, 237, 'Rolls', 'accesories', 0, '../../images/webpages/mauhstores/IMG-20201206-WA0009.jpg'),
(11, 'BOONDOCKS', 100, 'juma', '0714541141', 1, 23, 9, 'pcs', 'beddings', 0, '../../images/siteimages/noimage.png'),
(12, 'Pens', 110, 'Bic', '0741411414', 1, 37, 21, 'Dozens', 'accesories', 0, '../../images/webpages/mauhstores/16230983654472605850189168202034.jpg'),
(13, 'Butter', 14, 'Bidco Ke', '0714545414', 1, 2531, 1983, 'Â¼ kgs', 'beverages', 0, '../../images/webpages/mauhstores/009f0532-71d5-4f4b-9f55-358fefdb6e26.jpg'),
(14, 'WHEAT Â¼', 42, 'Mama', '0741441154', 1, 120, 89, 'Â¼ kgs', 'food', 0, '../../images/webpages/mauhstores/Instagram_Screenshot_2020.06.01_11.58.25.jpg'),
(15, 'IPhone x', 7800, 'iPhone KE', '0714545858', 1, 55, 47, 'pcs', 'accesories', 0, '../../images/webpages/mauhstores/IMG-20190604-WA0050.jpg'),
(16, 'FLIP FLOPS', 450, 'KINYANJUI', '0715142144', 1, 12, 9, 'pair', 'shoes', 0, '../../images/webpages/mauhstores/IMG-20190604-WA0046.jpg'),
(17, 'Green grams', 35, 'Mama Nesi', '0714252445', 1, 45, 20, 'Â¼ kgs', 'food', 0, '../../images/webpages/mauhstores/dash.png'),
(18, 'OFIA Earphone', 157, 'OFIA', '0713627882', 1, 21, 5, 'pair', 'accesories', 0, '../../images/webpages/mauhstores/WhatsApp Ivmage 2021-03-26 at 23.19.39.jpeg'),
(19, 'Rubber Shoes', 250, 'BOGONKO', '0714545454', 1, 245, 235, 'pair', 'shoes', 0, '../../images/webpages/mauhstores/IMG-20190604-WA0006.jpg'),
(20, 'Blue Loafers', 2200, 'Kevo Njumu', '0714152114', 1, 22, 17, 'pair', 'shoes', 0, '../../images/webpages/mauhstores/IMG-20190603-WA0003.jpg'),
(21, 'Sandals', 150, 'Sandals KE', '0743551250', 1, 150, 147, 'pair', 'shoes', 0, '../../images/webpages/mauhstores/IMG-20190604-WA0045.jpg'),
(22, 'Dettol', 89, 'Dettol kenya', '0714212245', 1, 240, 229, 'pcs', 'detergents', 0, '../../images/webpages/mauhstores/IMG-20190601-WA0008.jpg'),
(23, 'PUMA 35 - 41', 1500, 'Kimani Juma', '0714152155', 1, 10, 8, 'pair', 'shoes', 0, '../../images/webpages/mauhstores/IMG-20190604-WA0038.jpg'),
(24, 'PSUEDE SHOES', 1500, 'FREDDY SHOES', '0714545458', 1, 10, 10, 'pair', 'shoes', 0, '../../images/webpages/mauhstores/IMG-20190603-WA0010.jpg'),
(25, 'Dunhill', 20, 'gituathii', '0725698754', 1, 42, 42, 'pair', 'beverages', 0, '../../images/siteimages/noimage.png'),
(26, 'hill', 30, 'kk', '0715468723', 1, 63, 53, '1 kgs', 'beverages', 0, '../../images/webpages/mauhstores/IMG-20190604-WA0008.jpg'),
(27, 'Millet', 150, 'Tracy Awuor', '0745451250', 1, 150, 150, 'Â½ kgs', 'food', 0, '../../images/webpages/mauhstores/Screenshot_20210618-162944.png');

-- --------------------------------------------------------

--
-- Table structure for table `sales_table`
--

CREATE TABLE `sales_table` (
  `sale_id` int(11) NOT NULL,
  `sales_cashier_id` int(11) NOT NULL,
  `sales_item` varchar(11000) NOT NULL,
  `code` varchar(100) NOT NULL DEFAULT 'CASH',
  `sales_amount` int(11) NOT NULL,
  `timeofpayment` varchar(10) NOT NULL,
  `dateofpayment` date NOT NULL,
  `customer_amount` int(11) NOT NULL,
  `customer_change` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_table`
--

INSERT INTO `sales_table` (`sale_id`, `sales_cashier_id`, `sales_item`, `code`, `sales_amount`, `timeofpayment`, `dateofpayment`, `customer_amount`, `customer_change`) VALUES
(88, 1, '{p2|q2|a3,000}', 'cash', 3000, '17:25:43', '2021-06-12', 2800, -200),
(89, 1, '{p7|q2|a4,600}', 'cash', 4600, '17:26:14', '2021-06-12', 5000, 400),
(90, 1, '{p6|q1|a45}', 'cash', 45, '17:26:32', '2021-06-12', 50, 5),
(91, 1, '{p20|q1|a2,200}', 'cash', 2200, '17:26:49', '2021-06-12', 2300, 100),
(92, 1, '{p2|q1|a1,500}:{p1|q1|a3,000}', 'cash', 4500, '17:28:19', '2021-06-12', 4500, 0),
(93, 1, '{p13|q100|a1,400}', 'cash', 1400, '17:28:49', '2021-06-12', 2000, 600),
(94, 1, '{p18|q8|a1,256}', 'cash', 1256, '17:29:21', '2021-06-12', 1300, 44),
(95, 1, '{p4|q1|a1,250}:{p3|q1|a1,200}:{p2|q2|a3,000}', 'KKLJUI8999f', 5450, '19:31:58', '2021-06-12', 5500, 50),
(96, 1, '{p1|q1|a3,000}', 'KKLJUI8999', 3000, '01:41:07', '2021-06-13', 10000, 7000),
(97, 1, '{p6|q10|a450}', 'cash', 450, '01:41:42', '2021-06-13', 450, 0),
(98, 1, '{p8|q1|a95}:{p9|q1|a23}:{p5|q1|a2,400}:{p4|q1|a1,250}:{p3|q1|a1,200}:{p2|q1|a1,500}:{p1|q1|a3,000}', 'cash', 9468, '01:43:54', '2021-06-13', 9500, 32),
(99, 1, '{p11|q1|a100}:{p12|q1|a110}:{p13|q2|a28}:{p14|q4|a168}:{p8|q3|a285}:{p7|q2|a4,600}:{p9|q3|a69}', 'KKLJUI899S', 5360, '01:45:20', '2021-06-13', 5500, 140),
(100, 1, '{p21|q2|a300}:{p19|q1|a250}:{p7|q1|a2,300}:{p5|q1|a2,400}:{p2|q1|a1,500}:{p8|q1|a95}:{p10|q4|a400}:{p18|q3|a471}:{p17|q2|a70}', 'cash', 7786, '01:53:12', '2021-06-13', 7800, 14),
(101, 1, '{p10|q8|a800}:{p9|q5|a115}:{p8|q2|a190}:{p14|q1|a42}:{p13|q2|a28}:{p12|q5|a550}:{p11|q3|a300}:{p21|q1|a150}:{p1|q1|a3,000}:{p2|q1|a1,500}:{p3|q1|a1,200}:{p4|q1|a1,250}:{p5|q1|a2,400}', 'cash', 11525, '02:04:59', '2021-06-13', 11000, -525),
(102, 1, '{p4|q3|a3,750}:{p3|q1|a1,200}', 'cash', 4950, '02:15:42', '2021-06-13', 5000, 50),
(103, 1, '{p18|q1|a157}:{p15|q1|a7,800}', 'cash', 7957, '12:45:02', '2021-06-13', 8000, 43),
(104, 1, '{p22|q10|a890}', 'cash', 890, '13:43:25', '2021-06-13', 900, 10),
(105, 1, '{p1|q1|a3,000}:{p2|q2|a3,000}', 'cash', 6000, '10:46:07', '2021-06-14', 5500, -500),
(106, 1, '{p6|q10|a450}', 'cash', 450, '10:51:02', '2021-06-14', 500, 50),
(107, 1, '{p2|q2|a3,000}:{p3|q2|a2,400}:{p4|q1|a1,250}:{p9|q2|a46}:{p14|q2|a84}:{p17|q2|a70}:{p8|q4|a380}:{p11|q2|a200}', 'cash', 7430, '11:15:41', '2021-06-14', 7500, 70),
(108, 1, '{p1|q2|a6,000}:{p4|q2|a2,500}:{p7|q1|a2,300}', 'cash', 10800, '14:17:39', '2021-06-14', 10500, -300),
(109, 1, '{p1|q1|a3,000}:{p2|q1|a1,500}:{p3|q1|a1,200}:{p4|q1|a1,250}:{p8|q1|a95}:{p7|q1|a2,300}:{p6|q1|a45}:{p5|q1|a2,400}:{p9|q1|a23}:{p10|q1|a100}:{p11|q5|a500}:{p12|q1|a110}', 'cash', 12523, '14:57:58', '2021-06-14', 12500, -23),
(110, 1, '{p3|q1|a1,200}:{p2|q2|a3,000}:{p1|q1|a3,000}', 'cash', 7200, '15:42:42', '2021-06-14', 5000, -2200),
(111, 1, '{p1|q2|a6,000}', 'SSADDAF', 6000, '19:54:30', '2021-06-14', 5800, -200),
(112, 1, '{p8|q2|a190}:{p14|q2|a84}', 'cash', 274, '11:48:31', '2021-06-15', 300, 26),
(113, 1, '{p14|q1|a42}:{p13|q2|a28}', 'cash', 70, '11:48:55', '2021-06-15', 50, -20),
(114, 1, '{p15|q1|a7,800}', 'cash', 7800, '12:08:46', '2021-06-15', 8000, 200),
(115, 1, '{p4|q1|a1,250}', 'cash', 1250, '12:09:08', '2021-06-15', 1300, 50),
(116, 1, '{p16|q3|a1,350}:{p17|q2|a70}', 'cash', 1420, '14:44:31', '2021-06-18', 1000, -420),
(117, 6, '{p2|q1|a1,500}:{p14|q1|a42}', 'cash', 1542, '15:45:29', '2021-06-18', 1500, -42),
(118, 6, '{p23|q2|a3,000}', 'cash', 3000, '15:54:03', '2021-06-18', 3000, 0),
(119, 5, '{p26|q10|a300}', 'cash', 300, '21:50:43', '2021-06-18', 500, 200),
(120, 5, '{p20|q1|a2,200}', 'cash', 2200, '21:53:29', '2021-06-18', 2000, -200),
(121, 5, '{p1|q1|a3,000}:{p18|q1|a157}', 'cash', 3157, '21:56:19', '2021-06-18', 3057, -100),
(122, 5, '{p15|q1|a7,800}', 'cash', 7800, '21:57:05', '2021-06-18', 8000, 200),
(123, 5, '{p12|q1|a110}', 'cash', 110, '21:59:38', '2021-06-18', 150, 40),
(124, 5, '{p12|q1|a110}', 'cash', 110, '22:00:07', '2021-06-18', 50, -60),
(125, 5, '{p6|q2|a90}', 'cash', 90, '05:32:54', '2021-06-19', 100, 10),
(126, 5, '{p9|q2|a46}:{p13|q1|a14}:{p17|q2|a70}:{p22|q1|a89}', 'cash', 219, '05:39:23', '2021-06-19', 220, 1),
(127, 5, '{p1|q1|a3,000}', 'cash', 3000, '05:40:13', '2021-06-19', 2000, -1000),
(128, 5, '{p17|q1|a35}', 'cash', 35, '06:00:32', '2021-06-19', 40, 5);

-- --------------------------------------------------------

--
-- Table structure for table `shoppinglist`
--

CREATE TABLE `shoppinglist` (
  `id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `productlist` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shoppinglist`
--

INSERT INTO `shoppinglist` (`id`, `seller_id`, `productlist`) VALUES
(7, 2, '<div id=\"productsdets3\" class=\"productsdets\"><div id=\"circles3\" class=\"circle hide\"></div><img src=\"../../images/siteimages/trash.png\" class=\"commodityno\" id=\"comno1\" alt=\"trash\"><p>|</p><p style=\"text-align:center;\"><b>Vans<br><small class=\"prices\">  Ksh 1200</small></b></p><p>|</p><div class=\"inputs\"><input class=\"inputed\" type=\"text\" name=\"quantity\" value=\"1\" id=\"quantitys3\"><div class=\"conts\"><button type=\"button\" class=\"add\" id=\"add3\"> </button><button type=\"button\" class=\"substract\" id=\"substract3\">-</button></div></div></div><p></p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `debtorslist`
--
ALTER TABLE `debtorslist`
  ADD PRIMARY KEY (`list_id`);

--
-- Indexes for table `debt_pay_table`
--
ALTER TABLE `debt_pay_table`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product_inventory_tbl`
--
ALTER TABLE `product_inventory_tbl`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sales_table`
--
ALTER TABLE `sales_table`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `shoppinglist`
--
ALTER TABLE `shoppinglist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `debtorslist`
--
ALTER TABLE `debtorslist`
  MODIFY `list_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `debt_pay_table`
--
ALTER TABLE `debt_pay_table`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `product_inventory_tbl`
--
ALTER TABLE `product_inventory_tbl`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sales_table`
--
ALTER TABLE `sales_table`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `shoppinglist`
--
ALTER TABLE `shoppinglist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
