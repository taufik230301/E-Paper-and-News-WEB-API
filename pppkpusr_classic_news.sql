-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2020 at 11:45 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pppkpusr_classic_news`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabeluser`
--

CREATE TABLE `tabeluser` (
  `username` varchar(11) NOT NULL,
  `useremail` text NOT NULL,
  `userimage` text NOT NULL,
  `userauth` text NOT NULL,
  `usersource` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `usrFullName` varchar(100) CHARACTER SET utf8 NOT NULL,
  `usrEmail` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `usrPwd` varchar(100) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `UserSession` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `usrStatus` enum('0','1') CHARACTER SET utf8 DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `usrFullName`, `usrEmail`, `usrPwd`, `image`, `UserSession`, `usrStatus`) VALUES
(1, 'Taufiiqulhakim', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'profile.png', '74593364b559cff6316f752b9fa93943', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_beli_koran`
--

CREATE TABLE `tbl_beli_koran` (
  `id` int(100) NOT NULL,
  `nama_pembeli` varchar(225) NOT NULL,
  `nama_koran` varchar(225) NOT NULL,
  `buy_on` date NOT NULL,
  `harga_koran` int(255) NOT NULL,
  `status` varchar(225) NOT NULL,
  `idorder` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_beli_koran`
--

INSERT INTO `tbl_beli_koran` (`id`, `nama_pembeli`, `nama_koran`, `buy_on`, `harga_koran`, `status`, `idorder`) VALUES
(35, 'Please LogIn', 'Medan News', '2020-11-16', 50000, 'berhasil', '202096'),
(3, 'Makasar News', 'Makasar News', '2020-09-24', 50000, 'berhasil', ''),
(11, 'Anditok', 'Karawang Ekspres', '2020-09-24', 80000, 'berhasil', ''),
(13, 'Anditok', 'Jakarta News', '2020-09-24', 80000, 'berhasil', ''),
(39, 'ocil', 'Makasar News', '2020-11-16', 0, 'berhasil', '2020930'),
(34, 'Taufiiqulhakim', 'Bandung News', '2020-10-28', 50000, 'berhasil', '2020917'),
(38, 'Please LogIn', 'Medan News', '2020-11-16', 0, 'berhasil', '202096'),
(36, 'Please LogIn', 'Medan News', '2020-11-16', 50000, 'berhasil', '202096'),
(37, 'Please LogIn', 'Medan News', '2020-11-16', 50000, 'berhasil', '202096'),
(32, 'Taufiiqulhakim', 'Makasar News', '2020-10-23', 80000, 'berhasil', '2020930'),
(31, 'Taufiiqulhakim', 'Karawang Ekspres', '2020-10-23', 80000, 'berhasil', '2020914'),
(33, 'Taufiiqulhakim', 'Makasar News', '2020-10-26', 50000, 'berhasil', '2020930'),
(41, '', '', '2020-11-24', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cid` int(11) UNSIGNED NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `category_image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `post_count` int(11) UNSIGNED NOT NULL,
  `category_status` enum('0','1') CHARACTER SET utf8 DEFAULT '1',
  `category_sequence` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=1260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cid`, `category_name`, `category_image`, `post_count`, `category_status`, `category_sequence`) VALUES
(15, 'Palpos.id', 'culture.jpg', 0, '1', 1),
(16, 'Sumeks.co', 'culture1.jpg', 0, '1', 1),
(17, 'Palpres.com', 'culture1.jpg', 0, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_film`
--

CREATE TABLE `tbl_film` (
  `id` int(11) NOT NULL,
  `isBreaking` int(1) DEFAULT 0,
  `isTrending` int(1) DEFAULT 0,
  `featured` int(1) DEFAULT 0,
  `news_title` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_cat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_cover_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_review` int(11) NOT NULL DEFAULT 0,
  `news_views` int(11) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  `published_on` datetime DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=5698 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_film`
--

INSERT INTO `tbl_film` (`id`, `isBreaking`, `isTrending`, `featured`, `news_title`, `news_cat`, `news_description`, `news_cover_img`, `total_review`, `news_views`, `status`, `published_on`) VALUES
(1, 0, 0, 1, 'Coronavirus - Common questions, How It Spreads', ' 4, 6, 8,', '<p><b>Coronavirus disease (COVID-19) </b>is an infectious disease caused by a newly discovered coronavirus.</p><p>Most people who fall sick with COVID-19 will experience mild to moderate symptoms and recover without special treatment.</p><h4>How It Spreads</h4><p>The virus that causes COVID-19 is mainly transmitted through droplets generated when an infected person coughs, sneezes, or exhales. These droplets are too heavy to hang in the air, and quickly fall on floors or surfaces.</p><p>You can be infected by breathing in the virus if you are within close proximity of someone who has COVID-19, or by touching a contaminated surface and then your eyes, nose or mouth.</p><h4>Prevention</h4><p>Protect yourself and others around you by knowing the facts and taking appropriate precautions. Follow advice provided by your local public health agency.</p><p><b>To prevent the spread of COVID-19:</b></p><ul><li>Clean your hands often. Use soap and water, or an alcohol-based hand rub.</li><li>Maintain a safe distance from anyone who is coughing or sneezing.</li><li>Don?t touch your eyes, nose or mouth.</li><li>Cover your nose and mouth with your bent elbow or a tissue when you cough or sneeze.</li><li>Stay home if you feel unwell.</li><li>If you have a fever, a cough, and difficulty breathing, seek medical attention. Call in advance.</li><li>Follow the directions of your local health authority.</li></ul><p>Avoiding unneeded visits to medical facilities allows healthcare systems to operate more effectively, therefore protecting you and others.</p><h4>Common questions</h4><p><b>What is the recovery time for the coronavirus disease?</b></p><p>Using available preliminary data, the median time from onset to clinical recovery for mild cases is approximately 2 weeks and is 3-6 weeks for patients with severe or critical disease.</p><p><b>Is the coronavirus disease the same as SARS?</b></p><p><b>No.</b> The virus that causes COVID-19 and the one that caused the outbreak of Severe Acute Respiratory Syndrome (SARS) in 2003 are related to each other genetically, but the diseases they cause are quite different.</p><p><b>Who is most at risk for the coronavirus disease?</b></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">People of all ages can be infected by the new coronavirus (2019-nCoV). Older people, and people with pre-existing medical conditions (such as asthma, diabetes, heart disease) appear to be more vulnerable to becoming severely ill with the virus.</span></p><p>WHO advises people of all ages to take steps to protect themselves from the virus, for example by following good hand hygiene and good respiratory hygiene.</p><p><b>What is the official name of the coronavirus disease?</b></p><p>ICTV announced ?severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2)? as the name of the new virus on 11 February 2020.</p><p><b>Is the coronavirus disease new?</b></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Coronavirus disease (COVID-19) is a new strain that was discovered in 2019 and has not been previously identified in humans.</span></p><p><b>Is there a vaccine for the coronavirus disease?</b></p><p>When a disease is new, there is no vaccine until one is developed. It can take a number of years for a new vaccine to be developed.</p>', 'dna-structure.jpg', 5, 138, 1, '2020-04-10 00:00:00'),
(2, 1, 0, 1, '10 Amazing Benefits of Running You Might Not Have Known', ' 6,', '<div><span class=\"ILfuVd NA6bn\">Other benefits of <b>running</b> may include improved sleep and mood. Researchers in one study observed a group of healthy adolescents who ran for <b>30 minutes</b> at a moderate-intensity pace every morning for three weeks.</span></div><div><img src=\"https://img.freepik.com/free-photo/side-view-mother-exercising-along-with-child-home_23-2148492534.jpg?size=364&ext=jpg\" style=\"font-size: 1rem; font-weight: initial;\"><br></div><div><b style=\"font-size: 1rem;\"><b>Running</b> can:</b><br></div><div><span class=\"ILfuVd NA6bn\"><div><ul><li>help to build strong bones, as it is a weight bearing exercise.</li><li>strengthen muscles.</li><li>improve cardiovascular fitness.</li><li class=\"TrT0Xe\">burn plenty of kilo-joules.</li><li class=\"TrT0Xe\">help maintain a healthy weight.</li></ul></div></span></div><div><img src=\"https://www.betterhealth.vic.gov.au/-/media/bhc/images/campaigns/sports/running_istock_74642299_1050x600.jpg\" style=\"width: 50%;\"><span style=\"font-size: 14px;\"><br></span></div><ul><li>Getting fit ? if you\'re a beginner, you should start with brisk walking, progress to jogging and work up to running. This should take a few months.</li><li>General fitness ? mix your running with other forms of exercise (such as swimming or team sports) to maximise your overall fitness.</li><li>Weight loss ? adjust your diet to include plenty of fresh fruits and vegetables, lean meats, wholegrain cereals and low-fat dairy products. Cut back on dietary fats, takeaway foods, soft drinks and sugar.</li></ul><p><b>What are the differences between C and C++?</b></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p>', 'running.jpg', 0, 0, 1, '2020-04-11 00:00:00'),
(3, 0, 0, 0, 'French football season ended with no games until at least September', ' 3,', '<p>This is very Cool News. I love it!</p>\r\n<div><img src=\"https://www.betterhealth.vic.gov.au/-/media/bhc/images/campaigns/sports/running_istock_74642299_1050x600.jpg\" style=\"width: 50%;\"></div><ul><li>Getting fit ? if you\'re a beginner, you should start with brisk walking, progress to jogging and work up to running. This should take a few months.</li><li>General fitness ? mix your running with other forms of exercise (such as swimming or team sports) to maximise your overall fitness.</li><li>Weight loss ? adjust your diet to include plenty of fresh fruits and vegetables, lean meats, wholegrain cereals and low-fat dairy products. Cut back on dietary fats, takeaway foods, soft drinks and sugar.</li><li>test</li></ul>\r\n<p><b>French football season ended with no games until at least September</b></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p>', 'soccer.jpg', 0, 0, 1, '2020-04-12 00:00:00'),
(4, 0, 0, 1, 'You\'re Eating Pasta Wrong, This Nutrition Pro Says', ' 6, 13,', '<p><b>You\'re Eating Pasta Wrong, This Nutrition Pro Says</b></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p><b>What are the differences between C and C++?</b></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p>', 'farfalle-pasta.jpg', 0, 0, 1, '2020-04-13 00:00:00'),
(5, 0, 0, 0, 'A big asteroid will fly by Earth Wednesday, but don\'t panic. It won\'t hit us', ' 1, 13,', '<p><b>A big asteroid will fly by Earth Wednesday, but don\'t panic. It won\'t hit us</b></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p><b>What are the differences between C and C++?</b></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p>', 'uranus.jpg', 0, 0, 1, '2020-04-14 00:00:00'),
(6, 0, 0, 1, 'Happiness for me is a chaotic whirlwind of new people and opportunity', ' 6, 9,', '<p><b>One in five parents would prefer children to be successful than happy</b></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p>', 'smiley-woman.jpg', 0, 0, 1, '2020-04-15 00:00:00'),
(7, 0, 0, 1, 'Number Of Startup Layoffs Surpasses 20K Amid COVID-19 Pandemic', ' 1, 4, 8, 11,', '<p><b>A common thread at all firms is a high level of anxiety, fear of the unknown and pressure to outperform in a suboptimal market.</b></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p>', 'layoff.jpg', 0, 0, 1, '2020-04-16 00:00:00'),
(8, 0, 0, 1, 'Pending CBSE Board Exams After Lockdown: Education Minister', ' 7,', '<p><b>The pending exams include both optional subjects and main academic subjects.</b></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p>', 'exam.jpg', 0, 0, 1, '2020-04-18 01:03:46'),
(9, 0, 0, 0, 'UGC likely to give universities freedom to decide exam plan, but there may be no winter break', ' 4, 7,', '<p><b>Semester exams across universities have been pending because of the lockdown</b></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p>', 'for-exam.jpg', 0, 0, 1, '2020-04-17 21:38:37'),
(10, 0, 1, 0, 'Startups in India that are shrinking operations amid the lockdown to contain the Covid-19 outbreak, putting jobs on the line', ' 1, 4, 10, 11, 12,', '<p><b>What are the differences between C and C++?</b></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p>', 'unemployment.jpg', 0, 0, 1, '2020-04-17 21:45:10'),
(11, 1, 0, 1, 'Latest Startup News From The Indian Startup ecosystem', ' 11, 12,', '<p>Latest Startup News From The Indian Startup ecosystem</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p>', 'startup.jpg', 0, 0, 1, '2020-04-18 01:18:16'),
(12, 1, 0, 1, 'Coronavirus lockdown taking toll on economic and social life', ' 4, 6,', '<p>I am a disco dancer.&nbsp;<span style=\"font-size: 0.9375rem; font-weight: initial;\">Jindagi mera Gaana</span></p><p><b>There are no college students cramming around campuses, preparing for final exams.</b></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p>', 'having-fun.jpg', 0, 0, 1, '2020-04-18 01:19:41'),
(13, 1, 0, 1, '12 reasons to do a skipping workout for Good Health', ' 3, 6,', '<p>Skipping is one of the cheapest, most effective, fat burning workouts you can do. And it\'s fun too. So what\'s stopping you?</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p>', 'skipping.jpg', 0, 0, 1, '2020-04-18 01:28:56');
INSERT INTO `tbl_film` (`id`, `isBreaking`, `isTrending`, `featured`, `news_title`, `news_cat`, `news_description`, `news_cover_img`, `total_review`, `news_views`, `status`, `published_on`) VALUES
(14, 1, 0, 1, 'Guidance on social distancing for everyone', ' 4, 6,', '<p>We are advising those who are at increased risk of severe illness from coronavirus (COVID-19) to be particularly stringent in following social distancing measures.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</span></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span></p><p>Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</p>', 'social-distancing.jpg', 0, 0, 1, '2020-04-18 01:32:41'),
(15, 1, 0, 0, '10 Amazing Benefits of Running You Might Not Have Known', ' 1, 8, 11,', '<div><img src=\"https://www.betterhealth.vic.gov.au/-/media/bhc/images/campaigns/sports/running_istock_74642299_1050x600.jpg\" style=\"width: 35%;\"><span style=\"font-size: 14px;\"><br></span></div><div><span style=\"font-size: 14px;\"><br></span></div><ul><li>Getting fit ? if you\'re a beginner, you should start with brisk walking, progress to jogging and work up to running. This should take a few months.</li><li>General fitness ? mix your running with other forms of exercise (such as swimming or team sports) to maximise your overall fitness.</li><li>Weight loss ? adjust your diet to include plenty of fresh fruits and vegetables, lean meats, wholegrain cereals and low-fat dairy products. Cut back on dietary fats, takeaway foods, soft drinks and sugar.</li></ul>', 'pizza.jpg', 0, 0, 1, '2020-04-21 03:14:01'),
(16, 1, 1, 0, 'How travel tech companies aim to survive the coronavirus pandemic', ' 1, 8, 9, 10, 11, 12,', '<p><b>The coronavirus pandemic has so far had devastating consequences across the travel industry.</b></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p>', 'travel-destination.jpg', 0, 0, 1, '2020-04-23 03:31:51'),
(17, 1, 1, 0, '100 teachings that will help you grow in the knowledge, faith, and power of our Savior.', ' 2,', '<p>100 teachings that will help you grow in the knowledge, faith, and power of our Savior.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p>', 'peaceful-man.png', 0, 0, 1, '2020-04-23 03:32:23'),
(18, 1, 0, 1, 'Pankaj Tripathi is popular for his roles in several web series.', ' 5,', '<p>Pankaj Tripathi is popular for his roles in several web series.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p>', 'pankaj_tripathi.jpeg', 0, 0, 1, '2020-04-23 03:34:38'),
(19, 1, 0, 1, 'Ramayana: 170 million viewers in 4 shows since re-launch', ' 2, 5,', '<p>This catapulted the Ramanand Sagar production as the highest watched serial in the Hindi general entertainment space ever, the Broadcast Audience Research Council said.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p>', 'ramayana.jpg', 0, 0, 1, '2020-04-23 03:34:59'),
(20, 0, 0, 1, '10 new shows and movies on Netflix, Amazon Prime Video and Disney+ Hotstar releasing this week', ' 5,', '<p>Now even though the last date of the lockdown is only a week away, there is no decrease in the number of people affected by the coronavirus in the country.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p>', 'netflix.jpg', 0, 0, 1, '2020-04-23 03:37:27'),
(21, 0, 1, 0, 'Largest hole in the ozone layer heals itself: Coronavirus effect?', ' 4, 13,', '<p>The ozone layer is a protective layer of gas in the stratosphere. It shields the planet from Sun?s harmful ultraviolet radiation, which can otherwise cause skin cancer and cataracts along with other environmental issues.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt nisi nulla, a porta dui interdum at. Etiam est mauris, aliquam eget ultricies ut, pellentesque id metus. Proin fermentum fringilla posuere. Vivamus vulputate aliquet laoreet. Mauris pellentesque libero id semper viverra.</p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Morbi venenatis felis dolor, eget iaculis sem rhoncus et. Morbi et purus pellentesque, fringilla nisi vitae, commodo urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum eget quam sit amet semper.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Aliquam eleifend ante sapien, et condimentum libero fermentum id. Morbi laoreet pretium erat et porttitor. Fusce ipsum eros, euismod nec neque non, lobortis tempor nibh.</span><br></p><p><span style=\"font-size: 0.9375rem; font-weight: initial;\">Mauris fermentum urna sit amet aliquam sollicitudin. Cras mollis viverra imperdiet. Ut lacinia interdum ullamcorper. Nullam accumsan iaculis nunc, a aliquet velit ornare sit amet. Cras hendrerit diam sed nisi hendrerit, sit amet pellentesque velit ultrices. Morbi dictum odio risus, sit amet malesuada lorem ultrices quis. Suspendisse fringilla ut lacus id scelerisque. Proin suscipit accumsan blandit. Nunc pulvinar ligula et tellus aliquam sodales. Phasellus sollicitudin sollicitudin ornare.</span></p>', 'ozone.jpg', 0, 0, 1, '2020-04-23 03:48:09'),
(24, 1, 1, 1, '123', ' 1,', '<p>fdas</p>', 'img_20200724_095932.jpg', 0, 0, 1, '2020-08-03 11:05:51'),
(25, 1, 1, 1, 'teastaset', ' 7,', '<p>teasts</p>', 'img_20200724_095932.jpg', 0, 0, 1, '2020-08-03 11:22:07'),
(26, 1, 1, 1, 'halo', ' 1,', '<p>halo</p>', 'lrt.jpg', 0, 0, 1, '2020-08-03 11:32:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_film_category`
--

CREATE TABLE `tbl_film_category` (
  `news_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_film_category`
--

INSERT INTO `tbl_film_category` (`news_id`, `category_id`) VALUES
(1, 4),
(1, 6),
(1, 8),
(2, 6),
(3, 3),
(4, 6),
(4, 13),
(5, 1),
(5, 13),
(6, 6),
(6, 9),
(7, 1),
(7, 4),
(7, 8),
(7, 11),
(8, 7),
(9, 4),
(9, 7),
(10, 1),
(10, 4),
(10, 10),
(10, 11),
(10, 12),
(11, 11),
(11, 12),
(12, 4),
(12, 6),
(13, 3),
(13, 6),
(14, 4),
(14, 6),
(15, 1),
(15, 8),
(15, 11),
(16, 1),
(16, 8),
(16, 9),
(16, 10),
(16, 11),
(16, 12),
(17, 2),
(18, 5),
(19, 2),
(19, 5),
(20, 5),
(21, 4),
(21, 13),
(22, 4),
(22, 6),
(22, 8),
(23, 4),
(23, 6),
(24, 1),
(24, 8),
(24, 11),
(25, 5),
(25, 7),
(25, 8),
(26, 1),
(26, 4),
(26, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_iklanbisnis`
--

CREATE TABLE `tbl_iklanbisnis` (
  `idiklanbisnis` int(11) NOT NULL,
  `judul` text NOT NULL,
  `dekripsi` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_iklanbisnis`
--

INSERT INTO `tbl_iklanbisnis` (`idiklanbisnis`, `judul`, `dekripsi`) VALUES
(1, 'vivin', 'vivin'),
(2, '2', '2'),
(3, '', ''),
(4, '5', '5'),
(5, '', ''),
(7, 'ee', 'ee'),
(8, 'Iklan Rumah', 'Rumah beserta isinya'),
(9, 'Jual Mobil	', 'Mobil'),
(10, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_koran`
--

CREATE TABLE `tbl_koran` (
  `id` int(11) NOT NULL,
  `nama_koran` varchar(100) DEFAULT NULL,
  `jumlah_halaman` int(50) DEFAULT NULL,
  `publish_on` date DEFAULT NULL,
  `size_koran` int(100) DEFAULT NULL,
  `koran_cover_image` varchar(255) NOT NULL,
  `file_koran` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_koran`
--

INSERT INTO `tbl_koran` (`id`, `nama_koran`, `jumlah_halaman`, `publish_on`, `size_koran`, `koran_cover_image`, `file_koran`) VALUES
(2, 'Makasar News', 35, '2020-09-30', 78, 'makasar_news.jpg', 'makasar_news.pdf'),
(3, 'Bandung News', 40, '2020-09-17', 23, 'bandung_news.jpg', 'bandung_news.pdf'),
(4, 'Jakarta News', 45, '2020-09-22', 67, 'jakarta_news.jpg', 'jakarta_news.pdf'),
(5, 'Madura News', 12, '2020-09-13', 121, 'madura_news.jpg', 'madura_news.pdf'),
(6, 'Medan News', 1231, '2020-09-06', 16, 'medan_news.jpg', 'medan_news.pdf'),
(7, 'Karawang Ekspres', 56, '2020-09-14', 12, 'karawang_ekspres.jpg', 'karawang_ekspres.pdf'),
(8, 'Jawa Ekspres', 45, '2020-09-28', 17, 'jawa_ekspres.jpg', 'jawa_ekspres.pdf'),
(9, 'Palembang Ekspres', 67, '2020-10-01', 34, 'palembang_ekspres.jpg', 'palembang_ekspres.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL,
  `isBreaking` int(1) DEFAULT 0,
  `isTrending` int(1) DEFAULT 0,
  `featured` int(1) DEFAULT 0,
  `news_title` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_cat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_cover_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_review` int(11) NOT NULL DEFAULT 0,
  `news_views` int(11) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  `published_on` datetime DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=5698 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`id`, `isBreaking`, `isTrending`, `featured`, `news_title`, `news_cat`, `news_description`, `news_cover_img`, `total_review`, `news_views`, `status`, `published_on`) VALUES
(35, 1, 1, 1, 'The New Mutants, Film X-Men Pertama Bergenre Horor    Artikel ini telah tayang di Tribunnews.com dengan judul Sinopsis dan Informasi Lengkap The New Mutants, Film X-Men Pertama Bergenre Horor', ' 16, 17,', '\'The New Mutants\' merupakan film spin-off pertama dari komik X-Men. The New Mutants menceritakan petualangan remaja yang memiliki latar belakang yang berbeda.<br><br>Lima orang mutan muda yang masing-masing mengetahui kemampuannya dan ditahan di sebuah fasilitas rahasia yang melawan keinginan mereka.<br><br>Kelima mutan ini harus berjuang melepaskan diri dari dosa masa lalu dan menyelamatkan dirinya sendiri.<br><br>\'The New Mutants\' berdasarkan dari komik dengan judul yang sama.<br><br>', 'ups.php', 0, 14, 1, '2020-09-04 10:02:12'),
(36, 1, 0, 1, 'Angka COVID-19 di Brasil 4 Juta, 800 Kematian Semalam', ' 15,', '<p>BRASILIA – Warga Brasil yang positif COVID-19 menyentuh angka empat juta.</p><p><br>Kementerian Kesehatan Brasil pada Kamis (3/9) menyebutkan, jumlah positif COVID-19 mencapai 4.041.638 sejak pandemi virus corona jenis baru itu mulai melanda negara tersebut. Menurut kementerian, tercatat 43.773 kasus baru dan 834 kematian COVID-19 dalam 24 jam terakhir.<br><br>Data resmi Kementerian Kesehatan Brasil menunjukkan, total kematian mencapai 124.614 orang. Brasil menjadi negara kedua di dunia yang paling parah terdampak pandemi COVID-19. Posisi teratas masih ditempati Amerika Serikat. (reuters/antara/jpnn)</p>', 'petijenazah.jpg', 0, 21, 1, '2020-09-04 10:03:06'),
(37, 1, 0, 1, 'Impian Jerman Raih Poin Penuh, Buyar', ' 16,', '<p>STUTTGART – Laga pembuka Grup 4 Liga A Liga Negara UEFA berhasil dijalani Spanyol dengan apik dan meraih satu poin.<br>Bertandang ke markas Jerman di Mercedes Benz Arena, Stuttgart, Tim Matador mengimbangi tuan rumah 1-1. Spanyol tertinggal sejak menit ke-52 akibat gol apik yang dicetak Timo Werner untuk Jerman.<br><br>Skuad asuhan Luis Enrique kerja keras mencari gol penyeimbang, termasuk ketika Ansu Fati menanduk bola ke gawang pada menit injury time, tetapi gol itu dianulir wasit Daniele Orsato karena Sergio Ramos dianggap terlebih dulu melanggar Matthias Ginter.<br></p>', 'spanyoljerman.jpg', 0, 24, 1, '2020-09-04 10:16:28'),
(38, 1, 0, 1, 'Hati-hati!!! Rute Penerbangan Jakarta Wuhan Kembali Dibuka', ' 17,', '<p>WUHAN – Tiongkok membuka kembali rute penerbangan internasional dengan tujuan Wuhan, kota kelahiran COVID-19 pada pertengahan September.<br>Departemen Penerbangan Sipil Kota Wuhan mengatakan, beberapa maskapai yang sudah mengajukan permohonan terbang langsung menuju Bandar Udara Internasional Tianhe antara lain dari Seoul, Bangkok, Kuala Lumpur, Manila, Hanoi, Sihanouk, Tokyo, Jakarta, dan Singapura. Ibu Kota Provinsi Hubei yang terkena dampak terparah COVID-19 menangguhkan 63 jadwal penerbangan internasional dan domestik sejak diberlakukan penutupan total (lockdown) pada 23 Januari.<br><br>Beroperasinya kembali penerbangan tersebut atas persetujuan Badan Penerbangan Sipil Tiongkok (CAAC).<br></p>', 'wuhan.jpg', 0, 189, 1, '2020-09-04 10:17:47'),
(39, 1, 1, 1, 'Star Wars', ' 15,', '<p>Setelah 40 tahun melanglang buana, petualangan saga Skywalker akhirnya harus diakhiri. Hal ini ditandai dengan ditayangkannya Star Wars: The Rise Of Skywalker yang diproduksi Lucasfilms. Film ini tayang menyapa penikmat film di Indonesia mulai hari ini Rabu (18/12/2019) di seluruh bioskop Tanah Air. </p><p>JJ Abrams yang masih dipercaya sebagai sutradara menyuguhkan pertarungan menegangkan sekaligus memberi jawaban atas teka-teki karakter utama Rey (Daisy Ridley). Rey adalah seorang anak yatim dari planet gurun Jakku dan murid terakhir Luke Skywalker. Film ini menjadi angsuran ketiga dari trilogi sekuel Star Wars, The Force Awakens (2015) dan The Last Jedi (2017), dan angsuran terakhir dari waralaba film utama Star Wars sendiri.<br><br></p>', 'star-wars-the-rise-of-skywalker-theatrical-poster-1000_ebc74357.jpeg', 0, 17, 1, '2020-09-04 10:59:01'),
(40, 1, 1, 1, 'The Batman 2021', ' 15, 16,', '<p>Belum ada plot cerita yang terungkap, meski ada spekulasi, cerita The Batman mungkin mengikuti buku komik The Long Halloween. Belum ada detail tentang The Batman yang terungkap secara resmi selain pemeran, sutradara, dan trailernya. Dari segi plot, trailer mengisyaratkan The Batman akan memburu pembunuh bayangan, mengikuti alur cerita The Long Halloween yang menampilkan Falcone mengumpulkan Rogues Gallery of Batman, termasuk Catwoman dan Penguin, untuk menjatuhkan The Bat. \"Kita akan melihat Batman tumbuh, membuat kesalahan ... dan menjadi cacat. Kita juga bisa melihatnya sebagai detektif terhebat di dunia,\" ujar Reeves. </p><p>Dalam trailer juga muncul sekilas Catwoman, bos mafia Gotham Carmine Falcone, suara Alfred Pennyworth, Riddler, dan Komisaris Gordon. Reeves mengatakan, semua penjahat baru saja memulai perjalanan mereka, jadi penonton akan melihat Catwoman, Penguin, dan Riddler dalam tahap awal kriminal mereka. Reeves juga mengunggah twit logo baru The Batman pada 20 Agustus, serta beberapa karya seni DC FanDome oleh seniman dan kepala kreatif DC Comics Jim Lee. Produksi film tersebut telah dihentikan sejak 26 Maret karena pandemi virus corona COVID-19. \"Kami berhenti sementara sampai aman bagi kami semua untuk melanjutkan,\" twit Reeves pada Maret 2020.<br><br></p>', 'egegd3vu0aa6v19.jpeg', 0, 22, 1, '2020-09-04 11:01:27'),
(41, 1, 1, 1, 'Wonder Woman 3', ' 16,', '<p>Penayangan <em><a href=\"https://www.liputan6.com/tag/wonder-woman\">Wonder Woman</a> 1984</em>\r\n memang diundur hingga Oktober 2020 akibat wabah virus Corona Covid-19 \r\nyang melanda dunia. Namun, sang sutradara, Patty Jenkins, sudah \r\nmenyiapkan Wonder Woman 3.\r\n</p><p>Sayangnya, produksi film <em>Wonder Woman 3</em> dihentikan demi \r\nmencegah penyebaran virus Corona Covid-19. Namun, hal tersebut malah \r\nmembuat Patty Jenkins punya banyak waktu untuk menggali inspirasi.</p>', 'f7dedc38e914bf78bb12608663afc879.jpg', 0, 26, 1, '2020-09-04 11:09:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news_category`
--

CREATE TABLE `tbl_news_category` (
  `news_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_news_category`
--

INSERT INTO `tbl_news_category` (`news_id`, `category_id`) VALUES
(1, 4),
(1, 6),
(1, 8),
(2, 6),
(3, 3),
(4, 6),
(4, 13),
(5, 1),
(5, 13),
(6, 6),
(6, 9),
(7, 1),
(7, 4),
(7, 8),
(7, 11),
(8, 7),
(9, 4),
(9, 7),
(10, 1),
(10, 4),
(10, 10),
(10, 11),
(10, 12),
(11, 11),
(11, 12),
(12, 4),
(12, 6),
(13, 3),
(13, 6),
(14, 4),
(14, 6),
(15, 1),
(15, 8),
(15, 11),
(16, 1),
(16, 8),
(16, 9),
(16, 10),
(16, 11),
(16, 12),
(17, 2),
(18, 5),
(19, 2),
(19, 5),
(20, 5),
(21, 4),
(21, 13),
(22, 4),
(22, 6),
(22, 8),
(23, 4),
(23, 6),
(24, 1),
(24, 8),
(24, 11),
(25, 1),
(25, 5),
(25, 8),
(26, 1),
(26, 4),
(26, 11),
(27, 8),
(28, 4),
(29, 1),
(30, 5),
(31, 5),
(31, 13),
(32, 1),
(33, 1),
(34, 1),
(35, 16),
(35, 17),
(36, 15),
(37, 16),
(38, 17),
(39, 15),
(40, 15),
(40, 16),
(41, 16);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `idstatus` int(200) NOT NULL,
  `judul` text NOT NULL,
  `status` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`idstatus`, `judul`, `status`) VALUES
(0, 'v', 'https://sumeks.co/'),
(74, 'vivin sini	', 'https://youtube.com'),
(83, '', ''),
(82, '', ''),
(81, '', ''),
(80, '', ''),
(79, '', ''),
(75, 'taufik	', 'https://youtube.com'),
(78, '', ''),
(77, '', ''),
(76, '', ''),
(73, 'Vika', 'https://www.youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id` int(255) NOT NULL,
  `nama_pembeli` varchar(225) NOT NULL,
  `nama_koran` varchar(225) NOT NULL,
  `harga_koran` int(225) NOT NULL,
  `idorder` int(255) NOT NULL,
  `buy_on` date NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id`, `nama_pembeli`, `nama_koran`, `harga_koran`, `idorder`, `buy_on`, `status`) VALUES
(1, 'Taufiiqulhakim', 'Jakarta News', 23000, 23112020, '2020-10-14', 'berhasil'),
(2, 'Taufiiqulhakim', 'Makassar News', 300000, 20122020, '2020-10-13', 'berhasil'),
(3, 'Taufiiqulhakim', 'Makasar News', 80000, 2020930, '2020-10-14', 'berhasil'),
(4, 'Taufiiqulhakim', 'Makasar News', 80000, 2020930, '2020-10-14', 'berhasil'),
(5, 'Taufiiqulhakim', 'Makasar News', 80000, 2020930, '2020-10-14', 'berhasil'),
(6, 'Taufiiqulhakim', 'Karawang Ekspres', 80000, 2020914, '2020-10-14', 'berhasil'),
(7, 'Taufiiqulhakim', 'Makasar News', 80000, 2020930, '2020-10-14', 'berhasil'),
(8, 'Taufiiqulhakim', 'Makasar News', 80000, 2020930, '2020-10-21', 'berhasil'),
(9, 'Taufiiqulhakim', 'Makasar News', 80000, 2020930, '2020-10-21', 'berhasil'),
(10, 'Taufiiqulhakim', 'Makasar News', 50000, 2020930, '2020-10-21', 'berhasil'),
(11, 'Taufiiqulhakim', 'Makasar News', 50000, 2020930, '2020-10-22', 'berhasil'),
(12, 'Taufiiqulhakim', 'Karawang Ekspres', 80000, 2020914, '2020-10-22', 'berhasil'),
(13, 'Taufiiqulhakim', 'Palembang Ekspres', 80000, 2020101, '2020-10-23', 'berhasil'),
(14, 'Taufiiqulhakim', 'Madura News', 50000, 2020913, '2020-10-23', 'berhasil'),
(15, 'Taufiiqulhakim', 'Makasar News', 80000, 2020930, '2020-10-23', 'berhasil'),
(16, 'ocil', 'Makasar News', 50000, 2020930, '2020-11-16', 'berhasil');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `SrNo` int(11) UNSIGNED NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `fathername` varchar(255) DEFAULT NULL,
  `dbo` varchar(10) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `town` varchar(150) DEFAULT NULL,
  `tahsil` varchar(150) DEFAULT NULL,
  `district` varchar(150) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `isActive` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`SrNo`, `fullname`, `fathername`, `dbo`, `phone`, `email`, `password`, `address`, `town`, `tahsil`, `district`, `state`, `pin`, `profile`, `isActive`, `created`) VALUES
(1, 'vivin', NULL, NULL, '09988387274', NULL, '52ce40884f89c983639c676281511a8b', NULL, NULL, NULL, NULL, NULL, NULL, 'images/profile/user.png', 1, '2020-08-07 14:10:47'),
(3, 'taufik', NULL, NULL, '08988387271', NULL, '76868b011b66684d4a91d4ef7e1a2651', NULL, NULL, NULL, NULL, NULL, NULL, 'images/profile/user.png', 1, '2020-08-07 14:26:51'),
(4, 'Hendri', NULL, NULL, '081366512877', NULL, '6e3e0af8b009ded65ffd780c61c50aae', NULL, NULL, NULL, NULL, NULL, NULL, 'images/profile/user.png', 1, '2020-08-07 17:59:56'),
(5, 'vivin', NULL, NULL, '08988387270', NULL, 'bfd59291e825b5f2bbf1eb76569f8fe7', NULL, NULL, NULL, NULL, NULL, NULL, 'images/profile/user.png', 1, '2020-08-24 14:13:28'),
(6, 'bela', NULL, NULL, '08988387279', NULL, '297ff4a97fcda4bc0ecf0bb18168034a', NULL, NULL, NULL, NULL, NULL, NULL, 'images/profile/user.png', 1, '2020-08-24 14:34:11'),
(7, 'wira', NULL, NULL, '08988387278', NULL, 'bfd59291e825b5f2bbf1eb76569f8fe7', NULL, NULL, NULL, NULL, NULL, NULL, 'images/profile/user.png', 1, '2020-08-24 15:12:11'),
(8, 'Vivin Karyani', NULL, NULL, '083178606876', NULL, 'f20acb8d2f5c9dd225e4281ee351f7e8', NULL, NULL, NULL, NULL, NULL, NULL, 'images/profile/user.png', 1, '2020-08-25 14:45:18'),
(9, 'taufikganteng', NULL, NULL, '0123456789', NULL, 'bfd59291e825b5f2bbf1eb76569f8fe7', NULL, NULL, NULL, NULL, NULL, NULL, 'images/profile/user.png', 1, '2020-09-10 14:44:02'),
(10, 'Taufiiqulhakim', NULL, NULL, '082176350289', NULL, '4227898d444d160ea182726528d0111a', NULL, NULL, NULL, NULL, NULL, NULL, 'images/profile/user.png', 1, '2020-09-11 08:51:23'),
(19, 'MerryA', NULL, NULL, '086574638475', NULL, '4227898d444d160ea182726528d0111a', NULL, NULL, NULL, NULL, NULL, NULL, 'images/profile/user.png', 1, '2020-09-24 13:10:38'),
(18, 'Anditok', NULL, NULL, '087645382764', NULL, '4227898d444d160ea182726528d0111a', NULL, NULL, NULL, NULL, NULL, NULL, 'images/profile/user.png', 1, '2020-09-24 13:04:24'),
(17, 'Merryana', NULL, NULL, '0832738236', NULL, '34d6869d5ea049ebc663df69fe67ff3d', NULL, NULL, NULL, NULL, NULL, NULL, 'images/profile/', 1, '2020-09-16 15:41:57'),
(20, 'ocil', NULL, NULL, '1234567890', NULL, '297ff4a97fcda4bc0ecf0bb18168034a', NULL, NULL, NULL, NULL, NULL, NULL, 'images/profile/user.png', 1, '2020-11-16 16:03:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabeluser`
--
ALTER TABLE `tabeluser`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_beli_koran`
--
ALTER TABLE `tbl_beli_koran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tbl_film`
--
ALTER TABLE `tbl_film`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_film_category`
--
ALTER TABLE `tbl_film_category`
  ADD PRIMARY KEY (`news_id`,`category_id`);

--
-- Indexes for table `tbl_iklanbisnis`
--
ALTER TABLE `tbl_iklanbisnis`
  ADD PRIMARY KEY (`idiklanbisnis`);

--
-- Indexes for table `tbl_koran`
--
ALTER TABLE `tbl_koran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_news_category`
--
ALTER TABLE `tbl_news_category`
  ADD PRIMARY KEY (`news_id`,`category_id`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`idstatus`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`SrNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_beli_koran`
--
ALTER TABLE `tbl_beli_koran`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_film`
--
ALTER TABLE `tbl_film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_iklanbisnis`
--
ALTER TABLE `tbl_iklanbisnis`
  MODIFY `idiklanbisnis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_koran`
--
ALTER TABLE `tbl_koran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `idstatus` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `SrNo` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
