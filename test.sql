-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 30, 2020 at 06:05 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `avatar` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `email`, `role`, `status`, `avatar`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'admin', '123456', 'MyASk@gmail.com', -1, 1, NULL, '1234567563', 'Ha noi', '2019-07-23 03:53:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `b_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_image` text CHARACTER SET utf8 NOT NULL,
  `b_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_content` varchar(10000) CHARACTER SET utf8 DEFAULT NULL,
  `b_active` tinyint(4) NOT NULL DEFAULT 1,
  `b_author_id` tinyint(4) NOT NULL DEFAULT 0,
  `b_description_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_title_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_view` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `b_name`, `b_slug`, `b_image`, `b_description`, `b_content`, `b_active`, `b_author_id`, `b_description_seo`, `b_title_seo`, `b_view`, `created_at`, `updated_at`) VALUES
(5, '3 Ways To Dress Up Your ‘Jeans And A T-Shirt’ Combo', '3-ways-to-dress-up-your-jeans-and-a-t-shirt-combo', '\"jeans-and-a-tshirt-chronicles-of-her.jpg\"', '3 Ways To Dress Up Your ‘Jeans And A T-Shirt’ Combo', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-2 col-md-1\">&nbsp;</div>\r\n\r\n<div class=\"col-lg-8 col-md-10\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<h3>See your faves in a new light.</h3>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"entry-content\">\r\n<p>Whenever I wind up wearing <a href=\"https://chroniclesofher.com/what-to-shop/affordable-jeans/\" rel=\"noopener\" target=\"_blank\"><u>jeans</u></a> and a <a href=\"https://chroniclesofher.com/what-to-shop/coh-wardrobe-basics/\" rel=\"noopener\" target=\"_blank\"><u>tshirt</u></a>, the process is akin to scouring <em>Netflix </em>for an hour in search of an exciting new TV show, only to land on one of my old favourites (<em>Friends</em>, <em>Sex and The City</em>, <em>Peep Show</em>, etc).</p>\r\n\r\n<p>While I love the idea of ~experimenting~ and branching out with my style&mdash;in much the same way as I do my viewing tastes&mdash;sometimes it feels good to lean into what you know. Ya know?</p>\r\n\r\n<p>That&rsquo;s not to say the ol&rsquo; jeans and tee outfit has to put you to sleep, though. With a few flicks of the magic wand &mdash; a.k.a the addition of some <a href=\"https://chroniclesofher.com/shop/\" rel=\"noopener\" target=\"_blank\"><u>cute accessories</u></a> or an ~unexpected style twist~ &mdash; your outfit can go from b-o-r-i-n-g to c-o-o-l in no time.</p>\r\n\r\n<p>Read on for fresh and exciting ways to breathe life into your trusty favourites, and then we can all meet in the comments section to talk about how <em>Friends</em> will always be the greatest TV show ever made. Okay? Ok!</p>\r\n\r\n<p><span style=\"font-size:20px\"><strong>Go To Town On Accessories</strong></span></p>\r\n<iframe class=\"instagram-media instagram-media-rendered\" frameborder=\"0\" height=\"985\" id=\"instagram-embed-0\" scrolling=\"no\" src=\"https://www.instagram.com/p/BmiEhwCnGoK/embed/captioned/?cr=1&amp;v=9&amp;wp=1080&amp;rd=https%3A%2F%2Fchroniclesofher.com&amp;rp=%2Fwhat-to-shop%2Fjeans-and-a-tshirt%2F#%7B%22ci%22%3A0%2C%22os%22%3A1149.515000000065%2C%22ls%22%3A1069.5799999998599%2C%22le%22%3A1071.0950000002413%7D\" style=\"background: white; max-width: 540px; width: calc(100% - 2px); border-radius: 3px; border: 1px solid rgb(219, 219, 219); box-shadow: none; display: block; margin: 0px 0px 12px; min-width: 326px; padding: 0px;\"></iframe>\r\n\r\n<p>Honestly, I need to hunt down whoever gave rebirth to the <a href=\"https://chroniclesofher.com/product/plaid-print-scrunchie-pink/\" rel=\"noopener\" target=\"_blank\"><u>scrunchie</u></a> trend, and personally shake their hand. Scrunchies are the cutest and easiest way to add ~personality~ to an outfit, they won&rsquo;t damage your hair, and they&rsquo;re about as cost effective as they come. And, why stop there? Add a <a href=\"https://chroniclesofher.com/product/pearl-beaded-bag/\" rel=\"noopener\" target=\"_blank\"><u>beaded bag</u></a>, a pair of <a href=\"https://rstyle.me/n/df8np7m866\" onclick=\"javascript:window.open(\'https://rstyle.me/n/df8np7m866\'); return false;\" rel=\"noopener\"><u>gold hoops</u></a>, and a <a href=\"https://rstyle.me/n/df8nw2m866\" onclick=\"javascript:window.open(\'https://rstyle.me/n/df8nw2m866\'); return false;\" rel=\"noopener\"><u>red lip</u></a>, and then sit back and revel in the joy that is living your very <a href=\"https://chroniclesofher.com/how-to/helena-christensen/\" rel=\"noopener\" target=\"_blank\"><u>best life</u></a>.</p>\r\n\r\n<p><em><strong>OUTFIT RECIPE:</strong> 1 x <a href=\"https://rstyle.me/n/df8m4em866\" onclick=\"javascript:window.open(\'https://rstyle.me/n/df8m4em866\'); return false;\" rel=\"noopener\"><u>EYTS jeans</u></a>, 1 x <a href=\"https://chroniclesofher.com/product/pearl-beaded-bag/\" rel=\"noopener\" target=\"_blank\"><u>COH beaded bag</u></a>, 1 x <a href=\"http://t.cn/RkKIiiy\" onclick=\"javascript:window.open(\'http://t.cn/RkKIiiy\'); return false;\" rel=\"noopener\"><u>Rag &amp; Bone white t-shirt</u></a>, 1 x <a href=\"https://chroniclesofher.com/product/black-plaid-print-scrunchie/\" rel=\"noopener\" target=\"_blank\"><u>COH plaid scrunchie</u></a>, 1 x <a href=\"http://t.cn/RkKIQWy\" onclick=\"javascript:window.open(\'http://t.cn/RkKIQWy\'); return false;\" rel=\"noopener\"><u>Reliquia gold hoops</u></a> = Daaaaaaayum, girl!</em></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong>Make Like Jeanne Damas, Add A Heel/Blazer</strong></span></p>\r\n<iframe class=\"instagram-media instagram-media-rendered\" frameborder=\"0\" height=\"967\" id=\"instagram-embed-1\" scrolling=\"no\" src=\"https://www.instagram.com/p/BhtnjBIDB9_/embed/captioned/?cr=1&amp;v=9&amp;wp=1080&amp;rd=https%3A%2F%2Fchroniclesofher.com&amp;rp=%2Fwhat-to-shop%2Fjeans-and-a-tshirt%2F#%7B%22ci%22%3A1%2C%22os%22%3A1152.8400000001966%2C%22ls%22%3A1069.5799999998599%2C%22le%22%3A1071.0950000002413%7D\" style=\"background: white; max-width: 540px; width: calc(100% - 2px); border-radius: 3px; border: 1px solid rgb(219, 219, 219); box-shadow: none; display: block; margin: 0px 0px 12px; min-width: 326px; padding: 0px;\"></iframe>\r\n\r\n<p>Today, in the land of <a href=\"https://chroniclesofher.com/what-to-shop/denim-on-the-streets-of-nyc/\" rel=\"noopener\" target=\"_blank\"><u>denim</u></a>, we&rsquo;re going by retiring our favourite pair of <a href=\"https://chroniclesofher.com/what-to-shop/coolest-new-sneakers/\" rel=\"noopener\" target=\"_blank\"><u>sneakers</u></a> in favour of a heel/blazer instead, all thanks to the most stylish lady in all of <a href=\"https://chroniclesofher.com/how-to/french-model-paris-guide/\" rel=\"noopener\" target=\"_blank\"><u>Paris</u></a>, Jeanne Damas. Do it like this style queen and add a <a href=\"https://chroniclesofher.com/what-to-shop/cool-graphic-tees/\" rel=\"noopener\" target=\"_blank\"><u>graphic tee</u></a>, a <a href=\"https://rstyle.me/n/df8nccm866\" onclick=\"javascript:window.open(\'https://rstyle.me/n/df8nccm866\'); return false;\" rel=\"noopener\"><u>pinstripe blazer</u></a> and <a href=\"https://rstyle.me/n/df8nbdm866\" onclick=\"javascript:window.open(\'https://rstyle.me/n/df8nbdm866\'); return false;\" rel=\"noopener\"><u>flared jeans</u></a> to give it that deriguour effortlessness inherent in the way <a href=\"https://chroniclesofher.com/how-to/french-girl-style-tips/\" rel=\"noopener\" target=\"_blank\"><u>French women</u></a> dress.</p>\r\n\r\n<p><strong>OUTFIT RECIPE:</strong><em> 1 x </em><a href=\"https://rstyle.me/~aNitY\" onclick=\"javascript:window.open(\'https://rstyle.me/~aNitY\'); return false;\" rel=\"noopener\" style=\"font-style: italic;\"><u>Re/Done flared jeans</u></a><em>, 1 x </em><a href=\"https://rstyle.me/n/df8ngym866\" onclick=\"javascript:window.open(\'https://rstyle.me/n/df8ngym866\'); return false;\" rel=\"noopener\" style=\"font-style: italic;\"><u>Balenciaga blue t-shirt</u></a><em>, 1 x </em><a href=\"https://rstyle.me/n/df8nkgm866\" onclick=\"javascript:window.open(\'https://rstyle.me/n/df8nkgm866\'); return false;\" rel=\"noopener\" style=\"font-style: italic;\"><u>ARKET&nbsp;stripe blazer</u></a><em>, 1 x </em><em><a href=\"https://rstyle.me/n/df8n3nm866\" onclick=\"javascript:window.open(\'https://rstyle.me/n/df8n3nm866\'); return false;\" rel=\"noopener\"><u>Iris &amp; Ink navy slingbacks</u></a></em><em>&nbsp;= Oooh, La La!</em></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong>Opt For An All-White Look</strong></span></p>\r\n<iframe class=\"instagram-media instagram-media-rendered\" frameborder=\"0\" height=\"967\" id=\"instagram-embed-2\" scrolling=\"no\" src=\"https://www.instagram.com/p/BmS74g1Blzs/embed/captioned/?cr=1&amp;v=9&amp;wp=1080&amp;rd=https%3A%2F%2Fchroniclesofher.com&amp;rp=%2Fwhat-to-shop%2Fjeans-and-a-tshirt%2F#%7B%22ci%22%3A2%2C%22os%22%3A1155.3600000002007%2C%22ls%22%3A1069.5799999998599%2C%22le%22%3A1071.0950000002413%7D\" style=\"background: white; max-width: 540px; width: calc(100% - 2px); border-radius: 3px; border: 1px solid rgb(219, 219, 219); box-shadow: none; display: block; margin: 0px 0px 12px; min-width: 326px; padding: 0px;\"></iframe>\r\n\r\n<p>There&rsquo;s just something so badass about wearing an <a href=\"https://chroniclesofher.com/street-365/model-off-duty/\" rel=\"noopener\" target=\"_blank\"><u>all-white outfit</u></a>. I totally understand the risk of wearing all-white, especially in the company of clumsy friends and <a href=\"https://chroniclesofher.com/how-to/get-rid-stains/\" rel=\"noopener\" target=\"_blank\"><u>red wine</u></a>, but I&rsquo;m willing to go out on a limb anyway to look this F-A-B. Opt for a <u>high-waisted fit</u> and a <u>cropped white t-shirt</u> in a light, breezy fabric to ensure that it looks flattering, and add a pop of colour with a <a href=\"https://chroniclesofher.com/how-to/how-to-wear-a-headscarf-3-ways/\" rel=\"noopener\" target=\"_blank\"><u>head scarf</u></a> and/or a belt. Voila! <em><strong>OUTFIT RECIPE:</strong> 1 x <a href=\"http://t.cn/RkKxcNh\" onclick=\"javascript:window.open(\'http://t.cn/RkKxcNh\'); return false;\" rel=\"noopener\"><u>Hanes x Karla cropped t-shirt</u></a>, 1 x&nbsp;<a href=\"https://rstyle.me/n/df8pa4m866\" onclick=\"javascript:window.open(\'https://rstyle.me/n/df8pa4m866\'); return false;\" rel=\"noopener\"><u>Grlfrnd white jeans</u></a>, 1 x <a href=\"https://rstyle.me/~aNiBk\" onclick=\"javascript:window.open(\'https://rstyle.me/~aNiBk\'); return false;\" rel=\"noopener\"><u>Balenciaga kitten heel</u></a>&nbsp;= Did it hurt when you fell?</em></p>\r\n\r\n<p>What&rsquo;s your favourite way to jazz up your <a href=\"https://chroniclesofher.com/what-to-shop/basic-t-shirts-and-jeans/\" rel=\"noopener\" target=\"_blank\"><u>jeans and a t-shirt</u></a> combination?</p>\r\n\r\n<p><strong><span style=\"font-size:20px\"><em>Words, Madeleine Woon</em></span></strong></p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"share-article\">SHARE\r\n<div class=\"share-icons\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-2 col-md-1\">&nbsp;</div>\r\n</div>\r\n</div>', 1, 0, NULL, '3 Ways To Dress Up Your ‘Jeans And A T-Shirt’ Combo', 0, '2020-02-09 15:00:41', '2020-06-12 02:21:05'),
(7, 'How To Style Denim From AM to PM', 'how-to-style-denim-from-am-to-pm', '\"Carmen-Hamilton-Nobody-Denim-Chronicles-of-Her.jpg\"', 'How To Style Denim From AM to PM', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-2 col-md-1\">&nbsp;</div>\r\n\r\n<div class=\"col-lg-8 col-md-10\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<h3>Five *kewt* looks to take you from work, to the weekend and beyond!</h3>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"entry-content\">\r\n<p>There&rsquo;s a few things in life that I can&rsquo;t fathom living without: my morning coffee, the <a href=\"https://chroniclesofher.com/what-to-shop/coh-team-skincare-routines/\" rel=\"noopener\" target=\"_blank\"><u>litany of Dermalogica products that sit atop my bathroom shelf</u></a>, binging Love Island, and, in saving the most important for last, my ever-evolving denim collection. If I had a dollar for every time I tried on twenty different outfits only to revert back to a <a href=\"https://chroniclesofher.com/what-to-shop/jeans-and-a-tshirt/\" rel=\"noopener\" target=\"_blank\"><u>classic &lsquo;jeans and a t-shirt&rsquo; combination</u></a>, I&rsquo;d have enough money to buy every pair of jeans that have elicited an &ldquo;OMG I WILL LITERALLY DIE WITHOUT THESE&rdquo; claim from me. And trust me, there&rsquo;s been a lot of those over the years.</p>\r\n\r\n<p>Slipping into your favourite pair of jeans is akin to returning home from a long day at work&mdash;a comforting and supremely satisfying feeling. But, over the years, jeans (and denim at large) have earned themselves the reputation of being purely casual wardrobe pieces. Today, I&rsquo;m here to set the record straight.</p>\r\n\r\n<p>Find me an occasion/time of the day, and I&rsquo;ll find you a denim-based outfit recommendation befitting of the dress code. Actually, I&rsquo;ll go one better and do the leg work myself! Without further ado, a guide to styling denim from sun up to sun down (and beyond).</p>\r\n\r\n<h3><img alt=\"\" class=\"alignleft wp-image-9885\" src=\"https://chroniclesofher.com/wp-content/uploads/2019/08/Carmen-Hamilton-High-Waisted-Light-Denim-Jeans-White-Tee02.jpg\" style=\"height:600px; width:400px\" /></h3>\r\n\r\n<h3><img alt=\"\" class=\"alignright wp-image-9887\" src=\"https://chroniclesofher.com/wp-content/uploads/2019/08/Carmen-Hamilton-High-Waisted-Light-Denim-Jeans-White-Tee.jpg\" style=\"height:600px; width:400px\" /></h3>\r\n\r\n<div class=\"separator\">&nbsp;</div>\r\n\r\n<div>\r\n<h3>In the AM</h3>\r\n\r\n<p>Whether you&rsquo;re the early bird who likes to get the first worm (read: latte), or the late riser who rolls out of bed only after snoozing every alarm you set the night before, these <a href=\"http://bit.ly/2Mc9FEb\" onclick=\"javascript:window.open(\'http://bit.ly/2Mc9FEb\'); return false;\" rel=\"noopener\"><u>Light Wash Nobody jeans</u></a> are the perfect pre-day jeans. These are as snug as they are comfortable, which is the main objective for lounging around the house before you carpe diem, espresso in one hand and your iPad in the other. Pair with an organic cotton t-shirt, a pair of slides and your signature gold necklace for ultimate ease.</p>\r\n</div>\r\n\r\n<div class=\"separator\">&nbsp;</div>\r\n\r\n<div><img alt=\"\" class=\"alignleft wp-image-9888\" src=\"https://chroniclesofher.com/wp-content/uploads/2019/08/Carmen-Hamilton-Dark-Denim-High-Waisted-Jeans-Black-Singlet.jpg\" style=\"height:600px; width:400px\" /><img alt=\"\" class=\"alignright wp-image-9889\" src=\"https://chroniclesofher.com/wp-content/uploads/2019/08/Carmen-Hamilton-Dark-Denim-High-Waisted-Jeans-Black-Singlet02.jpg\" style=\"height:600px; width:400px\" /></div>\r\n\r\n<div class=\"separator\">&nbsp;</div>\r\n\r\n<h3>Running errands</h3>\r\n\r\n<div>\r\n<p>You know you&rsquo;re getting old when you actively look forward to running errands, but you know you&rsquo;re doing it in style when you plan out your running-around-the-city outfit with the same gusto as Lady Gaga prepping for the Met Gala. On both accounts, guilty as charged! While the key here is comfort, that doesn&rsquo;t have to equal frumpy. Know that you&rsquo;ll still look chic AF if you bump into your ex by pairing your <a href=\"http://bit.ly/2OS3uaI\" onclick=\"javascript:window.open(\'http://bit.ly/2OS3uaI\'); return false;\" rel=\"noopener\"><u>Skinny Nobody Jeans</u></a> with a ribbed cotton tank, your favourite pair of shades, and a handbag that&rsquo;s big enough to fit the essentials but small enough to not weigh you down. Cinch at the waist with a statement belt, and if the weather calls for it, an on-trend beige coat. Et voila! You&rsquo;re ready to work your way through that to-do list.</p>\r\n\r\n<div class=\"separator\">&nbsp;</div>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div class=\"separator\">&nbsp;</div>\r\n\r\n<div><img alt=\"\" class=\"alignleft wp-image-9890\" src=\"https://chroniclesofher.com/wp-content/uploads/2019/08/Carmen-Hamilton-Black-Jeans-Blazer-Office02.jpg\" style=\"height:600px; width:400px\" /><img alt=\"\" class=\"alignright wp-image-9891\" src=\"https://chroniclesofher.com/wp-content/uploads/2019/08/Carmen-Hamilton-Black-Jeans-Blazer-Office.jpg\" style=\"height:600px; width:400px\" /></div>\r\n\r\n<div class=\"separator\">&nbsp;</div>\r\n\r\n<h3>Work</h3>\r\n\r\n<div>\r\n<p>Casual Fridays withstanding, work calls for a more polished approach to denim. I&rsquo;ve got one word for you: Blazers. Yep, a structured blazer paired with a turtle neck and a darker shade of denim&mdash; like these <u>Black Nobody Jeans</u>, which were made with the modern working woman in mind&mdash;will make sure that you adhere to sartorial protocol while still looking stylish. Now just add a lick of your favourite everyday nude lipstick and you&rsquo;re good to go.</p>\r\n\r\n<div class=\"separator\">&nbsp;</div>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div class=\"separator\">&nbsp;</div>\r\n\r\n<div><img alt=\"\" class=\"alignleft wp-image-9892\" src=\"https://chroniclesofher.com/wp-content/uploads/2019/08/Carmen-Hamilton-Dark-Denim-Double-Denim-Street-Style02.jpg\" style=\"height:600px; width:400px\" /><img alt=\"\" class=\"alignright wp-image-9893\" src=\"https://chroniclesofher.com/wp-content/uploads/2019/08/Carmen-Hamilton-Dark-Denim-Double-Denim-Street-Style.jpg\" style=\"height:600px; width:400px\" /></div>\r\n\r\n<div class=\"separator\">&nbsp;</div>\r\n\r\n<h3>Afternoon Drinks</h3>\r\n\r\n<div>Double denim? For a post-work spritz with the girls? Are you bonkers? I know, I know. There&rsquo;s a very fine line between looking chic in double denim and looking like you&rsquo;ve just stepped out of a time machine sent from the early 90s. Opt for a darker denim ensemble&mdash;like this <a href=\"http://bit.ly/2H0k4yL\" onclick=\"javascript:window.open(\'http://bit.ly/2H0k4yL\'); return false;\" rel=\"noopener\"><u>Nobody Jacket</u></a> paired with <a href=\"http://bit.ly/31IaXe3\" onclick=\"javascript:window.open(\'http://bit.ly/31IaXe3\'); return false;\" rel=\"noopener\"><u>these Nobody Jeans</u></a>&mdash;for a more refined look. Bring the look into the present day with the addition of a smattering of fine gold necklaces and a pair of statement kitten heels.*</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>\r\n<p>*Foot note: a neutral-toned pedicure is a non-negotiable for this look.</p>\r\n\r\n<div class=\"separator\">&nbsp;</div>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>\r\n<div class=\"separator\">&nbsp;</div>\r\n\r\n<p><img alt=\"\" class=\"alignleft wp-image-9894\" src=\"https://chroniclesofher.com/wp-content/uploads/2019/08/Carmen-Hamilton-Black-Jeans-Orseund-Iris-Crop-Top.jpg\" style=\"height:600px; width:400px\" /><img alt=\"\" class=\"alignright wp-image-9895\" src=\"https://chroniclesofher.com/wp-content/uploads/2019/08/Carmen-Hamilton-Black-Jeans-Orseund-Iris-Crop-Top02.jpg\" style=\"height:600px; width:400px\" /></p>\r\n</div>\r\n\r\n<div class=\"separator\">&nbsp;</div>\r\n\r\n<h3>Evening</h3>\r\n\r\n<div>\r\n<p>For a denim look that&rsquo;ll see you through the evening, it&rsquo;s time to get a little more daring with the rest of your outfit. Enter the Going-Out Top. This can take the form of a cute crop top as pictured here, a spaghetti strap cami, or a slinky metallic number, but whichever path you choose, remember that the only operative here is to have F-U-N. Balance out the party that&rsquo;s going on up top with these <a href=\"http://bit.ly/2KGxjpb\" onclick=\"javascript:window.open(\'http://bit.ly/2KGxjpb\'); return false;\" rel=\"noopener\"><u>Cropped Wide Leg Nobody Jeans</u></a> and your favourite strappy heels. Let&rsquo;s go, girls!</p>\r\n\r\n<div class=\"separator\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"separator\">&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<h5>Words: <a href=\"https://www.instagram.com/madw0n/\" onclick=\"javascript:window.open(\'https://www.instagram.com/madw0n/\'); return false;\" rel=\"noopener\">@madw0n</a></h5>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"share-article\">SHARE\r\n<div class=\"share-icons\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-2 col-md-1\">&nbsp;</div>\r\n</div>\r\n</div>', 1, 0, NULL, 'How To Style Denim From AM to PM', 0, '2020-02-09 15:16:32', '2020-06-12 04:16:49'),
(10, '3 NYC-Inspired Looks to Take You From Day to Night', '3-nyc-inspired-looks-to-take-you-from-day-to-night', '\"Carmen-Hamilton-Michael-Kors-New-York-01.jpg\"', '3 NYC-Inspired Looks to Take You From Day to Night', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-2 col-md-1\">&nbsp;</div>\r\n\r\n<div class=\"col-lg-8 col-md-10\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<h3>With Michael Kors.</h3>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"entry-content\">\r\n<p>There are many wonderful perks of working in fashion, but year-in, year-out, the highlight for me is when I get to pack my (extra large) bags to take-off O/S for fashion week and I&rsquo;ll let you in on a secret&hellip; It is SO important to pack&nbsp;outfits to take you from day to night.</p>\r\n\r\n<p>Why? I love <a href=\"https://chroniclesofher.com/street-365/olivia-lopez/\" rel=\"noopener\" target=\"_blank\"><u>travelling</u></a> (anywhere and everywhere), I get to be extra *extra* with my outfit choices, and I&rsquo;m treated to a glimpse of what we&rsquo;ll all be wearing in a year&rsquo;s time. FYI, you&rsquo;ll be needing at least a few 70s-inspired vacation &ndash; &agrave; la the seaside-chic-themed&nbsp;<a href=\"https://www.vogue.com/fashion-shows/spring-2019-ready-to-wear/michael-kors-collection\" onclick=\"javascript:window.open(\'https://www.vogue.com/fashion-shows/spring-2019-ready-to-wear/michael-kors-collection\'); return false;\" rel=\"noopener\"><u>Michael Kors&rsquo; SS19 show</u></a>.&nbsp;Other notable takeaways getting me in the mood for sand, saltwater and sunshine: <a href=\"https://rstyle.me/n/dgchwum866\" onclick=\"javascript:window.open(\'https://rstyle.me/n/dgchwum866\'); return false;\" rel=\"noopener\"><u>crochet bucket hats</u></a>, <a href=\"https://rstyle.me/n/dgchy4m866\" onclick=\"javascript:window.open(\'https://rstyle.me/n/dgchy4m866\'); return false;\" rel=\"noopener\"><u>surf shirts</u></a><u>,</u> and <a href=\"https://rstyle.me/n/dgch2cm866\" onclick=\"javascript:window.open(\'https://rstyle.me/n/dgch2cm866\'); return false;\" rel=\"noopener\"><u>clashing tropical prints</u></a>. I want it all. Now!</p>\r\n\r\n<p>But before I get ahead of myself (and mentally make-way in my wardrobe for what&rsquo;s to come next summer), I decided to take to the streets of <a href=\"https://chroniclesofher.com/what-to-shop/denim-on-the-streets-of-nyc/\" rel=\"noopener\" target=\"_blank\"><u>NYC</u></a> to pay homage to one trend that has withstood the test of fashion month time and time again. Versatile, flattering, comfortable and able to be reinvented a million times over, I&rsquo;ll never grow tired of the understated-chic appeal of an all-black outfit.&nbsp;</p>\r\n\r\n<p>The colour black has cemented itself as my go-to when <a href=\"https://chroniclesofher.com/street-365/time-saving-tips/\" rel=\"noopener\" target=\"_blank\"><u>I&rsquo;m running late</u></a>, and I&rsquo;m always experimenting with different ways to <a href=\"https://chroniclesofher.com/how-to/ways-to-wear-a-black-suit/\" rel=\"noopener\" target=\"_blank\"><u>reinvent</u></a> it for whatever occasion I&rsquo;ve jotted down in my calendar&mdash;from breakfast meetings to after-work drinks, and beyond.</p>\r\n\r\n<p>From the cobbled streets of Soho and the tourist-filled Washington State Park, here&rsquo;s three cute NYC-inspired, all-black outfits feat. a few of my favourite pieces from <a href=\"https://www.michaelkors.global/en_AU/\" onclick=\"javascript:window.open(\'https://www.michaelkors.global/en_AU/\'); return false;\" rel=\"noopener\"><u>Michael Kors</u></a>.</p>\r\n\r\n<div class=\"separator\">&nbsp;</div>\r\n\r\n<div><img alt=\"Michael Kors black studded dress\" class=\"size-full wp-image-9107\" src=\"https://chroniclesofher.com/wp-content/uploads/2018/10/Carmen-Hamilton-Michael-Kors-studded-dress1.jpg\" style=\"height:auto; width:100%\" />\r\n<p>Wearing: <a href=\"http://bit.ly/2QuofFA\" onclick=\"javascript:window.open(\'http://bit.ly/2QuofFA\'); return false;\" rel=\"noopener\"><u>Michael Kors dress</u></a>&nbsp;and <a href=\"http://bit.ly/2Pq9QxX\" onclick=\"javascript:window.open(\'http://bit.ly/2Pq9QxX\'); return false;\" rel=\"noopener\"><u>boots</u></a></p>\r\n\r\n<p><br />\r\n<strong><span style=\"font-size:20px\">DAYTIME: Accessorise, accessorise, accessorise</span></strong></p>\r\n\r\n<p>The number one reason I love an all-black outfit is that it allows you to go !wild! with your <a href=\"https://chroniclesofher.com/what-to-shop/cute-accessories/\" rel=\"noopener\" target=\"_blank\"><u>accessories</u></a>. Slip into a pair of knee-high boots! Wear a neck <a href=\"https://chroniclesofher.com/how-to/how-to-wear-a-headscarf-3-ways/\" rel=\"noopener\" target=\"_blank\"><u>scarf</u></a>! Pop on those dramatic earrings you&rsquo;ve been meaning to wear but haven&rsquo;t gotten around to!</p>\r\n\r\n<p>No accoutrement is out of bounds when wearing all-black. It&rsquo;s an undisputed fact that all-black is the most flattering sartorial choice one can make, and this is only heightened with the addition of a belt cinched at your waist (as I&rsquo;ve done here).</p>\r\n</div>\r\n\r\n<div class=\"separator\">&nbsp;</div>\r\n\r\n<div><img alt=\"Michael Kors silk top and pants\" class=\"size-full wp-image-9108\" src=\"https://chroniclesofher.com/wp-content/uploads/2018/10/Carmen-Hamilton-Michael-Kors-silk-set-pyjamas.jpg\" style=\"height:auto; width:100%\" />\r\n<p>Wearing: <a href=\"http://bit.ly/2Qzycl0\" onclick=\"javascript:window.open(\'http://bit.ly/2Qzycl0\'); return false;\" rel=\"noopener\"><u>Michael Kors top</u></a>, <a href=\"http://bit.ly/2Dh02Pv\" onclick=\"javascript:window.open(\'http://bit.ly/2Dh02Pv\'); return false;\" rel=\"noopener\"><u>pants</u></a> &amp; <a href=\"http://bit.ly/2PU1Cxo\" onclick=\"javascript:window.open(\'http://bit.ly/2PU1Cxo\'); return false;\" rel=\"noopener\"><u>bag</u></a></p>\r\n\r\n<p><br />\r\n<strong><span style=\"font-size:20px\">NIGHTTIME: Opt For The Elegant Two-Piece</span></strong></p>\r\n\r\n<p>Any look that requires minimal effort with maximum return is one that I want in my arsenal always. Enter the sophisticated pyjama look. This one is so easy to pull off, you could do it with your eyes closed. To ensure it doesn&rsquo;t wind up looking like an appropriate shut-eye outfit (i.e. your jammies), though, reach for an embellished two-piece set like this Michael Kors one. Understated, yet chic enough to suit any dress code.</p>\r\n\r\n<div class=\"separator\">&nbsp;</div>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><img alt=\"\" class=\"size-full wp-image-9109\" src=\"https://chroniclesofher.com/wp-content/uploads/2018/10/Carmen-Hamilton-Michael-Kors-studded-kaftan-dress.jpg\" style=\"height:auto; width:100%\" />\r\n<p>Wearing: <a href=\"http://bit.ly/2JTVtvJ\" onclick=\"javascript:window.open(\'http://bit.ly/2JTVtvJ\'); return false;\" rel=\"noopener\"><u>Michael Kors dress</u></a>, <a href=\"http://bit.ly/2OD6HVZ\" onclick=\"javascript:window.open(\'http://bit.ly/2OD6HVZ\'); return false;\" rel=\"noopener\"><u>bag</u></a> &amp; <a href=\"http://bit.ly/2JT7Ach\" onclick=\"javascript:window.open(\'http://bit.ly/2JT7Ach\'); return false;\" rel=\"noopener\"><u>shoes</u></a></p>\r\n</div>\r\n\r\n<div>\r\n<div class=\"separator\">&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div>&nbsp;</div>\r\n\r\n<div><br />\r\n<strong><span style=\"font-size:20px\">ANYTIME: Add A Statement Piece</span></strong></div>\r\n</div>\r\n\r\n<div>\r\n<div>\r\n<p>I&rsquo;ve been worshipping at the altar of <a href=\"https://chroniclesofher.com/what-to-shop/coolest-new-sneakers/\" rel=\"noopener\" target=\"_blank\"><u>sneakers</u></a> for as long as I can remember, and while I doubt that&rsquo;s going to change anytime soon, I&rsquo;ve been increasingly taken with heels of late. Is this what maturing feels like?</p>\r\n\r\n<p>Continuing with the all-black theme, <a href=\"http://bit.ly/2JT7Ach\" onclick=\"javascript:window.open(\'http://bit.ly/2JT7Ach\'); return false;\" rel=\"noopener\"><u>these chunky MK heels</u></a> provide the perfect combination of height and comfort. Pair with sparkly black silk dress, and you&rsquo;re all set to nail the silly season.</p>\r\n</div>\r\n<img alt=\"Michael Kors black studded dress\" class=\"size-full wp-image-9110\" src=\"https://chroniclesofher.com/wp-content/uploads/2018/10/Carmen-Hamilton-Michael-Kors-studded-dress021.jpg\" style=\"height:auto; width:100%\" />\r\n<p>Wearing: <a href=\"http://bit.ly/2QuofFA\" onclick=\"javascript:window.open(\'http://bit.ly/2QuofFA\'); return false;\" rel=\"noopener\"><u>Michael Kors dress</u></a> and <a href=\"http://bit.ly/2Pq9QxX\" onclick=\"javascript:window.open(\'http://bit.ly/2Pq9QxX\'); return false;\" rel=\"noopener\"><u>boots</u></a></p>\r\n</div>\r\n\r\n<div>\r\n<div class=\"separator\">&nbsp;</div>\r\n\r\n<p><em><span style=\"font-size:20px\"><strong>Shot by Georgie Wood-Weber</strong></span></em><br />\r\n<em><span style=\"font-size:20px\"><strong>Edited by Carmen Hamilton</strong></span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"share-article\">SHARE\r\n<div class=\"share-icons\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-2 col-md-1\">&nbsp;</div>\r\n</div>\r\n</div>', 1, 0, NULL, '3 NYC-Inspired Looks to Take You From Day to Night', 0, '2020-02-09 16:57:51', '2020-06-12 04:31:59');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `address`, `status`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Adidas', 'Germany', 1, 'Thương hiệu Adidas', '2019-08-05 16:36:44', '2019-08-05 16:36:44'),
(3, 'Puma', 'Germany', 1, 'Thương hiệu Puma', '2019-08-11 03:38:08', '2019-08-11 03:38:08'),
(4, 'Louis Vuiton', 'France', 1, 'Thương hiệu Louis Vuiton của Pháp', '2019-08-11 03:39:14', '2019-08-11 03:39:14'),
(5, 'Chanel', 'France', 1, 'Thương hiệu Chanel của Pháp', '2019-08-11 03:40:20', '2019-08-11 03:40:20'),
(6, 'Gucci', 'Italy', 1, 'Thương hiệu Gucci của Pháp', '2019-08-11 03:41:32', '2019-08-11 03:41:32'),
(7, 'Dior', 'France', 1, 'Thương hiệu Dior của Pháp', '2019-08-11 03:42:15', '2019-08-11 03:42:15'),
(8, 'Nike', 'USA', 1, 'Nike - Just do it', '2020-06-08 04:49:14', '2020-06-08 04:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cate_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `status`, `created_at`, `updated_at`, `cate_slug`) VALUES
(1, 'Men', 1, 1, '2019-07-22 17:00:00', '2020-06-10 02:47:02', 'men'),
(3, 'Women', 1, 1, '2019-07-27 17:00:00', '2020-06-10 02:47:14', 'women'),
(5, 'Shoes', 1, 1, '2019-07-29 04:04:41', '2020-06-10 02:47:20', 'shoes');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_color` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name_color`, `status`, `description`, `created_at`, `updated_at`) VALUES
(3, 'Red', 1, 'Màu đỏ', '2019-08-05 15:54:56', '2019-08-05 15:54:56'),
(4, 'Yellow', 1, 'Màu vàng', '2019-08-11 03:35:44', '2019-08-11 03:35:44'),
(5, 'Orange', 1, 'Màu cam', '2019-08-11 03:36:01', '2019-08-11 03:36:01'),
(6, 'Pink', 1, 'Màu hồng', '2019-08-11 03:36:12', '2019-08-11 03:36:12'),
(7, 'Brown', 1, 'Màu nâu', '2019-08-11 03:36:26', '2019-08-11 03:36:26'),
(8, 'Black', 1, 'Màu đen', '2019-08-11 03:36:38', '2019-08-11 03:36:38'),
(9, 'Blue', 1, 'Màu xanh dương', '2019-08-11 03:36:53', '2019-08-11 03:36:53'),
(10, 'Green', 1, 'Màu xanh lá cây', '2019-08-11 03:37:13', '2019-08-11 03:37:13'),
(11, 'Gray', 1, 'Màu xám', '2019-08-11 03:37:30', '2019-08-11 03:37:30'),
(12, 'White', 1, 'Màu trắng', '2020-06-14 11:26:53', '2020-06-14 11:26:53');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `co_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `co_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `co_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `co_product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `co_rating` int(11) DEFAULT NULL,
  `co_blog_id` int(10) UNSIGNED NOT NULL,
  `user_image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `co_email`, `co_name`, `co_content`, `co_product_id`, `created_at`, `updated_at`, `co_rating`, `co_blog_id`, `user_image`) VALUES
(16, 'upxuvuive5@gmail.com', 'Đỗ Phương Anh', 'Good', 0, '2020-06-26 02:59:34', '2020-06-26 02:59:34', NULL, 5, ''),
(19, 'domanhhung812@gmail.com', 'Đỗ Mạnh Hùng', 'Awesome', 3, '2020-06-27 01:45:49', '2020-06-27 01:45:49', 5, 0, '1592794033.jpg'),
(20, 'domanhhung812@gmail.com', 'Đỗ Mạnh Hùng', 'Not bad', 2, '2020-06-28 03:47:33', '2020-06-28 03:47:33', 3, 0, '1592794033.jpg'),
(21, 'domanhhung812@gmail.com', 'Đỗ Mạnh Hùng', 'so bad', 4, '2020-06-28 03:48:39', '2020-06-28 03:48:39', 1, 0, '1592794033.jpg'),
(22, 'domanhhung812@gmail.com', 'Đỗ Mạnh Hùng', 'aaaaaaaaaa', 38, '2020-06-28 03:49:39', '2020-06-28 03:49:39', 4, 0, '1592794033.jpg'),
(23, 'upxuvuive5@gmail.com', 'Đỗ Phương Anh', 'very beautiful', 2, '2020-06-28 10:41:33', '2020-06-28 10:41:33', 5, 0, NULL),
(24, 'domanhhung812@gmail.com', 'Đỗ Mạnh Hùng', 'Well-done', 11, '2020-06-29 04:04:45', '2020-06-29 04:04:45', 4, 0, '1592794033.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `c_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `c_email`, `c_content`, `created_at`, `updated_at`) VALUES
(1, 'kaup3pun45x@gmail.com', 'response', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `c_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`c_id`, `code`, `type`, `value`, `percent_off`, `created_at`, `updated_at`) VALUES
(1, 'COZA01', 'percent', NULL, 10, '2020-06-01 08:33:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gmaps_geocache`
--

CREATE TABLE `gmaps_geocache` (
  `id` int(10) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_28_115313_create_admins_table', 1),
(4, '2019_02_28_125747_create_categories_table', 1),
(5, '2019_02_28_131135_create_sizes_table', 1),
(6, '2019_02_28_132528_create_colors_table', 1),
(7, '2019_02_28_133401_create_brands_table', 1),
(8, '2019_02_28_135418_create_products_table', 1),
(9, '2019_03_04_123706_change_type_id_cat_to_products_table', 1),
(10, '2019_03_04_124250_change_type_id_color_to_products_table', 1),
(11, '2019_03_04_124313_change_type_id_size_to_products_table', 1),
(12, '2019_03_11_194455_rename_id_brands_products_table', 1),
(13, '2019_03_11_195527_rename_id_cat_products_table', 1),
(14, '2019_03_11_195749_rename_id_color_products_table', 1),
(15, '2019_03_11_195809_rename_id_size_products_table', 1),
(16, '2019_04_11_210358_create_orders_table', 1),
(17, '2020_02_05_163755_create_transactions_table', 2),
(18, '2020_02_05_163932_create_orders_table', 2),
(19, '2020_02_08_220220_create_contact_table', 3),
(20, '2020_02_09_111002_create_blogs_table', 4),
(21, '2020_02_10_160955_create_comments_table', 5),
(22, '2020_02_11_135908_alter_column_code_and_time_code_in_table_users', 6),
(23, '2020_02_28_172539_alter_column_co_rating_in_table_comments', 7),
(24, '2020_03_04_163931_create_gmaps_geocache_table', 8),
(25, '2020_03_13_150404_alter_column_provide_and_provide_id_in_table_users', 8),
(26, '2020_03_13_161613_create_social_facebook_accounts_table', 9),
(27, '2020_03_13_204210_alter_column_facebook_id_in_users_table', 10),
(28, '2020_03_14_222351_alter_column_tr_payment_method_in_table_transactions', 11),
(29, '2020_03_17_110726_alter_column_last_seen_at_in_table_users', 12),
(30, '2020_03_19_162029_alter_column_or_color_and_or_size_in_table_orders', 12),
(31, '2020_03_21_213626_alter_column_tr_confirm_in_table_transactions', 12),
(32, '2020_06_01_140846_create_coupon_table', 13),
(33, '2020_06_03_094028_create_user_favorite_table', 14),
(34, '2020_06_08_144145_alter_pro_slug_in_products_table', 15),
(35, '2020_06_10_094018_alter_cate_slug_in_categories_table', 16),
(36, '2020_06_10_105139_alter_blog_slug_in_blogs_table', 17),
(37, '2020_06_14_175736_create_products_detail_table', 18),
(38, '2020_06_26_093355_alter_co_blog_id_in_comments_table', 19),
(39, '2020_06_27_083025_alter_user_image_in_comments_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `or_transaction_id` int(11) NOT NULL DEFAULT 0,
  `or_product_id` int(11) NOT NULL DEFAULT 0,
  `or_qty` tinyint(4) NOT NULL DEFAULT 0,
  `or_price` decimal(11,2) NOT NULL DEFAULT 0.00,
  `or_sale` tinyint(4) NOT NULL DEFAULT 0,
  `or_payment_method` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `or_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `or_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `or_transaction_id`, `or_product_id`, `or_qty`, `or_price`, `or_sale`, `or_payment_method`, `created_at`, `updated_at`, `or_size`, `or_color`) VALUES
(2, 3, 3, 2, '800.00', 0, '', NULL, NULL, NULL, NULL),
(3, 4, 5, 1, '600.00', 0, '', NULL, NULL, NULL, NULL),
(4, 5, 6, 1, '700.00', 0, '', NULL, NULL, NULL, NULL),
(5, 6, 2, 1, '1000.00', 0, '', NULL, NULL, NULL, NULL),
(6, 7, 4, 1, '950.00', 0, '', NULL, NULL, NULL, NULL),
(7, 8, 6, 1, '700.00', 0, '', NULL, NULL, NULL, NULL),
(8, 9, 7, 1, '75.00', 0, '', NULL, NULL, NULL, NULL),
(9, 10, 9, 3, '70.00', 0, '', NULL, NULL, NULL, NULL),
(10, 11, 10, 1, '83.00', 0, '', NULL, NULL, NULL, NULL),
(11, 12, 8, 1, '62.00', 0, '', NULL, NULL, NULL, NULL),
(12, 13, 6, 1, '700.00', 0, '', NULL, NULL, NULL, NULL),
(13, 14, 7, 1, '75.00', 0, '', NULL, NULL, NULL, NULL),
(14, 15, 7, 1, '75.00', 0, '', NULL, NULL, NULL, NULL),
(15, 16, 10, 1, '83.00', 0, '', NULL, NULL, NULL, NULL),
(16, 17, 4, 1, '950.00', 0, '', NULL, NULL, NULL, NULL),
(17, 18, 10, 3, '83.00', 0, '', NULL, NULL, NULL, NULL),
(18, 18, 2, 1, '1000.00', 0, '', NULL, NULL, NULL, NULL),
(19, 19, 12, 1, '79.00', 0, '', NULL, NULL, NULL, NULL),
(20, 19, 12, 1, '79.00', 0, '', NULL, NULL, NULL, NULL),
(21, 20, 11, 3, '80.00', 0, '', NULL, NULL, NULL, NULL),
(22, 21, 12, 1, '79.00', 0, '', NULL, NULL, NULL, NULL),
(31, 48, 10, 1, '83.00', 0, 'Stripe', NULL, NULL, NULL, NULL),
(32, 50, 4, 1, '950.00', 0, 'Stripe', NULL, NULL, NULL, NULL),
(33, 51, 4, 1, '950.00', 0, 'Stripe', NULL, NULL, NULL, NULL),
(34, 52, 4, 1, '950.00', 0, 'Stripe', NULL, NULL, NULL, NULL),
(35, 56, 10, 1, '83.00', 0, 'Stripe', NULL, NULL, NULL, NULL),
(36, 56, 11, 1, '80.00', 0, 'Stripe', NULL, NULL, NULL, NULL),
(37, 58, 10, 1, '83.00', 0, 'Stripe', '2020-03-16 09:05:32', '2020-03-16 09:05:32', NULL, NULL),
(38, 58, 7, 1, '75.00', 0, 'Stripe', '2020-03-16 09:05:32', '2020-03-16 09:05:32', NULL, NULL),
(39, 59, 12, 1, '79.00', 0, 'Stripe', '2020-03-16 09:08:14', '2020-03-16 09:08:14', NULL, NULL),
(40, 59, 11, 1, '80.00', 0, 'Stripe', '2020-03-16 09:08:14', '2020-03-16 09:08:14', NULL, NULL),
(41, 60, 12, 1, '79.00', 0, 'Stripe', '2020-03-16 09:13:23', '2020-03-16 09:13:23', NULL, NULL),
(42, 60, 11, 1, '80.00', 0, 'Stripe', '2020-03-16 09:13:23', '2020-03-16 09:13:23', NULL, NULL),
(43, 61, 13, 1, '120.00', 0, 'Stripe', '2020-03-16 09:39:25', '2020-03-16 09:39:25', NULL, NULL),
(44, 61, 10, 1, '83.00', 0, 'Stripe', '2020-03-16 09:39:25', '2020-03-16 09:39:25', NULL, NULL),
(45, 63, 4, 1, '950.00', 0, 'COD', NULL, NULL, '4', '9'),
(46, 64, 12, 1, '79.00', 0, 'Stripe', '2020-06-02 04:27:04', '2020-06-02 04:27:04', NULL, NULL),
(47, 65, 5, 1, '86.40', 0, 'Stripe', '2020-06-05 08:57:08', '2020-06-05 08:57:08', NULL, NULL),
(48, 66, 5, 1, '86.40', 0, 'Stripe', '2020-06-06 04:40:32', '2020-06-06 04:40:32', NULL, NULL),
(49, 67, 18, 1, '71.25', 0, 'COD', NULL, NULL, '4', '9'),
(50, 68, 21, 1, '53.20', 0, 'Stripe', '2020-06-09 03:59:14', '2020-06-09 03:59:14', NULL, NULL),
(51, 69, 8, 1, '62.00', 0, 'COD', NULL, NULL, '3', '5'),
(52, 70, 15, 1, '59.85', 0, 'Stripe', '2020-06-09 04:08:18', '2020-06-09 04:08:18', NULL, NULL),
(53, 72, 21, 1, '53.20', 0, 'Stripe', '2020-06-09 04:17:14', '2020-06-09 04:17:14', NULL, NULL),
(54, 73, 21, 1, '53.20', 0, 'Stripe', '2020-06-09 04:26:35', '2020-06-09 04:26:35', NULL, NULL),
(55, 74, 21, 1, '53.20', 0, 'COD', NULL, NULL, '7', '8'),
(56, 75, 5, 1, '86.40', 0, 'COD', NULL, NULL, '2', '5'),
(57, 76, 22, 1, '97.20', 0, 'Stripe', '2020-06-09 04:52:54', '2020-06-09 04:52:54', NULL, NULL),
(58, 77, 3, 1, '800.00', 0, 'COD', NULL, NULL, '3', '11'),
(59, 78, 4, 1, '95.00', 0, 'COD', NULL, NULL, '7', '12'),
(60, 79, 11, 1, '80.00', 0, 'COD', NULL, NULL, '5', '12'),
(61, 80, 11, 2, '80.00', 0, 'COD', NULL, NULL, '10', '12'),
(62, 81, 37, 1, '67.50', 0, 'COD', NULL, NULL, '2', '11'),
(63, 82, 38, 1, '60.30', 0, 'COD', NULL, NULL, '13', '8');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('hung.test1208@gmail.com', '$2y$10$Ku3VGIIZ3PbIx.OA5dxnZ.K/Ysvs6G4ZdkTA0/IkeODh7XndZKXki', '2020-02-11 03:15:38');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_product` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sizes_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brands_id` int(10) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_product` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_off` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `view_product` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pro_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name_product`, `categories_id`, `colors_id`, `sizes_id`, `brands_id`, `price`, `qty`, `description`, `image_product`, `sale_off`, `status`, `view_product`, `created_at`, `updated_at`, `pro_slug`) VALUES
(2, 'Classic Trench Coat', '[\"3\"]', '[\"7\"]', '{\"3\":\"11\",\"4\":\"10\",\"5\":\"10\",\"7\":\"10\",\"8\":\"10\",\"9\":\"10\",\"10\":\"10\",\"11\":\"10\",\"12\":\"20\",\"13\":\"12\"}', 4, 100, 113, '<p>&middot; Beautiful details in this elegant feminine blouse. Ruffled collar &amp; neckline is so gorgeous and flattering! &nbsp;</p>\r\n\r\n<p>&middot; Features:<br />\r\n&nbsp; &nbsp; - <em>Rounded buttons at cuff &amp; front</em><br />\r\n&nbsp; &nbsp; - <em>Semi-sheer</em></p>\r\n\r\n<p>&middot; I imagine this tucked into a straight leg pant or pencil skirt - but can be worn so many ways as it is incredibly versatile.</p>\r\n\r\n<p>&middot; Approx measurements:<br />\r\n&middot; Pit to pit 18.5&quot;<br />\r\n&middot; Shoulder to cuff 23.5 &quot;<br />\r\n&middot; Length 23.5&quot;</p>\r\n\r\n<p>&middot; This is in excellent condition - with one tiny pull. Please see last photo. Only seen in certain lights and&nbsp;not noticeable when worn.</p>', '[\"product-04.jpg\"]', '5', 1, 0, '2019-08-11 03:43:24', '2020-06-22 10:38:46', 'classic-trench-coat'),
(3, 'Shirt in Stretch Cotton', '[\"3\"]', '[\"12\"]', '{\"2\":\"12\",\"3\":\"10\",\"4\":\"10\",\"5\":\"10\",\"7\":\"10\",\"8\":\"10\",\"9\":\"10\",\"10\":\"10\",\"11\":\"10\",\"12\":\"10\"}', 7, 80, 102, '<p>&middot; Beautiful details in this elegant feminine blouse. Ruffled collar &amp; neckline is so gorgeous and flattering! &nbsp;</p>\r\n\r\n<p>&middot; Features:<br />\r\n&nbsp; &nbsp; - <em>Rounded buttons at cuff &amp; front</em><br />\r\n&nbsp; &nbsp; - <em>Semi-sheer</em></p>\r\n\r\n<p>&middot; I imagine this tucked into a straight leg pant or pencil skirt - but can be worn so many ways as it is incredibly versatile.</p>\r\n\r\n<p>&middot; Approx measurements:<br />\r\n&middot; Pit to pit 18.5&quot;<br />\r\n&middot; Shoulder to cuff 23.5 &quot;<br />\r\n&middot; Length 23.5&quot;</p>\r\n\r\n<p>&middot; This is in excellent condition - with one tiny pull. Please see last photo. Only seen in certain lights and&nbsp;not noticeable when worn.</p>', '[\"product-07.jpg\"]', '0', 1, 0, '2019-08-11 03:46:36', '2020-06-17 01:55:27', 'shirt-in-stretch-cotton'),
(4, 'Stripped Shirt', '[\"1\"]', '[\"12\"]', '{\"2\":\"10\",\"3\":\"2\",\"4\":\"3\",\"5\":\"4\",\"7\":\"5\",\"8\":\"6\",\"9\":\"7\",\"10\":\"8\",\"11\":\"9\",\"12\":\"10\"}', 4, 95, 63, '<p>Stripped Shirt</p>', '[\"product-03.jpg\"]', '0', 1, 0, '2019-08-11 03:57:43', '2020-06-17 15:46:46', 'stripped-shirt'),
(11, 'Adidas Stan Smith', '[\"5\"]', '[\"12\"]', '{\"2\":\"10\",\"3\":\"10\",\"4\":\"10\",\"5\":\"8\",\"7\":\"10\",\"8\":\"10\",\"9\":\"10\",\"10\":\"8\",\"11\":\"0\",\"12\":\"10\"}', 2, 80, 86, '<p>GI&Agrave;Y STAN SMITH PHI&Ecirc;N BẢN CH&Iacute;NH HIỆU CỦA BIỂU TƯỢNG GI&Agrave;Y QUẦN VỢT KINH ĐIỂN NĂM 1972. Trước đ&acirc;y, Stan Smith từng l&agrave; ng&ocirc;i sao lớn của l&agrave;ng quần vợt. Từ đ&oacute; đến nay, đ&ocirc;i gi&agrave;y mang t&ecirc;n &ocirc;ng lu&ocirc;n thắng đậm tr&ecirc;n đường phố. Từ tr&ecirc;n xuống dưới, đ&ocirc;i gi&agrave;y n&agrave;y giữ đ&uacute;ng phong c&aacute;ch thiết yếu theo nguy&ecirc;n bản năm 1972 với thiết kế bằng da tối giản v&agrave; đường n&eacute;t thanh tho&aacute;t vốn đ&atilde; trở th&agrave;nh đặc trưng của d&ograve;ng gi&agrave;y n&agrave;y. TH&Ocirc;NG SỐ KỸ THUẬT - C&oacute; d&acirc;y buộc - Th&acirc;n gi&agrave;y bằng da cật - Đế cupsole bằng cao su; Lớp l&oacute;t bằng da - Tận hưởng sự thoải m&aacute;i v&agrave; hiệu quả của l&oacute;t gi&agrave;y OrthoLite&reg;</p>', '[\"Giay_Stan_Smith_Mau_trang_M20324_01_standard.jpg\"]', '0', 1, 0, '2020-02-26 01:23:07', '2020-06-18 03:59:33', 'adidas-stan-smith'),
(37, 'T-shirts Adidas', '[\"1\"]', '[\"11\"]', '{\"2\":\"11\",\"3\":\"12\",\"4\":\"13\",\"5\":\"14\",\"7\":\"15\",\"8\":\"16\",\"9\":\"17\",\"10\":\"18\",\"11\":\"19\",\"12\":\"19\"}', 2, 75, 154, '<p>&middot; Beautiful details in this elegant feminine blouse. Ruffled collar &amp; neckline is so gorgeous and flattering! &nbsp;</p>\r\n\r\n<p>&middot; Features:<br />\r\n&nbsp; &nbsp; - <em>Rounded buttons at cuff &amp; front</em><br />\r\n&nbsp; &nbsp; - <em>Semi-sheer</em></p>\r\n\r\n<p>&middot; I imagine this tucked into a straight leg pant or pencil skirt - but can be worn so many ways as it is incredibly versatile.</p>\r\n\r\n<p>&middot; Approx measurements:<br />\r\n&middot; Pit to pit 18.5&quot;<br />\r\n&middot; Shoulder to cuff 23.5 &quot;<br />\r\n&middot; Length 23.5&quot;</p>\r\n\r\n<p>&middot; This is in excellent condition - with one tiny pull. Please see last photo. Only seen in certain lights and&nbsp;not noticeable when worn.</p>', '[\"-1117Wx1400H-460362333-grey-MODEL.png\"]', '10', 1, 0, '2020-06-19 02:17:00', '2020-06-19 02:22:24', 't-shirts-adidas'),
(38, 'Puma Printed T-shirt', '[\"1\"]', '[\"8\"]', '{\"2\":\"10\",\"3\":\"11\",\"4\":\"12\",\"5\":\"13\",\"7\":\"14\",\"8\":\"15\",\"9\":\"16\",\"10\":\"17\",\"11\":\"18\",\"12\":\"19\"}', 2, 67, 145, '<p>&middot; Beautiful details in this elegant feminine blouse. Ruffled collar &amp; neckline is so gorgeous and flattering! &nbsp;</p>\r\n\r\n<p>&middot; Features:<br />\r\n&nbsp; &nbsp; - <em>Rounded buttons at cuff &amp; front</em><br />\r\n&nbsp; &nbsp; - <em>Semi-sheer</em></p>\r\n\r\n<p>&middot; I imagine this tucked into a straight leg pant or pencil skirt - but can be worn so many ways as it is incredibly versatile.</p>\r\n\r\n<p>&middot; Approx measurements:<br />\r\n&middot; Pit to pit 18.5&quot;<br />\r\n&middot; Shoulder to cuff 23.5 &quot;<br />\r\n&middot; Length 23.5&quot;</p>\r\n\r\n<p>&middot; This is in excellent condition - with one tiny pull. Please see last photo. Only seen in certain lights and&nbsp;not noticeable when worn.</p>', '[\"11486377408986-Puma-Men-Black-Printed-T-Shirt-9291486377409295-1.png\"]', '10', 1, 0, '2020-06-19 02:25:32', '2020-06-19 02:25:32', 'puma-printed-t-shirt'),
(39, 'Air Ghost Racer', '[\"5\"]', '[\"9\"]', '{\"2\":\"10\",\"3\":\"10\",\"4\":\"10\",\"5\":\"10\",\"7\":\"10\",\"8\":\"10\",\"9\":\"10\",\"10\":\"10\",\"11\":\"10\",\"12\":\"10\"}', 2, 72, 100, '<p>&middot; Beautiful details in this elegant feminine blouse. Ruffled collar &amp; neckline is so gorgeous and flattering! &nbsp;</p>\r\n\r\n<p>&middot; Features:<br />\r\n&nbsp; &nbsp; - <em>Rounded buttons at cuff &amp; front</em><br />\r\n&nbsp; &nbsp; - <em>Semi-sheer</em></p>\r\n\r\n<p>&middot; I imagine this tucked into a straight leg pant or pencil skirt - but can be worn so many ways as it is incredibly versatile.</p>\r\n\r\n<p>&middot; Approx measurements:<br />\r\n&middot; Pit to pit 18.5&quot;<br />\r\n&middot; Shoulder to cuff 23.5 &quot;<br />\r\n&middot; Length 23.5&quot;</p>\r\n\r\n<p>&middot; This is in excellent condition - with one tiny pull. Please see last photo. Only seen in certain lights and&nbsp;not noticeable when worn.</p>', '[\"air-ghost-racer-shoe-CClwQd.jpg\"]', '10', 1, 0, '2020-06-19 02:27:10', '2020-06-19 02:27:10', 'air-ghost-racer'),
(40, 'Air Max2 Light', '[\"5\"]', '[\"3\"]', '{\"2\":\"10\",\"3\":\"10\",\"4\":\"10\",\"5\":\"10\",\"7\":\"10\",\"8\":\"10\",\"9\":\"10\",\"10\":\"10\",\"11\":\"10\",\"12\":\"10\"}', 8, 68, 100, '<p>&middot; Beautiful details in this elegant feminine blouse. Ruffled collar &amp; neckline is so gorgeous and flattering! &nbsp;</p>\r\n\r\n<p>&middot; Features:<br />\r\n&nbsp; &nbsp; - <em>Rounded buttons at cuff &amp; front</em><br />\r\n&nbsp; &nbsp; - <em>Semi-sheer</em></p>\r\n\r\n<p>&middot; I imagine this tucked into a straight leg pant or pencil skirt - but can be worn so many ways as it is incredibly versatile.</p>\r\n\r\n<p>&middot; Approx measurements:<br />\r\n&middot; Pit to pit 18.5&quot;<br />\r\n&middot; Shoulder to cuff 23.5 &quot;<br />\r\n&middot; Length 23.5&quot;</p>\r\n\r\n<p>&middot; This is in excellent condition - with one tiny pull. Please see last photo. Only seen in certain lights and&nbsp;not noticeable when worn.</p>', '[\"air-max2-light-shoe-rWm3CX.jpg\"]', '15', 1, 0, '2020-06-19 02:30:08', '2020-06-19 02:30:08', 'air-max2-light'),
(41, 'Adidas T-shirts Original', '[\"1\"]', '[\"12\"]', '{\"2\":\"10\",\"3\":\"10\",\"4\":\"10\",\"5\":\"10\",\"7\":\"10\",\"8\":\"10\",\"9\":\"10\",\"10\":\"10\",\"11\":\"10\",\"12\":\"10\"}', 2, 57, 100, '<p>&middot; Beautiful details in this elegant feminine blouse. Ruffled collar &amp; neckline is so gorgeous and flattering! &nbsp;</p>\r\n\r\n<p>&middot; Features:<br />\r\n&nbsp; &nbsp; - <em>Rounded buttons at cuff &amp; front</em><br />\r\n&nbsp; &nbsp; - <em>Semi-sheer</em></p>\r\n\r\n<p>&middot; I imagine this tucked into a straight leg pant or pencil skirt - but can be worn so many ways as it is incredibly versatile.</p>\r\n\r\n<p>&middot; Approx measurements:<br />\r\n&middot; Pit to pit 18.5&quot;<br />\r\n&middot; Shoulder to cuff 23.5 &quot;<br />\r\n&middot; Length 23.5&quot;</p>\r\n\r\n<p>&middot; This is in excellent condition - with one tiny pull. Please see last photo. Only seen in certain lights and&nbsp;not noticeable when worn.</p>', '[\"b67c7aaadb513f0f6640_1f48c3ccf6144cb2ba05fa0e182fc573.png\"]', '0', 1, 0, '2020-06-19 02:38:15', '2020-06-19 02:38:15', 'adidas-t-shirts-original'),
(42, 'Jordan Poolside T-shirts', '[\"1\"]', '[\"12\"]', '{\"2\":\"10\",\"3\":\"10\",\"4\":\"10\",\"5\":\"10\",\"7\":\"10\",\"8\":\"10\",\"9\":\"10\",\"10\":\"10\",\"11\":\"10\",\"12\":\"10\"}', 2, 66, 100, '<p>&middot; Beautiful details in this elegant feminine blouse. Ruffled collar &amp; neckline is so gorgeous and flattering! &nbsp;</p>\r\n\r\n<p>&middot; Features:<br />\r\n&nbsp; &nbsp; - <em>Rounded buttons at cuff &amp; front</em><br />\r\n&nbsp; &nbsp; - <em>Semi-sheer</em></p>\r\n\r\n<p>&middot; I imagine this tucked into a straight leg pant or pencil skirt - but can be worn so many ways as it is incredibly versatile.</p>\r\n\r\n<p>&middot; Approx measurements:<br />\r\n&middot; Pit to pit 18.5&quot;<br />\r\n&middot; Shoulder to cuff 23.5 &quot;<br />\r\n&middot; Length 23.5&quot;</p>\r\n\r\n<p>&middot; This is in excellent condition - with one tiny pull. Please see last photo. Only seen in certain lights and&nbsp;not noticeable when worn.</p>', '[\"jordan-poolside-t-shirt-gjdmJt.jpg\"]', '5', 1, 0, '2020-06-19 02:41:40', '2020-06-19 02:41:40', 'jordan-poolside-t-shirts');

-- --------------------------------------------------------

--
-- Table structure for table `products_detail`
--

CREATE TABLE `products_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `pd_product_id` int(10) UNSIGNED NOT NULL,
  `pd_size_id` int(10) UNSIGNED NOT NULL,
  `pd_color_id` int(10) UNSIGNED NOT NULL,
  `pd_qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_detail`
--

INSERT INTO `products_detail` (`id`, `pd_product_id`, `pd_size_id`, `pd_color_id`, `pd_qty`, `created_at`, `updated_at`) VALUES
(84, 11, 13, 12, 10, '2020-06-16 02:43:08', '2020-06-16 02:43:08'),
(85, 11, 3, 12, 10, '2020-06-16 02:43:08', '2020-06-16 02:43:08'),
(86, 11, 4, 12, 10, '2020-06-16 02:43:08', '2020-06-16 02:43:08'),
(87, 11, 5, 12, 8, '2020-06-16 02:43:08', '2020-06-18 02:55:59'),
(88, 11, 7, 12, 10, '2020-06-16 02:43:08', '2020-06-16 02:43:08'),
(89, 11, 8, 12, 10, '2020-06-16 02:43:08', '2020-06-16 02:43:08'),
(90, 11, 9, 12, 10, '2020-06-16 02:43:08', '2020-06-16 02:43:08'),
(91, 11, 10, 12, 8, '2020-06-16 02:43:08', '2020-06-18 02:57:55'),
(92, 11, 11, 12, 0, '2020-06-16 02:43:08', '2020-06-18 03:59:33'),
(93, 11, 12, 12, 10, '2020-06-16 02:43:08', '2020-06-16 02:43:08'),
(94, 32, 13, 9, 1, '2020-06-16 02:46:31', '2020-06-16 02:46:31'),
(95, 32, 3, 9, 2, '2020-06-16 02:46:31', '2020-06-16 02:46:31'),
(96, 32, 4, 9, 3, '2020-06-16 02:46:31', '2020-06-16 02:46:31'),
(97, 32, 5, 9, 4, '2020-06-16 02:46:31', '2020-06-16 02:46:31'),
(98, 32, 7, 9, 5, '2020-06-16 02:46:31', '2020-06-16 02:46:31'),
(99, 32, 8, 9, 6, '2020-06-16 02:46:31', '2020-06-16 02:46:31'),
(100, 32, 9, 9, 7, '2020-06-16 02:46:31', '2020-06-16 02:46:31'),
(101, 32, 10, 9, 8, '2020-06-16 02:46:31', '2020-06-16 02:46:31'),
(102, 32, 11, 9, 9, '2020-06-16 02:46:31', '2020-06-16 02:46:31'),
(103, 32, 12, 9, 10, '2020-06-16 02:46:31', '2020-06-16 02:46:31'),
(124, 3, 13, 12, 12, '2020-06-16 03:28:12', '2020-06-17 01:55:27'),
(125, 3, 3, 12, 10, '2020-06-16 03:28:12', '2020-06-16 08:27:19'),
(126, 3, 4, 12, 10, '2020-06-16 03:28:12', '2020-06-16 08:27:19'),
(127, 3, 5, 12, 10, '2020-06-16 03:28:12', '2020-06-16 08:27:19'),
(128, 3, 7, 12, 10, '2020-06-16 03:28:12', '2020-06-16 08:27:19'),
(129, 3, 8, 12, 10, '2020-06-16 03:28:12', '2020-06-16 08:27:19'),
(130, 3, 9, 12, 10, '2020-06-16 03:28:12', '2020-06-16 08:27:19'),
(131, 3, 10, 12, 10, '2020-06-16 03:28:12', '2020-06-16 08:27:19'),
(132, 3, 11, 12, 10, '2020-06-16 03:28:12', '2020-06-16 08:27:19'),
(133, 3, 12, 12, 10, '2020-06-16 03:28:12', '2020-06-16 08:27:19'),
(134, 2, 13, 7, 12, '2020-06-16 03:33:22', '2020-06-16 07:54:31'),
(135, 2, 3, 7, 11, '2020-06-16 03:33:22', '2020-06-16 07:54:53'),
(136, 2, 4, 7, 10, '2020-06-16 03:33:22', '2020-06-16 03:33:22'),
(137, 2, 5, 7, 10, '2020-06-16 03:33:22', '2020-06-16 03:33:22'),
(138, 2, 7, 7, 10, '2020-06-16 03:33:22', '2020-06-16 03:33:22'),
(139, 2, 8, 7, 10, '2020-06-16 03:33:22', '2020-06-16 03:33:22'),
(140, 2, 9, 7, 10, '2020-06-16 03:33:22', '2020-06-16 03:33:22'),
(141, 2, 10, 7, 10, '2020-06-16 03:33:22', '2020-06-16 03:33:22'),
(142, 2, 11, 7, 10, '2020-06-16 03:33:22', '2020-06-16 03:33:22'),
(143, 2, 12, 7, 20, '2020-06-16 03:33:22', '2020-06-16 07:54:53'),
(144, 4, 13, 12, 10, '2020-06-16 03:34:39', '2020-06-16 04:43:16'),
(145, 4, 3, 12, 2, '2020-06-16 03:34:39', '2020-06-16 08:30:24'),
(146, 4, 4, 12, 3, '2020-06-16 03:34:39', '2020-06-16 08:30:24'),
(147, 4, 5, 12, 4, '2020-06-16 03:34:39', '2020-06-16 08:30:24'),
(148, 4, 7, 12, 5, '2020-06-16 03:34:39', '2020-06-16 08:30:24'),
(149, 4, 8, 12, 6, '2020-06-16 03:34:39', '2020-06-16 08:30:24'),
(150, 4, 9, 12, 7, '2020-06-16 03:34:39', '2020-06-16 08:30:24'),
(151, 4, 10, 12, 8, '2020-06-16 03:34:39', '2020-06-16 08:30:24'),
(152, 4, 11, 12, 9, '2020-06-16 03:34:39', '2020-06-16 08:30:24'),
(153, 4, 12, 12, 10, '2020-06-16 03:34:39', '2020-06-16 08:30:24'),
(164, 37, 13, 11, 11, '2020-06-19 02:17:00', '2020-06-19 02:17:00'),
(165, 37, 3, 11, 12, '2020-06-19 02:17:00', '2020-06-19 02:17:00'),
(166, 37, 4, 11, 13, '2020-06-19 02:17:00', '2020-06-19 02:17:00'),
(167, 37, 5, 11, 14, '2020-06-19 02:17:00', '2020-06-19 02:17:00'),
(168, 37, 7, 11, 15, '2020-06-19 02:17:00', '2020-06-19 02:17:00'),
(169, 37, 8, 11, 16, '2020-06-19 02:17:00', '2020-06-19 02:17:00'),
(170, 37, 9, 11, 17, '2020-06-19 02:17:00', '2020-06-19 02:17:00'),
(171, 37, 10, 11, 18, '2020-06-19 02:17:00', '2020-06-19 02:17:00'),
(172, 37, 11, 11, 19, '2020-06-19 02:17:00', '2020-06-19 02:17:00'),
(173, 37, 12, 11, 19, '2020-06-19 02:17:00', '2020-06-19 02:22:24'),
(174, 38, 13, 8, 10, '2020-06-19 02:25:32', '2020-06-19 02:25:32'),
(175, 38, 3, 8, 11, '2020-06-19 02:25:32', '2020-06-19 02:25:32'),
(176, 38, 4, 8, 12, '2020-06-19 02:25:32', '2020-06-19 02:25:32'),
(177, 38, 5, 8, 13, '2020-06-19 02:25:32', '2020-06-19 02:25:32'),
(178, 38, 7, 8, 14, '2020-06-19 02:25:32', '2020-06-19 02:25:32'),
(179, 38, 8, 8, 15, '2020-06-19 02:25:32', '2020-06-19 02:25:32'),
(180, 38, 9, 8, 16, '2020-06-19 02:25:32', '2020-06-19 02:25:32'),
(181, 38, 10, 8, 17, '2020-06-19 02:25:32', '2020-06-19 02:25:32'),
(182, 38, 11, 8, 18, '2020-06-19 02:25:32', '2020-06-19 02:25:32'),
(183, 38, 12, 8, 19, '2020-06-19 02:25:32', '2020-06-19 02:25:32'),
(184, 39, 13, 9, 10, '2020-06-19 02:27:10', '2020-06-19 02:27:10'),
(185, 39, 3, 9, 10, '2020-06-19 02:27:10', '2020-06-19 02:27:10'),
(186, 39, 4, 9, 10, '2020-06-19 02:27:10', '2020-06-19 02:27:10'),
(187, 39, 5, 9, 10, '2020-06-19 02:27:10', '2020-06-19 02:27:10'),
(188, 39, 7, 9, 10, '2020-06-19 02:27:10', '2020-06-19 02:27:10'),
(189, 39, 8, 9, 10, '2020-06-19 02:27:10', '2020-06-19 02:27:10'),
(190, 39, 9, 9, 10, '2020-06-19 02:27:10', '2020-06-19 02:27:10'),
(191, 39, 10, 9, 10, '2020-06-19 02:27:10', '2020-06-19 02:27:10'),
(192, 39, 11, 9, 10, '2020-06-19 02:27:10', '2020-06-19 02:27:10'),
(193, 39, 12, 9, 10, '2020-06-19 02:27:10', '2020-06-19 02:27:10'),
(194, 40, 13, 3, 10, '2020-06-19 02:30:08', '2020-06-19 02:30:08'),
(195, 40, 3, 3, 10, '2020-06-19 02:30:08', '2020-06-19 02:30:08'),
(196, 40, 4, 3, 10, '2020-06-19 02:30:08', '2020-06-19 02:30:08'),
(197, 40, 5, 3, 10, '2020-06-19 02:30:08', '2020-06-19 02:30:08'),
(198, 40, 7, 3, 10, '2020-06-19 02:30:08', '2020-06-19 02:30:08'),
(199, 40, 8, 3, 10, '2020-06-19 02:30:08', '2020-06-19 02:30:08'),
(200, 40, 9, 3, 10, '2020-06-19 02:30:08', '2020-06-19 02:30:08'),
(201, 40, 10, 3, 10, '2020-06-19 02:30:08', '2020-06-19 02:30:08'),
(202, 40, 11, 3, 10, '2020-06-19 02:30:08', '2020-06-19 02:30:08'),
(203, 40, 12, 3, 10, '2020-06-19 02:30:08', '2020-06-19 02:30:08'),
(204, 41, 13, 12, 10, '2020-06-19 02:38:15', '2020-06-19 02:38:15'),
(205, 41, 3, 12, 10, '2020-06-19 02:38:15', '2020-06-19 02:38:15'),
(206, 41, 4, 12, 10, '2020-06-19 02:38:15', '2020-06-19 02:38:15'),
(207, 41, 5, 12, 10, '2020-06-19 02:38:15', '2020-06-19 02:38:15'),
(208, 41, 7, 12, 10, '2020-06-19 02:38:15', '2020-06-19 02:38:15'),
(209, 41, 8, 12, 10, '2020-06-19 02:38:15', '2020-06-19 02:38:15'),
(210, 41, 9, 12, 10, '2020-06-19 02:38:15', '2020-06-19 02:38:15'),
(211, 41, 10, 12, 10, '2020-06-19 02:38:15', '2020-06-19 02:38:15'),
(212, 41, 11, 12, 10, '2020-06-19 02:38:15', '2020-06-19 02:38:15'),
(213, 41, 12, 12, 10, '2020-06-19 02:38:15', '2020-06-19 02:38:15'),
(214, 42, 13, 12, 10, '2020-06-19 02:41:40', '2020-06-19 02:41:40'),
(215, 42, 3, 12, 10, '2020-06-19 02:41:40', '2020-06-19 02:41:40'),
(216, 42, 4, 12, 10, '2020-06-19 02:41:40', '2020-06-19 02:41:40'),
(217, 42, 5, 12, 10, '2020-06-19 02:41:40', '2020-06-19 02:41:40'),
(218, 42, 7, 12, 10, '2020-06-19 02:41:40', '2020-06-19 02:41:40'),
(219, 42, 8, 12, 10, '2020-06-19 02:41:40', '2020-06-19 02:41:40'),
(220, 42, 9, 12, 10, '2020-06-19 02:41:40', '2020-06-19 02:41:40'),
(221, 42, 10, 12, 10, '2020-06-19 02:41:40', '2020-06-19 02:41:40'),
(222, 42, 11, 12, 10, '2020-06-19 02:41:40', '2020-06-19 02:41:40'),
(223, 42, 12, 12, 10, '2020-06-19 02:41:40', '2020-06-19 02:41:40');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `letter_size` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_size` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `letter_size`, `number_size`, `status`, `description`, `created_at`, `updated_at`) VALUES
(3, 'M', 37, 1, 'Size 37', '2019-08-05 04:00:19', '2019-08-05 04:00:19'),
(4, 'L', 38, 1, 'Size 38', '2019-08-11 03:34:39', '2019-08-11 03:34:39'),
(5, 'XL', 39, 1, 'Size 39', '2019-08-11 03:34:59', '2019-08-11 03:34:59'),
(7, 'XXL', 40, 1, 'Size 40', '2020-02-09 15:07:16', '2020-02-09 15:07:16'),
(8, 'XXXL', 41, 1, 'Size 41', '2020-06-14 11:13:31', '2020-06-14 11:13:31'),
(9, 'Oversized 1', 42, 1, 'Size 42', '2020-06-14 11:20:53', '2020-06-14 11:22:34'),
(10, 'Oversized 2', 43, 1, 'Size 43', '2020-06-14 11:22:56', '2020-06-14 11:22:56'),
(11, 'Oversized 3', 44, 1, 'Size 44', '2020-06-14 11:23:12', '2020-06-14 11:23:12'),
(12, 'Oversized 4', 45, 1, 'Size 45', '2020-06-14 11:24:41', '2020-06-14 11:24:41'),
(13, 'S', 36, 1, 'Size 36', '2020-06-22 10:33:22', '2020-06-22 10:33:22');

-- --------------------------------------------------------

--
-- Table structure for table `social_facebook_accounts`
--

CREATE TABLE `social_facebook_accounts` (
  `user_id` int(11) NOT NULL,
  `provider_user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `tr_user_id` int(11) NOT NULL DEFAULT 0,
  `tr_total` decimal(8,3) NOT NULL DEFAULT 0.000,
  `tr_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tr_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tr_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tr_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tr_payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tr_confirm` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tr_user_id`, `tr_total`, `tr_note`, `tr_address`, `tr_phone`, `tr_status`, `created_at`, `updated_at`, `tr_payment_method`, `tr_confirm`) VALUES
(8, 3, '700.000', 'test', 'TH', '0123456789', 1, NULL, '2020-02-25 03:51:15', '', 0),
(9, 2, '75.000', 'Giao nhanh trong ngay', 'Hung Yen', '0964387230', 1, NULL, '2020-02-25 03:53:59', '', 0),
(10, 2, '210.000', 'Giao nhanh trong ngay', 'Hung Yen', '0964387230', 1, NULL, '2020-02-25 07:04:13', '', 0),
(11, 2, '83.000', 'Giao nhanh trong ngay', 'Hung Yen', '0964387230', 1, NULL, '2020-02-25 07:06:14', '', 0),
(12, 2, '62.000', 'Giao nhanh trong ngay', 'Hung Yen', '0964387230', 1, NULL, '2020-02-25 07:12:31', '', 0),
(14, 2, '75.000', 'Giao nhanh trong ngay', 'Hung Yen', '0964387230', 1, NULL, '2020-02-25 07:24:43', '', 0),
(15, 2, '75.000', 'Giao nhanh trong ngay', 'Hung Yen', '0964387230', 1, NULL, '2020-02-25 08:24:12', '', 0),
(16, 2, '83.000', 'Giao nhanh trong ngay', 'Hung Yen', '0964387230', 1, NULL, '2020-02-25 08:35:22', '', 0),
(17, 2, '950.000', 'Giao nhanh trong ngay', 'Hung Yen', '0964387230', 1, NULL, '2020-02-25 08:40:03', '', 0),
(18, 2, '1249.000', 'Giao nhanh trong ngay', 'Hung Yen', '0964387230', 1, NULL, '2020-02-27 10:02:49', '', 0),
(19, 2, '158.000', 'Giao nhanh trong ngay', 'Hung Yen', '0964387230', 1, NULL, '2020-02-27 10:09:27', '', 0),
(20, 3, '240.000', 'Giao nhanh trong ngay', 'Hung Yen', '0964387230', 1, NULL, '2020-02-28 07:23:50', '', 0),
(21, 13, '79.000', 'Giao nhanh trong ngay', 'Ha Noi', '0123456789', 1, NULL, '2020-03-14 14:00:35', '', 0),
(58, 13, '158.000', 'Giao nhanh trong ngay', 'Hung Yen', '0964387230', 0, NULL, NULL, 'Stripe', 0),
(59, 13, '159.000', 'Giao nhanh trong ngay', 'Hung Yen', '0964387230', 1, NULL, '2020-03-16 09:28:44', 'Stripe', 0),
(60, 14, '159.000', 'Giao nhanh trong ngay', 'Hung Yen', '0964387230', 1, NULL, '2020-03-16 09:25:02', 'Stripe', 0),
(61, 14, '203.000', 'Giao nhanh trong ngay', 'Hung Yen', '0964387230', 1, NULL, '2020-03-16 09:39:49', 'Stripe', 0),
(62, 12, '950.000', 'giao hang nhanh nha', 'Do', 'Hung', 0, NULL, NULL, 'COD', 0),
(63, 12, '950.000', 'giao hang nhanh nha', 'Do', 'Hung', 0, NULL, NULL, 'COD', 0),
(64, 12, '91.000', 'giao hang nhanh nha', 'Do', 'Hung', 0, NULL, NULL, 'Stripe', 0),
(65, 13, '96.640', 'Săn mãi mới đc cái coupon', 'Hưng Yên', '01354813604', 1, NULL, '2020-06-05 09:17:35', 'Stripe', 1),
(66, 12, '97.000', NULL, 'Hà Nội', '0964387230', 0, NULL, NULL, 'Stripe', 0),
(67, 13, '83.875', 'Săn mãi mới đc cái coupon', 'Hưng Yên', '0964387230', 0, NULL, NULL, 'COD', 0),
(68, 13, '67.680', NULL, 'Hưng Yên', '0964387230', 0, NULL, NULL, 'Stripe', 0),
(69, 13, '75.800', NULL, 'Hà Nội', '0964387230', 0, NULL, NULL, 'COD', 0),
(74, 13, '67.680', NULL, 'Hà Nội', '0964387230', 0, NULL, NULL, 'COD', 0),
(75, 14, '97.760', NULL, 'Hưng Yên', '01354813604', 0, NULL, NULL, 'COD', 0),
(76, 14, '107.480', NULL, 'Hưng Yên', '01354813604', 0, NULL, NULL, 'Stripe', 0),
(77, 12, '720.000', 'giao hang nhanh nha', 'Hà Nội', '0964387230', 0, NULL, NULL, 'COD', 0),
(78, 12, '105.500', NULL, 'Hà Nội', '0964387230', 1, NULL, '2020-06-18 08:32:46', 'COD', 1),
(79, 12, '100.000', NULL, 'Hà Nội', '0964387230', 1, NULL, '2020-06-20 05:01:10', 'COD', 1),
(80, 12, '160.000', NULL, 'Hà Nội', '0964387230', 1, NULL, '2020-06-18 02:57:55', 'COD', 0),
(81, 12, '87.500', NULL, 'Hà Nội', '0964387230', 0, NULL, NULL, 'COD', 0),
(82, 12, '74.270', NULL, 'Hà Nội', '0964387230', 0, NULL, NULL, 'COD', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `remember_token` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_seen_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `phone`, `address`, `remember_token`, `created_at`, `updated_at`, `code`, `time_code`, `user_image`, `provider_id`, `facebook_id`, `last_seen_at`) VALUES
(4, 'Do Manh Hung', 'hung.test1208@gmail.com', NULL, '$2y$10$lR4X4TgWkaxbU90Uc6K6kO.5FDA1PESsykR9.K458kcG9iuznnU2i', NULL, NULL, 'kJAKZ0zm5QWKqLOhJQsX4GeSluWQh0856cU7VuAb2Pwa8mTVcJR3vssidt0Z', '2020-02-11 03:14:08', '2020-02-11 07:18:42', 'ae2dedc920ca73fac8416933bfc10dbe', '2020-02-11 14:18:42', '', '', '', NULL),
(8, 'Đỗ Mạnh Hùng', 'kaup3pun45x@gmail.com', NULL, 'EAADq1eg65GwBAASn5mR8fswOCoZAZCVkZCdhBJIqrttPpRcpD8vnCKwZAXWPE9jmWq2lfbsZAkAXZC5E8EGH8aeQu4gyyYZCAFIrdPdlcwQ82TMYF2GOttifwQg7yTTg3RRL8stDdp5JjrzLyW9RsTHxyurXvC1dPswsZB1XkSmtlgZDZD', NULL, NULL, 'fPppo7nrDCMhsCAAp1BS6UlEk83eS58KLPCyYNKRdZbjAA08bMR06gwLRiNS', '2020-03-13 15:41:49', '2020-03-13 15:41:49', NULL, NULL, NULL, NULL, '1606076302882834', NULL),
(9, 'Nguyên Hưng', 'kaup3pun4@gmail.com', NULL, 'EAADq1eg65GwBAIz7eMvBxBdisnruwvQWZAfK5gGv6cHYZAwvK7xZAwQ6KpzjOdtcZBAgNGHHNPT6OGMkz8Qc8NMZCViuYd3kbZChru92ORBEEqlqfd9DwBLZAZAd5dfPHDZB2KhJjreMZB4zp2L5Cvj0l1j0AZCsbddRLzrxUUlDNwuOgZDZD', NULL, NULL, 'cqb8oxgxmnj1UsMI1Ct310h1DvEejokwpX9FwiTdAw3K0bAy6MqqjWogQgKs', '2020-03-14 01:49:23', '2020-03-14 01:49:23', NULL, NULL, NULL, NULL, '2504416253158325', NULL),
(12, 'Đỗ Mạnh Hùng', 'domanhhung812@gmail.com', NULL, 'd1880e529f94b1fc87266202e46c2854', '0964387230', 'Hà Nội', 'jROCe7HJacboRKlncUZM0CSZz4LqKTHjStVM62jK8VMVLWUcffcdD4EicjSm', '2020-03-14 12:50:11', '2020-06-22 02:47:13', NULL, NULL, '1592794033.jpg', '117246217030208240648', '', NULL),
(13, 'dương anh', 'upxuvuive4@gmail.com', NULL, '7dea7ca737fe7b3c3222b1b0d7a046b1', NULL, NULL, 'p9I3BXQtNfOAGG7ASY6vn9vLnosXpn2uF6svsdMXabgRm9TNiKuR7wVkjuqZ', '2020-03-14 12:54:27', '2020-03-14 12:54:27', NULL, NULL, NULL, '104173679209951527923', '', NULL),
(14, '天道', 'hoangtuchuayeu198@gmail.com', NULL, '4095d7ff80f348a7f010837a6560b654', '01354813604', 'Hưng Yên', 'bOvt3jwAgWosdde3L9SawlXMDErlYQcobctCqIzpqZq0aUTDUTx8e03cYfoS', '2020-03-16 09:11:43', '2020-06-05 03:01:10', NULL, NULL, '1591326070.jpg', '110845359206473876152', '', NULL),
(15, 'Đỗ Phương Anh', 'upxuvuive5@gmail.com', NULL, '$2y$10$LVTTukDza29Zw1EBQf..IuPgN.0OzoUYGFdI.3VC4.HlgelMobK66', NULL, NULL, 'ESdB19VSnoQmxI5DxdHuIbfsAAvSviN0kgMLy3AbdENy0aP2kx4HY5RrBuP0', '2020-06-25 04:44:48', '2020-06-25 04:44:48', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_favorite`
--

CREATE TABLE `user_favorite` (
  `uf_id` int(10) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favorite`
--

INSERT INTO `user_favorite` (`uf_id`, `uf_product_id`, `uf_user_id`, `created_at`, `updated_at`) VALUES
(1, 11, 12, NULL, NULL),
(6, 3, 12, NULL, NULL),
(22, 4, 12, NULL, NULL),
(24, 5, 12, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_b_name_unique` (`b_name`),
  ADD KEY `blogs_b_slug_index` (`b_slug`),
  ADD KEY `blogs_b_active_index` (`b_active`),
  ADD KEY `blogs_b_author_id_index` (`b_author_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_brand_name_unique` (`brand_name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD KEY `categories_cate_slug_index` (`cate_slug`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `colors_name_color_unique` (`name_color`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `gmaps_geocache`
--
ALTER TABLE `gmaps_geocache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_or_transaction_id_index` (`or_transaction_id`),
  ADD KEY `orders_or_product_id_index` (`or_product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_product_unique` (`name_product`),
  ADD KEY `products_id_brand_foreign` (`brands_id`),
  ADD KEY `products_pro_slug_index` (`pro_slug`);

--
-- Indexes for table `products_detail`
--
ALTER TABLE `products_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sizes_letter_size_unique` (`letter_size`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tr_user_id_index` (`tr_user_id`),
  ADD KEY `transactions_tr_status_index` (`tr_status`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_code_index` (`code`);

--
-- Indexes for table `user_favorite`
--
ALTER TABLE `user_favorite`
  ADD PRIMARY KEY (`uf_id`),
  ADD UNIQUE KEY `user_favorite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `c_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gmaps_geocache`
--
ALTER TABLE `gmaps_geocache`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `products_detail`
--
ALTER TABLE `products_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_favorite`
--
ALTER TABLE `user_favorite`
  MODIFY `uf_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
