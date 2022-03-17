-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2022 at 09:34 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`) VALUES
(8, 'Car', 'http://static.tapchitaichinh.vn/w640/images/upload/08122020/hyundaikona-1596303603319-9036-1597115160_860x0_b44a7aca.jpg'),
(9, 'Motorbike', 'https://vcdn1-vnexpress.vnecdn.net/2021/12/16/airblade-1639662207-1639662219-6380-1639662474.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=9klebEWrrRFCTRvQVZ_xwg'),
(10, 'Bicycle', 'https://cdn.tgdd.vn/Products/Images/9758/247981/mtb-fascino-fs-126-den-do-1-org.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220106034926', '2022-01-06 07:06:33', 61),
('DoctrineMigrations\\Version20220106061922', '2022-01-06 09:16:51', 240),
('DoctrineMigrations\\Version20220106063706', '2022-01-06 07:37:16', 72),
('DoctrineMigrations\\Version20220106085626', '2022-01-06 09:56:36', 983),
('DoctrineMigrations\\Version20220106092627', '2022-01-06 10:27:13', 279);

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `id` int(11) NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`id`, `name`, `image`) VALUES
(2, 'USA', 'https://tse1.mm.bing.net/th?id=OIP.4BXU-D-0fxkuu6cMoyVweQHaGS&pid=Api&P=0&w=214&h=181'),
(3, 'China', 'https://tse1.mm.bing.net/th?id=OIP.erDelOm4hk1UO8qKPJgdHAHaE0&pid=Api&P=0&w=250&h=163'),
(4, 'France', 'https://travelerknow.com/nhung-dia-diem-du-lich-noi-tieng-o-phap/imager_10077.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `place_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `qty`, `description`, `category_id`, `price`, `place_id`) VALUES
(3, 'Mazda 2', 'https://mazdamotors.vn/media/xnfl1tms/new-mazda2-500x300.png', 100, '<p style=\"text-align:justify\">Mazda đã nâng cấp giao diện điều khiển cho người dùng bằng cách bố trí lại chân ga, vị trí lái xe, hệ thống giải trí và điều chỉnh tầm nhìn trong buồng lái; bổ sung hàng loạt tiện ích như: màn hình HUD, Apple CarPlay và Android Auto kết nối thông minh, gương tự động chống chói… giúp người lái dễ dàng kết nối và điều khiển mọi thứ trong tầm tay. Tất cả những yếu tố tiện nghi cao cấp giúp người sở hữu lái xe với tâm trí thoải mái và mang đến cảm hứng sống tích cực từng ngày.</p>\r\n', 8, 45000, 2),
(4, 'Honda HR-V', 'https://xehaybinhduong.com/wp-content/uploads/2021/12/HONDA-HR-V.png', 200, '<h2>THIẾT KẾ NGOẠI THẤT HONDA HRV 2021&nbsp;ĐẸP MẮT</h2>\r\n\r\n<p>Sở hữu phong cách coupe thể thao,&nbsp;thời thượng cùng những chi tiết thiết kế hiện đại và sắc sảo,&nbsp;Honda HR-V&nbsp;tỏa sức hút của người tiên phong.&nbsp;Cụ thể, Honda HR-V 2021&nbsp;là sự kết hợp giữa phong cách trẻ trung, thời thượng, và sự linh hoạt, tiện dụng của một chiếc xe thành thị. Hướng đến những khách hàng thành đạt, HR-V sở hữu thiết kế năng động, trẻ trung, với những đường nét góc cạnh đầy tinh tế.&nbsp;</p>\r\n\r\n<h3>Đầu xe</h3>\r\n\r\n<p>Phần đầu xe mang ngôn ngữ thiết kế đặc trưng của Honda. Khá giống với phong cách thiết kế của Honda Civic hay CR-V, đầu xe pha trộn nét đẹp hầm hố và thời thượng nhờ phần mặt la-zăng, với lưới tản nhiệt to,&nbsp; bản màu đen, nằm sát bên trên là thanh ngang được mạ crom dày bóng bẩy đính kèm logo hình chữ H quen thuộc giúp tôn lên nét khỏe khắn cho dòng xe này.</p>\r\n', 8, 30000, 4),
(5, 'Dream tàu', 'https://thibanglaixe.com.vn/wp-content/uploads/2020/08/Xe-Dream-Th%C3%A1i-%C4%91%C6%B0%E1%BB%A3c-nhi%E1%BB%81u-ng%C6%B0%E1%BB%9Di-y%C3%AAu-th%C3%ADch.jpg', 20, '<p>Không có cà vẹt, chuyển tiền là có xe liền</p>\r\n', 9, 15000000, 3),
(6, 'Xe đạp điện hình', 'https://cdn.tgdd.vn/Products/Images/9758/247981/mtb-fascino-fs-126-den-do-1-org.jpg', 300, '<h3>Thiết kế thể thao, năng động</h3>\r\n\r\n<p>Xe đạp MTB Fascino FS-126 sở hữu kiểu dáng mạnh mẽ, năng động cùng nhiều phiên bản màu sắc cá tính để người dùng thoải mái lựa chọn tùy theo sở thích (các phiên bản còn hàng tùy khu vực và thời điểm, bài viết được minh họa bằng phiên bản màu đen đỏ). Xe cho khả năng kiểm soát tốt, an toàn với người dùng trong những chuyến&nbsp;<a href=\"https://www.dienmayxanh.com/xe-dap-di-hang-ngay\" target=\"_blank\" title=\"Xem thêm một số mẫu xe đạp đi hàng ngày đang bán tại Điện Máy Xanh\">đi hàng ngày</a>,&nbsp;<a href=\"https://www.dienmayxanh.com/xe-dap-tap-the-thao\" target=\"_blank\" title=\"Xem thêm một số mẫu xe đạp tập thể thao đang bán tại Điện Máy Xanh\">tập luyện thể thao</a>&nbsp;hay phượt ngắn cùng người thân và bạn bè.</p>\r\n', 10, 300000, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `place_id` (`place_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`place_id`) REFERENCES `place` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
