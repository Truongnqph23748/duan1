-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 26, 2022 at 07:51 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jean_thoi_trang_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `loai_san_pham`
--

CREATE TABLE `loai_san_pham` (
  `ma_loai` int(11) NOT NULL,
  `ten_loai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_loai_cha` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loai_san_pham`
--

INSERT INTO `loai_san_pham` (`ma_loai`, `ten_loai`, `mo_ta`, `ma_loai_cha`) VALUES
(9, 'Đồ Nam', NULL, 0),
(10, 'Quần Jean', NULL, 9),
(11, 'Quần Short', '                                                ', 9),
(12, 'Áo khoác Jeans', NULL, 9),
(13, 'Nón Jeans', NULL, 9),
(14, 'Áo Jeans', NULL, 9),
(15, 'Đồ Nữ', NULL, 0),
(21, 'Quần Jean', NULL, 15),
(22, 'Quần Shorts', NULL, 15),
(23, 'Áo khoác Jeans', NULL, 15),
(24, 'Nón jeans', NULL, 15),
(25, 'Áo Jeans', NULL, 15),
(26, 'con cac', '', 15);

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `ma_nguoi_dung` int(11) NOT NULL,
  `ma_loai_nguoi_dung` tinyint(3) NOT NULL,
  `ho_ten` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ten_dang_nhap` varchar(100) CHARACTER SET utf8 NOT NULL,
  `mat_khau` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ngay_dang_ky` date DEFAULT NULL,
  `ngay_dang_nhap_cuoi` date DEFAULT NULL,
  `active` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`ma_nguoi_dung`, `ma_loai_nguoi_dung`, `ho_ten`, `ten_dang_nhap`, `mat_khau`, `email`, `ngay_dang_ky`, `ngay_dang_nhap_cuoi`, `active`) VALUES
(1, 1, 'Khuất Thùy Phương', 'phuong', '123456', 'ktphuong@hcmuns.edu.vn', '2007-11-01', NULL, 1),
(2, 2, 'Đỗ Lâm Thiên', 'thien', 'e10adc3949ba59abbe56e057f20f883e', 'dlthien@hcmuns.edu.vn', '2007-11-02', NULL, 0),
(3, 3, 'Trương Hữu Quý', 'quy', '123456', 'thquy@hcmuns.edu.vn', '2007-11-03', NULL, 0),
(4, 4, 'Nguyễn Kiến Thy', 'thy', '123456', 'nkthy@hcmuns.edu.vn', '2007-11-04', NULL, 0),
(5, 3, 'Phạm Thị Nhung', 'nhung', '123456', 'ptnhung@hcmuns.edu.vn', '2007-11-02', NULL, 0),
(6, 4, 'Lâm Thị Thu Hồng', 'hong', '123456', 'ltthong@hcmuns.edu.vn', '2007-11-06', NULL, 0),
(7, 3, 'Nguyễn Tiến Dũng', 'dung', '123456', 'ntd@hcmuns.edu.vn', '2007-11-02', NULL, 0),
(8, 4, 'Nguyễn Hữu Thiện', 'huuthien', '123456', 'nhthien@hcmuns.edu.vn', '2007-11-04', NULL, 0),
(9, 3, 'Nguyễn Thị Minh Hằng', 'hang', '123456', 'ntmhang@hcmuns.edu.vn', '2007-11-05', NULL, 0),
(10, 7, 'Nguyễn Thị Minh Trang', 'trang', '123456', 'ntmtrang@hcmuns.edu.vn', '2007-11-06', NULL, 0),
(11, 4, 'Nguyễn Thị Phương Lan', 'lan', '123456', 'ntplan@hcmuns.edu.vn', '2007-11-02', NULL, 0),
(12, 4, 'Nguyễn Đăng Thái Bình', 'binh', '123456', 'ndtbinh@hcmuns.edu.vn', '2007-11-09', NULL, 0),
(13, 8, 'Khách', 'khach', '123456', '', '2007-11-01', NULL, 0),
(15, 7, 'Mai Lê Toàn', '', '123456', 'mltoan@yahoo.com', '2007-11-08', '0000-00-00', 0),
(16, 8, 'quốc cường', 'quoccuong', '01514652cabb16dc2bbe38a631d56f32', 'cqcuong.php@gmail.com', '2011-01-07', NULL, 1),
(17, 8, 'quốc cường', 'quoccuong', '01514652cabb16dc2bbe38a631d56f32', 'cqcuong.php@gmail.com', '2011-01-07', NULL, 1),
(18, 24, 'Hoàng Quang Thắng', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'thanghoang064@gmail.com', '2017-09-13', '2017-09-20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `ma_san_pham` int(11) NOT NULL,
  `ten_san_pham` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ma_loai_cha` int(11) NOT NULL,
  `ma_loai` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_tom_tat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mo_ta_chi_tiet` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `don_gia` int(11) NOT NULL DEFAULT 0,
  `hinh` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `san_pham_moi` tinyint(4) NOT NULL DEFAULT 0,
  `so_lan_xem` int(11) NOT NULL,
  `ngay_tao` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`ma_san_pham`, `ten_san_pham`, `ma_loai_cha`, `ma_loai`, `mo_ta_tom_tat`, `mo_ta_chi_tiet`, `don_gia`, `hinh`, `san_pham_moi`, `so_lan_xem`, `ngay_tao`) VALUES
(210, 'Quần jean nữ sneakpeak QD305-26', 15, '21', 'Dáng basic nhưng được phá cách bằng những đường chỉ trần nổi màu vàng làm tôn vòng 3 quyến rũ và đôi chân thon dài của các nàng là một chấm phá đặc biệt nổi bật của quần jean nữ  QD305-26 của thương hiệu Sneakpeak.', 'Thông tin sản phẩm:\r\n\r\nDáng basic nhưng được phá cách bằng những đường chỉ trần nổi màu vàng làm tôn vòng 3 quyến rũ và đôi chân thon dài của các nàng là một chấm phá đặc biệt nổi bật của quần jean nữ  QD305-26 của thương hiệu Sneakpeak.\r\n\r\n- Chất jean đẹp, co giãn tốt , độ bai ít.\r\n\r\n- Tỷ lệ phai màu là 2/10 nhưng vẫn giữ được màu căn bản của quần\r\n\r\n-Sản phẩm được phép giặt máy nhưng không được giặt chung với cácsản phẩm sáng màu\r\n\r\n- Quần có 2 gam màu xanh đậm và xanh nhạt dễ dàng mix với nhiều kiểu, Size 1, 3, 5, 7\r\n\r\n Thông tin người mẫu:\r\n\r\n- Chiều cao: 1m65\r\n\r\n- Cân nặng: 47kg\r\n\r\n- Số đo 3 vòng: 81 - 62 - 89\r\n\r\n- Size người mẫu mặc: 1\r\nKÍCH CỠ (cm)\r\n 	SIZE	XS (0)	S (1)	M (3)	L (5)	XL (7)\r\nÁO	Ngang vai	33	34	36	38	40\r\nNgực	80	84	88	92	96\r\nEo 	30	64	68	72	76\r\nHông	80	84	88	92	96\r\nQUẦN	Eo	60	64	68	72	76\r\nHông	80	84	88	92	96\r\nDài	85	86	87	88	90\r\nỐng	11	11	11	12	13', 305000, '2606-jean nu.jpg', 0, 1, '2014-10-06'),
(211, 'Quần jean nữ F21 QD310-06', 15, '21', 'Mạnh mẽ ,cá tính nhưng vẫn đầy quyến rũ quần jean QD310-06 của thương hiệu Forever21 vẫn chiếm được lòng phái đẹp. Thiết kế đặc biệt với đường chỉ trần nổi toàn quần, đường cắt ngang mông giúp tôn vòng 3 gợi cảm, và bản can 3cm dọc 2 sườn quần tạo cảm giác kéo dài đôi chân miên man. Là sản phẩm độc quyền của Zenda', 'Thông tin sản phẩm:\r\n\r\nMạnh mẽ ,cá tính nhưng vẫn đầy quyến rũ quần jean QD310-06 của thương hiệu Forever21 vẫn chiếm được lòng phái đẹp. Thiết kế đặc biệt với đường chỉ trần nổi toàn quần, đường cắt ngang mông giúp tôn vòng 3 gợi cảm, và bản can 3cm dọc 2 sườn quần tạo cảm giác kéo dài đôi chân miên man. Là sản phẩm độc quyền của Zenda\r\n\r\n- Quần dáng body, bản cạp nối, 2 khuy \r\n\r\n- Vải 98%cotton, 2%spandex, vải độc quyền của nhà máy không có trên thị trường Việt Nam\r\n\r\n- Tỷ lệ phai màu 2/10 nhưng vẫn giữ được màu căn bản của quần\r\n\r\n- Chất jean dày dăn, co giãn ít, có độ bền cao.\r\n\r\n- Tỷ lệ phai màu là 1/10 nhưng vẫn giữ được màu căn bản của quần\r\n\r\n-Sản phẩm được phép giặt máy nhưng không được giặt chung với cácsản phẩm sáng màu\r\n\r\n- Quần có 3 gam màu xanh đậm, xanh vừa và xanh nhạt dễ dàng mix với nhiều kiểu, Size 1,3,5,7,9\r\n\r\n Thông tin người mẫu:\r\n\r\n- Chiều cao: 1m65\r\n\r\n- Cân nặng: 47kg\r\n\r\n- Số đo 3 vòng: 81 - 62 - 89\r\n\r\n- Size người mẫu mặc: 1', 310000, 'f21 jean nu.jpg', 1, 1, '2014-10-06'),
(212, 'Quần jean nữ MNG QD305-24', 15, '21', 'Thông tin sản phẩm:\r\n\r\n- Quần jean nữ 3 khuy, cạp cao của MNG, điểm nhấn là sự sắp xếp của những chiếc đỉa trên bản cạp cao 7cm.\r\n\r\n- Chất jean co giãn tốt, độ bai ít, tỉ lệ phai chiếm 0,2%, mặc cực ôm và tôn dáng chuẩn, đường cắt cúp thân sau làm tôn vòng 3 quyến rũ\r\n\r\n- Mix đồ với áo thun, áo sơ mi cơ bản và đóng thùng rất đẹp\r\n\r\n- Có 2 màu xanh đậm và xanh trung, Size 1, 3, 5, 7 \r\n\r\nThông tin người mẫu:\r\n\r\n- Chiều cao: 1m62\r\n\r\n- Cân nặng: 47kg\r\n\r\n-  Số đo 3 vòng: 84 - 62 - 88cm\r\n\r\n- Size người mẫu mặc: 1', 'Thông tin sản phẩm:\r\n\r\n- Quần jean nữ 3 khuy, cạp cao của MNG, điểm nhấn là sự sắp xếp của những chiếc đỉa trên bản cạp cao 7cm.\r\n\r\n- Chất jean co giãn tốt, độ bai ít, tỉ lệ phai chiếm 0,2%, mặc cực ôm và tôn dáng chuẩn, đường cắt cúp thân sau làm tôn vòng 3 quyến rũ\r\n\r\n- Mix đồ với áo thun, áo sơ mi cơ bản và đóng thùng rất đẹp\r\n\r\n- Có 2 màu xanh đậm và xanh trung, Size 1, 3, 5, 7 \r\n\r\nThông tin người mẫu:\r\n\r\n- Chiều cao: 1m62\r\n\r\n- Cân nặng: 47kg\r\n\r\n-  Số đo 3 vòng: 84 - 62 - 88cm\r\n\r\n- Size người mẫu mặc: 1', 305000, 'qd305 jean nu.jpg', 1, 1, '2014-10-06'),
(213, 'Quần jean nữ Zara woman QD305-22', 15, '21', 'Thông tin sản phẩm:\r\n\r\n- Quần jean nữ 5 khuy đồng của Zara woman\r\n\r\n- Chất jean co giãn tốt, mặc cực ôm và tôn dáng chuẩn\r\n\r\n- Mix đồ với áo thun, áo sơ mi cơ bản và đóng thùng rất đẹp\r\n\r\n- Có 2 màu đen và xanh đậm, Size 1, 3, 5, 7 \r\n\r\nThông tin người mẫu:\r\n\r\n- Chiều cao: 1m62\r\n\r\n- Cân nặng: 47kg\r\n\r\n-  Số đo 3 vòng: 84 - 62 - 88cm\r\n\r\n- Size người mẫu mặc: 1\r\n\r\n ', 'Thông tin sản phẩm:\r\n\r\n- Quần jean nữ 5 khuy đồng của Zara woman\r\n\r\n- Chất jean co giãn tốt, mặc cực ôm và tôn dáng chuẩn\r\n\r\n- Mix đồ với áo thun, áo sơ mi cơ bản và đóng thùng rất đẹp\r\n\r\n- Có 2 màu đen và xanh đậm, Size 1, 3, 5, 7 \r\n\r\nThông tin người mẫu:\r\n\r\n- Chiều cao: 1m62\r\n\r\n- Cân nặng: 47kg\r\n\r\n-  Số đo 3 vòng: 84 - 62 - 88cm\r\n\r\n- Size người mẫu mặc: 1\r\n\r\n ', 305000, 'qd305-jean nu.JPG', 1, 1, '2014-10-06'),
(214, 'Quần Jean Leara Wonman QD310-05', 15, '21', 'Thông tin sản phẩm:\r\n\r\n- Quần jean nữ Leara Wonman , dáng cơ bản, có khóa hai bên ống chân.\r\n\r\n- Chất jean jean cực đẹp, không nhuộm, không phai, vải xuất dư, co giãn tốt, điểm nhấn là khóa 2 bên, mặc cực ôm và tôn dáng chuẩn\r\n\r\n- Mix đồ với áo thun, áo sơ mi cơ bản và đóng thùng rất đẹp\r\n\r\n- Có 1 màu đen duy nhất,  Size 1, 3, 5, 7\r\n\r\nThông tin người mẫu:\r\n\r\n- Chiều cao: 1m62\r\n\r\n- Cân nặng: 47kg\r\n\r\n-  Số đo 3 vòng: 84 - 62 - 88cm\r\n\r\n- Size người mẫu mặc: 1', 'Thông tin sản phẩm:\r\n\r\n- Quần jean nữ Leara Wonman , dáng cơ bản, có khóa hai bên ống chân.\r\n\r\n- Chất jean jean cực đẹp, không nhuộm, không phai, vải xuất dư, co giãn tốt, điểm nhấn là khóa 2 bên, mặc cực ôm và tôn dáng chuẩn\r\n\r\n- Mix đồ với áo thun, áo sơ mi cơ bản và đóng thùng rất đẹp\r\n\r\n- Có 1 màu đen duy nhất,  Size 1, 3, 5, 7\r\n\r\nThông tin người mẫu:\r\n\r\n- Chiều cao: 1m62\r\n\r\n- Cân nặng: 47kg\r\n\r\n-  Số đo 3 vòng: 84 - 62 - 88cm\r\n\r\n- Size người mẫu mặc: 1', 310000, 'quan-jean-leara-wonman-qd310.JPG', 1, 1, '2014-10-06'),
(215, 'Quần jean nữ pull&bear QD305-25', 15, '21', 'Thông tin sản phẩm:\r\n\r\nĐộc đáo và lạ mắt với jean dập ô vuông, mài nhẹ thân trước của thương hiệu thời trang pull & bear, form chuẩn, ôm và tôn vòng vòng 3 \r\n\r\n- Quần được dập 2 ô vuông bên trái, 1 ô bên phải, 2 túi sau dấu miệng bổ cơi, bản cạp 4cm có đỉa\r\n\r\n- Chất jean đẹp, co giãn tốt , độ bai ít.\r\n\r\n- Tỷ lệ phai màu là 2/10 nhưng vẫn giữ được màu căn bản của quần\r\n\r\n-Sản phẩm được phép giặt máy nhưng không được giặt chung với cácsản phẩm sáng màu\r\n\r\n- Quần có 2 gam màu xanh đậm và xanh nhạt dễ dàng mix với nhiều kiểu, Size 34, 36, 38, 40, 42\r\n\r\n Thông tin người mẫu:\r\n\r\n- Chiều cao: 1m65\r\n\r\n- Cân nặng: 47kg\r\n\r\n- Số đo 3 vòng: 81 - 62 - 89\r\n\r\n- Size người mẫu mặc: 34', 'Thông tin sản phẩm:\r\n\r\nĐộc đáo và lạ mắt với jean dập ô vuông, mài nhẹ thân trước của thương hiệu thời trang pull & bear, form chuẩn, ôm và tôn vòng vòng 3 \r\n\r\n- Quần được dập 2 ô vuông bên trái, 1 ô bên phải, 2 túi sau dấu miệng bổ cơi, bản cạp 4cm có đỉa\r\n\r\n- Chất jean đẹp, co giãn tốt , độ bai ít.\r\n\r\n- Tỷ lệ phai màu là 2/10 nhưng vẫn giữ được màu căn bản của quần\r\n\r\n-Sản phẩm được phép giặt máy nhưng không được giặt chung với cácsản phẩm sáng màu\r\n\r\n- Quần có 2 gam màu xanh đậm và xanh nhạt dễ dàng mix với nhiều kiểu, Size 34, 36, 38, 40, 42\r\n\r\n Thông tin người mẫu:\r\n\r\n- Chiều cao: 1m65\r\n\r\n- Cân nặng: 47kg\r\n\r\n- Số đo 3 vòng: 81 - 62 - 89\r\n\r\n- Size người mẫu mặc: 34', 305000, 'quan-jean-leara-wonman-qd311.JPG', 1, 111, '2014-10-06'),
(216, 'quan-jean-leara-wonman-qd312.JPG', 15, '21', 'Thông tin sản phẩm:\r\n\r\n- Quần jean nữ 3 khuy, cạp cao của MNG, điểm nhấn là sự sắp xếp của những chiếc đỉa trên bản cạp cao 7cm.\r\n\r\n- Chất jean co giãn tốt, độ bai ít, tỉ lệ phai chiếm 0,2%, mặc cực ôm và tôn dáng chuẩn, đường cắt cúp thân sau làm tôn vòng 3 quyến rũ\r\n\r\n- Mix đồ với áo thun, áo sơ mi cơ bản và đóng thùng rất đẹp\r\n\r\n- Có 2 màu xanh đậm và xanh trung, Size 1, 3, 5, 7 \r\n\r\nThông tin người mẫu:\r\n\r\n- Chiều cao: 1m62\r\n\r\n- Cân nặng: 47kg\r\n\r\n-  Số đo 3 vòng: 84 - 62 - 88cm\r\n\r\n- Size người mẫu mặc: 1', 'Thông tin sản phẩm:\r\n\r\n- Quần jean nữ 3 khuy, cạp cao của MNG, điểm nhấn là sự sắp xếp của những chiếc đỉa trên bản cạp cao 7cm.\r\n\r\n- Chất jean co giãn tốt, độ bai ít, tỉ lệ phai chiếm 0,2%, mặc cực ôm và tôn dáng chuẩn, đường cắt cúp thân sau làm tôn vòng 3 quyến rũ\r\n\r\n- Mix đồ với áo thun, áo sơ mi cơ bản và đóng thùng rất đẹp\r\n\r\n- Có 2 màu xanh đậm và xanh trung, Size 1, 3, 5, 7 \r\n\r\nThông tin người mẫu:\r\n\r\n- Chiều cao: 1m62\r\n\r\n- Cân nặng: 47kg\r\n\r\n-  Số đo 3 vòng: 84 - 62 - 88cm\r\n\r\n- Size người mẫu mặc: 1', 305000, 'quan-jean-leara-wonman-qd312.JPG', 1, 122, '2014-10-06'),
(217, 'Quần jean nữ Sneakpeek - QD295-04', 15, '21', 'Thông tin sản phẩm:  \r\n\r\n- Quần jean nữ gập gấu của Sneakpeek\r\n\r\n- Quần jean dáng cơ bản, gập gấu chỉ đỏ, 4 bọ túi sau\r\n\r\n- Quần co giãn tốt, hai màu xanh đậm, xanh nhạt dễ mix đồ\r\n\r\nThông tin người mẫu:\r\n\r\n- Chiều cao: 1m65\r\n\r\n- Cân nặng: 47kg\r\n\r\n- Số đo 3 vòng: 80 - 66 - 87', 'Thông tin sản phẩm:  \r\n\r\n- Quần jean nữ gập gấu của Sneakpeek\r\n\r\n- Quần jean dáng cơ bản, gập gấu chỉ đỏ, 4 bọ túi sau\r\n\r\n- Quần co giãn tốt, hai màu xanh đậm, xanh nhạt dễ mix đồ\r\n\r\nThông tin người mẫu:\r\n\r\n- Chiều cao: 1m65\r\n\r\n- Cân nặng: 47kg\r\n\r\n- Số đo 3 vòng: 80 - 66 - 87', 295000, 'quan-jean-leara-wonman-qd313.JPG', 1, 1, '2014-10-06'),
(218, 'Quần jean nữ MNG - QD305', 15, '21', 'Thông tin sản phẩm: \r\n\r\n- Quần jean nữ MNG dáng basic, chất jean mịn đẹp\r\n\r\n- Ống côn tôn dáng, kéo dài chân \r\n\r\n- Form chuẩn, mix đồ gì cũng đẹp, nhìu màu sắc đa dạng\r\n\r\nThông tin người mẫu:\r\n- Chiều cao: 1m65\r\n\r\n- Cân nặng: 47kg\r\n\r\n- Số đo 3 vòng: 80 - 66 - 87\r\n\r\n- Size người mẫu đang mặc: 32', 'Thông tin sản phẩm: \r\n\r\n- Quần jean nữ MNG dáng basic, chất jean mịn đẹp\r\n\r\n- Ống côn tôn dáng, kéo dài chân \r\n\r\n- Form chuẩn, mix đồ gì cũng đẹp, nhìu màu sắc đa dạng\r\n\r\nThông tin người mẫu:\r\n- Chiều cao: 1m65\r\n\r\n- Cân nặng: 47kg\r\n\r\n- Số đo 3 vòng: 80 - 66 - 87\r\n\r\n- Size người mẫu đang mặc: 32', 305000, 'quan-jean-leara-wonman-qd314.JPG', 1, 1, '2014-10-06'),
(219, 'BURTON MENSWEAR', 9, '10', 'Quần jeans màu xanh đậm của thương hiệu Burton Menswear London với thiết kế dáng ôm sẽ là trang phục yêu thích trong bộ sưu tập thời trang của bạn\r\n\r\n- Chất liệu cotton pha\r\n- Lưng quần có đỉa và nút cài\r\n- Quần có 5 túi cổ điển\r\n- Dáng ôm', 'Quần jeans màu xanh đậm của thương hiệu Burton Menswear London với thiết kế dáng ôm sẽ là trang phục yêu thích trong bộ sưu tập thời trang của bạn\r\n\r\n- Chất liệu cotton pha\r\n- Lưng quần có đỉa và nút cài\r\n- Quần có 5 túi cổ điển\r\n- Dáng ôm', 1000000, 'quan-jean-ong-dung-xanh-duong-qj1180-thumb.jpg', 0, 1, '2014-10-06'),
(220, 'BURTON MENSWEAR', 9, '10', 'Quần jeans màu đen của thương hiệu Burton Menswear London với thiết kế dáng ôm sẽ là trang phục yêu thích trong bộ sưu tập thời trang của bạn\r\n\r\n- Chất liệu cotton pha\r\n- Lưng quần có đỉa và nút cài\r\n- Quần có 5 túi cổ điển\r\n- Dáng ôm', 'Quần jeans màu đen của thương hiệu Burton Menswear London với thiết kế dáng ôm sẽ là trang phục yêu thích trong bộ sưu tập thời trang của bạn\r\n\r\n- Chất liệu cotton pha\r\n- Lưng quần có đỉa và nút cài\r\n- Quần có 5 túi cổ điển\r\n- Dáng ôm', 1079000, 'quan-jean-ong-dung-xanh-den-qj1179-thumb.jpg', 1, 1, '2014-10-06'),
(221, 'BURTON MENSWEAR', 9, '9', 'SKU (simple)	BU071AA82QCFVNMàu sắc	XanhHướng dẫn sử dụng	Giặt máy nhiệt độ không quá 40°CKhông được tẩyKhông được sấy khôỦi nhiệt độ trung bìnhKhông được giặt khôChỉ dùng nước giặt có chất tẩy nhẹGiặt và ủi mặt tráiPhơi khô trong bóng râmThành phần chất liệu	99% Cotton 1% ElastaneXuất xứ	Nhập khẩu', '<p>SKU (simple) BU071AA82QCFVN M&agrave;u sắc Xanh Hướng dẫn sử dụng Giặt m&aacute;y nhiệt độ kh&ocirc;ng qu&aacute; 40&deg;C Kh&ocirc;ng được tẩy Kh&ocirc;ng được sấy kh&ocirc; Ủi nhiệt độ trung b&igrave;nh Kh&ocirc;ng được giặt kh&ocirc; Chỉ d&ugrave;ng nước giặt c&oacute; chất tẩy nhẹ Giặt v&agrave; ủi mặt tr&aacute;i Phơi kh&ocirc; trong b&oacute;ng r&acirc;m Th&agrave;nh phần chất liệu 99% Cotton 1% Elastane Xuất xứ Nhập khẩu</p>\r\n', 1149000, '139452221992.jpg', 1, 1, '2014-10-06'),
(222, 'THE BLUES', 9, '10', 'SKU (simple)	TH296AA21QXUVN\r\nMàu sắc	Đen\r\nHướng dẫn sử dụng	Giặt riêng với bột giặt có chất tẩy nhẹ\r\nKhông được ngâm\r\nKhông được tẩy\r\nKhông được sấy khô\r\nĐể khô trên mặt phẳng\r\nỦi mặt trái với nhiệt độ nóng vừa\r\nThành phần chất liệu	98% cotton 2% spandex\r\nSản phẩm không giảm giá	Sản phẩm này không được áp dụng với voucher hoặc các khuyến mại khác.', 'SKU (simple)	TH296AA21QXUVN\r\nMàu sắc	Đen\r\nHướng dẫn sử dụng	Giặt riêng với bột giặt có chất tẩy nhẹ\r\nKhông được ngâm\r\nKhông được tẩy\r\nKhông được sấy khô\r\nĐể khô trên mặt phẳng\r\nỦi mặt trái với nhiệt độ nóng vừa\r\nThành phần chất liệu	98% cotton 2% spandex\r\nSản phẩm không giảm giá	Sản phẩm này không được áp dụng với voucher hoặc các khuyến mại khác.', 550000, 'quan-jean-ong-dung-xanh-den-qj1177-thumb.jpg', 1, 1, '2014-10-06'),
(223, 'ATYPICAL', 9, '10', '\r\nSKU (simple)	AT987AA66WARVN\r\nMàu sắc	Xanh Đậm\r\nHướng dẫn sử dụng	Giặt ở nhiệt độ trung bình với sản phẩm cùng màu\r\nKhông dùng chất tẩy\r\nSấy nhẹ bằng máy\r\nỦi hơi nếu cần thiết', '\r\nSKU (simple)	AT987AA66WARVN\r\nMàu sắc	Xanh Đậm\r\nHướng dẫn sử dụng	Giặt ở nhiệt độ trung bình với sản phẩm cùng màu\r\nKhông dùng chất tẩy\r\nSấy nhẹ bằng máy\r\nỦi hơi nếu cần thiết', 399000, 'quan-jean-ong-dung-den-qj1176-thumb.jpg', 1, 1, '2014-10-06'),
(224, 'ATYPICAL Quần Jeans Nam', 9, '10', 'SKU (simple)	AT987AA65WASVN\r\nMàu sắc	Xanh Đen\r\nHướng dẫn sử dụng	Giặt ở nhiệt độ trung bình với sản phẩm cùng màu\r\nKhông dùng chất tẩy\r\nSấy nhẹ bằng máy\r\nỦi hơi nếu cần thiết', 'SKU (simple)	AT987AA65WASVN\r\nMàu sắc	Xanh Đen\r\nHướng dẫn sử dụng	Giặt ở nhiệt độ trung bình với sản phẩm cùng màu\r\nKhông dùng chất tẩy\r\nSấy nhẹ bằng máy\r\nỦi hơi nếu cần thiết', 399000, 'quan-jean-xanh-den-qj1170-thumb.jpg', 1, 1, '2014-10-06'),
(225, 'COLA Quần Jeans Rách', 9, '10', 'SKU (simple)	CO811AA95YMYVN\r\nMàu sắc	Xanh\r\nHướng dẫn sử dụng	Giặt riêng với bột giặt có chất tẩy nhẹ\r\nKhông được ngâm\r\nKhông được tẩy\r\nKhông được sấy khô\r\nĐể khô trên mặt phẳng\r\nỦi mặt trái với nhiệt độ nóng vừa', 'SKU (simple)	CO811AA95YMYVN\r\nMàu sắc	Xanh\r\nHướng dẫn sử dụng	Giặt riêng với bột giặt có chất tẩy nhẹ\r\nKhông được ngâm\r\nKhông được tẩy\r\nKhông được sấy khô\r\nĐể khô trên mặt phẳng\r\nỦi mặt trái với nhiệt độ nóng vừa', 390000, 'quan-jean-xanh-den-qj1170-thumb (1).jpg', 1, 1, '2014-10-06'),
(226, 'THE BLUES Quần Dài Jean Nam', 9, '10', 'SKU (simple)	TH296AA18QXXVN\r\nMàu sắc	Xanh Jean\r\nHướng dẫn sử dụng	Giặt máy ở nhiệt độ lạnh\r\nKhông được tẩy\r\nSấy khô ở nhiệt độ thấp\r\nỦi hơi nếu cần\r\nThành phần chất liệu	98% cotton 2% spandex\r\nSản phẩm không giảm giá	Sản phẩm này không được áp dụng với voucher hoặc các khuyến mại khác.', 'SKU (simple)	TH296AA18QXXVN\r\nMàu sắc	Xanh Jean\r\nHướng dẫn sử dụng	Giặt máy ở nhiệt độ lạnh\r\nKhông được tẩy\r\nSấy khô ở nhiệt độ thấp\r\nỦi hơi nếu cần\r\nThành phần chất liệu	98% cotton 2% spandex\r\nSản phẩm không giảm giá	Sản phẩm này không được áp dụng với voucher hoặc các khuyến mại khác.', 550000, 'quan-jean-xanh-den-qj1174-thumb (1).jpg', 1, 1, '2014-10-06'),
(227, 'BURTON MENSWEAR Quần Jeans Wash', 9, '10', 'SKU (simple)	BU071AA76XXJVN\r\nMàu sắc	Xanh Dương\r\nHướng dẫn sử dụng	Giặt máy nhiệt độ không quá 40°C với tốc độ nhẹ\r\nKhông được tẩy\r\nSấy khô với nhiệt độ thấp\r\nỦi nhiệt độ cao\r\nKhông được giặt khô\r\nGiặt riêng, không giặt cùng sản phẩm sáng màu\r\nKhông vò mạnh các vết bẩn dính vào sản phẩm\r\nGiặt mặt trái sản phẩm\r\nThành phần chất liệu	98% Cotton 2% Elastane\r\nXuất xứ	Nhập khẩu', 'SKU (simple)	BU071AA76XXJVN\r\nMàu sắc	Xanh Dương\r\nHướng dẫn sử dụng	Giặt máy nhiệt độ không quá 40°C với tốc độ nhẹ\r\nKhông được tẩy\r\nSấy khô với nhiệt độ thấp\r\nỦi nhiệt độ cao\r\nKhông được giặt khô\r\nGiặt riêng, không giặt cùng sản phẩm sáng màu\r\nKhông vò mạnh các vết bẩn dính vào sản phẩm\r\nGiặt mặt trái sản phẩm\r\nThành phần chất liệu	98% Cotton 2% Elastane\r\nXuất xứ	Nhập khẩu', 1000000, 'quan-jean-xanh-den-qj1173-thumb.jpg', 1, 1, '2014-10-06'),
(228, 'Quần Jean Xanh Đen QJ1156', 9, '9', 'Quần Jean Xanh Đen QJ1156\r\n- Màu sắc:  Xanh Đen\r\n- Chất liệu: 100% cotton, có thun co giãn tạo cảm giác thoải mái khi mặc\r\n- Xuất xứ: Việt Nam.\r\n- Size: 28,29,30,31,32 Form quần skinny giúp tôn lên vóc dáng của người mặc.\r\n- Điểm nổi bât: Đường may tỉ mỉ và khéo léo, thiết kế tuí quần sau có đính nút cá tính, có thể dể dàng mix cùng các kiểu sơ mi hoặc áo thun trẻ trung, để diện khi đến công sở hay cà phê cuối tuần ....', '<p><strong><em>Quần Jean Xanh Đen QJ1156</em></strong><br />\r\n<em>- M&agrave;u sắc:&nbsp; Xanh Đen</em><br />\r\n<em>-&nbsp;Chất liệu:&nbsp;100% cotton, c&oacute; thun co gi&atilde;n tạo cảm gi&aacute;c thoải m&aacute;i khi mặc</em><br />\r\n<em>- Xuất xứ:&nbsp;Việt Nam.</em><br />\r\n<em>- Size:&nbsp;28,29,30,31,32 Form quần skinny gi&uacute;p t&ocirc;n l&ecirc;n v&oacute;c d&aacute;ng của người mặc.<br />\r\n- Điểm nổi b&acirc;t:&nbsp;Đường may tỉ mỉ v&agrave; kh&eacute;o l&eacute;o, thiết kế tu&iacute; quần sau c&oacute; đ&iacute;nh n&uacute;t c&aacute; t&iacute;nh, c&oacute; thể dể d&agrave;ng mix c&ugrave;ng c&aacute;c kiểu sơ mi hoặc &aacute;o thun trẻ trung, để diện khi đến c&ocirc;ng sở hay c&agrave; ph&ecirc; cuối tuần ....</em></p>\r\n\r\n<p><strong><em>Quần Jean Xanh Đen QJ1156</em></strong><br />\r\n<em>- M&agrave;u sắc:&nbsp; Xanh Đen</em><br />\r\n<em>-&nbsp;Chất liệu:&nbsp;100% cotton, c&oacute; thun co gi&atilde;n tạo cảm gi&aacute;c thoải m&aacute;i khi mặc</em><br />\r\n<em>- Xuất xứ:&nbsp;Việt Nam.</em><br />\r\n<em>- Size:&nbsp;28,29,30,31,32 Form quần skinny gi&uacute;p t&ocirc;n l&ecirc;n v&oacute;c d&aacute;ng của người mặc.<br />\r\n- Điểm nổi b&acirc;t:&nbsp;Đường may tỉ mỉ v&agrave; kh&eacute;o l&eacute;o, thiết kế tu&iacute; quần sau c&oacute; đ&iacute;nh n&uacute;t c&aacute; t&iacute;nh, c&oacute; thể dể d&agrave;ng mix c&ugrave;ng c&aacute;c kiểu sơ mi hoặc &aacute;o thun trẻ trung, để diện khi đến c&ocirc;ng sở hay c&agrave; ph&ecirc; cuối tuần ....</em></p>\r\n', 400000, 'quan-jean-xanh-den-qj1166-thumb.jpg', 1, 1, '2014-10-07'),
(229, 'Quần Jean Xanh Đen QJ1165', 9, '9', 'Quần Jean Xanh Đen QJ1165\r\n- Màu sắc:  Xanh Đen\r\n- Chất liệu: 100% cotton, có thun co giãn tạo cảm giác thoải mái khi mặc\r\n- Xuất xứ: Việt Nam.\r\n- Size: 28,29,30,31,32 Form quần skinny giúp tôn lên vóc dáng của người mặc.\r\n- Điểm nổi bât: Đường may tỉ mỉ và khéo léo, thiết kế tuí quần sau có đính  lo go da bò đẹp mắt, có thể dể dàng mix cùng các kiểu sơ mi hoặc áo thun trẻ trung, để diện khi đến công sở hay cà phê cuối tuần ..', '<p><strong><em>Quần Jean Xanh Đen QJ1165</em></strong><br />\r\n<em>- M&agrave;u sắc:&nbsp; Xanh Đen</em><br />\r\n<em>-&nbsp;Chất liệu:&nbsp;100% cotton, c&oacute; thun co gi&atilde;n tạo cảm gi&aacute;c thoải m&aacute;i khi mặc</em><br />\r\n<em>- Xuất xứ:&nbsp;Việt Nam.</em><br />\r\n<em>- Size:&nbsp;28,29,30,31,32 Form quần skinny gi&uacute;p t&ocirc;n l&ecirc;n v&oacute;c d&aacute;ng của người mặc.<br />\r\n- Điểm nổi b&acirc;t:&nbsp;Đường may tỉ mỉ v&agrave; kh&eacute;o l&eacute;o, thiết kế tu&iacute; quần sau c&oacute; đ&iacute;nh &nbsp;lo go da b&ograve; đẹp mắt, c&oacute; thể dể d&agrave;ng mix c&ugrave;ng c&aacute;c kiểu sơ mi hoặc &aacute;o thun trẻ trung, để diện khi đến c&ocirc;ng sở hay c&agrave; ph&ecirc; cuối tuần ..</em></p>\r\n\r\n<p><strong><em>Quần Jean Xanh Đen QJ1165</em></strong><br />\r\n<em>- M&agrave;u sắc:&nbsp; Xanh Đen</em><br />\r\n<em>-&nbsp;Chất liệu:&nbsp;100% cotton, c&oacute; thun co gi&atilde;n tạo cảm gi&aacute;c thoải m&aacute;i khi mặc</em><br />\r\n<em>- Xuất xứ:&nbsp;Việt Nam.</em><br />\r\n<em>- Size:&nbsp;28,29,30,31,32 Form quần skinny gi&uacute;p t&ocirc;n l&ecirc;n v&oacute;c d&aacute;ng của người mặc.<br />\r\n- Điểm nổi b&acirc;t:&nbsp;Đường may tỉ mỉ v&agrave; kh&eacute;o l&eacute;o, thiết kế tu&iacute; quần sau c&oacute; đ&iacute;nh &nbsp;lo go da b&ograve; đẹp mắt, c&oacute; thể dể d&agrave;ng mix c&ugrave;ng c&aacute;c kiểu sơ mi hoặc &aacute;o thun trẻ trung, để diện khi đến c&ocirc;ng sở hay c&agrave; ph&ecirc; cuối tuần ..</em></p>\r\n', 450000, 'quan-jean-ong-dung-den-qj1176-thumb.jpg', 1, 1, '2014-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `tieu_de`
--

CREATE TABLE `tieu_de` (
  `id` int(11) NOT NULL,
  `ten_tieu_de` varchar(255) NOT NULL,
  `hinh` varchar(255) DEFAULT NULL,
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tieu_de`
--

INSERT INTO `tieu_de` (`id`, `ten_tieu_de`, `hinh`, `trang_thai`) VALUES
(1, 'Thắng Hoàng 213 213', '301048402_750206276243564_3472248481592502779_n.jpeg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loai_san_pham`
--
ALTER TABLE `loai_san_pham`
  ADD PRIMARY KEY (`ma_loai`);

--
-- Indexes for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`ma_nguoi_dung`),
  ADD KEY `ma_loai_nguoi_dung` (`ma_loai_nguoi_dung`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`ma_san_pham`);

--
-- Indexes for table `tieu_de`
--
ALTER TABLE `tieu_de`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loai_san_pham`
--
ALTER TABLE `loai_san_pham`
  MODIFY `ma_loai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `ma_nguoi_dung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `ma_san_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `tieu_de`
--
ALTER TABLE `tieu_de`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
