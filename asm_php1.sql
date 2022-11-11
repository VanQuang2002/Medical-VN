-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2022 at 01:19 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asm_php1`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Nhiệt Kế', '2022-11-11 17:28:15', '2023-11-11 08:07:44'),
(2, 'Dụng cụ kiểm tra', '2021-07-07 11:50:15', '2021-07-22 16:07:29'),
(3, 'Máy xông KD', '2021-07-07 11:50:15', '2021-07-22 16:12:25'),
(38, 'Máy massage', '2021-07-13 10:57:52', '2021-07-13 10:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `fullname`, `phone_number`, `email`, `address`, `note`, `order_date`) VALUES
(143, 'Nguyễn Đăng Thành', '0387578520', 'bossryo68a@gmail.com', '68.65.120.213, viet nam', '', '2021-11-07 08:37:06'),
(144, 'DEMO', '03875723232', 'DEMO@gmail.com', 'DEMO', 'DEMO', '2021-11-07 08:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `id_user`, `num`, `price`, `status`) VALUES
(149, 143, 2, 7, 3, 35000, 'Đã hủy'),
(150, 143, 4, 7, 1, 25000, 'Đã hủy'),
(151, 143, 12, 7, 1, 30000, 'Đã hủy'),
(152, 143, 14, 7, 1, 35000, 'Đã hủy'),
(153, 144, 12, 8, 11, 30000, 'Đã nhận hàng');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `number` float NOT NULL,
  `thumbnail` varchar(500) NOT NULL,
  `content` longtext NOT NULL,
  `id_category` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `number`, `thumbnail`, `content`, `id_category`, `created_at`, `updated_at`) VALUES
(1, 'Bộ xét nghiệm nhanh Covid-19 Antigen Self-Test Abbott Panbio Test Kit', 81900, 20, 'uploads/Kit_test_1.png', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 44px; padding: 0px;\"><span style=\"color: rgb(0, 0, 0);\">Covid-19 Antigen Self-Test Abbott Panbio giúp phát hiện tình trạng đang nhiễm COVID-19 ở những người có hoặc không có triệu chứng, nhận kết quả sau 15 phút.</span><br></p>', 2, '2021-07-07 17:41:08', '2021-08-15 16:41:50'),
(2, 'Nhiệt kế hồng ngoại Kachi JXB-315', 790000, 50, 'uploads/Nhiet_ke.png', '<font color=\"#000000\">Nhiệt kế hồng ngoại Kachi JXB-315 với thiết kế đặc biệt để giúp đo nhiệt độ cơ thể con người với khoảng cách 0 ~ 3cm nên có thể ứng dụng trong rất nhiều lĩnh vực của đời sống. Sản phẩm rấthữu ích khi đo nhiệt độ tại những vị trí nguy hiểm: chứa chất độc hại, điều kiện khắc nghiệt, thiết bị điện…</font><br>', 1, '2021-07-07 17:41:08', '2021-08-15 16:53:50'),
(4, 'MÁY XÔNG MŨI HỌNG OMRON NE-C28', 949000, 30, 'uploads/MXKD_1.png', 'Máy xông mũi họng Omron NE-C28 giúp bạn điều trị các bệnh viêm mũi, xoang hay viêm họng, viêm phế quản, phổi, hen suyễn… một cách hiệu quả và không gây phản ứng phụ cho hệ tiêu hóa như việc điều trị bằng phương pháp uống thuốc. Với công nghệ hiện đại, kích thước hạt khí mịn, máy dễ sử dụng, an toàn và vệ sinh.<br>\r\n+,Kích thước máy: 158 (rộng) x 100 (cao) x 175 (dầy) mm<br>   \r\n+,Trọng lượng: 1,9 kg<br>\r\n+,Tốc độ phun khí: 0,4 ml/phút.<br>\r\n+,Dung tích cốc thuốc: 7ml<br>\r\n+,Kích thước hạt: 5 micron<br>                                                              \r\n+,Phụ kiện kèm theo:<br>                                                                   \r\n____Túi đựng.<br>                                                                \r\n____5 miếng lọc dự phòng.<br>                                                                  \r\n____Hướng dẫn sử dụng.<br>                                                                \r\n____Các phụ kiện khác.<br>         ', 3, '2021-07-07 17:25:47', '2021-08-15 16:12:51'),
(5, 'Bộ xét nghiệm nhanh COVID-19 tại nhà Humasis COVID-19 Ag Home Test Kit', 89000, 10, 'uploads/Kit_test_2.png', '<span style=\"color: rgb(83, 56, 44); font-family: \"Open Sans\", sans-serif; font-size: 15px; text-align: justify;\">Humasis COVID-19 Ag Home Test là thiết bị xét nghiệm chẩn đoán in vitro ban đầu dựa trên phương pháp sắc ký miễn dịch. Thiết bị được thiết kế để phát hiện định tính kháng nguyên SARS-CoV-2 qua mẫu dịch ngoáy mũi ở người nghi ngờ nhiễm COVID-19, phù hợp cho cá nhân tự sử dụng (người từ 14 tuổi trở lên) hoặc cho người không có chuyên môn xét nghiệm cho người khác (từ 3 tuổi trở lên), sử dụng tại những địa điểm như là tại nhà mà không nhất thiết phải thực hiện xét nghiệm tại phòng thí nghiệm. Với giá thành rẻ, xét nghiệm Humasis COVID-19 Ag Home Test được thiết kế phát hiện kháng nguyên SARS-CoV-2 ở người nghi nhiễm nhanh chóng, kịp thời trong vòng 15 phút.</span><br>', 2, '2021-07-07 18:36:37', '2021-08-15 16:24:51'),
(8, 'Nhiệt kế điện tử Microlife MT500', 95000, 10, 'uploads/Nhiet_ke_2.png', '<p><span style=\"color: rgb(0, 0, 0); font-family: \" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 20px;=\"\" font-weight:=\"\" 700;=\"\" text-align:=\"\" center;\"=\"\">Nhiệt kế điện tử Microlife MT500 là dòng sản phẩm nhiệt kế điện tử cung cấp giải pháp thay thế cho nhiệt kế thủy ngân do tính an toàn trong sử dụng, có độ chính xác cao, đo nhanh cho kết quả chỉ sau 30 giây.</span><br></p>', 1, '2021-07-11 16:07:58', '2021-08-15 16:44:51'),
(9, 'Nhiệt kế điện tử Microlife MT550', 210000, 46, 'uploads/Nhiet_ke_3.png', '<p>Microlife MT550 là dòng sản phẩm nhiệt kế điện tử cung cấp giải pháp thay thế cho nhiệt kế thủy ngân do tính an toàn trong sử dụng, có độ chính xác cao, đo nhanh cho kết quả chỉ sau 10 giây.<br></p>', 1, '2021-07-11 16:38:58', '2021-08-15 16:02:52'),
(10, 'MÁY MASSAGE XUNG ĐIỆN DOCTOR CARE OLEKIN 518', 649000, 44, 'uploads/May_MS_1.png', '<p><font color=\"#53382c\">\r\nSản phẩm máy matxa xung điện Doctor Care Olekin model 518  là sản phẩm đa chức năng, kết hợp giữa nền tảng sinh học, vật lý học , điện sinh học và đông y cổ truyền…ra đời để đáp ứng tốt nhất nhu cầu chăm sóc sức khỏe của người dân Việt Nam.<br>\r\n\r\n– 6 chức năng chính: đấm bóp, châm cứu, xoa bóp, giác hơi, cạo gió, kích thích.<br>\r\n– 3 chức năng tự động, chuyên sâu cho vùng: cổ/vai; thắt lưng/ chân; bàn chân<br>\r\n– 3chức năng Thẩm mỹ  tự động:<br>\r\n+ Body shaping 1 (Giảm cân tự động) làm phân hủy mỡ nhanh chóng, làm nóng, làm tiêu hao mỡ thừa dưới da.<br>\r\n+ Body shaping 2 (Làm đẹp da) tạo năng lượng mới làm vững chắc tế bào trong cơ thể giúp các mô hoạt động linh động & mềm dẻo hơn.<br>\r\n+ Body shaping 3 (Làm phóng thích các độc tố) tín hiệu dòng điện sinh học làm tăng tuần hoàn máu dẫn đến làm tăng khả năng loại các độc tố ra khỏi cơ thể.<br>\r\nTrọn bộ sản phẩm máy matxa xung điện Doctor Care Olekin gồm:<br>\r\n+ 1 thân máy<br>\r\n+ 02 Dây 8 điện cực<br>\r\n+ 04 Cặp điện cực dán (8 miếng)<br>\r\n+ 02 Miếng nhựa<br>\r\n+ 01 Adapter<br>\r\n+ 01 Pin 9V<br>\r\n+ 01 Sách hướng dẫn Anh/ Việt<br>\r\n+01 hộp đựng cứng gọn nhẹ.<br>\r\n</font><br></p>', 38, '2021-07-11 16:12:59', '2021-08-15 16:18:52'),
(12, 'MÁY MASSAGE TRỊ LIỆU 4 MIẾNG DÁN SONIC FLYING', 150000, 15, 'uploads/May_MS_2.png', '<p>\r\nBạn bị đau nhức sau những giờ làm việc, học tập căng thẳng? Bạn và người thân của bạn vì nhiều lí do khác nhau thường xuyên bị đau lưng, đau đầu, đau đốt sống cổ,đau tay chân, tê bì chân tay ở những người cao tuổi... làm cho chất lượng cuộc sống bị giảm sút. Bạn đừng lo lắng vì giờ đây, đã có một giải pháp tuyệt vời dành cho bạn rồi đây, đó chính là sử dụng máy massage trị liệu 4 miếng dán Sonic được thiết kế thông minh giúp xóa tan những cơn đau nhức mỏi thường ngày cho bạn làm việc thật hiệu quả.<br>\r\nMáy Massage trị liệu 4 miếng dán Sonic được phát triển dựa trên nguyên lý về các đường kinh mạch của Y học cổ truyền Trung Hoa máy sẽ truyền những luồng xung điện thông qua 4 miếng dán vào người bạn giúp máu lưu thông tốt hơn, đẩy lùi các cơn đau. Ngay lập tức những mệt mỏi sẽ tan biến, thay vào đó là cảm giác cực kỳ thư giãn và thoải mái. Hỗ trợ điều trị an toàn và hữu ích các triệu chứng: cứng vai, liệt các đầu dây thần kinh, đau xương chân, toàn thân mệt mỏi, đau dạ dày, cảm nặng, đau đốt sống cổ, viêm các khớp nhỏ, đau răng, huyết áp cao, huyết áp thấp...<br>\r\nThông số kỹ thuật Máy massage trị liệu 4 miếng dán Sonic Flying<br>\r\n- Công dụng: Massage<br>\r\n- Tính năng: Châm cứu, đấm bóp, xoa bóp, giác hơi, co cơ, giảm cân…<br>\r\n- Kích thước: 200 x 180 x 50 mm<br>\r\n- Công suất: Sử dụng 3 Pin tiểu AAA có thể tự sạc bằng điện 220V, USB<br>\r\n- Màn hình LCD hiển thị rộng, hiển thị 2 ngôn ngữ ANH- VIỆT, tùy chọn lựa người sử dụng\r\n<br></p>', 38, '2021-07-13 10:20:53', '2021-08-15 16:45:54'),
(13, 'Bộ xét nghiệm nhanh COVID-19 tại nhà Humasis COVID-19 Ag Home Test Kit (Hộp 5 kit)', 445000, 20, 'uploads/Kit_test_3.png', '<span style=\"color: rgb(83, 56, 44); font-family: \"Open Sans\", sans-serif; font-size: 15px; text-align: justify;\">Humasis COVID-19 Ag Home Test là thiết bị xét nghiệm chẩn đoán in vitro ban đầu dựa trên phương pháp sắc ký miễn dịch. Thiết bị được thiết kế để phát hiện định tính kháng nguyên SARS-CoV-2 qua mẫu dịch ngoáy mũi ở người nghi ngờ nhiễm COVID-19, phù hợp cho cá nhân tự sử dụng (người từ 14 tuổi trở lên) hoặc cho người không có chuyên môn xét nghiệm cho người khác (từ 3 tuổi trở lên), sử dụng tại những địa điểm như là tại nhà mà không nhất thiết phải thực hiện xét nghiệm tại phòng thí nghiệm. Với giá thành rẻ, xét nghiệm Humasis COVID-19 Ag Home Test được thiết kế phát hiện kháng nguyên SARS-CoV-2 ở người nghi nhiễm nhanh chóng, kịp thời trong vòng 15 phút.</span><br>', 2, '2021-07-07 17:41:08', '2021-08-15 16:40:53'),
(14, 'Dụng cụ xét nghiệm nhanh COVID-19 COVICHEK COVID-19 Ag Test Kit (Hộp 5 bộ kit)\r\n', 425000, 5, 'uploads/Kit_test_4.png', '<span style=\"color: rgb(83, 56, 44); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">COVICHEK COVID-19 Ag Kit là dụng cụ y tế chẩn đoán in vitro dùng để chẩn đoán COVID-19 bằng cách kiểm tra định tính kháng nguyên SARS-CoV-2 ở những bệnh nhân có các triệu chứng nhiễm trùng đường hô hấp thông qua phân tích sắc ký miễn dịch.</span><br>', 2, '2021-07-07 17:41:08', '2021-08-15 16:00:55'),
(16, 'MÁY XÔNG MŨI HỌNG PHILIPS INNOSPIRE ESSENCE', 699000, 30, 'uploads/MXKD_2.png', 'MÁY XÔNG MŨI HỌNG PHILIPS INNOSPIRE ESSENCE<br>\r\n\r\nCác tính năng nổi bật:<br>\r\nCó khả năng kết hợp với công nghệ đã được chứng minh - Sidestream.<br>\r\nThời gian điều trị ngắn, từ 6 - 8 phút.<br>\r\nThiết kế nhỏ, gọn.<br>\r\n\r\nThông số kỹ thuật:<br>\r\nNguồn điện: 230V - 50Hz<br>\r\nÁp lực nén tối đa: 317kPa (46 psi)<br>\r\nLưu lượng khí trung bình: 6 lít/ phút - 10psi<br>\r\nLưu lượng tối đa: 8 lít/ phút<br>\r\nBộ phận bảo vệ quá tải nhiệt: Cầu chì nhiệt, nhiệt độ hoạt động 150 độ C<br>\r\nĐộ ồn: 58 ± 3dbA<br>\r\nKích thước: 165mm x 165mm x 108mm<br>\r\nTrọng lượng: 1.5 kg<br>\r\n\r\n', 3, '2021-07-07 17:25:47', '2021-08-15 16:17:55'),
(17, 'Bộ xét nghiệm nhanh kháng nguyên SARS-CoV-2 SureScreen Diagnostics Covid-19 Test Kit', 80000, 10, 'uploads/Kit_test_5.png', 'SARS-CoV-2 Antigen Rapid Test Cassette là xét nghiệm miễn dịch sắc ký nhanh để phát hiện định tính sự hiện diện kháng nguyên SARS-CoV-2 trong mẫu tăm bông ngoáy mũi của các cá nhân nghi ngờ nhiễm COVID-19 trong 7 ngày đầu tiên kể từ khi có triệu chứng. ', 2, '2021-07-07 18:36:37', '2021-08-15 16:35:55'),
(18, 'Nhiệt kế điện tử hồng ngoại đo trán Microlife NC200', 1150000, 10, 'uploads/Nhiet_ke_4.png', '<p><span style=\"color: rgb(0, 0, 0); font-size: 1rem;\">Nhiệt kế điện tử hồng ngoại đo trán Microlife NC200 với thiết kế nhỏ gọn, dễ sử dụng, phù hợp cho việc đo thân nhiệt cho người lớn và trẻ em. Sản phẩm đo nhanh, không chạm, an toàn và cho kết quả chính xác, thích hợp sử dụng tại bệnh viện, phòng khám, cơ quan, trường học, hoặc trong gia đình.</span><br></p><p><br></p>', 1, '2021-07-11 16:07:58', '2021-08-15 16:48:55'),
(19, 'Nhiệt kế điện tử MT-601A', 34500, 46, 'uploads/Nhiet_ke_5.png', '<p>Nhiệt kế điện tử MT-601A sử dụng để đo thân nhiệt vùng miệng, nách, hậu môn dễ dàng và nhanh chóng, phát hiện nhanh triệu chứng sốt để chẩn đoán và hỗ trợ kịp thời.<br></p>', 1, '2021-07-11 16:38:58', '2021-08-15 16:03:56'),
(20, 'Nhiệt kế hồng ngoại Urgo', 658000, 44, 'uploads/Nhiet_ke_6.png', '<p><span style=\"color: rgb(83, 56, 44); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Nhiệt kế hồng ngoại Urgo là nhiệt kế không tiếp xúc Urgo Non-Contact Thermometer dùng để đo nhiệt độ.</span><br></p>', 1, '2021-07-11 16:12:59', '2021-08-15 16:20:56'),
(21, 'MÁY MASSAGE XUNG ĐIỆN TẠO CƠ BỤNG, CƠ MÔNG BEURER EM20 (EM 20)', 699000, 15, 'uploads/May_MS_3.png', '<p>Máy massage xung điện tạo cơ bụng, cơ mông Beurer EM20 (EM 20) ứng dụng massage thư giãn, tinh tế sử dụng công nghệ EMS TENS (kích thích cơ điện tử). Hoạt động 1 cách an toàn nhẹ nhàng làm săn chắc và rèn luyện cơ bụng với một chế độ tập luyện hợp lý.<br>\r\nMiếng dán điện xung làm săn chắc cơ bụng có 15 mức cường độ để lựa chọn cho thời gian điều trị 20 phút mỗi phiên. Sau 20 phút pad sẽ tự động tắt, cho bạn lên đến 20 phiên trên mỗi pin. Pin thay thế và các miếng gel có sẵn.<br>\r\n<h3>MÁY MASSAGE ĐIỆN XUNG TẠO CƠ BỤNG, CƠ MÔNG BEURER EM20 (EM 20) </h3><br>\r\nThông số kỹ thuật: <br>\r\n1,EMS (kích thích cơ điện tử) - để Tăng cường, đào tạo cơ bắp và tái sinh<br>\r\n2,Mềm mại và linh hoạt<br>\r\n3,Thoải mái và an toàn<br>\r\n4,Sử dụng ở vùng bạn mong muốn<br>\r\n5,Điều chỉnh được cường độ (15 cấp)<br>\r\n6,Tự động tắt, mở<br>\r\n7,Pin có thể được thay thế<br>\r\n8,Bao gồm miếng dán tự dính<br>\r\n9,Kích thước sản phẩm 170 x 170 x 13 mm<br>\r\n10,CE<br>\r\n11,EAN / Item không. 4211125 / 647,11 / 7<br>\r\n12,Trọng lượng: 69g\r\n<br></p>', 38, '2021-07-13 10:20:53', '2021-08-15 16:42:56'),
(26, 'Bộ xét nghiệm nhanh nước bọt Covid-19 Antigen Rapid Test Kit (Saliva)', 69000, 100, 'uploads/Kit_test_6.png', '<p>Test nước bọt Covid-19 Antigen Rapid Test Kit (Saliva) là Kit test nhanh sử dụng mẫu nước bọt do Wuhan EasyDiagnosis Biomedicine sản xuất theo công nghệ Đức. Thiết bị này được thiết kế nhỏ gọn, dễ sử dụng, cho kết quả nhanh chỉ trong vòng 15 phút. Đây là bộ phát hiện kháng nguyên Covid-19 được Bộ Y Tế cấp phép sử dụng rộng rãi trên toàn quốc.<br></p>', 2, '2021-08-15 08:36:27', '2021-08-15 16:57:56'),
(28, 'MÁY XÔNG MŨI HỌNG OMRON NE-C801KD', 749000, 90, 'uploads/MXKD_3.png', '<p><h1>Ưu điểm Máy xông mũi họng Omron NE-C801KD</h1><br>\r\nSản phẩm dành cho trẻ nhỏ với mặt nạ trẻ nhỏ và sơ sinh.<br>\r\nBộ xông với hình ngộ nghĩnh cho trẻ nhỏ.<br>\r\nCốc thuốc được thiết kế với công nghệ van ảo độc đáo (V.V.T) chỉ có ở Omron<br>\r\nHiệu quả xông cao, giảm lượng thuốc hao hụt.<br>\r\nHạt thuốc nhỏ, mịn 3mm( micron ) vào tận các tiểu phế nang<br>\r\nMáy chạy êm, không gây tiếng ồn<br>\r\nThiết kế nhỏ, gọn.<br>\r\n<h1>Thông số kỹ thuật Máy xông mũi họng Omron NE-C801KD</h1><br>\r\nKích thước máy: 142 (rộng) x 72 (cao) x 98 (dầy) mm.<br>\r\nTrọng lượng máy: Khoảng 270 g. (chỉ tính máy nén khí)<br>\r\nĐiện (Bộ đổi điện AC) : 100 – 240 V ~ 350 mA, 50/60 Hz<br>\r\nĐiện (Máy xông nén khí) : 12V – 0.8 A<br>\r\nĐiều kiện hoạt động: Hoạt động liên tục/20 phút, tắt/40 phút.<br>\r\nPhụ kiện kèm theo<br>\r\nMáy nén khí<br>\r\nBộ xông<br>\r\nPhụ kiện dành cho trẻ em<br>\r\nỐng dẫn khí<br>\r\n5 miếng lọc dự phòng<br>\r\nỐng ngậm<br>\r\nMặt nạ trẻ em<br>\r\nMặt nạ cho trẻ sơ sinh<br>\r\nBộ đổi điện, túi đựng, bản hướng dẫn sử dụng<br>\r\n<br></p>', 3, '2021-08-15 08:25:31', '2021-08-15 16:13:57'),
(29, 'MÁY XÔNG MŨI HỌNG LAICA NE1005', 1699000, 20, 'uploads/MXKD_4.png', '<p>Máy xông mũi họng LAICA NE1005 khá hiệu quả trong việc điều trị các chứng bệnh liên quan đến đường hô hấp như viêm phổi, viêm xoang, hen suyễn nhờ được ứng dụng công nghệ xông khí dung siêu âm cho hiệu qủa xông hơi cao. Bình xông mũi họng LAICA NE1005 siêu nhẹ, siêu bền được rất nhiều khách hàng tin dùng và đối tượng sử dụng cũng rất đa dạng, có thể sử dụng ở bắt kỳ đâu, phù hợp cho mọi lứa tuổi.<br>\r\nMáy xông mũi họng LAICA NE1005 xuất xứ chính hãng Ý, được nhập khẩu nguyên chiếc và chính sách bảo hành hoàn hảo trong vòng 24 tháng.\r\n<br></p>', 3, '2021-08-15 08:19:32', '2021-08-15 16:28:57'),
(30, 'MÁY MASSAGE ĐIỆN XUNG TẠO CƠ SĂN CHẮC VÒNG 3 BEURER EM25', 899000, 100, 'uploads/May_MS_4.png', '<p>\r\n<h4>Thông số kỹ thuật của Máy làm săn chắc mông Beurer EM25:</h4><br>\r\nKích thích điện EMS cho vùng mông tạo cơ và làm săn chắc mông<br>\r\nXây dựng cơ bắp vùng mông<br>\r\nKích thích điện của các cơ mông<br>\r\n- Có 15 mức cường độ trị liệu<br>\r\n- Thời gian trị liệu kéo dài đến 20 phút mỗi phiên<br>\r\n- Tự động tắt khi quá trình trị liệu hoàn thành<br>\r\n- Đã bao gồm miếng dán tự dính<br>\r\n- Dễ dàng sử dụng thiết bị mọi nơi, mọi lúc và kín đáo<br>\r\nSiêu mỏng<br>\r\nSử dụng ở vùng bạn mong muốn<br>\r\nTự động tắt, mở<br>\r\nPin có thể được thay thế<br>\r\nBao gồm 4 miếng dán tự dính<br>\r\n<h4>EMS là gì và có tác dụng gì?</h4><br>\r\nKích thích cơ điện (EMS) là một phương pháp phổ biến và thường được công nhận và đã được sử dụng trong nhiều năm qua trong y học thể thao. Trong lĩnh vực thể thao và vui chơi giải trí EMS được sử dụng để tăng cường năng lực của các nhóm cơ và phù hợp với tỉ lệ của cơ thể phù hợp với nhu cầu thẩm mỹ.<br>\r\n<h4>Phạm vi hoạt động của EMS:</h4><br>\r\nEMS đi theo hai hướng. Đầu tiên là các cơ bắp tăng cường ý (kích hoạt ứng dụng), thứ hai là ảnh hưởng của giải trí và thư giãn (sử dụng thư giãn).<br>\r\n<h4>Để sử dụng kích hoạt bao gồm:</h4><br>\r\nTập cơ để tăng sức mạnh đào tạo và / hoặc cơ bắp tăng cường cơ bắp nhất định hoặc các nhóm cơ để đạt được những thay đổi dự kiến ​​trong của cơ thể.<br>\r\n<h4>Để sử dụng thư giãn nên:</h4><br>\r\nNới lỏng các cơ bắp để thư giãn.<br>\r\nCải thiện các triệu chứng của sự mệt mỏi cơ bắp.<br>\r\nTăng tốc phục hồi cơ bắp sau khi gắng sức (ví dụ:. Sau khi marathon)\r\n<br></p>', 38, '2021-08-15 08:01:37', '2021-08-15 17:03:01'),
(31, 'ĐAI MASSAGE GIẢM EO VIBROACTION', 170000, 90, 'uploads/May_MS_5.png', '<p>\r\n<h4>Hướng dẫn sử dụng</h4><br>\r\n+ B1: Tách hai đầu dây của đai và quấn lên vùng cần giảm béo sao cho vừa khích. Đai quấn có miếng dán điều chỉnh, phù hợp với tất cả mọi người..<br>\r\n+ B2: Cắm điện.<br>\r\n+ B3:Nhấn nút ON/OFF trên bộ điều khiển. Khi nghe một tiếng Bip và đèn nguồn sáng màu đỏ là máy đã hoạt động.<br>\r\n+ B4: Bạn có thể chọn chế độ tự động hoặc tùy chọn bởi nút (MODE).<br>\r\n<h4>Lưu ý</h4><br>\r\n- Tối thiểu phải đeo đai khoảng 15-20 phút/ lần cho mỗi ngày tập luyện để phát huy tác dụng của đai. Nên duy trì khung giờ tập ổn định hằng ngày.<br>\r\n- Không được áp dụng đai khi da vùng bụng có tổn thương, chày xước.<br>\r\n- Không sử dụng đai khi phụ nữ đang mang thai và trong chu kỳ hành kinh hàng tháng.<br>\r\n- Không sử dụng đai giảm béo bụng khi vừa ăn no xong.<br>\r\n<h4>Thông tin chi tiết của sản phẩm đai masaage bụng Vibroaction (Đen)</h4><br>\r\n- Điện áp vào: 220V/ 50Hz<br>\r\n- Apdapter:DC 12V với bộ chỉnh áp<br>\r\n- Công suất hoạt động: 55W<br></p>', 38, '2021-08-15 08:51:37', '2021-08-15 17:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `hoten` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(28) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `hoten`, `username`, `password`, `phone`, `email`) VALUES
(7, 'KTPM_N07', 'AdminThanh', 'thanh1010', '+84387578520', 'dtvtx3@gmail.com'),
(8, 'thanh dang', 'thanhthanh', 'thanhthanh', '0387578520', 'bossryo6811@gmail.com'),
(55, 'thanh dang', 'thanh0990909', 'thanh10', '0387578520', 'bossryoa68@gmail.com'),
(57, 'thanh dang', 'thanh', 'thanh', '0387578520', 'bossryo681@gmail.com'),
(58, 'thanh dang', 'LoginLogin', 'thanh', '0387578520', 'bossryo6Login8@gmail.com'),
(59, 'Ngọc Sáng', 'sang2002', 'sang2002', '0868983202', 'sangngoc1002@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
