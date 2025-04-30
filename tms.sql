-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2025 at 09:00 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Table structure for table `admin`
CREATE TABLE `admin` (
                         `id` int(11) NOT NULL,
                         `UserName` varchar(100) DEFAULT NULL,
                         `Name` varchar(250) DEFAULT NULL,
                         `EmailId` varchar(250) DEFAULT NULL,
                         `MobileNumber` bigint(10) DEFAULT NULL,
                         `Password` varchar(100) DEFAULT NULL,
                         `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table `admin`
INSERT INTO `admin` (`id`, `UserName`, `Name`, `EmailId`, `MobileNumber`, `Password`, `updationDate`) VALUES
    (1, 'admin', 'Administrator', 'admin@example.uz', 998900000001, 'f925916e2754e5e03f75dd58a5733251', '2025-04-30 11:18:49');

-- Table structure for table `tblbooking`
CREATE TABLE `tblbooking` (
                              `BookingId` int(11) NOT NULL,
                              `PackageId` int(11) DEFAULT NULL,
                              `UserEmail` varchar(100) DEFAULT NULL,
                              `FromDate` varchar(100) DEFAULT NULL,
                              `ToDate` varchar(100) DEFAULT NULL,
                              `Comment` mediumtext DEFAULT NULL,
                              `RegDate` timestamp NULL DEFAULT current_timestamp(),
                              `status` int(11) DEFAULT NULL,
                              `CancelledBy` varchar(5) DEFAULT NULL,
                              `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table `tblbooking`
INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
                                                                                                                                                          (1, 1, 'test@example.uz', '2020-07-11', '2020-07-18', 'I want this package.', '2025-04-10 09:15:00', 2, 'u', '2025-04-20 08:30:10'),
                                                                                                                                                          (2, 2, 'test@example.uz', '2020-07-10', '2020-07-13', 'Is there any special offer?', '2025-04-11 10:20:00', 1, NULL, '2025-04-21 11:45:30'),
                                                                                                                                                          (3, 4, 'gulnara@example.uz', '2020-07-11', '2020-07-15', 'When will I receive confirmation?', '2025-04-12 14:00:00', 2, 'a', '2025-04-22 15:05:45'),
                                                                                                                                                          (4, 2, 'test@example.uz', '2024-02-02', '2024-02-08', 'NA', '2025-04-13 12:30:00', 1, NULL, '2025-04-23 13:55:20'),
                                                                                                                                                          (5, 3, 'test@example.uz', '2024-01-31', '2024-02-05', 'Please offer some discount', '2025-04-14 16:10:00', 0, NULL, NULL),
                                                                                                                                                          (6, 2, 'jasur@example.uz', '2024-03-01', '2024-03-05', 'NA', '2025-04-15 17:05:00', 1, NULL, '2025-04-24 18:25:50');

-- Table structure for table `tblenquiry`
CREATE TABLE `tblenquiry` (
                              `id` int(11) NOT NULL,
                              `FullName` varchar(100) DEFAULT NULL,
                              `EmailId` varchar(100) DEFAULT NULL,
                              `MobileNumber` char(10) DEFAULT NULL,
                              `Subject` varchar(100) DEFAULT NULL,
                              `Description` mediumtext DEFAULT NULL,
                              `PostingDate` timestamp NULL DEFAULT current_timestamp(),
                              `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table `tblenquiry`
INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
                                                                                                                              (2, 'Islom Sobirov', 'islom@example.uz', '9989089012', 'Enquiry', 'Any offer for Silk Road Trip', '2025-04-16 08:00:00', NULL),
                                                                                                                              (3, 'Olga Nazarova', 'olga@example.uz', '9989090123', 'Silk Road Offer', 'Looking for Silk Road package details', '2025-04-17 09:15:00', 1),
                                                                                                                              (5, 'John Doe', 'john@example.uz', '9989101234', 'Test Subject', 'This is for testing', '2025-04-18 10:30:00', 1);

-- Table structure for table `tblissues`
CREATE TABLE `tblissues` (
                             `id` int(11) NOT NULL,
                             `UserEmail` varchar(100) DEFAULT NULL,
                             `Issue` varchar(100) DEFAULT NULL,
                             `Description` mediumtext DEFAULT NULL,
                             `PostingDate` timestamp NULL DEFAULT current_timestamp(),
                             `AdminRemark` mediumtext DEFAULT NULL,
                             `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table `tblissues`
INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
                                                                                                                         (7, 'test@example.uz', 'Refund', 'I want my refund', '2025-04-19 11:00:00', NULL, '2025-04-20 12:15:00'),
                                                                                                                         (10, 'test@example.uz', 'Other', 'Test Sample', '2025-04-21 13:20:00', NULL, NULL),
                                                                                                                         (13, 'jasur@example.uz', 'Booking Issues', 'I want some information regarding booking', '2025-04-22 14:45:00', 'Information provided', '2025-04-23 15:50:00');

-- Table structure for table `tblpages`
CREATE TABLE `tblpages` (
                            `id` int(11) NOT NULL,
                            `type` varchar(255) DEFAULT '',
                            `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table `tblpages`
INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
                                                    (1, 'terms', '<p align="justify"><span style="color: rgb(153, 0, 0); font-size: small; font-weight: 700;">terms and condition page</span></p>'),
                                                    (2, 'privacy', '<span style="font-size:14px;">At vero eos et accusamus et iusto odio dignissimos ducimus...</span>'),
                                                    (3, 'aboutus', '<div><span style="font-weight:bold;">Welcome to Tourism Management System!!!</span></div><span>Since our founding, our committed team has ensured a pleasant tour experience. TMS is now recognized as a dependable travel provider with offices in Tashkent, Bukhara, and Samarkand.</span>'),
                                                    (11, 'contact', '<span>Address------123 Amir Temur Avenue, Tashkent, Uzbekistan</span>');

-- Table structure for table `tbltourpackages`
CREATE TABLE `tbltourpackages` (
                                   `PackageId` int(11) NOT NULL,
                                   `PackageName` varchar(200) DEFAULT NULL,
                                   `PackageType` varchar(150) DEFAULT NULL,
                                   `PackageLocation` varchar(100) DEFAULT NULL,
                                   `PackagePrice` int(11) DEFAULT NULL,
                                   `PackageFetures` varchar(255) DEFAULT NULL,
                                   `PackageDetails` mediumtext DEFAULT NULL,
                                   `PackageImage` varchar(100) DEFAULT NULL,
                                   `Creationdate` timestamp NULL DEFAULT current_timestamp(),
                                   `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table `tbltourpackages`
INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
                                                                                                                                                                                                     (1, 'Silk Road Explorer: Samarkand to Bukhara', 'Group Package', 'Samarkand and Bukhara', 200, 'Round-trip train tickets, 3-night accommodations, guided city tours', 'Embark on a journey through the historic Silk Road, visiting Registan Square, the Gur-Emir Mausoleum, and more.', 'sanarqand.webp', '2025-04-01 09:00:00', '2025-04-10 10:10:00'),
                                                                                                                                                                                                     (2, 'Fergana Valley Cultural Tour', 'Family Package', 'Fergana Valley and Kokand', 150, 'Accommodation, breakfasts, local handicraft workshops', 'Discover the rich heritage of the Fergana Valley, including visits to the Khudoyar Khan Palace and local markets.', 'khiva.jpg', '2025-04-01 09:00:00', '2025-04-11 11:11:00'),
                                                                                                                                                                                                     (3, 'Khiva Desert Adventure', 'Couple Package', 'Khiva and Nurata', 180, 'Guided excursions, camel rides, desert camping', 'Explore the ancient walls of Itchan Kala and experience traditional desert life in Nurata.', 'nurat.jpg', '2025-04-01 09:00:00', '2025-04-12 12:12:00'),
                                                                                                                                                                                                     (4, 'Tashkent Urban Highlights', 'City Tour', 'Tashkent City', 100, 'City bus tour, museum entry fees, lunch voucher', 'A panoramic tour of Tashkent, covering Independence Square, the Khast Imam complex, and Chorsu Bazaar.', 'tashkent.jpg', '2025-04-01 09:00:00', '2025-04-13 13:13:00'),
                                                                                                                                                                                                     (5, 'Nurata & Aydarkul Lake', 'Nature Package', 'Nurata and Aydarkul', 120, 'Transport, guided hiking, lakeside camping', 'Hike the Nurata Mountains and relax by the serene Aydarkul Lake under the stars.', 'xaydar.jpg', '2025-04-01 09:00:00', '2025-04-14 14:14:00'),
                                                                                                                                                                                                     (6, 'Fergana Artisan Workshops', 'Workshop Tour', 'Fergana Valley', 130, 'Handicraft lessons, cultural performances, meals', 'Participate in pottery and silk-weaving workshops led by local artisans.', 'fargana.jpg', '2025-04-01 09:00:00', '2025-04-15 15:15:00'),
                                                                                                                                                                                                     (7, 'Bukhara & Samarkand Family Tour', 'Family Package', 'Bukhara and Samarkand', 210, 'Family rooms, guided tours, meals included', 'A family-friendly itinerary exploring the Ark Fortress, Poi Kalon complex, and more.', 'sanarqand.webp', '2025-04-01 09:00:00', '2025-04-16 16:16:00'),
                                                                                                                                                                                                     (8, 'Wonders of Uzbekistan', 'Comprehensive Tour', 'Tashkent, Samarkand, Bukhara, Khiva', 300, 'All transport, hotels, tour guide, meals', 'An all-in-one tour visiting Uzbekistan’s top landmarks over 7 days.', 'uzbekistan.jpg', '2025-04-01 09:00:00', '2025-04-17 17:17:00'),
                                                                                                                                                                                                     (9, 'Khorezm Oasis Tour', 'Couple Package', 'Khiva and Urgench', 170, 'Private car, guide, museum passes', 'Explore the Khorezm region’s UNESCO sites, including the Fortress of Ayaz-Kala.', 'xorazm.jpg', '2025-04-01 09:00:00', '2025-04-18 18:18:00');

-- Table structure for table `tblusers`
CREATE TABLE `tblusers` (
                            `id` int(11) NOT NULL,
                            `FullName` varchar(100) DEFAULT NULL,
                            `MobileNumber` char(10) DEFAULT NULL,
                            `EmailId` varchar(70) DEFAULT NULL,
                            `Password` varchar(100) DEFAULT NULL,
                            `RegDate` timestamp NULL DEFAULT current_timestamp(),
                            `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table `tblusers`
INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
                                                                                                                (1, 'Aziz Karimov', '9989012345', 'aziz@example.uz', '202cb962ac59075b964b07152d234b70', '2025-04-05 08:00:00', '2025-04-20 09:30:00'),
                                                                                                                (2, 'Malika Tursunova', '9989023456', 'malika@example.uz', '202cb962ac59075b964b07152d234b70', '2025-04-05 08:00:00', '2025-04-21 10:45:00'),
                                                                                                                (3, 'Daler Yuldashev', '9989034567', 'daler@example.uz', '202cb962ac59075b964b07152d234b70', '2025-04-05 08:00:00', '2025-04-22 11:55:00'),
                                                                                                                (4, 'Gulnara Ismailova', '9989045678', 'gulnara@example.uz', '202cb962ac59075b964b07152d234b70', '2025-04-05 08:00:00', '2025-04-23 12:05:00'),
                                                                                                                (5, 'Test User', '9989056789', 'test@example.uz', 'f925916e2754e5e03f75dd58a5733251', '2025-04-05 08:00:00', '2025-04-24 13:20:00'),
                                                                                                                (6, 'Navruz Sample', '9989067890', 'navruz@example.uz', '202cb962ac59075b964b07152d234b70', '2025-04-05 08:00:00', NULL),
                                                                                                                (7, 'Jasur Rahimov', '9989078901', 'jasur@example.uz', 'f925916e2754e5e03f75dd58a5733251', '2025-04-25 15:15:00', '2025-04-26 16:20:00');

-- Indexes for dumped tables and AUTO_INCREMENT settings (unchanged) follow…

ALTER TABLE `admin`
    ADD PRIMARY KEY (`id`);
ALTER TABLE `tblbooking`
    ADD PRIMARY KEY (`BookingId`);
ALTER TABLE `tblenquiry`
    ADD PRIMARY KEY (`id`);
ALTER TABLE `tblissues`
    ADD PRIMARY KEY (`id`);
ALTER TABLE `tblpages`
    ADD PRIMARY KEY (`id`);
ALTER TABLE `tbltourpackages`
    ADD PRIMARY KEY (`PackageId`);
ALTER TABLE `tblusers`
    ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

ALTER TABLE `admin`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `tblbooking`
    MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
ALTER TABLE `tblenquiry`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
ALTER TABLE `tblissues`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
ALTER TABLE `tblpages`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
ALTER TABLE `tbltourpackages`
    MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
ALTER TABLE `tblusers`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

COMMIT;
