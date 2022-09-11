

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




--
-- Database: `db_realestate`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  `lavel` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPass`, `lavel`) VALUES
(1, 'Tareq', 'admin', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'Dhaka'),
(2, 'Sylhet'),
(3, 'Chittagong'),
(4, 'Rajshahi'),
(5, 'Khulna');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(17, 'Duplex'),
(18, 'Half-Duplex'),
(19, 'Tin-Shade'),
(20, 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zip` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `pass`) VALUES
(1, 'Tareq', 'Shahporan,Sylhet', 'Sylhet', 'Bangladesh', '3103', '01779795618', 'tareq@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(12, 1, 9, 'House-01', 1, 5000, 'upload/a.jpg', '2018-03-02 12:29:03', 2),
(13, 1, 10, 'House-02', 3, 1650, 'upload/b.jpg', '2018-03-02 12:29:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float NOT NULL,
  `kitchen` float NOT NULL,
  `bedroom` float NOT NULL,
  `bathroom` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `kitchen`, `bedroom`,`bathroom`, `image`, `type`) VALUES
(1, 'Lorem Ipsum is simply', 4, 1, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati labore voluptas neque doloremque? Illum voluptates, illo inventore qui fuga, harum dignissimos dolore earum sint. Hic mollitia consectetur, quis voluptatibus quae placeat, aliquid, in facilis, id doloribus cumque modi nemo maxime. Fugiat eum adipisci et quam dicta, nam quidem sapiente, nobis, doloremque magnam reprehenderit voluptatibus repudiandae praesentium. Minus consequuntur maxime, nostrum eos, molestias velit officiis alias incidunt enim reiciendis, pariatur repudiandae consectetur fugit! Suscipit sunt atque commodi repudiandae adipisci, dolore quaerat eveniet minima, repellat sint quas impedit velit quidem necessitatibus excepturi qui veniam maiores quibusdam animi neque consequuntur consectetur. Velit deleniti repellat vitae at, aut nulla, perspiciatis cupiditate non ipsum animi dolores, voluptatem est ea, minima dignissimos. Doloribus minima magnam perspiciatis.&lt;br /&gt;&amp;nbsp;&amp;nbsp; &amp;nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus vel facilis asperiores consequuntur minus excepturi quas, voluptatibus atque aut vitae! Non omnis, consectetur? Ex eligendi, fuga aspernatur velit assumenda ad unde dicta harum. Ab dolorem voluptate rerum natus voluptas ex repudiandae, sint sapiente cupiditate tempore necessitatibus dignissimos, quam exercitationem consequuntur officia placeat, eaque est a praesentium laboriosam provident minima obcaecati. Sunt ipsa cumque nobis sint aliquam non magnam incidunt inventore quia quod, iste repellat ducimus, ratione delectus maiores accusantium, eos.&lt;/p&gt;', 505.22,2,2,2, 'upload/b.jpg', 0),
(2, 'Lorem Ipsum is simply', 9,2, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati labore voluptas neque doloremque? Illum voluptates, illo inventore qui fuga, harum dignissimos dolore earum sint. Hic mollitia consectetur, quis voluptatibus quae placeat, aliquid, in facilis, id doloribus cumque modi nemo maxime. Fugiat eum adipisci et quam dicta, nam quidem sapiente, nobis, doloremque magnam reprehenderit voluptatibus repudiandae praesentium. Minus consequuntur maxime, nostrum eos, molestias velit officiis alias incidunt enim reiciendis, pariatur repudiandae consectetur fugit! Suscipit sunt atque commodi repudiandae adipisci, dolore quaerat eveniet minima, repellat sint quas impedit velit quidem necessitatibus excepturi qui veniam maiores quibusdam animi neque consequuntur consectetur. Velit deleniti repellat vitae at, aut nulla, perspiciatis cupiditate non ipsum animi dolores, voluptatem est ea, minima dignissimos. Doloribus minima magnam perspiciatis.&lt;br /&gt;&amp;nbsp;&amp;nbsp; &amp;nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus vel facilis asperiores consequuntur minus excepturi quas, voluptatibus atque aut vitae! Non omnis, consectetur? Ex eligendi, fuga aspernatur velit assumenda ad unde dicta harum. Ab dolorem voluptate rerum natus voluptas ex repudiandae, sint sapiente cupiditate tempore necessitatibus dignissimos, quam exercitationem consequuntur officia placeat, eaque est a praesentium laboriosam provident minima obcaecati. Sunt ipsa cumque nobis sint aliquam non magnam incidunt inventore quia quod, iste repellat ducimus, ratione delectus maiores accusantium, eos.&lt;/p&gt;', 620.87,2,2,2, 'upload/b.jpg', 0),
(3, 'Lorem Ipsum is simply', 7, 3, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati labore voluptas neque doloremque? Illum voluptates, illo inventore qui fuga, harum dignissimos dolore earum sint. Hic mollitia consectetur, quis voluptatibus quae placeat, aliquid, in facilis, id doloribus cumque modi nemo maxime. Fugiat eum adipisci et quam dicta, nam quidem sapiente, nobis, doloremque magnam reprehenderit voluptatibus repudiandae praesentium. Minus consequuntur maxime, nostrum eos, molestias velit officiis alias incidunt enim reiciendis, pariatur repudiandae consectetur fugit! Suscipit sunt atque commodi repudiandae adipisci, dolore quaerat eveniet minima, repellat sint quas impedit velit quidem necessitatibus excepturi qui veniam maiores quibusdam animi neque consequuntur consectetur. Velit deleniti repellat vitae at, aut nulla, perspiciatis cupiditate non ipsum animi dolores, voluptatem est ea, minima dignissimos. Doloribus minima magnam perspiciatis.&lt;br /&gt;&amp;nbsp;&amp;nbsp; &amp;nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus vel facilis asperiores consequuntur minus excepturi quas, voluptatibus atque aut vitae! Non omnis, consectetur? Ex eligendi, fuga aspernatur velit assumenda ad unde dicta harum. Ab dolorem voluptate rerum natus voluptas ex repudiandae, sint sapiente cupiditate tempore necessitatibus dignissimos, quam exercitationem consequuntur officia placeat, eaque est a praesentium laboriosam provident minima obcaecati. Sunt ipsa cumque nobis sint aliquam non magnam incidunt inventore quia quod, iste repellat ducimus, ratione delectus maiores accusantium, eos.&lt;/p&gt;', 220.97,2,2,2,'upload/c.jpg', 0),
(4, 'Lorem Ipsum is simply', 10, 4, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati labore voluptas neque doloremque? Illum voluptates, illo inventore qui fuga, harum dignissimos dolore earum sint. Hic mollitia consectetur, quis voluptatibus quae placeat, aliquid, in facilis, id doloribus cumque modi nemo maxime. Fugiat eum adipisci et quam dicta, nam quidem sapiente, nobis, doloremque magnam reprehenderit voluptatibus repudiandae praesentium. Minus consequuntur maxime, nostrum eos, molestias velit officiis alias incidunt enim reiciendis, pariatur repudiandae consectetur fugit! Suscipit sunt atque commodi repudiandae adipisci, dolore quaerat eveniet minima, repellat sint quas impedit velit quidem necessitatibus excepturi qui veniam maiores quibusdam animi neque consequuntur consectetur. Velit deleniti repellat vitae at, aut nulla, perspiciatis cupiditate non ipsum animi dolores, voluptatem est ea, minima dignissimos. Doloribus minima magnam perspiciatis.&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus vel facilis asperiores consequuntur minus excepturi quas, voluptatibus atque aut vitae! Non omnis, consectetur? Ex eligendi, fuga aspernatur velit assumenda ad unde dicta harum. Ab dolorem voluptate rerum natus voluptas ex repudiandae, sint sapiente cupiditate tempore necessitatibus dignissimos, quam exercitationem consequuntur officia placeat, eaque est a praesentium laboriosam provident minima obcaecati. Sunt ipsa cumque nobis sint aliquam non magnam incidunt inventore quia quod, iste repellat ducimus, ratione delectus maiores accusantium, eos.&lt;/p&gt;', 600,2,2,2, 'upload/d.jpg', 0),
(5, 'House-01', 17, 5, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati labore voluptas neque doloremque? Illum voluptates, illo inventore qui fuga, harum dignissimos dolore earum sint. Hic mollitia consectetur, quis voluptatibus quae placeat, aliquid, in facilis, id doloribus cumque modi nemo maxime. Fugiat eum adipisci et quam dicta, nam quidem sapiente, nobis, doloremque magnam reprehenderit voluptatibus repudiandae praesentium. Minus consequuntur maxime, nostrum eos, molestias velit officiis alias incidunt enim reiciendis, pariatur repudiandae consectetur fugit! Suscipit sunt atque commodi repudiandae adipisci, dolore quaerat eveniet minima, repellat sint quas impedit velit quidem necessitatibus excepturi qui veniam maiores quibusdam animi neque consequuntur consectetur. Velit deleniti repellat vitae at, aut nulla, perspiciatis cupiditate non ipsum animi dolores, voluptatem est ea, minima dignissimos. Doloribus minima magnam perspiciatis.&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus vel facilis asperiores consequuntur minus excepturi quas, voluptatibus atque aut vitae! Non omnis, consectetur? Ex eligendi, fuga aspernatur velit assumenda ad unde dicta harum. Ab dolorem voluptate rerum natus voluptas ex repudiandae, sint sapiente cupiditate tempore necessitatibus dignissimos, quam exercitationem consequuntur officia placeat, eaque est a praesentium laboriosam provident minima obcaecati. Sunt ipsa cumque nobis sint aliquam non magnam incidunt inventore quia quod, iste repellat ducimus, ratione delectus maiores accusantium, eos.&lt;/p&gt;', 550, 2,2,2,'upload/e.jpg', 1),
(6, 'House-02', 19, 1, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati labore voluptas neque doloremque? Illum voluptates, illo inventore qui fuga, harum dignissimos dolore earum sint. Hic mollitia consectetur, quis voluptatibus quae placeat, aliquid, in facilis, id doloribus cumque modi nemo maxime. Fugiat eum adipisci et quam dicta, nam quidem sapiente, nobis, doloremque magnam reprehenderit voluptatibus repudiandae praesentium. Minus consequuntur maxime, nostrum eos, molestias velit officiis alias incidunt enim reiciendis, pariatur repudiandae consectetur fugit! Suscipit sunt atque commodi repudiandae adipisci, dolore quaerat eveniet minima, repellat sint quas impedit velit quidem necessitatibus excepturi qui veniam maiores quibusdam animi neque consequuntur consectetur. Velit deleniti repellat vitae at, aut nulla, perspiciatis cupiditate non ipsum animi dolores, voluptatem est ea, minima dignissimos. Doloribus minima magnam perspiciatis.&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus vel facilis asperiores consequuntur minus excepturi quas, voluptatibus atque aut vitae! Non omnis, consectetur? Ex eligendi, fuga aspernatur velit assumenda ad unde dicta harum. Ab dolorem voluptate rerum natus voluptas ex repudiandae, sint sapiente cupiditate tempore necessitatibus dignissimos, quam exercitationem consequuntur officia placeat, eaque est a praesentium laboriosam provident minima obcaecati. Sunt ipsa cumque nobis sint aliquam non magnam incidunt inventore quia quod, iste repellat ducimus, ratione delectus maiores accusantium, eos.&lt;/p&gt;', 660,2,2,2, 'upload/f.jpg', 0),
(7, 'House-03', 20, 4, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati labore voluptas neque doloremque? Illum voluptates, illo inventore qui fuga, harum dignissimos dolore earum sint. Hic mollitia consectetur, quis voluptatibus quae placeat, aliquid, in facilis, id doloribus cumque modi nemo maxime. Fugiat eum adipisci et quam dicta, nam quidem sapiente, nobis, doloremque magnam reprehenderit voluptatibus repudiandae praesentium. Minus consequuntur maxime, nostrum eos, molestias velit officiis alias incidunt enim reiciendis, pariatur repudiandae consectetur fugit! Suscipit sunt atque commodi repudiandae adipisci, dolore quaerat eveniet minima, repellat sint quas impedit velit quidem necessitatibus excepturi qui veniam maiores quibusdam animi neque consequuntur consectetur. Velit deleniti repellat vitae at, aut nulla, perspiciatis cupiditate non ipsum animi dolores, voluptatem est ea, minima dignissimos. Doloribus minima magnam perspiciatis.&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus vel facilis asperiores consequuntur minus excepturi quas, voluptatibus atque aut vitae! Non omnis, consectetur? Ex eligendi, fuga aspernatur velit assumenda ad unde dicta harum. Ab dolorem voluptate rerum natus voluptas ex repudiandae, sint sapiente cupiditate tempore necessitatibus dignissimos, quam exercitationem consequuntur officia placeat, eaque est a praesentium laboriosam provident minima obcaecati. Sunt ipsa cumque nobis sint aliquam non magnam incidunt inventore quia quod, iste repellat ducimus, ratione delectus maiores accusantium, eos.&lt;/p&gt;', 880,2,2,2, 'upload/g.jpg', 0),
(8, 'House-04', 18, 2, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati labore voluptas neque doloremque? Illum voluptates, illo inventore qui fuga, harum dignissimos dolore earum sint. Hic mollitia consectetur, quis voluptatibus quae placeat, aliquid, in facilis, id doloribus cumque modi nemo maxime. Fugiat eum adipisci et quam dicta, nam quidem sapiente, nobis, doloremque magnam reprehenderit voluptatibus repudiandae praesentium. Minus consequuntur maxime, nostrum eos, molestias velit officiis alias incidunt enim reiciendis, pariatur repudiandae consectetur fugit! Suscipit sunt atque commodi repudiandae adipisci, dolore quaerat eveniet minima, repellat sint quas impedit velit quidem necessitatibus excepturi qui veniam maiores quibusdam animi neque consequuntur consectetur. Velit deleniti repellat vitae at, aut nulla, perspiciatis cupiditate non ipsum animi dolores, voluptatem est ea, minima dignissimos. Doloribus minima magnam perspiciatis.&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus vel facilis asperiores consequuntur minus excepturi quas, voluptatibus atque aut vitae! Non omnis, consectetur? Ex eligendi, fuga aspernatur velit assumenda ad unde dicta harum. Ab dolorem voluptate rerum natus voluptas ex repudiandae, sint sapiente cupiditate tempore necessitatibus dignissimos, quam exercitationem consequuntur officia placeat, eaque est a praesentium laboriosam provident minima obcaecati. Sunt ipsa cumque nobis sint aliquam non magnam incidunt inventore quia quod, iste repellat ducimus, ratione delectus maiores accusantium, eos.&lt;/p&gt;', 550, 2,2,2,'upload/h.jpg', 0),
(9, 'House-05', 17, 5, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati labore voluptas neque doloremque? Illum voluptates, illo inventore qui fuga, harum dignissimos dolore earum sint. Hic mollitia consectetur, quis voluptatibus quae placeat, aliquid, in facilis, id doloribus cumque modi nemo maxime. Fugiat eum adipisci et quam dicta, nam quidem sapiente, nobis, doloremque magnam reprehenderit voluptatibus repudiandae praesentium. Minus consequuntur maxime, nostrum eos, molestias velit officiis alias incidunt enim reiciendis, pariatur repudiandae consectetur fugit! Suscipit sunt atque commodi repudiandae adipisci, dolore quaerat eveniet minima, repellat sint quas impedit velit quidem necessitatibus excepturi qui veniam maiores quibusdam animi neque consequuntur consectetur. Velit deleniti repellat vitae at, aut nulla, perspiciatis cupiditate non ipsum animi dolores, voluptatem est ea, minima dignissimos. Doloribus minima magnam perspiciatis.&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus vel facilis asperiores consequuntur minus excepturi quas, voluptatibus atque aut vitae! Non omnis, consectetur? Ex eligendi, fuga aspernatur velit assumenda ad unde dicta harum. Ab dolorem voluptate rerum natus voluptas ex repudiandae, sint sapiente cupiditate tempore necessitatibus dignissimos, quam exercitationem consequuntur officia placeat, eaque est a praesentium laboriosam provident minima obcaecati. Sunt ipsa cumque nobis sint aliquam non magnam incidunt inventore quia quod, iste repellat ducimus, ratione delectus maiores accusantium, eos.&lt;/p&gt;', 5000, 2,2,2,'upload/i.jpg', 1),
(10, 'House-06', 19, 3, '&lt;p&gt;Product description goes here. There is a same sample here. The month of is the&lt;/p&gt;', 550,2,2,2, 'upload/a.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wlist`
--

CREATE TABLE `tbl_wlist` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wlist`
--

INSERT INTO `tbl_wlist` (`id`, `cmrId`, `productId`, `productName`, `price`, `image`) VALUES
(6, 1, 7, 'House-03', 880.00, 'upload/c.jpg');

--
-- Indexes for dumped tables
--

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `your_name` varchar(30) NOT NULL,
  `your_no` int(15) NOT NULL,
  `email_address` varchar(30) NOT NULL,
  `msg` varchar(30) NOT NULL,
  `msg_time` varchar(20) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `your_name`, `your_no`, `email_address`, `msg`, `msg_time`) VALUES
(1, 'Tareq', 01779795618, 'tareq@gmail.com', 'Hello', '2021-01-03 00:09:35'),
(2, 'Fazlul', 01771516911, 'fazlul@gmail.com', 'Hi', '2021-08-20 20:57:54');


--
-- Table structure for table `tbl_school`
--

CREATE TABLE `tbl_school` (
 `id` int(11) NOT NULL,
  `student_name` varchar(30) NOT NULL,
  `father_name`  varchar(30) NOT NULL,
  `mother_name` varchar(30) NOT NULL,
  `s_phone` int(15) NOT NULL,
  `s_class` int(15) NOT NULL,
  `email_address` varchar(30) NOT NULL,
  `msg` varchar(30) NOT NULL,
  `msg_time` varchar(20) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_school`
--
INSERT INTO `tbl_school` (`id`, `student_name`, `father_name`, `mother_name`, `s_phone`, `s_class`, `email_address`, `msg`, `msg_time`) VALUES
(1, 'Tareq', 'A', 'B', 01779795618, 10,'tareq@gmail.com', 'Hello', '2021-01-03 00:09:35'),
(2, 'Fazlul', 'C', 'D', 01771516911, 10, 'fazlul@gmail.com', 'Hi', '2021-08-20 20:57:54');



--
-- Table structure for table `tbl_hospital`
--
CREATE TABLE `tbl_hospital` (
  `id` int(11) NOT NULL,
  `patient_name` varchar(30) NOT NULL,
  `father_name`  varchar(30) NOT NULL,
  `reason` varchar(30) NOT NULL,
  `patient_phone` int(15) NOT NULL,
  `patient_age` int(15) NOT NULL,
  `email_address` varchar(30) NOT NULL,
  `msg` varchar(30) NOT NULL,
  `msg_time` varchar(20) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_hospital`
--
INSERT INTO `tbl_hospital` (`id`, `patient_name`, `father_name`, `reason`, `patient_phone`, `patient_age`, `email_address`, `msg`, `msg_time`) VALUES
(1, 'Kamal', 'M', 'N', 0177777777, 12,'kamal@gmail.com', 'high pressure', '2021-01-03 00:09:35'),
(2, 'Jamal', 'C', 'D', 0166666666, 13, 'jamal@gmail.com', 'Low pressure', '2021-08-20 20:57:54');





--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
