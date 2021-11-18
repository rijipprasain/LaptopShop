-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2021 at 05:08 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(9, 13, 48, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Acer', 'laptops'),
(2, 'Dell', 'desktop-pc'),
(3, 'ASUS', 'tablets'),
(4, 'MSI', ''),
(7, 'HP', ''),
(9, 'Apple', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 2, 'DELL Inspiron 15 7000 15.6', '<p>15-inch laptop ideal for gamers. Featuring the latest Intel&reg; processors for superior gaming performance, and life-like NVIDIA&reg; GeForce&reg; graphics and an advanced thermal cooling design.</p>\r\n', 'dell-inspiron-15-7000-15-6', 899, 'dell-inspiron-15-7000-15-6.jpg', '2018-07-09', 2),
(3, 2, 'DELL Inspiron 15 5000 15.6', '<p>Dell&#39;s 15.6-inch, midrange notebook is a bland, chunky block. It has long been the case that the Inspiron lineup lacks any sort of aesthetic muse, and the Inspiron 15 5000 follows this trend. It&#39;s a plastic, silver slab bearing Dell&#39;s logo in a mirror sheen.</p>\r\n\r\n<p>Lifting the lid reveals the 15.6-inch, 1080p screen surrounded by an almost offensively thick bezel and a plastic deck with a faux brushed-metal look. There&#39;s a fingerprint reader on the power button, and the keyboard is a black collection of island-style keys.</p>\r\n', 'dell-inspiron-15-5000-15-6', 599, 'dell-inspiron-15-5000-15-6.jpg', '2018-05-12', 1),
(6, 2, 'DELL Inspiron 15 5000 15', '<p>15-inch laptop delivering an exceptional viewing experience, a head-turning finish and an array of options designed to elevate your entertainment, wherever you go.</p>\r\n', 'dell-inspiron-15-5000-15', 449.99, 'dell-inspiron-15-5000-15.jpg', '0000-00-00', 0),
(8, 3, 'ASUS Transformer Mini T102HA 10.1\" 2 in 1 - Silver', '<p>Versatile Windows 10 device with keyboard and pen included, 2-in-1 functionality: use as both laptop and tablet.Update Windows periodically to ensure that your applications have the latest security settings.</p>\r\n\r\n<p>All day battery life, rated up to 11 hours of video playback; 128GB Solid State storage. Polymer Battery.With up to 11 hours between charges, you can be sure that Transformer Mini T102HA will be right there whenever you need it. You can charge T102HA via its micro USB port, so you can use a mobile charger or any power bank with a micro USB connector.</p>\r\n', 'asus-transformer-mini-t102ha-10-1-2-1-silver', 549.99, 'asus-transformer-mini-t102ha-10-1-2-1-silver.jpg', '0000-00-00', 0),
(27, 2, 'Dell XPS 15 9560', '<p>The world&rsquo;s smallest 15.6-inch performance laptop packs powerhouse performance and a stunning InfinityEdge display &mdash; all in our most powerful XPS laptop. Featuring the latest Intel&reg; processors.</p>\r\n\r\n<h2>Operating system</h2>\r\n\r\n<p><strong>Available with Windows 10 Home&nbsp;</strong>- Get the best combination of Windows features you know and new improvements you&#39;ll love.</p>\r\n\r\n<h2>Innovation that inspires.</h2>\r\n\r\n<p>When you&rsquo;re at the forefront of ingenuity, you get noticed. That&rsquo;s why it&rsquo;s no surprise the XPS 15 was honored. The winning streak continues.</p>\r\n\r\n<h2>Meet the smallest 15.6-inch laptop on the planet.</h2>\r\n\r\n<p><strong>The world&rsquo;s only 15.6-inch InfinityEdge display*:</strong>&nbsp;The virtually borderless display maximizes screen space by accommodating a 15.6-inch display inside a laptop closer to the size of a 14-inch, thanks to a bezel measuring just 5.7mm.<br />\r\n&nbsp;<br />\r\n<strong>Operating System: Windows 10 Pro.</strong><br />\r\n<br />\r\n<strong>One-of-a-kind design:</strong>&nbsp;Measuring in at a slim 11-17mm and starting at just 4 pounds (1.8 kg) with a solid state drive, the XPS 15 is one of the world&rsquo;s lightest 15-inch performance-class laptop.</p>\r\n\r\n<h2>A stunning view, wherever you go.</h2>\r\n\r\n<p><strong>Dazzling detail:</strong>&nbsp;With the UltraSharp 4K Ultra HD display (3840 x 2160), you can see each detail of every pixel without needing to zoom in. And with 6 million more pixels than Full HD and 3 million more than the MacBook Pro, you can edit images with pinpoint accuracy without worrying about blurriness or jagged lines.<br />\r\n<br />\r\n<strong>Industry-leading color:</strong>&nbsp;The XPS 15 is the only laptop with 100% Adobe RGB color, covering a wider color gamut and producing shades of color outside conventional panels so you can see more of what you see in real life. And with over 1 billion colors, images appear smoother and color gradients are amazingly lifelike with more depth and dimension. Included is Dell PremierColor software, which automatically remaps content not already in Adobe RGB format for onscreen colors that appear amazingly accurate and true to life.<br />\r\n<br />\r\n<strong>Easy collaboration:</strong>&nbsp;See your screen from nearly every angle with an IGZO IPS panel, providing a wide viewing angle of up to 170&deg;.&nbsp;<br />\r\n<br />\r\n<strong>Brighten your day:</strong>&nbsp;With 350 nit brightness, it&rsquo;s brighter than a typical laptop.<br />\r\n<br />\r\n<strong>Touch-friendly:</strong>&nbsp;Tap, swipe and pinch your way around the screen. The optional touch display lets you interact naturally with your technology.</p>\r\n', 'dell-xps-15-9560', 1599, 'dell-xps-15-9560.jpg', '2018-07-09', 9),
(30, 1, 'Acer ASPIRE 7', '<ul>\r\n	<li>8th Gen Intel Core i7 8750H Six-Core 2.2 GHz 9MB Cache</li>\r\n	<li>16 GB DDR4 2666Mhz</li>\r\n	<li>256GB SSD + 1TB HDD</li>\r\n	<li>15.6-inch FHD (1920 x 1080) Anti-Glare LED-Backlit Display</li>\r\n	<li>NVIDIA&reg; GeForce&reg; GTX 1050 Ti with 4GB GDDR5 graphics</li>\r\n	<li>Backlit Keyboard</li>\r\n	<li>Windows 10 Home</li>\r\n</ul>\r\n', 'acer-aspire-7', 126800, 'acer-aspire-7.jpg', '2021-03-14', 1),
(31, 1, 'Acer Predator Helios 300 ', '<ul>\r\n	<li>10th Generation i7-10750H 6-Core Processor 12M Cache, up to 5.00 GHz</li>\r\n	<li>16GB DDR4 2933MHz Dual-Channel Memory</li>\r\n	<li>512GB NVMe SSD</li>\r\n	<li>15. 6&quot; Full HD (1920 x 1080) Widescreen LED-backlit IPS Display (144Hz Refresh Rate</li>\r\n	<li>NVIDIA GeForce RTX 2060 with 6 GB of dedicated GDDR6 VRAM</li>\r\n	<li>4-Zone RGB Backlit Keyboard</li>\r\n	<li>Windows 10 Genuine</li>\r\n</ul>\r\n', 'acer-predator-helios-300', 1200, 'acer-predator-helios-300.jpg', '0000-00-00', 0),
(32, 1, 'Acer Predator Triton 300 ', '<p>10th Generation Intel Core i7-10750H 6-Core Processor (Up to 5. 0GHz<br />\r\n16 GB Memory<br />\r\n512 GB PCIe SSD<br />\r\n15.6&quot; 1920 x 1080 IPS display with 240 Hz Refresh Rate, 3 ms Response Time, 300 nits Brightness, 100% sRGB<br />\r\nGeForce RTX 2070 Max-Q 8 GB GDDR6<br />\r\n4-Zone RGB Backlit Keyboard<br />\r\nWireless: Killer Double Shot Pro Wireless-AX 1650i 802. 11ax WiFi 6<br />\r\nLAN: Killer Ethernet E2600 10/100/1000 Gigabit Ethernet LAN<br />\r\nDTS X: Ultra Audio | 4th Gen All-Metal AeroBlade 3D Fan<br />\r\nWindows 10 64 BIT</p>\r\n', 'acer-predator-triton-300', 1300, 'acer-predator-triton-300.jpg', '0000-00-00', 0),
(33, 1, 'Acer Swift 3 2020', '<p>Acer Swift 3 SF314-57-56QV Intel Core&nbsp;i5-1035G1, 4GB DDR4 RAM, 256GB SSD, Intel UHD Graphic, 14-inch Full-HD Display, Backlight Keyboard&nbsp;</p>\r\n', 'acer-swift-3-2020', 850, 'acer-swift-3-2020.jpeg', '0000-00-00', 0),
(34, 1, 'Acer Swift 5 2020 ', '<p>Acer Swift 5 2020 SF314-57G-53QQ Intel Core&nbsp;i5-1035G1,&nbsp;NVIDIA GeForce MX350 2GB Dedicated Graphics, 4GB DDR4 RAM, 256GB SSD, 14-inch Full-HD Display, Backlight Keyboard</p>\r\n', 'acer-swift-5-2020', 850, 'acer-swift-5-2020.jpeg', '0000-00-00', 0),
(35, 1, 'Acer Nitro 5 Spin', '<p>Acer Nitro 5 spin Core&trade; i5-8250U 1TB HDD 8GB 15.6&quot; (1920x1080) Convirtible Touch BT WIN10 Webcam NVIDIA&reg; GTX 1050 4GB OBSIDIAN BLACK Backlit Keyboard</p>\r\n', 'acer-nitro-5-spin', 1000, 'acer-nitro-5-spin.jpg', '0000-00-00', 0),
(36, 1, 'Acer Spin 3 2020', '<p>Brand new factory-sealed Acer Spin 3 2020 SP314-54N-77L5 2-in-1 with 10th Gen Intel Core i7-1065G7 processor, 8GB LPDDR4x RAM, 512GB NVMe SSD storage, 14-inch IPS LCD TouchScreen Display with Full-HD (1920 x 1080 pixels) resolution, power-packed 2-in-1 laptop&nbsp;with a Rechargeable stylus, FP Reader, Backlit keyboard, 0.67&quot; thickness, 1.5KG weight, BT WIN10 Webcam PURE SILVER, Comes with 1 year warranty,&nbsp;<strong>Free</strong></p>\r\n', 'acer-spin-3-2020', 1200, 'acer-spin-3-2020.jpg', '0000-00-00', 0),
(37, 1, 'Acer Nitro 5 2020', '<p>Acer Nitro 5 2020 AN515-55 Intel Core i5-10300H, RTX 2060 6GB, 8GB RAM, 1TB HDD, 15.6&quot; FHD, Backlight Keyboard</p>\r\n', 'acer-nitro-5-2020', 900, 'acer-nitro-5-2020.jpg', '0000-00-00', 0),
(38, 1, 'Acer Nitro 5 2020 i7', '<p>Acer Nitro 5 2020 AN515-55 Intel Core i7-10300H, RTX 2060 6GB, 18GB RAM, 1TB HDD, 15.6&quot; FHD, Backlight Keyboard</p>\r\n', 'acer-nitro-5-2020-i7', 1600, 'acer-nitro-5-2020-i7.jpg', '0000-00-00', 0),
(39, 2, 'Dell Alienware M15 R3 i7 10th Gen', '<p>Dell Alienware M15 R3 Powerful Gaming Laptop with 10th Gen Intel Core i7-10750H Hexa-core processor, NVIDIA RTX 2070 SUPER Graphics Card with Ray Tracing Support, 16GB DDR4 RAM, 512GB SSD, 15.6-inch Full-HD (1920 x 1080 pixels) display with 300Hz Refresh Rate 3ms Response time and 100% sRGB Color Gamut,&nbsp;Alienware mSeries keyboard with per-key RGB LED AlienFX lighting,&nbsp;BT WIN10 Webcam, Dark Side of the Moon</p>\r\n', 'dell-alienware-m15-r3-i7-10th-gen', 3000, 'dell-alienware-m15-r3-i7-10th-gen.jpg', '0000-00-00', 0),
(40, 2, 'Dell XPS 13 7390 2-in-1 i7 10 Gen', '<p>Dell XPS 7390-7923SLV CONVERTIBLE 2-IN-1 Core&trade; i7-1065G7 1.3GHz 512GB SSD 16GB 13.4&quot; (1920x1200) TOUCHSCREEN BT WIN10 Webcam PLATINUM SILVER Backlit Keyboard FP Reader</p>\r\n', 'dell-xps-13-7390-2-1-i7-10-gen', 2500, 'dell-xps-13-7390-2-1-i7-10-gen.jpg', '0000-00-00', 0),
(41, 2, 'Dell Inspiron 5493 i5 10th Gen', '<p>Dell Inspiron 5493 10th Gen&nbsp;Intel Core i5-1035G1,&nbsp;NVIDIA GeForce MX230 2GB Dedicated Graphics, 8GB RAM, 512GB SSD, 14-inch Full-HD Display</p>\r\n', 'dell-inspiron-5493-i5-10th-gen', 800, 'dell-inspiron-5493-i5-10th-gen.jpeg', '0000-00-00', 0),
(42, 2, 'Dell XPS 13 7390 i7 10 GEN', '<p><strong>Dell XPS 13 7390: A true benchmark for the ultrabooks!</strong></p>\r\n\r\n<p><strong>&gt;&gt; Processor:</strong>&nbsp;The XPS 13 comes with a&nbsp;<strong>10th gen Core i7-10710U processor</strong>. Well, it may not offer the beastly performance for the pro gamers but does&nbsp;every daily task fluidly without any hiccups. You can spend hours on this laptop browsing the internet with numerous tabs open or&nbsp;even watch some movies without worrying about any sorts of lags. If you want a little less powerful then you can go with the&nbsp;<a href=\"https://itti.com.np/dell-xps-13-7390-core-i5-10-gen\" target=\"_blank\">i5 variant of Dell XPS 13</a>, which is also currently available at our store.</p>\r\n\r\n<p><strong>&gt;&gt; RAM</strong>: To aid you in multitasking, this&nbsp;<a href=\"https://itti.com.np/ultrabook-laptop-nepal\" target=\"_blank\">ultrabook</a>&nbsp;comes with&nbsp;<strong>16GB of DDR3 RAM</strong>&nbsp;(clocked at 1866MHz). So&nbsp;even while running multiple apps at once or switching between them, the laptop doesn&#39;t sigh with fatigue.</p>\r\n\r\n<p><strong>&gt;&gt; Storage</strong>: To let store&nbsp;your valued files and photos inside the laptop, Dell has offered a noteworthy&nbsp;<strong>512GB of SSD (PCIe)</strong>. So in addition to getting an ample amount of storage with this laptop, you will also be getting fast read/write speed.</p>\r\n\r\n<p><strong>&gt;&gt; Display:</strong>&nbsp;Dell XPS 13 7390 comes with a&nbsp;<strong>13.3-inch display</strong>. And this laptop, in particular, features&nbsp;<strong>4K&nbsp;(3840 x 2160&nbsp;pixels) resolution</strong>. Furthermore, the screen on this device promises&nbsp;<strong>100% sRGB color gamut</strong>. when it comes to brightness, the screen glows with a&nbsp;<strong>peak brightness of 415 nits</strong>. In addition to all this, you all get&nbsp;<strong>thin bezels</strong>&nbsp;around the screen, which makes its display absolutely immersive. Adding to all these niceties, you also get a&nbsp;<strong>TouchScreen display</strong>&nbsp;with this model.</p>\r\n\r\n<p><strong>&gt;&gt; Graphics Card:</strong>&nbsp;This laptop is not entirely&nbsp;devoid&nbsp;of GPU. There is an&nbsp;<strong>Intel UHD Graphics graphics card</strong>&nbsp;under the hood, which should handle most of your non-intensive GPU-related tasks.</p>\r\n\r\n<p><strong>&gt;&gt; Ports and&nbsp;Connections</strong>:&nbsp;Killer&trade; Wi-Fi 6 AX1650, 2 x 2,&nbsp;&nbsp;Bluetooth 5.0,&nbsp;2 Thunderbolt&trade; 3 with Power Delivery and DisplayPort,&nbsp;1 USB 3.1 Gen 1 Type C&trade; port with DisplayPort/Power Delivery,&nbsp;1 microSD-card reader, 1&nbsp;Universal audio port</p>\r\n\r\n<p><strong>&gt;&gt; Keyboard:&nbsp;</strong>The laptop comes with a&nbsp;Backlit Keyboard, which offers a solid typing&nbsp;experience.</p>\r\n\r\n<p><strong>&gt;&gt; Battery:</strong>&nbsp;You get a 4-cell 52Wh battery on this laptop. But don&#39;t let its size fool you, this laptop can go up to 9 hours straight, which includes watching movies, surfing the internet, and occasionally playing some audio tracks. So despite having a 4K resolution, the&nbsp;endurance on this laptop is pretty commendable.</p>\r\n\r\n<p><strong>&gt;&gt;&nbsp;Speaker</strong>: As for the audio front, there is a&nbsp;stereo speaker setup, which is&nbsp;professionally tuned with Waves MaxxAudio&reg; Pro. The speakers are sufficiently loud, so&nbsp;even while binge-watching with a small number of friends, you will find the audio adequate.&nbsp;</p>\r\n\r\n<p><strong>&gt;&gt; Dimensions:&nbsp;&nbsp;</strong>Height: 7.8-11.6mm (0.3-0.46&quot;) x Width: 302mm (11.9&quot;) x Depth: 199mm (7.8&quot;)</p>\r\n\r\n<p><strong>&gt;&gt; Weight</strong>: 1.23Kg (2.7 lbs)</p>\r\n\r\n<p><strong>&gt;&gt; Warranty and Assurance</strong>: You will get a brand&nbsp;<strong>new sealed pack unit&nbsp; (factory sealed)</strong>&nbsp;of this product with&nbsp;<strong>1-year of warranty</strong>.&nbsp;</p>\r\n', 'dell-xps-13-7390-i7-10-gen', 1600, 'dell-xps-13-7390-i7-10-gen.jpg', '0000-00-00', 0),
(43, 2, 'Dell Inspiron 7391 2-in-1 i7 10th Gen', '<p>Dell Inspiron 7391-7520BLK CONVERTIBLE 2-IN-1 Core&trade;<br />\r\ni7-10510U 1.8GHz 512GB SS+32GB Optane 16GB 13.3&quot; 4K<br />\r\n(3840x2160) TOUCHSCREEN BT WIN10 Webcam BLACK<br />\r\nBacklit Keyboard FP Reader</p>\r\n', 'dell-inspiron-7391-2-1-i7-10th-gen', 1800, 'dell-inspiron-7391-2-1-i7-10th-gen.jpg', '0000-00-00', 0),
(44, 2, 'Dell Vostro 7500 i7 10th Gen', '<p>Brand new Dell Vostro 7500 with 10th Gen Intel Core i7-10750H processor (Hexa-core CPU), NVIDIA GeForce GTX 1650 graphics card with 4GB of VRAM, 16GB DDR4 RAM, 512GB SSD Storage, 15.6-inch IPS display with Full-HD (1920 x 1080 pixels) resolution and 100% sRGB color gamut,&nbsp;Waves MaxxAudio Pro-tuned Stereo Speakers, 56-WattHour battery, 1.9KG Weight, 0.68-inch thickness</p>\r\n', 'dell-vostro-7500-i7-10th-gen', 1700, 'dell-vostro-7500-i7-10th-gen.jpg', '0000-00-00', 0),
(45, 2, 'Dell G5 15 SE 2020 Gaming Laptop Ryzen 7 ', '<p>Dell G5 15 SE 2020 5505-A753SLV Gaming Laptop with 4000-series AMD Ryzen 7 4800H, AMD Radeon RX 5600M, 8GB DDR4 RAM, 512GB SSD, 15.6-inch Full-HD (1920 x 1080 pixels) display with 144Hz refresh rate, BT WIN10 Webcam, SILVER Backlit Keyboard.</p>\r\n', 'dell-g5-15-se-2020-gaming-laptop-ryzen-7', 1580, 'dell-g5-15-se-2020-gaming-laptop-ryzen-7.jpg', '2021-03-14', 1),
(46, 2, 'Dell Inspiron 7490 i5 10th Gen', '<p>Brand new factory-sealed Dell Inspiron 7490 ultrabook with 10th Generation Intel Core i5-10210U processor, NVIDIA GeForce MX250 graphics card with 2GB of graphics memory, 8GB LPDDR3 RAM @ 2333GHz, 512GB SSD storage, 14-inch Full-HD (1920 x 1080 pixels) Non-Touch Display with 100% sRGB color coverage, 300 nits brightness, and Corning Gorilla Glass Protection, Dual Speaker setup tuned with Waves MaxxAudio Pro,&nbsp;<a href=\"https://itti.com.np/ultrabook-laptop-nepal\" target=\"_blank\">Thin and light ultrabook</a>&nbsp;with 0.59-inch thickness and 1.21KG Weight, Fingerprint Sensor&nbsp;</p>\r\n', 'dell-inspiron-7490-i5-10th-gen', 1250, 'dell-inspiron-7490-i5-10th-gen_1615710110.jpg', '0000-00-00', 0),
(47, 2, 'Dell Vostro 3401 i3 10th Gen', '<p>Dell Vostro 3401&nbsp;10th Generation Intel Core i3-1005G1 Processor, 4GB DDR4 RAM,&nbsp;1TB HDD Storage, 14-inch HD display, 36-WattHour battery, 1.64KG Weight, Dual speakers with tuned with Waves MaxxAudio, BT Webcam BLACK</p>\r\n', 'dell-vostro-3401-i3-10th-gen', 570, 'dell-vostro-3401-i3-10th-gen_1615710123.jpg', '0000-00-00', 0),
(48, 3, 'Asus ROG Strix Scar 15 2020', '<p>Asus ROG Strix Scar 15 2020 G532LV 10th Gen Octa-Core Intel Core i7-10875H, NVIDIA RTX 2060 Graphics Card with 6GB GDDR6 VRAM, 16GB RAM, 1TB NVMe PCIe 3.0 SSD, 15.6-inch Full-HD (1920 x 1080 pixels) 240Hz display, Per-Key Backlit Keyboard, 2 Years warranty, Asus Original Gaming Bag pack, Asus Original Gaming Mouse&nbsp;</p>\r\n', 'asus-rog-strix-scar-15-2020', 2400, 'asus-rog-strix-scar-15-2020.jpg', '2021-03-14', 1),
(49, 3, 'Asus Zephyrus G14 GA401IV', '<p>Brand new factory-sealed Asus Zephyrus G14 GA401IV Gaming Laptop with 4000-series AMD Ryzen 9 4900HS processor, 16GB DDR4 RAM, 1TB&nbsp;M.2 NVMe PCIe 3.0&nbsp;SSD Storage, NVIDIA GeForce RTX 2060 graphics card with 6GB of GDDR6 VRAM, 14-inch Full-HD (1920 x 1080 pixels) Display with 120Hz refresh rate with Adaptic Sync, 100% sRGB Pantone Validated Color Accuracy, Anime Matrix, thin (0.7&quot;) and light (1.6Kg)&nbsp;, 2 Years Warranty,&nbsp;<strong>Free Asus Original Zephyrus Sleeve and Gaming Mouse&nbsp;</strong></p>\r\n', 'asus-zephyrus-g14-ga401iv', 2200, 'asus-zephyrus-g14-ga401iv.jpg', '0000-00-00', 0),
(50, 3, 'ASUS ZENBOOK DUO -UX481', '<ul>\r\n	<li><strong>Primary Display</strong>: The major highlight of the device is its display. And as the name cues, it&rsquo;s got two screens at its disposal. The primary screen on this laptop employs a 14-inch TOUCH NanoEdge LCD display featuring Full-HD resolution. The ZenBook Duo is targeted at the content creators and its wide color cover (100% sRGB) readily cues that. On the top, the display has Pantone validation. The brightness and contrast level is also quite impressive here. And with a screen-to-body ratio of 90%, the display does look immersive.</li>\r\n	<li><strong>Secondary Display (ScreenPad+)</strong>: The secondary display aka ScreenPad+ is cramped on the top of the keyboard. Sized at 12.6-inch, the ScreenPad+ not just increases the working space but also lets you perform multiple tasks at the same time. Photographers, video editors, and music artists can take a great advantage from this secondary screen. Unlike the primary display, the ScreenPad+ is a touch screen and responds to Stylus. With Stylus, you can jot down notes and perform some artworks in a hassle-free manner. And the good thing is, the stylus comes inside the box.</li>\r\n	<li><strong>Processor</strong>: The laptop flaunts a 10th&nbsp;Gen Core i7-10510U processor, which is a decent performer. It can easily handle all sorts of apps you throw at it. Even if you have apps running on both of its screens, the laptop can handle the workload pretty easily. You can achieve a super-fluid cross-screen workflow.</li>\r\n	<li><strong>RAM:</strong>&nbsp;Because of its two screens, you can often find yourself multitasking between multiple apps at the same time. And to ensure fluid multitasking and smooth switching between apps, Asus has incorporated an ample 16GB of DDR4 RAM.</li>\r\n	<li><strong>Graphics Card:</strong>&nbsp;Since it is not a pro gaming laptop, you won&rsquo;t find a powerful GPU here. But that doesn&rsquo;t mean you can&rsquo;t perform any kind of graphics-related tasks. The laptop comes with NVIDIA GeForce MX250 graphics, which should handle low to medium-tier apps and games.</li>\r\n	<li><strong>Storage:</strong>&nbsp;Asus ZenBook Duo comes with 1TB of PCIe SSD at its disposal. With abundant storage, you are also getting a faster read/write speed here. So your storage hunger is pretty much covered.</li>\r\n	<li><strong>Audio</strong>: You get the Asus SonicMaster stereo audio system on this laptop tuned by Harmon Kardon. The side-firing speaker audio quality is pretty good. It&rsquo;s decently loud and produces a punchy sound.</li>\r\n	<li><strong>Battery:&nbsp;</strong>A 70Wh 4-cell battery keeps the device running. With the power-efficient processor and relatively non-demanding graphics card at the helm, the battery life is really impressive. Asus claims that you will get 15-hours of backup with both of your screens on.</li>\r\n	<li><strong>Keyboard and Trackpad</strong>: Keyboard and trackpad are accommodated on the bottom half of the laptop base beneath the ScreenPad+. So you don&rsquo;t get a trackpad beneath the keyboard like a regular laptop. It is adjusted beside the keyboard. The trackpad also doubles as a NumPad, you won&rsquo;t miss much here. The keyboard is good and offers a good typing experience. And with ErgoLift hinge at play, the keyboard raises by 4.5-degrees due to which typing can get really comfortable.</li>\r\n	<li><strong>Ports and Connections:&nbsp;</strong>Wi-Fi 6(Gig+) (802.11ax), Bluetooth 5.0 (Dual band) 2*2, 1x Headphone-out &amp; Audio-in Combo Jack; 1x HDMI; 2x USB3.1 Type A (Gen2); 1x USB3.1-Type C (Gen2) with Thunderbolt</li>\r\n	<li><strong>Dimensions:&nbsp;</strong>323 x 223 x 19.9 mm (12.72&quot; x 8.78&quot; x 0.78&quot;);&nbsp;<strong>Weight:&nbsp;</strong>1.5Kg</li>\r\n</ul>\r\n', 'asus-zenbook-duo-ux481', 2150, 'asus-zenbook-duo-ux481.jpg', '0000-00-00', 0),
(51, 3, 'ASUS ZenBook 15 UX534FTC', '<p>ASUS ZenBook 15 UX534FTC 10th Gen Core i7, 16GB Ram ,1TB SSD, 15.6 Nano Edge FHD LED, Nvidia GTX1650 4 GB, GENUINE WIN 10, 2 years Warranty, BACKPACK, Mouse, BLUE METAL, Fast Charge, Anti-Glare, SCREENPAD 2.0</p>\r\n', 'asus-zenbook-15-ux534ftc', 2070, 'asus-zenbook-15-ux534ftc.jpg', '0000-00-00', 0),
(52, 3, 'Asus Zephyrus G14 GA401IU', '<p>Asus Zephyrus G14 GA401 Gaming Laptop Ryzen 7 4800HS, 16GB RAM, 512GB SSD, GTX 1660ti, 14&quot; 120Hz FHD Display, Anime Matrix, thin (0.7&quot;) and light (1.6Kg) portable gaming laptop, 2 Year warranty, Asus Original Zephyrus Sleeve and Gaming Mouse&nbsp;</p>\r\n', 'asus-zephyrus-g14-ga401iu', 2000, 'asus-zephyrus-g14-ga401iu.jpg', '0000-00-00', 0),
(53, 3, 'Asus ZenBook 14 UX435EG', '<p>New and genuine Asus ZenBook 14 UX435EG with 11th gen Intel Core i7-1165G7 processor, NVIDIA GeForce MX450 graphics card with 2GB of GDDR6 VRAM, 16GB LPDDR4x 4266MHz RAM, 512GB NVMe SSD Storage, 14-inch IPS LCD TouchScreen display with Full-HD (1920 x 1080 pixels) resolution, 72% NTSC Color Gamut (Color accuracy close to 100% sRGB), a&nbsp;<a href=\"https://itti.com.np/ultrabook-laptop-nepal\" target=\"_blank\">standout ultrabook</a>&nbsp;with ScreenPad as the secondary screen featuring&nbsp;5.65-inch FHD+ (2160 x 1080 pixels) Super IPS display,&nbsp;3D IR HD WebCam for secure face unlocking, Genuine Windows 10 OS, Backlit keyboard, 2 years warranty, free&nbsp;<a href=\"https://itti.com.np/electronics/safety-protection/sleeve-cases\" target=\"_blank\">sleeve case</a>&nbsp;and&nbsp;<a href=\"https://itti.com.np/electronics/accessories/mouse\" target=\"_blank\">mouse</a></p>\r\n', 'asus-zenbook-14-ux435eg', 1760, 'asus-zenbook-14-ux435eg.jpg', '0000-00-00', 0),
(54, 3, 'Asus ZenBook Flip 13 UX363EA ', '<p>Brand new factory-sealed Asus ZenBook Flip 13 UX363EA (Asus ZenBook Flip 13 2021) with 11th Gen Intel Core i7-1165G7, 16GB LPDDR4X RAM, 512GB PCIe Gen 3 SSD Storage, 13.3-inch OLED display with Full-HD (1920 x 1080 pixels) resolution, Pantone validated 100% DCI-P3 Color gamut, 400 nits brightness, 360-degree Touchscreen display with Stylus Support, a feature-packed 2-in-1 convertible with Magic NumPad, 0.55-inch thickness and 1.3Kg weight, sizable 67Whr battery, Free&nbsp;<a href=\"https://itti.com.np/electronics/safety-protection/sleeve-cases\" target=\"_blank\">Sleeve case</a>,&nbsp;<a href=\"https://itti.com.np/electronics/accessories/mouse\" target=\"_blank\">Mouse</a>, comes with 2 Years of Warranty</p>\r\n', 'asus-zenbook-flip-13-ux363ea', 1750, '', '2021-03-14', 1),
(55, 3, 'Asus ROG Strix G15 G512LI', '<p>Asus ROG Strix G15 G512LI-HN170T Gaming Laptop Core with i7-10750H, GTX 1650Ti, 15.6-inch 144Hz 100% sRGB display, 8GB RAM, 512GB SSD, 2 Years Warranty, Asus Original Gaming Bag pack, Asus Original Gaming Mouse&nbsp;</p>\r\n', 'asus-rog-strix-g15-g512li', 1680, '', '0000-00-00', 0),
(56, 4, 'MSI CREATOR 15 A10SFS', '<p>MSI Creator 15 A10SFS i7 10th Gen Core i7-10875H, RTX 2070 SUPER MAX-Q, 15.6&quot; 4K UHD (3840 x 2160 pixels), 32GB RAM. 1TB SSD</p>\r\n', 'msi-creator-15-a10sfs', 4200, 'msi-creator-15-a10sfs.png', '0000-00-00', 0),
(57, 4, 'MSI GS66 Stealth 10SFS Thin ', '<p>MSI GS66 Stealth 10SFS 10Th Gen Core i7-10750H, RTX 2070 Super MAX-Q, 15.6&quot; 300Hz Display, 32GB RAM, 1TB SSD</p>\r\n', 'msi-gs66-stealth-10sfs-thin', 3860, 'msi-gs66-stealth-10sfs-thin.png', '0000-00-00', 0),
(58, 4, 'MSI GE66 Raider 10SFS', '<p>MSI GE66 Raider 10SFS 10Th Gen Core i9-10980HK, RTX 2070 Super, 15.6&quot; 240Hz display, 16GB RAM, 1TB SSD</p>\r\n', 'msi-ge66-raider-10sfs', 3700, 'msi-ge66-raider-10sfs.png', '0000-00-00', 0),
(59, 4, 'MSI GE75 RAIDER ', '<p>MSI GE75 RAIDER Core&trade; i7-9750H 2.6GHz 512GB SSD 32GB 17.3&quot; (1920x1080) 144Hz BT WIN10 Webcam NVIDIA&reg; RTX 2080 8192MB Backlit Keyboard</p>\r\n', 'msi-ge75-raider', 3200, '', '0000-00-00', 0),
(60, 4, 'MSI GS66 Stealth 10SD Thin i7 10TH GEN / GTX 1660Ti / 15.6\" FHD 144 Hz / 16GB RAM / 512GB SSD', '<p>MSI GS66 Stealth 10SD 10Th Gen Core i7-10750H, GTX 1660Ti, 15.6&quot; 144Hz Display, 16GB RAM, 512GB SSD, 2 Years Warranty, MSI Original AIR Gaming Bagpack</p>\r\n', 'msi-gs66-stealth-10sd-thin-i7-10th-gen-gtx-1660ti-15-6-fhd-144-hz-16gb-ram-512gb-ssd', 2950, 'msi-gs66-stealth-10sd-thin-i7-10th-gen-gtx-1660ti-15-6-fhd-144-hz-16gb-ram-512gb-ssd.png', '0000-00-00', 0),
(61, 4, 'MSI GS75 STEALTH ', '<p>MSI GS75 STEALTH Core&trade; i7-9750H 2.6GHz 1TB SSD 16GB 17.3&quot; (1920x1080) 144Hz BT WIN10 Webcam NVIDIA&reg; RTX 2070 8192MB MATTE BLACK GOLD DIAMOND CUT Backlit Keyboard</p>\r\n', 'msi-gs75-stealth', 2800, 'msi-gs75-stealth.jpg', '0000-00-00', 0),
(62, 4, 'MSI GP65 Leopard 10SFK ', '<p>MSI GP65 Leopard 10SFK 10Th Gen Core i7-10750H, RTX 2070, 15.6&quot; 144Hz display, 1TB HDD, 512GB SSD, 32GB RAM</p>\r\n', 'msi-gp65-leopard-10sfk', 2700, 'msi-gp65-leopard-10sfk.png', '0000-00-00', 0),
(63, 4, 'MSI Summit E15 A11SCS', '<p>MSI Summit E15 A11SCS-207 with 11th Gen Intel Core i7-1185G7 processor, NVIDIA GTX 1650Ti Max-Q Graphics card with 4GB of GDDR6 VRAM, 16GB RAM (Expandable up to 64GB), 1TB&nbsp;NVMe PCIe Gen4&nbsp;SSD Storage, 15.6-inch display with Ultra-HD (3840 x 2160&nbsp;pixels) resolution and 100% Adobe RGB Color Coverage, 82WHr Lithium-Polymer battery with up to 16 hours of battery life, 16.9mm thin, 1.65KG weight, BT Webcam, Space Gray</p>\r\n', 'msi-summit-e15-a11scs', 2900, 'msi-summit-e15-a11scs.jpg', '0000-00-00', 0),
(64, 4, 'MSI Bravo 15 A4DDR', '<p>MSI Bravo 15 A4DDR AMD Ryzen 7 4800H processor,&nbsp;AMD RX5500M graphics card with 4GB of GDDR6 VRAM, 8GB RAM, 512GB SSD, 15.6-inch Full-HD 144Hz display</p>\r\n', 'msi-bravo-15-a4ddr', 1550, 'msi-bravo-15-a4ddr.png', '0000-00-00', 0),
(65, 7, 'HP Pavilion Power 15', '<p>HP Pavilion Power 15-DK0056 Gaming Laptop with powerful 9th Gen Intel Core i5-9300H, NVIDIA GTX 1650, 8GB DDR4 RAM, 256GB SSD, 15.6-inch Full-HD (1920 x 1080 pixels) display, BT WIN10 Webcam Backlit Keyboard.</p>\r\n', 'hp-pavilion-power-15', 1000, 'hp-pavilion-power-15.jpg', '0000-00-00', 0),
(66, 7, 'HP Spectre 15 x360', '<p>HP Spectre 15 x360 Convertible Core&trade; i7-10510U 1.8GHz 512GB SSD+32GB Optane Drive 16GB 15.6&quot; 4K (3840x2160) GORILLA TOUCHSCREEN BT WIN10 IR Camera NVIDIA&reg; MX250 2048MB DARK ASH SILVER Backlit Keyboard FP Reader</p>\r\n', 'hp-spectre-15-x360', 2250, 'hp-spectre-15-x360.jpg', '0000-00-00', 0),
(67, 7, 'HP Spectre 13 ', '<p>HP Spectre 13-AW0013 x360 2-IN-1 Core&trade; i7-1065G7 1.3GHz 512GB SSD 8GB 13.3&quot; (1920x1080) GORILLA TOUCHSCREEN BT WIN10 IR Camera NATURAL SILVER Backlit Keyboard FP Reader .7&quot; thin, 2.87 lbs.. 1 Year Warranty</p>\r\n', 'hp-spectre-13', 1800, 'hp-spectre-13.jpg', '0000-00-00', 0),
(68, 7, 'HP Omen 15 2020 ', '<p>HP Omen 15 2020 15-EN0023 Gaming laptop with 4000-series AMD Ryzen 7 4800H, NVIDIA GTX 1660Ti Graphics Card with 6GB of VRAM, 16GB RAM, 1TB SSD,&nbsp;15.6-inch Full-HD (1920 x 1080 pixels) display, BT WIN10 Webcam,&nbsp;MICA SILVER Backlit Keyboard</p>\r\n', 'hp-omen-15-2020', 1200, 'hp-omen-15-2020.jpg', '0000-00-00', 0),
(69, 7, 'HP OMEN 2019', '<p>HP OMEN Gaming Laptop 2019 i7 8TH GEN 9750H, 16GB RAM, 1TB HDD, 256GB SSD, RTX 2060 6GB, 15.6&quot; FHD 14Hz, Backlight Keyboard</p>\r\n', 'hp-omen-2019', 1000, 'hp-omen-2019.png', '0000-00-00', 0),
(70, 7, 'HP Envy 13 2020', '<p>HP Envy 13 2020 x360 Ultra-Thin 2-in-1 convertible laptop with 10th Gen Intel Core i7-1065G7, 8GB RAM, 512GB SSD, 13.3-inch 4K Ultra-HD (3840 x 2160 pixels) TouchScreen Display, BT WIN10, Webcam, Silver Backlit Keyboard, FP Reader</p>\r\n', 'hp-envy-13-2020', 1200, 'hp-envy-13-2020.jpg', '0000-00-00', 0),
(71, 7, 'HP Envy x360 13M', '<p>HP Envy x360 13M-BD0023 11th Gen Intel Core i7-1165G7 processor,&nbsp;Intel Iris Xe Graphics,&nbsp;8GB DDR4 RAM, 512GB SSD storage, 13.3-inch IPS display with Full-HD (1920 x 1080 pixels) resolution, 1000nits brightness, 72% NTSC Color Gamut (Color coverage close to 100% sRGB), 360-degree TouchScreen panel, BT WIN10 Webcam PALE GOLD Backlit Keyboard</p>\r\n', 'hp-envy-x360-13m', 1450, 'hp-envy-x360-13m.jpg', '0000-00-00', 0),
(72, 7, 'HP Pavilion X360', '<p>HP Pavilion x360 14M-DW0013 2-IN-1 Core&trade; i3-1005G1 1.2GHz 128GB SSD 8GB 14&quot; (1366x768) TOUCHSCREEN BT WIN10 Webcam LUMINOUS GOLD</p>\r\n', 'hp-pavilion-x360', 800, 'hp-pavilion-x360.jpg', '0000-00-00', 0),
(73, 7, 'HP ProBook x360', '<p>HP ProBook x360 11 G3 EE Notebook PC and&nbsp;<a href=\"https://itti.com.np/2-in-1-laptops\" target=\"_blank\">super-affordable 2-in-1 convertible laptop</a>&nbsp;with Intel Celeron N4100 processor, Up to 2.4GHz frequency, Intel UHD Graphics 600, 4GB DDR4 RAM, 128GB SATA-3 TLC Solid State Drive, 11.6-inch Touch-enabled IPS display, 1366 x 768 pixels resolution, 360-degree TouchScreen display,&nbsp;HP Long Life 3-cell 48 Wh Li-ion battery, battery charges up to 90% in 90 minutes,&nbsp;Dual speakers, 0.78-inch thickness, 1.44Kg Weight,&nbsp; BT WIN10 Pro Webcam BLACK</p>\r\n', 'hp-probook-x360', 400, 'hp-probook-x360.jpg', '0000-00-00', 0),
(74, 9, 'Apple Macbook Pro 13.3', '<p>Apple Macbook Pro Mid 2020 13.3&quot; Retina Display Touch Bar and Touch ID 2.0GHz Quad-Core Processor 16GB RAM 512GB SSD Storage</p>\r\n', 'apple-macbook-pro-13-3', 2600, 'apple-macbook-pro-13-3.jpg', '0000-00-00', 0),
(75, 9, 'Apple M1 MacBook Air 2020', '<p>Brand new factory-sealed Apple M1 MacBook Air 2020 13.3&quot; Retina Display with 400nits brightness and P3 color gamut, first-generation Apple M1 Chip, Octa-core (8-core) CPU with 4&nbsp;perform&shy;ance cores and 4&nbsp;efficiency cores, 7-core GPU, 16-core Neural&nbsp;Engine, 8GB unified Memory, 256GB SSD Storage, Stereo speakers, FacTime HD Camera, Backlit Magic Keyboard, Up to 18 hours of battery life, 0.63-inch, 1.29KG Weight&nbsp;&nbsp;</p>\r\n', 'apple-m1-macbook-air-2020', 1600, 'apple-m1-macbook-air-2020.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Rjip', 'Prasain', '', '', 'rijip.jpg', 1, '', '', '2018-05-01'),
(13, 'sabingautam@gmail.com', '$2y$10$R4iTen1tmQ3rl69jIHZdZutS9ruccAdC0ZQxhCfh8lXP83H9YnJZ.', 0, 'Sabin', 'Gautam', 'SrijanaNagar', '9800000000', 'male2.png', 1, '', '', '2021-03-14'),
(14, 'khalid@gmail.com', '$2y$10$CBbQxAe9T7vaWeg2e66RcO4TwY6NsnWeU7X7JAv9nMGBERqKFWS62', 0, 'DJ', 'Khalid', 'US', '9801655041654', 'profile.jpg', 1, '', '', '2021-03-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
