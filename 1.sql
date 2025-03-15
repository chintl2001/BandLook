-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: bandlook
-- ------------------------------------------------------
-- Server version	8.3.0

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

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,1,'djmie','Admin@123','djmie@gmail.com',1),(2,1,'mtp','Admin@123','mtp@gmail.com',1),(3,1,'issac','Admin@123','issac@gmail.com',1),(4,1,'ndln','Admin@123','ndln@gmail.com',1),(5,1,'misthy','Admin@123','misthy@gmail.com',1),(6,1,'lnd','Admin@123','lnd@gmail.com',1),(7,1,'soobinhoangson','Admin@123','soobinhoangson@gmail.com',1),(8,1,'hanhi','Admin@123','hanhi@gmail.com',1),(9,1,'masterd','Admin@123','masterd@gmail.com',1),(10,1,'abc','Admin@123','abc@gmail.com',1),(11,1,'dalab','Admin@123','dalab@gmail.com',1),(12,1,'abc','Admin@123','test@gmail.com',1),(13,3,'admin','Admin@123','admin@gmail.com',1),(14,1,'lyly','Admin@123','lyly@gmail.com',1);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_product`
--

DROP TABLE IF EXISTS `account_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_product` (
  `account_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_product`
--

LOCK TABLES `account_product` WRITE;
/*!40000 ALTER TABLE `account_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_id` int DEFAULT NULL,
  `fullname` varchar(45) DEFAULT NULL,
  `catxe` int DEFAULT NULL,
  `job` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `description` text,
  `address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,1,'DJ Mie',1000000,'DJ',5,'DJ Mie Trương Tiểu My là một trong những DJ nổi tiếng, tài năng nhất ngành DJ tính đến thời điểm hiện tại. Cô đã xuất sắc giành lấy ngôi vị quán quân tại cuộc thi Miss DJ 2015. Dòng nhạc Mie theo đuổi là EDM, ngoài ra cô còn chơi Hiphop rất tốt. Mie tiếp tục tạo tiếng vang lớn tại The Remix 2017 và khiến cái tên DJ Mie trở nên nóng sốt trên mạng xã hội.\r\n\r\nSau 5 năm theo đuổi sự nghiệp một cách miệt mài, nữ DJ đã là một cái tên có chỗ đứng nhất định trong ngành DJ. Bên cạnh khả năng điều chỉnh nhạc xuất sắc, DJ Mie Trương Tiểu My còn có khả năng trình diễn ballet và chơi piano rất hay. \r\n\r\nKhi bắt đầu con đường theo đuổi DJ chuyên nghiệp, cô nhận được những ý kiến phản đối kịch liệt từ phía gia đình. Tuy nhiên, bằng sự kiên trì và sự đam mê với nghề, My đã thuyết phục được gia đình. Giai đoạn mới vào TP.HCM lập nghiệp đối với DJ Mie thực sự khó khăn, nhưng nhờ sự giúp đỡ của những người bạn và đồng nghiệp, nữ DJ xinh đẹp đã trưởng thành và thành công hơn. Năm 2020, cô trở thành DJ trong chương trình Rap Việt. ','Đà Nẵng','07-12-1995','0912345678'),(2,2,'Sơn Tùng MTP',9999999,'Ca sĩ/Nhạc sĩ',5,'Nguyễn Thanh Tùng (sinh ngày 5 tháng 7 năm 1994), thường được biết đến với nghệ danh Sơn Tùng M-TP, là một nam ca sĩ kiêm sáng tác nhạc, rapper và diễn viên người Việt Nam. Sinh ra ở thành phố Thái Bình, Sơn Tùng thường đi hát ở Cung văn hoá thiếu nhi tỉnh Thái Bình và học chơi đàn organ từ nhỏ. Sau đó, Tùng cùng với các bạn trong lớp thành lập nên một nhóm nhạc, lấy tên là Over Band, bắt đầu sáng tác và đăng tải các bài hát của mình lên một trang web chuyên về lĩnh vực âm nhạc có tên là LadyKillah. Tùng bắt đầu nổi tiếng khi phát hành hai đĩa đơn \"Cơn mưa ngang qua\" và \"Em của ngày hôm qua\", đánh dấu mốc khởi đầu cho sự nghiệp của mình. ','Hồ Chí Minh','05-07-1994','0123456789'),(3,3,'Issac',8888888,'Ca sĩ/Diễn viên',5,'Isaac tên thật là Phạm Lưu Tuấn Tài, sinh ngày 13 tháng 6 năm 1988, sinh ra và lớn lên tại Cần Thơ. Thời đi học, anh từng là lớp phó văn thể mỹ[1], học giỏi nhất môn tiếng Anh và kém môn văn. Chính vì vậy mà anh không được học sinh giỏi trong ba năm Trung học phổ thông. Isaac đã từng tốt nghiệp thủ khoa, chuyên ngành bác sĩ thú y của Đại học Cần Thơ (theo lời của thành viên Will trong chương trình Chọn ai đây mùa 2 tập 2: Issac học về đỡ đẻ cho bò và cũng trong chương trình này thành viên S.T Sơn Thạch tiết lộ là Isaac bị ám ảnh nên đi casting làm ca sĩ). Năm 2007, Isaac dự thi chương trình Vietnam Idol mùa 1 và Isaac đã hát ca khúc Mẹ con đã về nhưng không vượt qua top 60, sau đó lên Thành phố Hồ Chí Minh lập nghiệp.','Hồ Chí Minh','13-06-1988','0912345678'),(4,4,'Ninh Dương Lan Ngọc',33333333,'Diễn viên',4,'Ninh Dương Lan Ngọc sinh ngày 4 tháng 4 năm 1990 ở Thành phố Hồ Chí Minh, song quê gốc của cô nằm ở Nam Định.[2][cần nguồn tốt hơn] Cô là cựu học sinh Trường THPT Nguyễn Hữu Huân[3] và là cựu sinh viên Trường Đại học Sân khấu - Điện ảnh Thành phố Hồ Chí Minh.','Hồ Chí Minh','04-04-1990','0912345678'),(5,5,'Misthy',55555555,'Streamer',5,'Lê Thy Ngọc sinh ngày 12 tháng 11 năm 1995 tại Thành phố Đà Lạt (tỉnh Lâm Đồng). Gia đình cô có ba chị em gái và cô là con út, điều thú vị là cả ba chị em cô đều tên Ngọc nên ba mẹ đã gọi các con mình bằng tên đệm để dễ phân biệt và đó chính là nguồn gốc của cái tên của nữ streamer. Vì gia đình có kinh doanh cửa hàng trò chơi điện tử và cô thường chỉnh máy tính cho khách nếu máy có vấn đề nên cô có dịp tiếp xúc với trò chơi điện thoại từ sớm.','Hồ Chí Minh','12-11-1995','0123456789'),(6,10,'Rosé ',10000000,'Idol',5,'Roseanne Park MBE (sinh ngày 11 tháng 2 năm 1997), được biết đến với biệt danh là Rosé (Tiếng Hàn: 로제), là một ca sỹ và vũ công người Hàn Quốc gốc New Zealand[3][4] hoạt động tại Hàn Quốc.[5] Sinh ra ở New Zealand và lớn lên ở Úc, Rosé đã ký hợp đồng với công ty Hàn Quốc YG Entertainment sau buổi thử giọng thành công vào năm 2012 và được đào tạo trong bốn năm trước khi ra mắt với tư cách là thành viên của nhóm nhạc nữ Blackpink vào tháng 8 năm 2016.\r\n\r\nTháng 3 năm 2021, Rosé ra mắt solo với album đĩa đơn của cô R. Album đã bán được 448.089 bản trong tuần đầu tiên, con số cao nhất đối với một nữ nghệ sĩ solo Hàn Quốc. Đĩa đơn chủ đạo \"On the Ground\" đã thành công về mặt thương mại, lọt vào top 5 trên Gaon Digital Chart của Hàn Quốc và trở thành bài hát có thứ hạng cao nhất của một nữ nghệ sĩ solo Hàn Quốc trên bảng xếp hạng Billboard Hot 100 của Mỹ, ARIA Singles Chart và UK Singles Chart. Đây là bài hát đầu tiên của nghệ sĩ solo Hàn Quốc đứng đầu bảng xếp hạng Billboard Global 200 và video ca nhạc được xem nhiều nhất trong 24 giờ trên YouTube của một nghệ sĩ solo người Hàn Quốc, điều này đã mang về cho Rosé hai Kỷ lục Guinness Thế giới. Đĩa đơn thứ hai của album \"Gone\" cũng lọt vào top 10 tại Hàn Quốc.','Korea','07-12-1995','0123456789'),(7,12,'Kim Jisoo',90909090,'Idol',5,'Ngoài trông đợi vào các sản phẩm âm nhạc từ Blackpink, cư dân mạng còn muốn biết nhiều hơn các thông tin cá nhân của 4 cô gái. Nhiều người cho rằng nhóm chỉ học đến cấp 2 nhưng sự thật Jisoo đã hoàn thành chương trình học cấp 3.\r\n\r\nKết thúc cấp 3, Jisoo không theo học một trường đại học danh tiếng nào nhưng lại từng học trường Liberal Arts (Tạm dịch “Giáo dục khai phóng”). Đây là ngôi trường thiên về phát triển kiến thức nền tảng và các kỹ năng có thể thay đổi linh hoạt. Liberal Arts không chú trọng vào môn học mà tập trung vào các kỹ năng của tư duy. Sinh viên sẽ được tiếp xúc môn học ở nhiều lĩnh vực khác nhau.\r\n\r\nNgoài ra, quá khứ của Jisoo thời đi học cũng khiến fan tò mò. Jisoo được bạn bè khen xinh đẹp, tốt bụng và không bao giờ bắt nạt bạn bè. Nhắc đến Jisoo thời gian học sinh, chưa từng có một scandal nào về việc xích mích với bạn bè hay thành tích học tập không tốt. Đây cũng chính là điểm làm người hâm mộ thêm tin tưởng và yêu thương chị cả Blackpink.','Korea','07-12-1995','012345678'),(12,14,'LyLy',343443,'Idol',5,'Trong một tập, ca sĩ NingNing - thành viên nhóm nhạc Hàn Quốc aespa - cố vấn cho LyLy cách xử lý sự cố trang phục trên sân khấu. Sau hành trình tại The Next Stage, LyLy dừng chân ở top 13.\r\n\r\nNhắc lại kỷ niệm tham gia chương trình, LyLy cho biết cô không hề hối hận vì khó có thể trải nghiệm điều này thêm một lần nữa.\r\n\r\n\"Trong khoảng thời gian đó, đã có những giọt nước mắt rơi vì rất áp lực.\r\n\r\nCuộc thi ở Trung Quốc khác tất cả những cuộc thi tôi từng tham gia ở Việt Nam. Tôi vừa nhớ nhà, vừa còn nhiều công việc ở nhà chưa giải quyết được nhưng vẫn phải tập trung vào cuộc thi.\r\n\r\nCó những lúc tôi cảm thấy rất áp lực, không biết phải làm gì. Nhưng nhìn một cách tích cực hơn thì tôi thấy mình may mắn khi được làm nghề và kiếm tiền từ nghề của mình.','Ha Noi','07-12-1995','0123456789');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist_carlender`
--

DROP TABLE IF EXISTS `artist_carlender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist_carlender` (
  `id` int NOT NULL AUTO_INCREMENT,
  `artist_id` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist_carlender`
--

LOCK TABLES `artist_carlender` WRITE;
/*!40000 ALTER TABLE `artist_carlender` DISABLE KEYS */;
INSERT INTO `artist_carlender` VALUES (4,1,'2024-05-29','2024-05-30','00:00:00','23:00:00'),(5,1,'2024-05-30','2024-05-31','00:00:00','23:00:00'),(6,1,'2024-06-04','2024-06-05','20:00:00','21:00:00'),(8,1,'2024-06-08','2024-06-09','20:00:00','21:00:00'),(9,1,'2024-06-08','2024-06-09','21:00:00','22:00:00'),(10,1,'2024-06-01','2024-06-02','19:00:00','20:00:00'),(11,1,'2024-06-01','2024-06-02','20:00:00','21:00:00'),(12,1,'2024-06-01','2024-06-02','21:00:00','22:00:00'),(13,1,'2024-06-19','2024-06-20','10:00:00','11:00:00'),(14,1,'2024-06-19','2024-06-20','11:00:00','12:00:00'),(15,1,'2024-06-19','2024-06-20','12:00:00','13:00:00'),(16,1,'2024-06-19','2024-06-20','13:00:00','14:00:00'),(17,1,'2024-06-19','2024-06-20','14:00:00','15:00:00'),(18,1,'2024-06-19','2024-06-20','15:00:00','16:00:00'),(19,1,'2024-06-19','2024-06-20','16:00:00','17:00:00'),(20,1,'2024-06-19','2024-06-20','19:00:00','20:00:00'),(21,1,'2024-06-19','2024-06-20','20:00:00','21:00:00'),(22,1,'2024-06-19','2024-06-20','23:00:00','24:00:00'),(23,1,'2024-07-07','2024-07-08','00:00:00','01:00:00'),(24,1,'2024-07-07','2024-07-08','01:00:00','02:00:00'),(25,1,'2024-07-07','2024-07-08','10:00:00','11:00:00'),(26,1,'2024-07-16','2024-07-17','20:00:00','21:00:00'),(27,1,'2024-07-16','2024-07-17','21:00:00','22:00:00'),(28,1,'2024-07-16','2024-07-17','11:00:00','12:00:00'),(29,1,'2024-07-16','2024-07-17','18:00:00','19:00:00'),(30,1,'2024-07-16','2024-07-17','19:00:00','20:00:00'),(31,1,'2025-03-15','2025-03-16','10:00:00','11:00:00'),(32,1,'2025-03-15','2025-03-16','11:00:00','12:00:00'),(33,1,'2025-03-15','2025-03-16','12:00:00','13:00:00');
/*!40000 ALTER TABLE `artist_carlender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist_image`
--

DROP TABLE IF EXISTS `artist_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `artist_id` int DEFAULT NULL,
  `image` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist_image`
--

LOCK TABLES `artist_image` WRITE;
/*!40000 ALTER TABLE `artist_image` DISABLE KEYS */;
INSERT INTO `artist_image` VALUES (5,2,'https://5sfashion.vn/storage/upload/images/ckeditor/4KG2VgKFDJWqdtg4UMRqk5CnkJVoCpe5QMd20Pf7.jpg'),(6,2,'https://i.kfs.io/playlist/global/73514137v1/cropresize/600x600.jpg'),(7,2,'https://vnmedia.vn/file/8a10a0d36ccebc89016ce0c6fa3e1b83/8a10a0d36f363ce5016f7dd294f74173/122021/son-tung-m-tp-1_20211206094100.jpg'),(8,2,'https://cdn.tuoitre.vn/zoom/700_525/2021/4/30/1769180843158818032275538463311697669398382n-1619719048256364893362-crop-16197222392451597828294.jpeg'),(9,3,'https://i.ex-cdn.com/nongnghiep.vn/files/news_old/2019/12/03/15-39-06_1-104855.jpg'),(10,3,'https://2sao.vietnamnetjsc.vn/images/2022/02/25/21/04/issac-1-Copy1.jpg'),(11,3,'https://imgamp.phunutoday.vn/files/news/2018/04/19/nam-ca-si-issac-la-ai-235251.jpg'),(12,3,'https://2sao.vietnamnetjsc.vn/images/2017/09/03/11/01/issac-04.jpg'),(13,4,'https://vtv1.mediacdn.vn/thumb_w/640/562122370168008704/2024/5/3/03052024giaitrilunas-2-171472353807424897312.jpg'),(14,4,'https://nld.mediacdn.vn/2020/4/4/mon4792-15859612266561690537455.jpg'),(15,4,'https://media-cdn-v2.laodong.vn/storage/newsportal/2023/11/7/1264251/Ninh-Duong-Lan-Ngoc-01.jpeg'),(16,4,'https://afamilycdn.com/150157425591193600/2023/11/1/3-1698807899980981567906.jpg'),(17,5,'https://ss-images.saostar.vn/wp700/2024/1/12/pc/1705043090864/s3pt1uchbr1-bmr0qtwuup2-iunk1sff8e3.jpg'),(18,5,'https://thanhnien.mediacdn.vn/uploaded/ngocthanh/2021_02_11/misthy-1_ZKZD.jpg'),(19,5,'https://thanhnien.mediacdn.vn/uploaded/ngocthanh/2021_02_11/misthy-8_SHJD.jpg'),(20,5,'https://media.viez.vn/prod/2022/8/2/1659444980166_1a5788c110.jpeg'),(34,1,'https://game8.vn/media/202305/images/q3(7).jpg'),(35,1,'https://images2.thanhnien.vn/528068263637045248/2024/3/25/mie-18-17113557266571394962275.jpg'),(36,1,'https://showbizvietnam.vn/wp-content/uploads/2023/09/dj-mie-2.webp'),(37,1,'https://i.ex-cdn.com/60giay.com/files/content/2023/12/22/410730230_18371737564079207_3740547032548912167_n-2305.jpeg'),(38,1,'https://vb.1cdn.vn/2023/11/02/dj-mie-xac-nhan-chia-tay-hong-thanh-3-150733.jpg'),(39,7,'https://th.bing.com/th/id/R.c33b3f7f845838933c0f455009b33229?rik=bxBQzB77jxNHcw&pid=ImgRaw&r=0'),(40,6,'https://www.vietscape.com/wp-content/uploads/2023/06/rose-da-tham-gia-buoi-audition-cua-cong-ty-yg-entertainment-tai-uc.jpg'),(41,11,'https://media-cdn-v2.laodong.vn/storage/newsportal/2023/9/11/1240204/Lyly3.jpg'),(42,12,'https://media-cdn-v2.laodong.vn/storage/newsportal/2023/9/11/1240204/Lyly3.jpg');
/*!40000 ALTER TABLE `artist_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_artist`
--

DROP TABLE IF EXISTS `booking_artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_artist` (
  `id` text,
  `artist_id` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `status` int DEFAULT NULL,
  `description` text,
  `price` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_artist`
--

LOCK TABLES `booking_artist` WRITE;
/*!40000 ALTER TABLE `booking_artist` DISABLE KEYS */;
INSERT INTO `booking_artist` VALUES ('1',1,'2024-05-29','2024-05-29','00:00:00','01:00:00',1,NULL,'1000000',NULL,NULL,NULL),('2',1,'2024-05-29','2024-05-29','16:00:00','17:00:00',1,NULL,'1000000',NULL,NULL,NULL),('c48e5899-5d8c-4b96-91b8-de1455fb4ece',1,'2024-06-19','2024-06-19','13:00:00','14:00:00',0,'Booking description','2000000','fptgroup@gmail.com','0123456789','Lilyyyyyyy'),('9565e4bb-e719-46d4-be56-90f25464701f',1,'2024-06-19','2024-06-19','15:00:00','16:00:00',0,'Booking description','2000000','fptgroup@gmail.com','0123456789','Lilyyyyyyy'),('9480e20c-8b96-427c-ba0b-20e12c1757fb',1,'2024-06-19','2024-06-19','12:00:00','13:00:00',0,'Booking description','2000000','fptgroup@gmail.com','0123456789','Lilyyyyyyy'),('ec72e84c-bf5d-4783-8fe1-5a1ff61ecf94',1,'2024-06-19','2024-06-19','14:00:00','15:00:00',0,'Booking description','2000000','fptgroup@gmail.com','0123456789','Lilyyyyyyy'),('d73b6bde-6d45-402f-9e6d-e4a9563f77f0',1,'2024-07-07','2024-07-07','00:00:00','01:00:00',0,'Booking description','2000000','fptgroup@gmail.com','0123456789','CHINTL'),('c6f5e023-f3cc-4db9-b327-f193ca0e9993',1,'2024-07-07','2024-07-07','01:00:00','02:00:00',0,'Booking description','2000000','fptgroup@gmail.com','0123456789','CHINTL'),('784940d4-7370-4989-97c0-9968a09eee10',1,'2024-07-16','2024-07-16','20:00:00','21:00:00',0,'Booking description','2000000','fptgroup@gmail.com','0123456789','nguyenlinhchi'),('addc03c1-59dc-4d8e-a6f2-76e4c03ceb5d',1,'2024-07-16','2024-07-16','21:00:00','22:00:00',0,'Booking description','2000000','fptgroup@gmail.com','0123456789','nguyenlinhchi'),('3c9f2c9c-beb2-4195-8dac-99199d2cc864',1,'2024-07-16','2024-07-16','11:00:00','12:00:00',0,'Booking description','2000000','fptgroup@gmail.com','0123456789','Lilyyyyyyy'),('fd680b46-27d1-4681-b78d-ffa5e8f021d3',1,'2024-07-16','2024-07-16','18:00:00','19:00:00',0,'Booking description','2000000','fptgroup@gmail.com','0123456789','Lilyyyyyyy'),('1b6e0462-82a0-469f-83a5-49f63498364c',1,'2025-03-15','2025-03-15','12:00:00','13:00:00',0,'Booking description','1000000','nguyenlinhchitqp@gmail.com','0974487331','Linh Chi Nguyễn');
/*!40000 ALTER TABLE `booking_artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_history`
--

DROP TABLE IF EXISTS `payment_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `booking_id` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `pay_time` datetime DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_history`
--

LOCK TABLES `payment_history` WRITE;
/*!40000 ALTER TABLE `payment_history` DISABLE KEYS */;
INSERT INTO `payment_history` VALUES (1,1,1,'2024-05-24 00:00:00',983357631,'abc@gmail.com','Momo'),(2,2,-1,'2024-05-24 00:00:00',938473892,'abc@gmail.com','Tiền mặt');
/*!40000 ALTER TABLE `payment_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `category` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `image` text,
  `new_rate` int DEFAULT NULL,
  `description` text,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Cổ điển','Đàn',100000,'https://i.pinimg.com/564x/12/56/93/125693f648cbc6a709941541e61539a1.jpg',100,'Mặt sau và mặt bên bằng gỗ gụ mang lại âm trầm phong phú, ấm áp và ngân vang ngọt ngào Bộ thu âm Ibanez Under Saddle và tiền khuếch đại AEQ-2T duy trì âm sắc tự nhiên của đàn ghi-ta khi cắm vào Lớp hoàn thiện màu đen bóng và bộ điều chỉnh bằng crôm đúc mang lại vẻ ngoài nổi bật cho đàn ghi-ta Bao gồm bộ chỉnh âm tích hợp Có được các tính năng chuyên nghiệp, chất lượng và âm thanh tuyệt vời với mức giá cực kỳ rẻ','Dreadnought Cutaway Acoustic-Electric Cutaway Guitar'),(2,'Cổ điển','Đàn',200000,'https://i.pinimg.com/564x/37/7c/71/377c71088694d6d71bec12dea5c66ddd.jpg',99,'Mặt sau và mặt bên bằng gỗ gụ mang lại âm trầm phong phú, ấm áp và ngân vang ngọt ngào Bộ thu âm Ibanez Under Saddle và tiền khuếch đại AEQ-2T duy trì âm sắc tự nhiên của đàn ghi-ta khi cắm vào Lớp hoàn thiện màu đen bóng và bộ điều chỉnh bằng crôm đúc mang lại vẻ ngoài nổi bật cho đàn ghi-ta Bao gồm bộ chỉnh âm tích hợp Có được các tính năng chuyên nghiệp, chất lượng và âm thanh tuyệt vời với mức giá cực kỳ rẻ','Guitar Cổ điển'),(3,'Hiện đại','Trống',300000,'https://i.pinimg.com/564x/5f/69/12/5f69121238fe6d3b70c7faa4c4efa201.jpg',99,'Mặt sau và mặt bên bằng gỗ gụ mang lại âm trầm phong phú, ấm áp và ngân vang ngọt ngào Bộ thu âm Ibanez Under Saddle và tiền khuếch đại AEQ-2T duy trì âm sắc tự nhiên của đàn ghi-ta khi cắm vào Lớp hoàn thiện màu đen bóng và bộ điều chỉnh bằng crôm đúc mang lại vẻ ngoài nổi bật cho đàn ghi-ta Bao gồm bộ chỉnh âm tích hợp Có được các tính năng chuyên nghiệp, chất lượng và âm thanh tuyệt vời với mức giá cực kỳ rẻ','Dàn trống chất chơi cổ điển'),(4,'Hiện đại','Trống',239000,'https://i.pinimg.com/564x/c7/4a/10/c74a10ddc9871141b2530b0eaf9c8f0d.jpg',99,'Mặt sau và mặt bên bằng gỗ gụ mang lại âm trầm phong phú, ấm áp và ngân vang ngọt ngào Bộ thu âm Ibanez Under Saddle và tiền khuếch đại AEQ-2T duy trì âm sắc tự nhiên của đàn ghi-ta khi cắm vào Lớp hoàn thiện màu đen bóng và bộ điều chỉnh bằng crôm đúc mang lại vẻ ngoài nổi bật cho đàn ghi-ta Bao gồm bộ chỉnh âm tích hợp Có được các tính năng chuyên nghiệp, chất lượng và âm thanh tuyệt vời với mức giá cực kỳ rẻ','Dàn trống màu hồng nữ tính'),(5,'Hiện đại','Trống',232000,'https://i.pinimg.com/564x/37/ee/30/37ee30254d85c3e8a791666b58d2941a.jpg',98,'Mặt sau và mặt bên bằng gỗ gụ mang lại âm trầm phong phú, ấm áp và ngân vang ngọt ngào Bộ thu âm Ibanez Under Saddle và tiền khuếch đại AEQ-2T duy trì âm sắc tự nhiên của đàn ghi-ta khi cắm vào Lớp hoàn thiện màu đen bóng và bộ điều chỉnh bằng crôm đúc mang lại vẻ ngoài nổi bật cho đàn ghi-ta Bao gồm bộ chỉnh âm tích hợp Có được các tính năng chuyên nghiệp, chất lượng và âm thanh tuyệt vời với mức giá cực kỳ rẻ','Dàn trống Pearl'),(6,'Thính phòng','Kèn',239000,'https://i.pinimg.com/564x/fa/0b/35/fa0b3523167b534ec565bfa1b8d12c21.jpg',99,'Cá tính, lãng tử','Soprano Saxophone'),(7,'Hiện đại','Kèn',289000,'https://i.pinimg.com/564x/fc/fd/31/fcfd31e0be612bb2884fa8a1ef54a79d.jpg',99,'Bài đánh giá kèn bỏ túi Jupiter của chúng tôi sẽ giúp bạn quyết định xem nhạc cụ này có phải là lựa chọn phù hợp cho bạn hay không. Nó rất đắt, nhưng nó có đáng giá không.','Jupiter JTR710'),(8,'Cổ điển','Kèn',453000,'https://i.pinimg.com/564x/a1/16/04/a1160424a355ee6473dcb2d853ab8e3d.jpg',100,'Bài đánh giá kèn bỏ túi Jupiter của chúng tôi sẽ giúp bạn quyết định xem nhạc cụ này có phải là lựa chọn phù hợp cho bạn hay không. Nó rất đắt, nhưng nó có đáng giá không.','Kèn Trumpet Sinh Viên');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_booking`
--

DROP TABLE IF EXISTS `product_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_booking` (
  `id` int NOT NULL,
  `account_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_booking`
--

LOCK TABLES `product_booking` WRITE;
/*!40000 ALTER TABLE `product_booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_id` int DEFAULT NULL,
  `reason` text,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES (1,10,'',1),(2,12,'',-1),(7,14,'',0);
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Artist'),(2,'Member'),(3,'Admin');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-15 11:40:24
