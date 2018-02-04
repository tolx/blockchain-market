-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 04, 2018 at 06:14 AM
-- Server version: 5.6.38
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `createha_market`
--

-- --------------------------------------------------------

--
-- Table structure for table `Affiliate`
--

CREATE TABLE `Affiliate` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ref_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Blogs`
--

CREATE TABLE `Blogs` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_details` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `views` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Bought`
--

CREATE TABLE `Bought` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datas` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `pp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE `Categories` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Categories`
--

INSERT INTO `Categories` (`id`, `mid`, `title`, `total`, `active`, `created_at`, `updated_at`) VALUES
(1, 0, '3D Models', 1, 1, '2015-08-26 20:29:49', '2015-08-26 20:29:49'),
(3, 0, '2D Models', 0, 1, '2015-08-26 20:35:54', '2015-08-26 20:35:54');

-- --------------------------------------------------------

--
-- Table structure for table `Comments`
--

CREATE TABLE `Comments` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `spam` int(11) NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Informations`
--

CREATE TABLE `Informations` (
  `id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Informations`
--

INSERT INTO `Informations` (`id`, `c_id`, `title`, `details`, `created_at`, `updated_at`) VALUES
(1, 0, 'Terms and Conditions', '<p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">By accessing or using any services on/through MiniAssets you undertake these Terms and Conditions (the “Terms”).</p><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">These Terms are business to business contract, and the customer law shall not apply to these Terms and any relations between the User and MiniAssets.</p><h3 class=\"ui header\" style=\"box-sizing: inherit; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 24px; margin: calc(2rem - 0.165em) 0px 1rem; padding: 0px; border: none; font-stretch: inherit; vertical-align: baseline; color: rgb(34, 34, 34);\">1. Subject Matter of the Terms</h3><ol style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 5px 0px 5px 50px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; line-height: 24px; vertical-align: baseline; list-style: lower-alpha;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">Subject to these Terms, by accepting these Terms of the&nbsp;<span style=\"font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">MiniAssets</span>.Com (the “Site”), you become a user (the&nbsp;“User”) of the Site, and the Site shall provide you with your chosen services, websites and applications (the “Service”).</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">The Site belongs to, and the Service if provided and operated by, MiniAssets.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">Your access to and use of the Site and the Service is conditioned on your acceptance of and compliance with these Terms.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">By subscribing to any Service on the Site, You will have the option to accept the Terms. Your subscription shall not be confirmed until you accept the Terms.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">By using PayPal to handle payments you also agree to&nbsp;<u style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><a href=\"https://cms.paypal.com/us/cgi-bin/?cmd=_render-content&amp;content_ID=ua/AcceptableUse_full\" style=\"box-sizing: inherit; color: rgb(60, 151, 239); margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; outline: none; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 50%; background-repeat: initial;\">PayPal Acceptable Use Policy</a></u></li></ol><h3 class=\"ui header\" style=\"box-sizing: inherit; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 24px; margin: calc(2rem - 0.165em) 0px 1rem; padding: 0px; border: none; font-stretch: inherit; vertical-align: baseline; color: rgb(34, 34, 34);\">2. Definitions</h3><table style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; line-height: 24px; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><tbody style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><tr style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td width=\"220px\" style=\"box-sizing: inherit; margin: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">“Goods” –</td><td style=\"box-sizing: inherit; margin: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">the goods, services and any other products of the User to be delivered through the Site in accordance with these Terms.<br style=\"box-sizing: inherit;\">&nbsp;</td></tr><tr style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: inherit; margin: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">“User Website” –</td><td style=\"box-sizing: inherit; margin: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">the website of the User, where the Goods are disposed, advertised and where sale-purchase or other agreements are entered into between the User and the End Customer.<br style=\"box-sizing: inherit;\">&nbsp;</td></tr><tr style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: inherit; margin: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">“Customer” –</td><td style=\"box-sizing: inherit; margin: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">the end customer - purchaser or other recipient of the Goods.<br style=\"box-sizing: inherit;\">&nbsp;</td></tr><tr style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: inherit; margin: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">“Intellectual Property” –</td><td style=\"box-sizing: inherit; margin: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">shall be any works, creations, inventions, designs, know-how, computer programs, software, source codes, documents, products, processes, materials, brands, trademarks, images, and any other similar non-material assets, and any part thereof, distributed by the User.<br style=\"box-sizing: inherit;\">&nbsp;</td></tr><tr style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: inherit; margin: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">“Intellectual Property Rights” –</td><td style=\"box-sizing: inherit; margin: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">shall mean patents, rights to inventions, copyright and related rights, trademarks, trade names and domain names, rights in get-up, rights in goodwill or to sue for passing off, unfair competition rights, rights in designs, rights in computer software, database rights, rights in confidential information (including know-how and trade secrets) and any other intellectual property rights, in each case whether registered or non-registered and including all applications (and rights to apply for such rights as mentioned under this paragraph), and renewals or extensions of, such rights and all similar or equivalent rights or forms of protection which subsist or will subsist, now or in the future, in any part of the world that can in any way be related to what is offered by the User.<br style=\"box-sizing: inherit;\">&nbsp;</td></tr></tbody></table><h3 class=\"ui header\" style=\"box-sizing: inherit; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 24px; margin: calc(2rem - 0.165em) 0px 1rem; padding: 0px; border: none; font-stretch: inherit; vertical-align: baseline; color: rgb(34, 34, 34);\">3. Obligations, Warranties and Representations</h3><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">MiniAssets has the right to terminate your account without notice at any time, if any representation or warranty specified hereinafter is untrue in any respect.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">By accepting the Terms,&nbsp;<u style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">the User warrants and represents the following:</u></p><ol style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 5px 0px 5px 50px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; line-height: 24px; vertical-align: baseline; list-style: lower-alpha;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">The User shall be the sole User of the Site, you shall maintain all logins and usernames confidential. Should any third person use your login and username, You shall be liable for any actions of such third person.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">You are at least eighteen (18) years old, unless the law applicable to You establish other age of majority.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">The User has the legal capacity and authority to:<ol style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; padding: 5px 0px 5px 50px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: lower-roman;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">enter into binding contracts of any nature; if you represent a legal entity, you represent and warrant that you are fully and legally authorized to act on behalf of this legal entity,</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">undertake and fulfill these Terms,</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">subscribe to and use the Service and the Site, including, where applicable, the buying, selling and listing of items, in accordance with these Terms.</li></ol></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">The User shall not use the Site for any purpose and in any way that is illegal in accordance with law applicable to these Terms and your home law, or prohibited by these Terms.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">All information supplied by You is true and accurate, including information submitted as part of the registration and subscription process.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">The User have the right to legally advertise, sell or otherwise distribute any and all your Goods, including, but not limited to, the Goods distributed on your Website or otherwise; you and/or the legal entity represented by have created and/or have obtained all licenses, permissions, agreements and other consents from the authors, inventors and any other holders of Intellectual Property Rights to the Goods or any part thereof; and that all sales and advertisements will be in compliance with applicable legal requirements, including, but not limited to, your products and services, and any your actions:<ol style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; padding: 5px 0px 5px 50px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: lower-roman;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">Does not infringe any Intellectual Property Rights</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">Does not infringe any rights or other persons</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">Does not infringe any human rights</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">Is in compliance with the applicable legal provisions, including, but not limited to, laws of advertising, competition, copyrights and related rights, etc.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">Is compatible with best practices applicable to your business or other activity.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\"><u style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Without limiting the foregoing, the User is prohibited</u>&nbsp;to disseminate and distribute any of the following:</li><br style=\"box-sizing: inherit;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">Counterfeited and any other illegal products, including, but not limited to, those infringing any Intellectual Property Rights or other rights, such as music; movies; eBooks; games; videos; photographs and software;</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">Identity documents, personal financial records or personal information (in any form, including mailing lists);</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">Any illegal material, including, but not limited to, obscene material, any kind of pornography, offensive material, hate speeches, etc.;</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">Stocks or other securities; or</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; list-style: none;\">Any products that are obtained by illegal means.</li></ol></li></ol><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">Any personal information, following which a natural person can be identified, shall be collected, used, or stored, in accordance with the Privacy Policy of&nbsp;<span style=\"font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">MiniAssets</span>&nbsp;and in accordance with the applicable legal provisions.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">For any issues concerning the legitimacy of the Goods, the applicable legal provisions shall apply, and the User shall cooperate and put all reasonable efforts, present responses and any assistance to&nbsp;<span style=\"font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">MiniAssets</span>, in case of any&nbsp;investigation of the legitimacy of the Goods.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">The User agrees that any Goods might be removed from the Site by&nbsp;<span style=\"font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">MiniAssets</span>&nbsp;at any time at its own discretion&nbsp;in accordance with applicable legal provisions.</strong><br style=\"box-sizing: inherit;\">&nbsp;</p><h3 class=\"ui header\" style=\"box-sizing: inherit; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 24px; margin: calc(2rem - 0.165em) 0px 1rem; padding: 0px; border: none; font-stretch: inherit; vertical-align: baseline; color: rgb(34, 34, 34);\">4. Fees and Payments</h3><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">By signing up in the Site and by selling the Goods via&nbsp;<span style=\"font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">MiniAssets</span>, using the Service, the User herein expressly agrees&nbsp;that, once any of the Goods is sold, <span style=\"font-weight: bold;\">30%</span> (thirty percent) fee (hereinafter – the „Fee”) shall be deducted from the User’s Paypal account from the 100% of the price paid by the Customer, the withdrawal shall be conducted by Paypal on behalf of MiniAssets. By accepting these Terms, the User expressly agrees to this condition and authorises Paypal and&nbsp;<span style=\"font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">MiniAssets</span>&nbsp;to withdraw the Fee from the User’s Paypal&nbsp;account.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">This Fee is inclusive off all taxes, except Paypal fees.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">The User hereby acknowledges and expressly agrees that in no way or situation the Fee shall be refunded to the User.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\"><span style=\"font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">MiniAssets</span>&nbsp;may unilaterally change the Fee from time to time. The User shall be notified of any such change and the date of entering into force in advance, before reasonable term of time. Should the User do not agree with the new Fee, he/she may immediately terminate the User account in the Site. If the User continues using the Site after the date of the amended Fee’s entering into force, it is deemed that the User has agreed and accepted the amended Fee.</p><h3 class=\"ui header\" style=\"box-sizing: inherit; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 24px; margin: calc(2rem - 0.165em) 0px 1rem; padding: 0px; border: none; font-stretch: inherit; vertical-align: baseline; color: rgb(34, 34, 34);\">5. Format and Quality of the Goods</h3><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">The size of one file of the Goods to be stored on the Site is up to 300MB (three hundred megabytes).<br style=\"box-sizing: inherit;\">The Goods can be of any form and quality; however, we recommend describing them in detail in the User’s product information for the Customers.</p><h3 class=\"ui header\" style=\"box-sizing: inherit; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 24px; margin: calc(2rem - 0.165em) 0px 1rem; padding: 0px; border: none; font-stretch: inherit; vertical-align: baseline; color: rgb(34, 34, 34);\">6. Disclaimer of Warranties</h3><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\"><span style=\"font-weight: bold;\">MINIASSETS</span>, ITS SUPPLIERS, AND SERVICE PROVIDERS, PROVIDE THE SERVICES ON AN \"AS IS\" AND \"AS AVAILABLE\" BASIS AND EXPRESSLY DISCLAIM ANY AND ALL EXPRESS, IMPLIED OR STATUTORY WARRANTIES, INCLUDING THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, QUIET ENJOYMENT, TITLE, NON-INFRINGEMENT, AND WARRANTIES ARISING FROM A COURSE OF DEALING, USAGE OR TRADE PRACTICE. MINIASSETS, ITS SUPPLIERS, AND SERVICE PROVIDERS, DO NOT WARRANT THAT THE SERVICES WILL BE ERROR-FREE OR UNINTERRUPTED AND MAKE NO REPRESENTATIONS REGARDING UPTIME, USE, DATA SECURITY, ACCURACY AND RELIABILITY OF THEIR SERVICES.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">BY ACCEPTING TO THESE TERMS, THE USER EXPRESSLY AGREES THAT THIS SECTION 6 IS AN ESSENTIAL ELEMENT OF THESE TERMS AND THAT, IF SUCH SECTION IS ABSENT, THE ECONOMIC TERMS OF THESE TERMS WOULD BE SUBSTANTIALLY DIFFERENT.</p><h3 class=\"ui header\" style=\"box-sizing: inherit; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 24px; margin: calc(2rem - 0.165em) 0px 1rem; padding: 0px; border: none; font-stretch: inherit; vertical-align: baseline; color: rgb(34, 34, 34);\">7. Limitation of Liability</h3><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">IN NO EVENT SHALL MINIASSETS, ITS SUPPLIERS, OR SERVICE PROVIDERS, OR THEIR OFFICERS, MEMBERS, DIRECTORS, EMPLOYEES, CONTRACTORS, OR AGENTS, BE LIABLE FOR LOST PROFITS OR ANY SPECIAL, INDIRECT, PUNITIVE, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF OR IN CONNECTION WITH THE SERVICES OR THESE TERMS, HOWEVER ARISING, INCLUDING NEGLIGENCE.<br></p><h3 class=\"ui header\" style=\"box-sizing: inherit; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 24px; margin: calc(2rem - 0.165em) 0px 1rem; padding: 0px; border: none; font-stretch: inherit; vertical-align: baseline; color: rgb(34, 34, 34);\">8. Indemnification</h3><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">By entering into these Terms, the User undertakes to indemnify and hold harmless&nbsp;<span style=\"font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">MiniAssets</span>, its employees,&nbsp;shareholders, directors, its suppliers and service providers, from any and all losses, damages, fines, penalties, governmental regulatory enforcement actions, and other costs (including reasonable attorney’s fees and expenses) finally awarded or agreed to in connection with the adjudication or settlement of any claim, administrative proceeding, cause of action or lawsuit, resulting from any actions or failure to act, violation of these Terms, legal provisions, accident, incident, or mishap occurring anywhere for whatever cause, performed by or connected with the User.</p><h3 class=\"ui header\" style=\"box-sizing: inherit; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 24px; margin: calc(2rem - 0.165em) 0px 1rem; padding: 0px; border: none; font-stretch: inherit; vertical-align: baseline; color: rgb(34, 34, 34);\">9. Miscellaneous</h3><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">These Terms, the entering into the Terms, the termination of the Terms, etc., are governed by the laws of the Republic of Lithuania. Any and all claims, legal proceedings, or litigation, arising in connection with the Service or these Terms shall be brought solely in the Republic of Lithuania, and the User consents to the jurisdiction of and venue in such courts and waive any objection as to inconvenient forum.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">The failure of&nbsp;<span style=\"font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">MiniAssets</span>&nbsp;to enforce any right or provision of these Terms shall not be deemed a waiver of such right or&nbsp;provision. In the event that any provision of these Terms is held to be invalid or unenforceable, the remaining provisions of these Terms will remain in full force and effect.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">We may revise these Terms from time to time. The most current version will always be on this page (or such other page as the Service may indicate). If the revision, in our sole discretion, is material, e.g. the amendment of the Fee, we shall notify the User via email associated with the User’s&nbsp;<span style=\"font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">MiniAssets</span>&nbsp;account in advance,&nbsp;before reasonable term of time. By continuing to access or use the Service after those revisions become effective, the User agrees to be bound by the revised Terms.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">If any provision of these Terms is/becomes invalid in accordance with the applicable mandatory legal provisions, this shall not cause invalidity of this contract and the entire Terms, and&nbsp;<span style=\"font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">MiniAssets</span>&nbsp;shall immediately, after&nbsp;having discovered such incompliance, replace the void provision with the valid one. If you have questions about these Terms or the Service, please contact us at&nbsp;<a href=\"mailto:miniassets.com@gmail.com\" style=\"box-sizing: inherit; color: rgb(60, 151, 239); margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; outline: none; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 50%; background-repeat: initial;\" target=\"_blank\">miniassets.com@gmail.com</a>.</p>', '2015-09-01 04:45:41', '2015-09-01 04:45:41'),
(2, 1, 'Privacy Policy', '<p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\"><strong style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">By using this Site, you signify your acceptance of this policy. If you do not agree to this policy, please do not use our Site. Your continued use of the Site following the posting of changes to this policy will be deemed your acceptance of those changes.</strong></p><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">This Privacy Policy governs the manner in which MiniAssets.Com collects, uses, maintains and discloses information collected from users (each, a \"User\") and Clients (each, a \"Client\") of the http://miniassets.com website (\"Site\"). This privacy policy applies to the Site, any and all products and services offered on&nbsp;<span style=\"font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">MiniAssets.Com</span>. For the&nbsp;purpose of this Site: the “User” shall be any person entered onto the Site, including subscribers to our newsletter, and the “Client” shall be any person who has registered with the Site.</p><h3 style=\"box-sizing: inherit; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 24px; margin: 0px; font-weight: inherit; padding: 0px; font-size: inherit; border: 0px; font-stretch: inherit; vertical-align: baseline; color: rgb(136, 136, 136);\">Personal Identification Information of the Client</h3><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">We will collect only that personal identification information from Clients that they voluntarily submit to us. When registering with the Site, we will ask the Clients to complete a questionnaire. However, refusal to enter the data which is marked with * shall prevent the Client from registration and use of our services.</p><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\"><br></p><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">We shall not transfer your personal data for any third parties, except when it is essential for the performance of the agreements between the Site and the Client, between the Client and his/her end-customer, between the Client and PayPal.<br style=\"box-sizing: inherit;\">&nbsp;</p><h3 style=\"box-sizing: inherit; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 24px; margin: 0px; font-weight: inherit; padding: 0px; font-size: inherit; border: 0px; font-stretch: inherit; vertical-align: baseline; color: rgb(136, 136, 136);\">Personal identification information of the User</h3><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">Users may visit our Site anonymously. Users can always refuse to supply personally identification information, except that it may prevent them from engaging in certain Site related activities. If a User enters his/her personal information into the Site, he/she automatically grants the right to use this information&nbsp;<u style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">only for the purpose it was entered into</u>&nbsp;the Site, for example, sending newsletters, downloading free products, etc.</p><h3 class=\"ui header\" style=\"box-sizing: inherit; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 24px; margin: calc(2rem - 0.165em) 0px 1rem; padding: 0px; border: none; font-stretch: inherit; vertical-align: baseline; color: rgb(34, 34, 34);\">Information we collect</h3><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\"><strong style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Registration:</strong>&nbsp;Your username, password and e-mail address when you sign-up for a&nbsp;<span style=\"font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">MiniAssets</span>&nbsp;account.</p><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\"><strong style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">User content:</strong>&nbsp;Source Code, Apps or Games Template, Texts, photos, vector and other images and similar.</p><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\"><strong style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Paid account:</strong>&nbsp;If you choose to continue service with&nbsp;<span style=\"font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">MiniAssets</span>&nbsp;via a paid account, we may collect the following&nbsp;personal data from you: You may, at your will, also provide your company name, full billing address and phone number.</p><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\"><strong style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Server logs and Cookies:</strong>&nbsp;When you access our services online, our web servers automatically create records of your visit. These records typically include IP-address, access times, the sites linked from, pages visited, the links and features used, the content viewed or requested, browser or application type, and other information of such kind. See also our Information on Cookies usage below.</p><h3 style=\"box-sizing: inherit; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 24px; margin: 0px; font-weight: inherit; padding: 0px; font-size: inherit; border: 0px; font-stretch: inherit; vertical-align: baseline; color: rgb(136, 136, 136);\">Web browser cookies</h3><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">Our Site may use \"cookies\" to enhance User experience. User\'s web browser places cookies on their hard drive for record-keeping purposes and sometimes to track information about them. User may choose to set their web browser to refuse cookies, or to alert you when cookies are being sent. If they do so, note that some parts of the Site may not function properly.</p><h3 class=\"ui header\" style=\"box-sizing: inherit; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 24px; margin: calc(2rem - 0.165em) 0px 1rem; padding: 0px; border: none; font-stretch: inherit; vertical-align: baseline; color: rgb(34, 34, 34);\">E-mails</h3><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">The email address the Users of the Clients provide for order processing, will only be used to send them information and updates pertaining to their order. It may also be used to respond to their inquiries, and/or other requests or questions. If the User decides to opt-in to our mailing list, they will receive emails that may include company news, updates, related product or service information, etc. If at any time the User would like to unsubscribe from receiving future emails, we include detailed unsubscribe instructions at the bottom of each email or User may contact us via our Site.</p><h3 style=\"box-sizing: inherit; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 24px; margin: 0px; font-weight: inherit; padding: 0px; font-size: inherit; border: 0px; font-stretch: inherit; vertical-align: baseline; color: rgb(136, 136, 136);\">How we protect your information</h3><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">We adopt effective and appropriate data collection, storage and processing practices and security measures to protect against unauthorized access, alteration, disclosure or destruction of your personal information, username, password, transaction information and data stored on our Site. We may use third party service providers to help us operate our business and the Site or administer activities on our behalf, such as sending out newsletters or surveys. We may share your information with these third parties for those limited purposes&nbsp;<u style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><strong style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">only having obtained your prior permission.</strong></u>&nbsp;We may share generic aggregated demographic information not linked to any personal identification information regarding visitors and users with our business partners, trusted affiliates and advertisers for the purposes of statistics and improvement of our services.</p><h3 class=\"ui header\" style=\"box-sizing: inherit; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 24px; margin: calc(2rem - 0.165em) 0px 1rem; padding: 0px; border: none; font-stretch: inherit; vertical-align: baseline; color: rgb(34, 34, 34);\">Third party websites</h3><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">This Privacy Policy applies for this Site only. Users may find content on our Site that link to the sites and services of our Clients, partners, suppliers, advertisers, sponsors, licensors and other third parties. We do not control the content or links that appear on these sites and are not responsible for the practices employed by websites linked to or from our Site. In addition, these sites or services, including their content and links, may be constantly changing. These sites and services may have their own privacy policies and customer service policies. Browsing and interaction on any other website, including websites which have a link to our Site, is subject to that website\'s own terms and policies.</p><h3 style=\"box-sizing: inherit; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 24px; margin: 0px; font-weight: inherit; padding: 0px; font-size: inherit; border: 0px; font-stretch: inherit; vertical-align: baseline; color: rgb(136, 136, 136);\">Changes to this privacy policy</h3><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">We have the discretion to update this privacy policy at any time. When we do, we will revise the updated date at the bottom of this page. We encourage Users and Clients to frequently check this page for any changes to stay informed about how we are helping to protect the personal information we collect. You acknowledge and agree that it is your responsibility to review this privacy policy periodically and become aware of modifications.</p><h3 class=\"ui header\" style=\"box-sizing: inherit; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 24px; margin: calc(2rem - 0.165em) 0px 1rem; padding: 0px; border: none; font-stretch: inherit; vertical-align: baseline; color: rgb(34, 34, 34);\">Contacting us</h3><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">If you have any questions about this Privacy Policy, the practices of this site, or your dealings with this site, please contact us at:&nbsp;<a href=\"mailto:miniassets.com@gmail.com\" style=\"box-sizing: inherit; color: rgb(60, 151, 239); margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; outline: none; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 50%; background-repeat: initial;\">miniassets.com@gmail.com</a><br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">This document was last updated on September 1, 2015.</p>', '2015-09-01 04:53:25', '2015-09-01 04:53:25');
INSERT INTO `Informations` (`id`, `c_id`, `title`, `details`, `created_at`, `updated_at`) VALUES
(3, 2, 'About MiniAssets', '<p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">With MiniAssets, selling digital products to your audience is as easy as sharing a link. Don\'t have a large audience, but make kick-ass content? Join&nbsp;<span style=\"font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">MiniAssets</span>&nbsp;Marketplace - a place where people discover the best digital content&nbsp;directly from creators.</p><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">&nbsp;</p><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">Whether you decide to sell your digital goods on&nbsp;<span style=\"font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">MiniAssets</span>&nbsp;Marketplace or no, the price still is the same <span style=\"font-weight: bold;\">30%</span>. And best of all?&nbsp;Your earning are transferred to your account instantly. How cool is that?</p><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">&nbsp;</p><h3 class=\"ui header\" style=\"box-sizing: inherit; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 24px; margin: calc(2rem - 0.165em) 0px 1rem; padding: 0px; border: none; font-stretch: inherit; vertical-align: baseline; color: rgb(34, 34, 34);\">Contacts us</h3><p style=\"box-sizing: inherit; margin-bottom: 0px; line-height: 24px; padding: 0px; border: 0px; font-family: Proxima-nova, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; font-stretch: inherit; vertical-align: baseline;\">Email:&nbsp;<span style=\"box-sizing: inherit; color: rgb(60, 151, 239); border-style: initial; border-color: initial; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 50%; background-repeat: initial;\"><a href=\"mailto:miniassets.com@gmail.com\" target=\"_blank\">miniassets.com@gmail.com</a></span><br style=\"box-sizing: inherit;\">Twitter:&nbsp;<span style=\"box-sizing: inherit; color: rgb(60, 151, 239); border-style: initial; border-color: initial; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 50%; background-repeat: initial;\"><a href=\"https://twitter.com/MiniAssets\" target=\"_blank\">https://twitter.com/MiniAssets</a></span></p>', '2015-09-01 05:08:22', '2015-09-01 05:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `NewsLetters`
--

CREATE TABLE `NewsLetters` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Notifications`
--

CREATE TABLE `Notifications` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reply_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PaypalPayment`
--

CREATE TABLE `PaypalPayment` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `price1` double NOT NULL,
  `price2` double NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datas` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payer_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `preview` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `main_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `price_plus` int(11) NOT NULL,
  `total_sale` int(11) NOT NULL,
  `total_comment` int(11) NOT NULL,
  `total_rate` int(11) NOT NULL,
  `average_rate` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `views` int(11) NOT NULL,
  `feature` int(11) NOT NULL,
  `trend` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`id`, `u_id`, `c_id`, `title`, `details`, `image`, `preview`, `main_file`, `tags`, `price`, `price_plus`, `total_sale`, `total_comment`, `total_rate`, `average_rate`, `views`, `feature`, `trend`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Ad leggings keytar, brunch id art party dolor labore', '<p>Ad leggings keytar, brunch id art party dolor labore. Pitchfork yr enim lo-fi before they sold out qui. Tumblr farm-to-table bicycle rights whatever. Anim keffiyeh carles cardigan. Velit seitan mcsweeney\'s photo booth 3 wolf moon irure. </p><p><br></p><p>Cosby sweater lomo jean shorts, williamsburg hoodie minim qui you probably haven\'t heard of them et cardigan trust fund culpa biodiesel wes anderson aesthetic. Nihil tattooed accusamus, cred irony biodiesel keffiyeh artisan ullamco consequat. Ad leggings keytar, brunch id art party dolor labore. Pitchfork yr enim lo-fi before they sold out qui. </p><p><br></p><p>\r\n\r\nTumblr farm-to-table bicycle rights whatever. Anim keffiyeh carles cardigan. Velit seitan mcsweeney\'s photo booth 3 wolf moon irure. Cosby sweater lomo jean shorts, williamsburg hoodie minim qui you probably haven\'t heard of them et cardigan trust fund culpa biodiesel wes anderson aesthetic. </p><p><br></p><p>Nihil tattooed accusamus, cred irony biodiesel keffiyeh artisan ullamco consequat. Ad leggings keytar, brunch id art party dolor labore. Pitchfork yr enim lo-fi before they sold out qui. Tumblr farm-to-table bicycle rights whatever. Anim keffiyeh carles cardigan.</p><p><br></p><p> \r\n\r\nVelit seitan mcsweeney\'s photo booth 3 wolf moon irure. Cosby sweater lomo jean shorts, williamsburg hoodie minim qui you probably haven\'t heard of them et cardigan trust fund culpa biodiesel wes anderson aesthetic. Nihil tattooed accusamus, cred irony biodiesel keffiyeh artisan ullamco consequat.</p>', '1440662937.png', '', '1440662947.zip', '', 10, 0, 0, 0, 0, '0', 363, 0, 0, 1, '2015-08-27 15:09:38', '2015-08-27 15:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `Rates`
--

CREATE TABLE `Rates` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `star` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Referers`
--

CREATE TABLE `Referers` (
  `id` int(11) NOT NULL,
  `referer` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `remote` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Reports`
--

CREATE TABLE `Reports` (
  `id` int(11) NOT NULL,
  `users` int(11) NOT NULL,
  `products` int(11) NOT NULL,
  `others` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sales` int(11) NOT NULL,
  `paid` double NOT NULL,
  `revenues` double NOT NULL,
  `month_report` int(11) NOT NULL,
  `date_report` int(11) NOT NULL,
  `year_report` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Reports`
--

INSERT INTO `Reports` (`id`, `users`, `products`, `others`, `sales`, `paid`, `revenues`, `month_report`, `date_report`, `year_report`) VALUES
(1, 1, 1, '', 0, 0, 0, 8, 31, 2015),
(2, 2, 0, '', 0, 0, 0, 9, 1, 2015);

-- --------------------------------------------------------

--
-- Table structure for table `Sell`
--

CREATE TABLE `Sell` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datas` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `netMoney` double NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `pp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Tickets`
--

CREATE TABLE `Tickets` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `reply` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Traffics`
--

CREATE TABLE `Traffics` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `sources` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `location_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `location_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sale` int(11) NOT NULL,
  `date_log` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_nganluong` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_baokim` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_paypal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `add1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homepage` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `earned` double NOT NULL,
  `saled` double NOT NULL,
  `total_file` int(11) NOT NULL,
  `supper` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `token_facebook` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_content` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `username`, `password`, `fullname`, `email`, `email_nganluong`, `email_baokim`, `email_paypal`, `add1`, `city`, `country`, `avatar`, `cover`, `facebook`, `twitter`, `homepage`, `bio`, `earned`, `saled`, `total_file`, `supper`, `active`, `created_at`, `updated_at`, `token_facebook`, `email_subject`, `email_content`) VALUES
(1, '1031269366891662', '2e88a9747d60acf6c57e98d5d9a8ccd8', 'JeePhen Tran', 'trandoansan@gmail.com', '', '', 'cho.manguon.vn@gmail.com', 'Xom 7 Viet Hong Thanh Ha', 'Hai Duong', 'Vietnam', 'http://miniassets.com/uploads/avatar/avatarL1441078200F1.png', 'http://miniassets.com/uploads/avatar/coverB1441078192O1.png', '943789922306274', 'doansan', 'http://miniassets.com', 'I Love Development Any Where', 0, 0, 1, 1, 1, '2015-08-26 14:52:16', '2015-08-26 14:52:16', 'CAAXJXf2ZAp5oBAKCmHW0WqHjZBZBwMsk5nG2EQc7fKVEIzjKGTduhjiGVrMt4RKCmtScJbdnCIRT1aAs4ynqTUISsqB1Ij0fF0iSq3E0rEp9fv0YiecHMWOYXj2X0NPrUBXkIopfJ6ZCzZAP9L1aiRZCcSgEfErGmLccnekU31FRjvZA6TDk8WPAvZCv9pZAVlbwZD', 'Thanks for purchase!', 'You can download your product file here:'),
(2, 'demoUser', 'e32090dfe0ebb88bb2d3959330469c49', 'Demo User', 'demo@demo.com', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 1, '2015-09-01 10:41:27', '2015-09-01 10:41:27', '', 'Thanks for purchase!', 'You can download your product file here:'),
(3, 'demoAdmin', 'efd18a9737cc655651beaac80f319230', 'Demo Admin', 'demoAdmin@demo.com', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 1, 1, '2015-09-01 10:51:44', '2015-09-01 10:51:44', '', 'Thanks for purchase!', 'You can download your product file here:');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Affiliate`
--
ALTER TABLE `Affiliate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_REF_ID` (`ref_id`),
  ADD KEY `IDX_STATUS` (`status`);

--
-- Indexes for table `Blogs`
--
ALTER TABLE `Blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_U_ID` (`u_id`);

--
-- Indexes for table `Bought`
--
ALTER TABLE `Bought`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_P_ID` (`p_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_STAUTS` (`status`);

--
-- Indexes for table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_MID` (`mid`),
  ADD KEY `IDX_ACTIVE` (`active`),
  ADD KEY `IDX_TOTAL` (`total`);

--
-- Indexes for table `Comments`
--
ALTER TABLE `Comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_U_ID` (`u_id`),
  ADD KEY `IDX_C_ID` (`c_id`),
  ADD KEY `IDX_P_ID` (`p_id`),
  ADD KEY `IDX_SPAM` (`spam`);

--
-- Indexes for table `Informations`
--
ALTER TABLE `Informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `NewsLetters`
--
ALTER TABLE `NewsLetters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EMAIL` (`email`);

--
-- Indexes for table `Notifications`
--
ALTER TABLE `Notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PaypalPayment`
--
ALTER TABLE `PaypalPayment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `token` (`token`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_U_ID` (`u_id`),
  ADD KEY `IDX_C_ID` (`c_id`),
  ADD KEY `IDX_FEATURE` (`feature`),
  ADD KEY `IDX_PRICE_PLUS` (`price_plus`),
  ADD KEY `IDX_PRICE` (`price`),
  ADD KEY `IDX_TOTAL_COMMENT` (`total_comment`),
  ADD KEY `IDX_TOTAL_SALE` (`total_sale`),
  ADD KEY `IDX_TOTAL_RATE` (`total_rate`),
  ADD KEY `IDX_AVERAGE_RATE` (`average_rate`);

--
-- Indexes for table `Rates`
--
ALTER TABLE `Rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_PRODUCT_ID` (`product_id`),
  ADD KEY `IDX_star` (`star`);

--
-- Indexes for table `Referers`
--
ALTER TABLE `Referers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_TIME` (`time`);

--
-- Indexes for table `Reports`
--
ALTER TABLE `Reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `month_report` (`month_report`),
  ADD KEY `date_report` (`date_report`),
  ADD KEY `year_report` (`year_report`);

--
-- Indexes for table `Sell`
--
ALTER TABLE `Sell`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_P_ID` (`p_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_STAUTS` (`status`);

--
-- Indexes for table `Tickets`
--
ALTER TABLE `Tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `Traffics`
--
ALTER TABLE `Traffics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `date_log` (`date_log`),
  ADD KEY `sources` (`sources`),
  ADD KEY `location_code` (`location_code`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Affiliate`
--
ALTER TABLE `Affiliate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Blogs`
--
ALTER TABLE `Blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Bought`
--
ALTER TABLE `Bought`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Categories`
--
ALTER TABLE `Categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Comments`
--
ALTER TABLE `Comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Informations`
--
ALTER TABLE `Informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `NewsLetters`
--
ALTER TABLE `NewsLetters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Notifications`
--
ALTER TABLE `Notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PaypalPayment`
--
ALTER TABLE `PaypalPayment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Rates`
--
ALTER TABLE `Rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Referers`
--
ALTER TABLE `Referers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Reports`
--
ALTER TABLE `Reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Sell`
--
ALTER TABLE `Sell`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Tickets`
--
ALTER TABLE `Tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Traffics`
--
ALTER TABLE `Traffics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Blogs`
--
ALTER TABLE `Blogs`
  ADD CONSTRAINT `FK_35DAE574E4A59390` FOREIGN KEY (`u_id`) REFERENCES `Users` (`id`);

--
-- Constraints for table `Comments`
--
ALTER TABLE `Comments`
  ADD CONSTRAINT `FK_A6E8F47CE4A59390` FOREIGN KEY (`u_id`) REFERENCES `Users` (`id`);

--
-- Constraints for table `Products`
--
ALTER TABLE `Products`
  ADD CONSTRAINT `FK_4ACC380C91D79BD3` FOREIGN KEY (`c_id`) REFERENCES `Categories` (`id`),
  ADD CONSTRAINT `FK_4ACC380CE4A59390` FOREIGN KEY (`u_id`) REFERENCES `Users` (`id`);

--
-- Constraints for table `Tickets`
--
ALTER TABLE `Tickets`
  ADD CONSTRAINT `FK_9BFBA468E4A59390` FOREIGN KEY (`u_id`) REFERENCES `Users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
