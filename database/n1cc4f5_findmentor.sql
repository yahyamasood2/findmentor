-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 28, 2022 at 06:17 AM
-- Server version: 10.3.35-MariaDB-log
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `n1cc4f5_findmentor`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing_info`
--

CREATE TABLE `billing_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billing_info`
--

INSERT INTO `billing_info` (`id`, `payment_id`, `first_name`, `last_name`, `phone`, `address`, `country`, `state`, `city`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Shahzaib', 'Siddiqui', '03472236570', 'My new Test Address', 'Pakistan', 'Sindh', 'Karachi', '75400', '2021-07-12 03:50:35', '2021-07-12 03:50:35', NULL),
(2, 2, 'Shahzaib', 'Siddiqui', '03472236570', 'My new Test Address', 'Pakistan', 'Sindh', 'Karachi', '75400', '2021-07-12 03:50:35', '2021-07-12 03:50:35', NULL),
(3, 3, 'Shahzaib', 'Siddiqui', '03472236570', 'My new Test Address', 'Pakistan', 'Sindh', 'Karachi', '75400', '2021-07-12 03:51:54', '2021-07-12 03:51:54', NULL),
(4, 6, 'Shahzaib', 'Siddiqui', '03472236570', 'My new Test Address', 'Pakistan', 'Sindh', 'Karachi', '75400', '2021-08-17 03:31:43', '2021-08-17 03:31:43', NULL),
(5, 7, 'Shahzaib', 'Siddiqui', '03472236570', 'test', 'Pakistan', 'Sindh', 'Karachi', '75400', '2021-08-17 03:32:19', '2021-08-17 03:32:19', NULL),
(6, 8, 'Shahzaib', 'Siddiqui', '03472236570', 'My new Test Address', 'Pakistan', 'Sindh', 'Karachi', '75400', '2021-09-01 07:54:47', '2021-09-01 07:54:47', NULL),
(7, 9, 'Shahzaib', 'Siddiqui', '03472236570', 'My new Test Address', 'Pakistan', 'Sindh', 'Karachi', '75400', '2021-09-01 08:04:33', '2021-09-01 08:04:33', NULL),
(8, 10, 'dsfsdf', 'dfsf', '03237564330', 'dsfsfsdfdsf', 'Pakistan', 'Other', 'TORONTO', '546564', '2021-09-09 09:54:56', '2021-09-09 09:54:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `description`, `post`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Changes in teacher reviews [Fighting fake reviews]', NULL, '<p>Reviews are important. What&#39;s even more important is that the reviews are genuine so students can trust the teachers and the website.</p>\r\n\r\n<p>If you can&#39;t trust reviews on a website, there is no point in having a review system.</p>\r\n\r\n<p>That&#39;s why we are changing how teachers get reviews.&nbsp;</p>\r\n\r\n<h2>[Summary] What are the changes?</h2>\r\n\r\n<ul>\r\n	<li>Students will be able to review a teacher only if that student paid that teacher through us.&nbsp;</li>\r\n	<li>Existing reviews from students who haven&#39;t paid that teacher through us will not be displayed.\r\n	<ul>\r\n		<li>Hidden reviews will not count towards the aggregate rating.</li>\r\n		<li>If a student pays a teacher, we will link any existing review from that student with that payment and show that review.</li>\r\n		<li>If a student reviewed a teacher but didn&#39;t make payment&nbsp;</li>\r\n	</ul>\r\n	</li>\r\n	<li>We will show the total amount that the student paid to the teacher with the review.</li>\r\n</ul>\r\n\r\n<h2>Why we allowed anybody to review teachers?</h2>\r\n\r\n<p>So far, we allowed anybody to review teachers without verifying the payment as we wanted input from the most students possible.</p>\r\n\r\n<ul>\r\n	<li>We didn&#39;t want to make teachers feel that we were forcing them to&nbsp;<a href=\"../get-paid\" target=\"_blank\">take payments through us</a>&nbsp;(and pay a 15% fee).</li>\r\n	<li>Teachers in some countries still can&#39;t get paid through us. So those teachers won&#39;t be able to get reviews at all.</li>\r\n	<li>Not all students can pay online.&nbsp;</li>\r\n</ul>\r\n\r\n<h2>Why are we making this change?</h2>\r\n\r\n<p>Since anybody could review, tutors got many fake reviews - negative reviews from the competitors and positive reviews from friends or fake accounts.</p>\r\n\r\n<p>This problem started small - with a few fake reviews a week. Within a year, it became a full-blown epidemic with hundreds of fake reviews a day.&nbsp;</p>\r\n\r\n<p>What really broke my heart while investigating these fake reviews is that it wasn&#39;t just some bad apples who were doing these things. Many genuine teachers who have a history of doing good work were also involved.&nbsp;</p>\r\n\r\n<h2>$5 reviews</h2>\r\n\r\n<p>The &quot;Payment Verified&quot; label in a review helps gives it credibility. To get that, some teachers just got the minimum amount ($5 or equivalent). Some of these payments/reviews were fake.&nbsp;But there is no way to be sure, so all of these reviews remained public.</p>\r\n\r\n<p>So...&nbsp;</p>\r\n\r\n<p>We will do what we usually do when unsure about how to handle ambiguous data - we make the data transparent - for everybody to see.&nbsp;&nbsp;</p>\r\n\r\n<p><strong>We will start displaying the total amount that a tutor received with their review,</strong>&nbsp;thus allowing new students to judge whether&nbsp;all those minimum payment reviews are genuine (or not).</p>\r\n\r\n<h2>Advantages of the new system</h2>\r\n\r\n<p>In addition to saving us from massive headaches, these changes have the following advantages for teachers:</p>\r\n\r\n<ul>\r\n	<li>This will&nbsp;eliminate fake reviews.</li>\r\n	<li>Teachers who have positive reviews get more students, and teachers with the &quot;Payment verified&quot; label even more so.<br />\r\n	<strong>The positive impact of&nbsp;showing the total payment from students&nbsp;will be even more pronounced for genuine teachers.</strong></li>\r\n	<li>Increased transparency and trust among students will bring in more students through referrals, growing business for all teachers.</li>\r\n	<li>Reviews due to petty disputes and disagreements will cease altogether.</li>\r\n</ul>\r\n\r\n<h2>Problems with the new system</h2>\r\n\r\n<ul>\r\n	<li>Some&nbsp;students won&#39;t&nbsp;be able to give genuine reviews.</li>\r\n	<li>Many existing genuine positive reviews will be hidden.</li>\r\n	<li>Many genuine negative reviews will be removed, which may result in a bad experience for students.</li>\r\n	<li>Not all teachers will be comfortable sharing the payment data with the world for privacy reasons. If you are one of those teachers, please ask your students to remove the reviews.&nbsp;</li>\r\n</ul>\r\n\r\n<p>These are just those problems that we know. If we haven&#39;t considered anything, please contact us.&nbsp;</p>\r\n\r\n<h2>Why we are still making this change despite all these problems</h2>\r\n\r\n<p>The advantages of the new system outweigh any issues that come with it.&nbsp;</p>\r\n\r\n<p>Even though this change means fewer reviews, the reviews that we will have will be genuine and transparent - thus more trustable.</p>', '2021-07-02 01:52:17', '2021-07-07 03:47:13', NULL),
(2, 1, 'Physics of shooting in a bike chase', NULL, '<p>Here&#39;s a fairly common scene in a lot of action movies:&nbsp;</p>\r\n\r\n<p>A hero (usually male) is riding a bike (a fancy one) very fast while being chased by bad people. These goons aren&#39;t just chasing him, but they are also firing bullets at him.&nbsp;Our hero ducks to dodge the bullet and miraculously dodges every bullet fired his way.&nbsp;</p>\r\n\r\n<p>There is a flaw in this picture:&nbsp;</p>\r\n\r\n<p>Even if we assume&nbsp;our hero has superhuman reflexes,&nbsp;it&#39;s still not possible to dodge bullets just by the sound of the gun.</p>\r\n\r\n<p>Why?</p>\r\n\r\n<p>Bullets travel faster than sound. Assuming our hero ducks instantaneously (no lag) after hearing the sound, it&#39;s still pointless as...</p>\r\n\r\n<p>When the hero ducks to dodge the bullet after hearing the sound, that bullet has either already passed him or hit him before he heard them fire.</p>\r\n\r\n<p>So a&nbsp;hero who knows Physics will just be thankful that the sound he heard hasn&#39;t already killed him.</p>', '2021-07-02 03:52:11', '2021-07-02 03:52:11', NULL),
(3, 1, 'Online Teaching Guide', NULL, '<h1>How to teach online - Comprehensive guide for teachers</h1>\r\n\r\n<p>I receive many queries regarding online teaching often asking&nbsp;questions similar to what I already answered hundreds of times. To help more people without having to repeat, I compiled all the questions and some more to make a comprehensive guide to online teaching which I hope will help many teachers who are new or unaware of this. This guide is not an end in itself but is an excellent starting point. If you are an experienced online teacher and have any feedback or additions, please feel free to contact/comment for the same.</p>\r\n\r\n<h2>What is online teaching?</h2>\r\n\r\n<p>For the purpose of this guide, Online teaching is the practice of teaching to an individual or a group online. Basically, it&#39;s live-real time-instruction where teacher and student(s) are in different locations. What that means is that you can teach anyone anywhere from the comfort of your home.&nbsp;</p>\r\n\r\n<p>There has never been a better time to teach online. Awareness of online learning options is increasing every day. As more people join&nbsp;the internet&nbsp;with&nbsp;ever-improving&nbsp;internet connections,&nbsp;there&nbsp;is no end to where this opportunity would stop.</p>\r\n\r\n<h2>Who can teach online?</h2>\r\n\r\n<p>To be an online teacher, you need the following minimum:</p>\r\n\r\n<ol>\r\n	<li>You should have or be willing to learn&nbsp;basic computer skills.</li>\r\n	<li>A good internet connection and a computer/laptop</li>\r\n	<li>Command of the subject you are going to teach.</li>\r\n	<li>Digital pen (optional, discussed below)</li>\r\n</ol>\r\n\r\n<h2>How much can I earn?</h2>\r\n\r\n<p>That question makes sense when someone is employing you. If a company is hiring you directly, you should ask them. If however, you work independently, then it works the same way as it worked before the internet:</p>\r\n\r\n<p><strong>You charge as much as you want.</strong></p>\r\n\r\n<p>Teachers registered in findmentor.com&nbsp;charge from less than $1 to over $100 per hour. Everyone charges based on their skills, living standard, the country they are in, existing clientele, and the demand for their particular skill.</p>\r\n\r\n<p>If you are not sure what to charge, start from the minimum, and increase gradually with experience.&nbsp;</p>\r\n\r\n<h2>What are the timings?</h2>\r\n\r\n<p>Unless you are employed by a company, you can decide the timing yourself. Since online teaching is global and different individuals have different preferences, you should talk to the students and come to an agreement regarding the time that suits you and the student. I know teachers who go on a trip&nbsp;and take their laptop with them, enjoy during the day and teach from their hotel room at night.</p>\r\n\r\n<h2>Typing prowess</h2>\r\n\r\n<p>Given that most of us will spend a big chunk of our lives typing, it makes sense to learn to type fast. The need becomes even more urgent if you want to teach online. The proper way to type is to touch type i.e. typing without looking at the keyboard.&nbsp;It took me about one month, one hour per day, to learn to type at pro speeds. I used typing master software. Now you can use typing software like&nbsp;<a href=\"https://www.typingbolt.com/\" target=\"_blank\">Typingbolt</a>.</p>\r\n\r\n<h2>How to teach online?</h2>\r\n\r\n<p>There are various tools available to teach online, free, and paid. If you don&#39;t want to spend money initially, you can just use the free tools as they work almost as well.</p>\r\n\r\n<h3>Skype</h3>\r\n\r\n<p>Skype is my favorite go-to tool. Why?<br />\r\nIt&#39;s free,&nbsp;has millions of users, has screen sharing and video calling in addition to audio calls. Its sound quality is better than most other services, free or paid.</p>\r\n\r\n<p>Here are some tips to use Skype&nbsp;in addition to the usual calling features which will help you in the session:</p>\r\n\r\n<ul>\r\n	<li><strong>Skype test call or Echo/Sound&nbsp;</strong><strong>Test</strong><strong>&nbsp;service:</strong>&nbsp;This is the default contact in your Skype. At times when you call someone, you can&#39;t hear them or they can&#39;t hear you. The problem can be in the audio of either. It&#39;s easier to test with Skype test call. It takes less than a minute and tells whose system is at fault.</li>\r\n	<li><strong>Share screen:</strong>&nbsp;In case you want to show the student something on your screen or see what they are doing on theirs, this feature is located in the toolbar of the ongoing call.<br />\r\n	<img alt=\"\" src=\"https://blogassets2.teacheron.com/skype-screen-share.png\" style=\"height:407px; width:629px\" /><br />\r\n	<br />\r\n	What you should know is that even though your screen is shared, the viewer can&#39;t do anything on your screen. They can just watch your screen like a movie. To enable others to do stuff on your computer we can use TeamViewer which I will discussed later.<br />\r\n	&nbsp;</li>\r\n	<li><strong>Send files:&nbsp;</strong>You can send files by using the option in the chat menu or by simply dragging the file in the chat window.<br />\r\n	<img alt=\"\" src=\"https://blogassets2.teacheron.com/skype-send-files.png\" style=\"height:125px; width:629px\" /></li>\r\n</ul>\r\n\r\n<h3>TeamViewer</h3>\r\n\r\n<p>I am in love with this software. It&#39;s easy to install and convenient to use. If you use skype screen sharing, you might notice that at times the video hangs while the audio is still working. For a reliable screen sharing experience, I use Teamviewer. Teamviewer also allows you to give control to the other party so they can work on your system. This feature comes in handy for things that can&#39;t be done on a whiteboard, for example, if you are showing someone how to work on PowerPoint or teaching web development, you will need screen sharing with control.</p>\r\n\r\n<h3>Online whiteboards</h3>\r\n\r\n<p>Online whiteboards are just like the blackboards and whiteboards we use in a physical classroom. They also have some additional features like the ability to upload documents, write/copy/paste text, etc. I am listing two of my current favorites. If these do not exist in the future, you can easily google &quot;Online whiteboard&quot; and you will see many options. Once you are on the board, you get a unique link that you&nbsp;give to your student&nbsp;so both of you are on the same board. This allows you to see what the student is doing and vice versa.</p>\r\n\r\n<ol>\r\n	<li><a href=\"http://awwapp.com/\" target=\"_blank\">AwwApp</a>: It&#39;s free, easy to use, requires no registration. Simply go to&nbsp;<a href=\"http://awwapp.com/\" target=\"_blank\">awwapp.com</a>&nbsp;and click on Start drawing and you are good to go. You will notice various options in the sidebar which you should explore.&nbsp;<br />\r\n	<img alt=\"\" src=\"https://blogassets2.teacheron.com/pencil-size_0.png\" style=\"height:267px; width:629px\" /><br />\r\n	<img alt=\"\" src=\"https://blogassets2.teacheron.com/drawing-options.png\" style=\"height:327px; width:629px\" /><br />\r\n	<img alt=\"\" src=\"https://blogassets2.teacheron.com/share-link-to-board.png\" style=\"height:276px; width:629px\" /></li>\r\n	<li><a href=\"http://idroo.com/\" target=\"_blank\">Idroo</a>: Idroo is more artistic and is more functional than Awwapp but it requires you to log in. One of the main reasons I like Idroo is that you can see the other person&#39;s mouse pointer as it moves on the Idroo page. This helps to point at things on the board easily and ensures that teacher and student are looking at the same thing.</li>\r\n</ol>\r\n\r\n<h3>Digital pen</h3>\r\n\r\n<p>Writing on a whiteboard is painfully slow and difficult if you are using a mouse or touchpad. In order to make the writing on the whiteboard easy and fast, we use digital pens.&nbsp;</p>\r\n\r\n<p>Following is a video on how to use a&nbsp;<a href=\"http://amzn.to/2s3vN9Y\" target=\"_blank\">Vacom</a><a href=\"http://amzn.to/2s3vN9Y\" target=\"_blank\">&nbsp;digital pen</a>. Given that all digital pens work the same way, you can buy a cheaper iBall digital pen. If you are not comfortable shopping online, you can get a digital pen from a local shop which sells computer accessories.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you want to teach any of the usual academic subjects online and you want to do it properly, you must have a digital pen.</p>\r\n\r\n<h2>Do you need a webcam?</h2>\r\n\r\n<p>It depends on the student&#39;s requirement. From my experience, most adult students prefer not to have a webcam. However, most parents of kids want a webcam to keep the child engaged.&nbsp;</p>\r\n\r\n<p>So here&#39;s what you should do. Keep a webcam. It&#39;s cheap. When you get a student, just ask them if they would like to see you and go accordingly.</p>\r\n\r\n<h2>How to collect payment for online work?</h2>\r\n\r\n<p>Following are some of my&nbsp;favorite options:</p>\r\n\r\n<ol>\r\n	<li><strong>FindMentor</strong>: Students don&#39;t like to pay in advance due to trust issues. When paying by <strong>FindMentor</strong>, we hold their funds and release payment to you after a month - which is enough time for them to experience your service. This is good for teachers as well because&nbsp;the payment is assured for them after delivering the service. We launched this service after receiving multiple complaints from both students (paying and not getting the service) and teachers (doing the work and not getting paid). Being paid via <strong>FindMentor&nbsp;</strong>also allows you to get reviews on your profile which helps you to get more business. There is a 15% commission on receiving payments through us but it&#39;s better than not getting anything after giving your services.</li>\r\n	<li><strong>Directly in the bank</strong>: This should be your default for receiving payments if the student is in the same country as you are or they can make payment in the bank. There is no fee to you when they transfer money. You get the money almost instantaneously. Therefore, it&#39;s the best option&nbsp;</li>\r\n	<li><a href=\"https://transferwise.prf.hn/click/camref:1011lfj5X\" target=\"_blank\">Transferwise</a>: Transferwise is a relatively new service from the same people who made Skype. I use them for receiving international payments. Their service is exceptional. They also have the lowest fee as compared to any other money exchange service in the world. They are even cheaper than Western Union which at times claims to send money for no fee but takes a hefty cut in the exchange rate itself which most people don&#39;t realize.&nbsp;</li>\r\n	<li><a href=\"http://paypal.com/\" target=\"_blank\">PayPal</a>: It&#39;s the most convenient of all but that comes at a price. They take almost 5% commission upfront and if there is a conversion, you should be ready to pay an extra 3-5% on the currency exchange which is a lot. It&#39;s a decent racket but I use them from time to time because of the convenience and the trust many people place in them.&nbsp;</li>\r\n	<li><a href=\"http://westernunion.com/\" target=\"_blank\">Western Union</a>: You can get money in cash, below a certain limit, with fewer reporting requirements.&nbsp;It can be expensive, therefore you should prefer Transferwise., be</li>\r\n</ol>\r\n\r\n<h2>Should I give free demo sessions?</h2>\r\n\r\n<p>If you are at a stage where you have this question, you should give demo sessions.</p>\r\n\r\n<p>There is always a risk that the student&nbsp;won&#39;t convert after the demo. Risking an hour of your time is something you learn to be comfortable with.&nbsp;Some students may take advantage of demo classes, but, if you are good, you will see that giving a free demo is an excellent way of converting students into paying clients.</p>\r\n\r\n<p>When I taught as an online teacher, the following strategy worked for me:<br />\r\nI asked the students to pay for the demo hour only if they liked the session. That meant that they didn&#39;t pay for the demo if they didn&#39;t want to continue.</p>\r\n\r\n<h2>Tools for accounts and finance tutors</h2>\r\n\r\n<p>Along with mind-boggling numbers, finance and accounts teachers have to deal with tables and never-ending columns of data. Solving all this data manually over the whiteboard can be a real pain. Thankfully, Google has a free answer to all your troubles. Even though many people are aware of Google Drive, they aren&rsquo;t using it the way they that would make their life easier.</p>\r\n\r\n<p>So this is how we do it - login to your Google account, go to&nbsp;<a href=\"http://drive.google.com/\" target=\"_blank\">Google Drive</a>, click on Create, and then select spreadsheet. A new spreadsheet should open up. You can share this with the student. What&rsquo;s great about this is that you can use the power of Excel in real-time. Both you and the student can edit the spreadsheet at the same time. Standard Excel calculations and formulas are also available thus making it really close to using Microsoft Excel or other open-source Excel tools.</p>\r\n\r\n<p>The greatest benefit is that all the history gets saved so you can see the thought process of your students. Also, you can see what the other person is doing as Google highlights the cell which the other user(s) has selected or is editing. &nbsp;</p>\r\n\r\n<h2>How to find students to teach online?</h2>\r\n\r\n<p>There is no easy answer to this. If there was, everybody would leave their jobs and teach online according to their comfort. However, there are some steps you can take to increase your chances of getting students.&nbsp;</p>\r\n\r\n<h3>Make a great Profile</h3>\r\n\r\n<p>Many people who register at <strong>findmentor</strong>.com or in any website for that matter try to go through making their profile as quickly as possible. Some even put junk text if there is a minimum they are forced to write.&nbsp;</p>\r\n\r\n<p>This is a big mistake.</p>\r\n\r\n<p>Students don&#39;t know you and they don&#39;t know how good you are. The only point of reference they have about you is your profile. To put it simply, If you make a bad profile, you will get bad (no) results.&nbsp;</p>\r\n\r\n<p>You should spend at least as much time in preparing your online profile as you spend on writing a well-written resume as it can have the same impact on your life.&nbsp;</p>\r\n\r\n<p><strong>Profile picture:</strong>&nbsp;Your profile picture should consist of a clear headshot in which you are smiling. Teaching is not dating but when students are looking at a stranger that they can trust, the same subconscious kicks in. Do not put a random image of a God or a puppy, it would be a waste of time and space.</p>\r\n\r\n<h3>Share</h3>\r\n\r\n<p>People who succeed have certain traits. They think long term, love what they do, and like to share. One of the best things that you can do to succeed is to help others succeed. Forums are a great starting point for sharing. Find a forum where lots of students and tutors come, and&nbsp;help the students there, thereby building authority. You will gain respect as an expert and will get paid assignments over time. This is not an overnight kill. It requires patience and a genuine willingness to help. But results can be stellar depending on your niche and expertise.</p>\r\n\r\n<p>If you like the post and think it can be helpful to others, please let us know in the comments and share it using your preferred services below.&nbsp;This may as well be the start of your sharing mindset.&nbsp;You will not only help your friends, but you will also help&nbsp;yourself and me as well.</p>\r\n\r\n<p>Please mention in the comments if you have any questions. Happy Tutoring!!</p>', '2021-07-02 05:42:37', '2021-07-02 05:51:48', NULL),
(4, 1, 'How to get students and teaching jobs', NULL, '<p>I have been asked this question in million different ways. To be honest, it&#39;s competitive. When you are competing for a single job with&nbsp;thousands of other teachers - especially for online teaching jobs, it&#39;s difficult to stand out.</p>\r\n\r\n<p>In my experience, nothing you do is guaranteed. However, as in life, we work hard and increase the probabiliites in our favour. So here are few things you can do to increase your chance of getting students on findmentor.com and on other sites as well.</p>\r\n\r\n<h2>Put a photo with a clear headshot</h2>\r\n\r\n<p>Most people see your photo as the first thing. If they see photo of a religious figure, cartoon, scenery etc, they feel as if you are trying to evade.&nbsp;</p>\r\n\r\n<p>In fact, according to our data, profiles with an image with the face clearly visible get contacted at least twice as much as people who have bad photo or no photo at all.</p>\r\n\r\n<h2>Write a clear and detailed profile description</h2>\r\n\r\n<p>Treat how you make your profile like a waste of time, that&#39;s what it will be. Treat it like an investment, and you will get stellar results.&nbsp;If one can&#39;t commit to writing a clear and detailed profile for oneself, which will be viewed by thousands of students, same lazy attitude will be evident in their teaching as well.</p>\r\n\r\n<p>Your profile description is the most important deciding factor if students and parents will hire you or not. Ironically, most people want to spend as little time as possible on this section. In findmentor.com, we have a minimum limit of 100 words on the description. This is so that people get engaged enough and they know you enough to contact you. Here are some clear do&#39;s and donts for profile description:</p>\r\n\r\n<p>Dos:</p>\r\n\r\n<ol>\r\n	<li>Write about your experience.</li>\r\n	<li>Write about the positive results your students got.</li>\r\n	<li>Write about your education and schooling, especially if from a prominent institution.</li>\r\n	<li>Write about your teaching style, methodology.</li>\r\n	<li>Use proper punctuations, and capitalization. Use grammarly / microsoft word if you have to.&nbsp;</li>\r\n</ol>\r\n\r\n<p>Donts:</p>\r\n\r\n<ol>\r\n	<li>Do not make spelling mistakes.</li>\r\n	<li>Do not use all capital letters. It not only looks bad and is harder to read, it&#39;s considered as bad manners on the web.&nbsp;</li>\r\n	<li>Do not write SMS language. It&#39;s unprofessional and casual. You won&#39;t write in SMS language in your resume. Don&#39;t write here as well.</li>\r\n	<li>Do not copy/paste your resume.</li>\r\n	<li>Do not put junk characters just to complete the word count.&nbsp;</li>\r\n	<li>Do not put random quotes or philosophy. I have seen some teachers use this really intelligently but in 95% cases, it&#39;s wrongly used. Unless you know exactly what you are doing, it&#39;s better to avoid using quotations altogether.</li>\r\n</ol>\r\n\r\n<h2>Customize your application and be sincere</h2>\r\n\r\n<p>When you apply to jobs, the first response should convey to the student that you have read their requirements carefully and are responding to them based on that. It shouldn&#39;t look as if you are just using a template response.&nbsp;</p>\r\n\r\n<h2>Reply promptly to student queries</h2>\r\n\r\n<p>Put a notification for emails so when you get notification from us, you can promptly apply to jobs and reply to the students. Earlier you contact a student, better is the chance of conversion.</p>\r\n\r\n<h2>Get premium membership</h2>\r\n\r\n<p><a href=\"https://www.findmentor.com/premium-membership-for-tutors\" target=\"_blank\">Premium membership</a>&nbsp;helps you to be at the top of the list when students search for subjects you teach at your location or online. When you are among the top teachers in the list, more students contact you.&nbsp;<a href=\"https://www.findmentor.com/goPremium\" target=\"_blank\">Get&nbsp;</a><a href=\"https://www.findmentor.com/goPremium\" target=\"_blank\">premium</a><a href=\"https://www.findmentor.com/goPremium\" target=\"_blank\">&nbsp;membership</a>.&nbsp;</p>', '2021-07-02 05:55:54', '2021-07-02 05:55:54', NULL),
(5, 1, 'How we rank teachers on findmentor', NULL, '<p>Your profile is displayed only if it&#39;s complete and active.</p>\r\n\r\n<p>If your&nbsp;profile is displayed, then It&#39;s in the following order:</p>\r\n\r\n<ol>\r\n	<li><a href=\"../premium-membership-for-tutors\" target=\"_blank\">Premium members</a></li>\r\n	<li>Profile Weight which is calculated based on\r\n	<ul>\r\n		<li>Closeness to the searched subject and subjects you teach</li>\r\n		<li>Distance from the student</li>\r\n		<li>Quality of your profile\r\n		<ul>\r\n			<li>Profile image</li>\r\n			<li>Length of description</li>\r\n			<li>Use of punctuation, spellings, and capitalization</li>\r\n		</ul>\r\n		</li>\r\n		<li>if you have logged in the last six months</li>\r\n		<li>The total number of coins you have bought so far.</li>\r\n		<li>How soon you reply to the message you get</li>\r\n	</ul>\r\n	</li>\r\n	<li>How recently were you registered</li>\r\n</ol>\r\n\r\n<p>As we learn more about our teachers and students, we will change the ranking formula.</p>', '2021-07-02 05:57:47', '2021-07-07 03:48:09', NULL),
(6, 1, 'Fake Currency Puzzle', NULL, '<p>I made this riddle as a teenager when someone gave me a fake note.</p>\r\n\r\n<p>Here&#39;s the riddle:</p>\r\n\r\n<p>Let&#39;s say you own a small bakery. Someone came to your shop and purchased goods&nbsp;worth 10 bucks. They gave you a&nbsp;fake note of 100 bucks.</p>\r\n\r\n<p>You gave them 90 bucks as change.&nbsp;</p>\r\n\r\n<p>Question: How much did you lose?<br />\r\n100 bucks. The easiest way to think about this is that if those 100 bucks weren&#39;t fake, then you would have made no profit, no loss. So the only loss is the fake note - which is 100 bucks.</p>', '2021-07-02 06:13:06', '2021-07-02 06:13:31', NULL),
(7, 1, 'Get payments via FindMentor', NULL, '<p>We have launched a payment option for you to receive payments through us.</p>\r\n\r\n<p>Just because you got a student through us, you don&#39;t need to receive payment from that student via us.</p>\r\n\r\n<p><strong>Why is it not mandatory to get payments via FindMentor?</strong></p>\r\n\r\n<p>Since most teachers&nbsp;already pay coins to contact students, we feel it is not right to take a commission from earnings as well.</p>\r\n\r\n<p><strong>So why did we give this feature?</strong></p>\r\n\r\n<p>Many teachers requested this feature to:&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Get payments from students in foreign countries.</li>\r\n	<li>Secure payment before doing work.</li>\r\n	<li>Allow students to pay by card.</li>\r\n</ul>\r\n\r\n<p>Making this escrow system was hard work, but combating fraud was vital, so we made it.</p>\r\n\r\n<h2>Why do you want to get paid via FindMentor?</h2>\r\n\r\n<p>Getting payments via us has the following advantages. You can:</p>\r\n\r\n<ul>\r\n	<li>Secure payment before service - prevent fraud - stop losing money.</li>\r\n	<li>Get advanced payments from students who are hesitant&nbsp;to pay in advance.</li>\r\n	<li>Get payment from foreign students.</li>\r\n	<li>Give students the option to pay by card - in 91 currencies. We will convert the money to your currency and deposit&nbsp;to your account.</li>\r\n	<li>Get reviews with &quot;verified label.&quot;</li>\r\n</ul>\r\n\r\n<h3>Secure your payment (and secure advance from hesitant students)</h3>\r\n\r\n<p>We get frequent emails from teachers who delivered tutoring services but students didn&#39;t pay them. The idea for our escrow system was a direct result of these requests.</p>\r\n\r\n<p>Also, many genuine students don&#39;t want to pay in&nbsp;advance because:</p>\r\n\r\n<ul>\r\n	<li>They are afraid of losing money or</li>\r\n	<li>Someone has defrauded them before you.</li>\r\n</ul>\r\n\r\n<p>Getting paid via us solves these problems and secures both of you. This is how:</p>\r\n\r\n<ul>\r\n	<li>The student pays you by going to your profile.</li>\r\n	<li>We keep the payment (on hold)&nbsp;with us.</li>\r\n	<li>You deliver the service.</li>\r\n	<li>Payment is released to you.</li>\r\n</ul>\r\n\r\n<h2>What to say to students who are not willing to pay in advance?</h2>\r\n\r\n<p>You can say to the student something like:&nbsp;</p>\r\n\r\n<p>&quot;Please go to my profile and click on the Pay&nbsp;button. There, you can schedule the payment to release later. Payment won&#39;t be released to me until you are satisfied and release the payment yourself.&quot;</p>\r\n\r\n<h3>Get payments from foreign students</h3>\r\n\r\n<p>Getting payments from international students is a challenge for many teachers. This is true, especially for small amounts, which can be very expensive to get.&nbsp;</p>\r\n\r\n<p>International students prefer to pay by card. We have designed our system to&nbsp;make them easier to pay by card.</p>\r\n\r\n<p><strong>You can accept payments in 91 currencies.&nbsp;</strong>We will convert the money to your currency and deposit&nbsp;to your account.</p>\r\n\r\n<h3>Get &quot;verified&quot; reviews</h3>\r\n\r\n<p>Once a student pays you via us, we know with a fair degree of certainty that the review is genuine. Reviews by a student that has paid you are labeled as &quot;Verified&quot; which generates extra trust in the students&#39; minds.</p>\r\n\r\n<p>In the future, we will also use reviews to determine tutor rankings and suggestions to students.</p>\r\n\r\n<h2>How to get payment via FindMentor?</h2>\r\n\r\n<p>Once logged in as a tutor, you can go to Menu &gt; Wallet &gt;&nbsp;Accounts (Getting paid)&nbsp;and add your bank account details.&nbsp;</p>\r\n\r\n<p>Students can go to your profile link and click on the &quot;Pay&quot; button to pay you.</p>\r\n\r\n<h2>Is there any fee for this service?</h2>\r\n\r\n<p>Yes. We deduct 15% for receiving payment through us. We use this fee to pay taxes,&nbsp;payment gateway providers (people who help us to collect payment online), and for food. No promises but we are working to make it 10%.&nbsp;</p>', '2021-07-07 04:39:46', '2021-07-07 04:41:33', NULL),
(8, 1, 'Why is there a wait time to apply to jobs', NULL, '<p>I have received hundreds of emails from premium members requesting early access to jobs.</p>\r\n\r\n<p>We put a lot of time and effort to implement this feature. However, now we are getting emails from non-premium (but paid) members suggesting that the wait is unfair and we are somehow getting greedy.</p>\r\n\r\n<p><strong>Why did we do it the way we did?</strong></p>\r\n\r\n<p>Giving early access to premium members was obvious and fair. So the decision to give them early access was easy.</p>\r\n\r\n<p>But..</p>\r\n\r\n<p>All premium members are not equal. Some pay just 1 coin for premium membership, others pay 5000 or more.</p>\r\n\r\n<p>So..</p>\r\n\r\n<p>we couldn&#39;t treat both premium members equally.&nbsp;</p>\r\n\r\n<p>That&#39;s why..</p>\r\n\r\n<p>We give gradual access in a period of 2 hours according to their premium memberhip coins.</p>\r\n\r\n<p>Also..</p>\r\n\r\n<p>The maximum delay from highest premium member to non premium member is just 2 hours. It&#39;s not a lot, just enough to give that extra edge to premium members but&nbsp;not enough to cause excessive delay for the student.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Here&#39;s how early access to premium members work:&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Find matching&nbsp;tutors for a post.</li>\r\n	<li>Find the highest premium coins from the matching tutors.</li>\r\n	<li>The tutor with the highest coins gets the first access.</li>\r\n	<li>Gradually, all premium members get access according to the coins they use for premium membership.</li>\r\n	<li>After 2 hours, the post is available to all members.&nbsp;</li>\r\n</ul>\r\n\r\n<p>For eg. if the premium tutor with highest coins has 5000 coins premium membership, the access timeline for premium members would be as follows:</p>\r\n\r\n<p><img alt=\"\" src=\"https://localhost/findmentor/public/asset/images/chart.png\" style=\"height:196px; width:723px\" /></p>\r\n\r\n<p>I believe we have implemented it fairly. Please let us know in the comments if you disagree (or agree).</p>', '2021-07-07 06:54:03', '2021-07-07 06:54:03', NULL),
(9, 1, 'How to remove personal data from Google', NULL, '<p>We remove your details from TeacherOn instantly. After&nbsp;that Google&nbsp;automatically removes it after a certain time (which is random and difficult to predict). We can&#39;t control what Google and other search engines show but we can request to speed up the removal process. Here&#39;s how you do it.</p>\r\n\r\n<h2><strong>For students:</strong></h2>\r\n\r\n<p>Just close your post(s). Have a latte. We will request Google to remove your data immediately.</p>\r\n\r\n<h2><strong>For teachers:</strong></h2>\r\n\r\n<ul>\r\n	<li>Settings at TeacherOn&nbsp;- You have three options to hide your profile from Search engines in teacheron.com\r\n	<ol>\r\n		<li>Delete profile - You lose all your data and coins and nobody can contact you.&nbsp;</li>\r\n		<li>Inactivate profile - Nobody can contact you but you can reactivate whenever you want. All your data and coins remain intact.</li>\r\n		<li>Hide profile from google - You remain active at teacheron.com and students can find you on our website. However, your profile will not show up on Google.</li>\r\n	</ol>\r\n	</li>\r\n	<li>Settings at Google\r\n	<ul>\r\n		<li><strong>If you are not in a hurry:&nbsp;</strong>Once you have chosen one of the settings above, we will request Google to remove your data but the time it takes them to do it is unpredictable. So...</li>\r\n		<li><strong>If you are in a hurry:</strong>&nbsp;You can speed up the removal process using Google URL removal tool. Here are the steps:\r\n		<ol>\r\n			<li>Copy the link of your&nbsp;TeacherOn&nbsp;profile.&nbsp;</li>\r\n			<li>Go to&nbsp;<a href=\"https://www.google.com/webmasters/tools/removals?pli=1\" target=\"_blank\">Google URL removal tool</a>.</li>\r\n			<li>Paste your profile URL in the given box and submit.</li>\r\n			<li>Wait for Google to remove your data and have a smoothie.</li>\r\n		</ol>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p>Happy Learning!!</p>', '2021-07-07 07:18:36', '2021-07-07 07:18:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coins`
--

CREATE TABLE `coins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_of_coin` int(11) NOT NULL,
  `price` double(15,2) NOT NULL DEFAULT 0.00,
  `discount` double(15,2) DEFAULT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coins`
--

INSERT INTO `coins` (`id`, `no_of_coin`, `price`, `discount`, `discount_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 100, 100.00, NULL, NULL, NULL, '2021-07-08 02:00:34', NULL),
(2, 200, 200.00, 60.00, 'percentage', NULL, '2021-07-08 02:02:31', NULL),
(3, 300, 300.00, 20.00, NULL, NULL, '2021-07-08 02:02:42', NULL),
(4, 400, 400.00, 10.00, NULL, NULL, '2021-07-08 02:03:09', NULL),
(5, 300, 0.00, NULL, NULL, '2021-06-16 06:13:48', '2021-06-16 06:23:58', '2021-06-16 06:23:58'),
(6, 252, 0.00, NULL, NULL, '2021-06-16 06:14:30', '2021-06-16 06:23:54', '2021-06-16 06:23:54'),
(7, 500, 500.00, 10.00, NULL, '2021-07-08 01:43:26', '2021-07-08 02:02:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coin_used`
--

CREATE TABLE `coin_used` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `used_against_id` bigint(20) UNSIGNED NOT NULL,
  `thread_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coin_used`
--

INSERT INTO `coin_used` (`id`, `user_id`, `used_against_id`, `thread_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 11, 2, 1, '2021-06-28 13:09:35', '2021-07-12 04:03:17', NULL),
(2, 11, 2, 2, '2021-07-16 02:18:37', '2021-07-16 02:18:37', NULL),
(3, 14, 2, 3, '2021-08-18 09:51:19', '2021-09-09 09:51:19', '2021-09-09 09:53:13'),
(4, 14, 2, 4, '2021-08-18 09:56:23', '2021-09-09 09:56:23', '2021-09-09 09:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `coin_used_items`
--

CREATE TABLE `coin_used_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coin_used_id` bigint(20) UNSIGNED NOT NULL,
  `requirement_id` bigint(20) UNSIGNED NOT NULL,
  `no_of_used_coins` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coin_utilize_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coin_used_items`
--

INSERT INTO `coin_used_items` (`id`, `coin_used_id`, `requirement_id`, `no_of_used_coins`, `subject`, `coin_utilize_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 4, 50, 'physics', 0, '2021-07-12 03:52:19', '2021-07-12 03:52:19', NULL),
(2, 2, 3, 50, 'chemistry', 0, '2021-07-16 02:18:37', '2021-07-16 02:18:37', NULL),
(3, 3, 6, 50, 'chemistry', 0, '2021-09-09 09:51:19', '2021-09-09 09:51:19', '2021-09-09 09:53:13'),
(4, 4, 6, 50, 'chemistry', 0, '2021-09-09 09:56:23', '2021-09-09 09:56:23', '2021-09-09 09:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso2` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonecode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tld` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `native` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subregion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezones` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `translations` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `emoji` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emojiU` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coins` int(11) DEFAULT 50,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `flag` tinyint(1) NOT NULL DEFAULT 1,
  `wikiDataId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Rapid API GeoDB Cities'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `iso3`, `iso2`, `phonecode`, `capital`, `currency`, `currency_symbol`, `tld`, `native`, `region`, `subregion`, `timezones`, `translations`, `latitude`, `longitude`, `emoji`, `emojiU`, `coins`, `status`, `created_at`, `updated_at`, `flag`, `wikiDataId`) VALUES
(1, 'Afghanistan', 'AFG', 'AF', '93', 'Kabul', 'AFN', '??', '.af', '??????????????????', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia\\/Kabul\",\"gmtOffset\":16200,\"gmtOffsetName\":\"UTC+04:30\",\"abbreviation\":\"AFT\",\"tzName\":\"Afghanistan Time\"}]', '{\"br\":\"Afeganist??o\",\"pt\":\"Afeganist??o\",\"nl\":\"Afghanistan\",\"hr\":\"Afganistan\",\"fa\":\"??????????????????\",\"de\":\"Afghanistan\",\"es\":\"Afganist??n\",\"fr\":\"Afghanistan\",\"ja\":\"?????????????????????\",\"it\":\"Afghanistan\"}', 33.00000000, 65.00000000, '????????', 'U+1F1E6 U+1F1EB', 50, 0, '2018-07-20 20:11:03', '2021-11-10 10:56:15', 1, 'Q889'),
(2, 'Aland Islands', 'ALA', 'AX', '+358-18', 'Mariehamn', 'EUR', '???', '.ax', '??land', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe\\/Mariehamn\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"br\":\"Ilhas de Aland\",\"pt\":\"Ilhas de Aland\",\"nl\":\"??landeilanden\",\"hr\":\"??landski otoci\",\"fa\":\"?????????? ????????\",\"de\":\"??land\",\"es\":\"Alandia\",\"fr\":\"??land\",\"ja\":\"?????????????????????\",\"it\":\"Isole Aland\"}', 60.11666700, 19.90000000, '????????', 'U+1F1E6 U+1F1FD', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(3, 'Albania', 'ALB', 'AL', '355', 'Tirana', 'ALL', 'Lek', '.al', 'Shqip??ria', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe\\/Tirane\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Alb??nia\",\"pt\":\"Alb??nia\",\"nl\":\"Albani??\",\"hr\":\"Albanija\",\"fa\":\"????????????\",\"de\":\"Albanien\",\"es\":\"Albania\",\"fr\":\"Albanie\",\"ja\":\"???????????????\",\"it\":\"Albania\"}', 41.00000000, 20.00000000, '????????', 'U+1F1E6 U+1F1F1', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q222'),
(4, 'Algeria', 'DZA', 'DZ', '213', 'Algiers', 'DZD', '????', '.dz', '??????????????', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa\\/Algiers\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Arg??lia\",\"pt\":\"Arg??lia\",\"nl\":\"Algerije\",\"hr\":\"Al??ir\",\"fa\":\"??????????????\",\"de\":\"Algerien\",\"es\":\"Argelia\",\"fr\":\"Alg??rie\",\"ja\":\"??????????????????\",\"it\":\"Algeria\"}', 28.00000000, 3.00000000, '????????', 'U+1F1E9 U+1F1FF', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q262'),
(5, 'American Samoa', 'ASM', 'AS', '+1-684', 'Pago Pago', 'USD', '$', '.as', 'American Samoa', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific\\/Pago_Pago\",\"gmtOffset\":-39600,\"gmtOffsetName\":\"UTC-11:00\",\"abbreviation\":\"SST\",\"tzName\":\"Samoa Standard Time\"}]', '{\"br\":\"Samoa Americana\",\"pt\":\"Samoa Americana\",\"nl\":\"Amerikaans Samoa\",\"hr\":\"Ameri??ka Samoa\",\"fa\":\"???????????? ????????????\",\"de\":\"Amerikanisch-Samoa\",\"es\":\"Samoa Americana\",\"fr\":\"Samoa am??ricaines\",\"ja\":\"????????????????????????\",\"it\":\"Samoa Americane\"}', -14.33333333, -170.00000000, '????????', 'U+1F1E6 U+1F1F8', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(6, 'Andorra', 'AND', 'AD', '376', 'Andorra la Vella', 'EUR', '???', '.ad', 'Andorra', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe\\/Andorra\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Andorra\",\"pt\":\"Andorra\",\"nl\":\"Andorra\",\"hr\":\"Andora\",\"fa\":\"????????????\",\"de\":\"Andorra\",\"es\":\"Andorra\",\"fr\":\"Andorre\",\"ja\":\"????????????\",\"it\":\"Andorra\"}', 42.50000000, 1.50000000, '????????', 'U+1F1E6 U+1F1E9', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q228'),
(7, 'Angola', 'AGO', 'AO', '244', 'Luanda', 'AOA', 'Kz', '.ao', 'Angola', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa\\/Luanda\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"br\":\"Angola\",\"pt\":\"Angola\",\"nl\":\"Angola\",\"hr\":\"Angola\",\"fa\":\"????????????\",\"de\":\"Angola\",\"es\":\"Angola\",\"fr\":\"Angola\",\"ja\":\"????????????\",\"it\":\"Angola\"}', -12.50000000, 18.50000000, '????????', 'U+1F1E6 U+1F1F4', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q916'),
(8, 'Anguilla', 'AIA', 'AI', '+1-264', 'The Valley', 'XCD', '$', '.ai', 'Anguilla', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Anguilla\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"Anguila\",\"pt\":\"Anguila\",\"nl\":\"Anguilla\",\"hr\":\"Angvila\",\"fa\":\"??????????????\",\"de\":\"Anguilla\",\"es\":\"Anguilla\",\"fr\":\"Anguilla\",\"ja\":\"????????????\",\"it\":\"Anguilla\"}', 18.25000000, -63.16666666, '????????', 'U+1F1E6 U+1F1EE', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(9, 'Antarctica', 'ATA', 'AQ', '', '', '', '$', '.aq', 'Antarctica', 'Polar', '', '[{\"zoneName\":\"Antarctica\\/Casey\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AWST\",\"tzName\":\"Australian Western Standard Time\"},{\"zoneName\":\"Antarctica\\/Davis\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"DAVT\",\"tzName\":\"Davis Time\"},{\"zoneName\":\"Antarctica\\/DumontDUrville\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"DDUT\",\"tzName\":\"Dumont d\'Urville Time\"},{\"zoneName\":\"Antarctica\\/Mawson\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"MAWT\",\"tzName\":\"Mawson Station Time\"},{\"zoneName\":\"Antarctica\\/McMurdo\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"NZDT\",\"tzName\":\"New Zealand Daylight Time\"},{\"zoneName\":\"Antarctica\\/Palmer\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"CLST\",\"tzName\":\"Chile Summer Time\"},{\"zoneName\":\"Antarctica\\/Rothera\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ROTT\",\"tzName\":\"Rothera Research Station Time\"},{\"zoneName\":\"Antarctica\\/Syowa\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"SYOT\",\"tzName\":\"Showa Station Time\"},{\"zoneName\":\"Antarctica\\/Troll\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"},{\"zoneName\":\"Antarctica\\/Vostok\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"VOST\",\"tzName\":\"Vostok Station Time\"}]', '{\"br\":\"Ant??rtida\",\"pt\":\"Ant??rctida\",\"nl\":\"Antarctica\",\"hr\":\"Antarktika\",\"fa\":\"??????????????\",\"de\":\"Antarktika\",\"es\":\"Ant??rtida\",\"fr\":\"Antarctique\",\"ja\":\"????????????\",\"it\":\"Antartide\"}', -74.65000000, 4.48000000, '????????', 'U+1F1E6 U+1F1F6', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(10, 'Antigua And Barbuda', 'ATG', 'AG', '+1-268', 'St. John\'s', 'XCD', '$', '.ag', 'Antigua and Barbuda', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Antigua\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"Ant??gua e Barbuda\",\"pt\":\"Ant??gua e Barbuda\",\"nl\":\"Antigua en Barbuda\",\"hr\":\"Antigva i Barbuda\",\"fa\":\"?????????????? ?? ??????????????\",\"de\":\"Antigua und Barbuda\",\"es\":\"Antigua y Barbuda\",\"fr\":\"Antigua-et-Barbuda\",\"ja\":\"????????????????????????????????????\",\"it\":\"Antigua e Barbuda\"}', 17.05000000, -61.80000000, '????????', 'U+1F1E6 U+1F1EC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q781'),
(11, 'Argentina', 'ARG', 'AR', '54', 'Buenos Aires', 'ARS', '$', '.ar', 'Argentina', 'Americas', 'South America', '[{\"zoneName\":\"America\\/Argentina\\/Buenos_Aires\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America\\/Argentina\\/Catamarca\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America\\/Argentina\\/Cordoba\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America\\/Argentina\\/Jujuy\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America\\/Argentina\\/La_Rioja\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America\\/Argentina\\/Mendoza\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America\\/Argentina\\/Rio_Gallegos\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America\\/Argentina\\/Salta\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America\\/Argentina\\/San_Juan\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America\\/Argentina\\/San_Luis\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America\\/Argentina\\/Tucuman\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America\\/Argentina\\/Ushuaia\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"}]', '{\"br\":\"Argentina\",\"pt\":\"Argentina\",\"nl\":\"Argentini??\",\"hr\":\"Argentina\",\"fa\":\"????????????????\",\"de\":\"Argentinien\",\"es\":\"Argentina\",\"fr\":\"Argentine\",\"ja\":\"??????????????????\",\"it\":\"Argentina\"}', -34.00000000, -64.00000000, '????????', 'U+1F1E6 U+1F1F7', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q414'),
(12, 'Armenia', 'ARM', 'AM', '374', 'Yerevan', 'AMD', '??', '.am', '????????????????', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia\\/Yerevan\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Armenia Time\"}]', '{\"br\":\"Arm??nia\",\"pt\":\"Arm??nia\",\"nl\":\"Armeni??\",\"hr\":\"Armenija\",\"fa\":\"????????????????\",\"de\":\"Armenien\",\"es\":\"Armenia\",\"fr\":\"Arm??nie\",\"ja\":\"???????????????\",\"it\":\"Armenia\"}', 40.00000000, 45.00000000, '????????', 'U+1F1E6 U+1F1F2', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q399'),
(13, 'Aruba', 'ABW', 'AW', '297', 'Oranjestad', 'AWG', '??', '.aw', 'Aruba', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Aruba\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"Aruba\",\"pt\":\"Aruba\",\"nl\":\"Aruba\",\"hr\":\"Aruba\",\"fa\":\"??????????\",\"de\":\"Aruba\",\"es\":\"Aruba\",\"fr\":\"Aruba\",\"ja\":\"?????????\",\"it\":\"Aruba\"}', 12.50000000, -69.96666666, '????????', 'U+1F1E6 U+1F1FC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(14, 'Australia', 'AUS', 'AU', '61', 'Canberra', 'AUD', '$', '.au', 'Australia', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Antarctica\\/Macquarie\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"MIST\",\"tzName\":\"Macquarie Island Station Time\"},{\"zoneName\":\"Australia\\/Adelaide\",\"gmtOffset\":37800,\"gmtOffsetName\":\"UTC+10:30\",\"abbreviation\":\"ACDT\",\"tzName\":\"Australian Central Daylight Saving Time\"},{\"zoneName\":\"Australia\\/Brisbane\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"AEST\",\"tzName\":\"Australian Eastern Standard Time\"},{\"zoneName\":\"Australia\\/Broken_Hill\",\"gmtOffset\":37800,\"gmtOffsetName\":\"UTC+10:30\",\"abbreviation\":\"ACDT\",\"tzName\":\"Australian Central Daylight Saving Time\"},{\"zoneName\":\"Australia\\/Currie\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AEDT\",\"tzName\":\"Australian Eastern Daylight Saving Time\"},{\"zoneName\":\"Australia\\/Darwin\",\"gmtOffset\":34200,\"gmtOffsetName\":\"UTC+09:30\",\"abbreviation\":\"ACST\",\"tzName\":\"Australian Central Standard Time\"},{\"zoneName\":\"Australia\\/Eucla\",\"gmtOffset\":31500,\"gmtOffsetName\":\"UTC+08:45\",\"abbreviation\":\"ACWST\",\"tzName\":\"Australian Central Western Standard Time (Unofficial)\"},{\"zoneName\":\"Australia\\/Hobart\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AEDT\",\"tzName\":\"Australian Eastern Daylight Saving Time\"},{\"zoneName\":\"Australia\\/Lindeman\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"AEST\",\"tzName\":\"Australian Eastern Standard Time\"},{\"zoneName\":\"Australia\\/Lord_Howe\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"LHST\",\"tzName\":\"Lord Howe Summer Time\"},{\"zoneName\":\"Australia\\/Melbourne\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AEDT\",\"tzName\":\"Australian Eastern Daylight Saving Time\"},{\"zoneName\":\"Australia\\/Perth\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"AWST\",\"tzName\":\"Australian Western Standard Time\"},{\"zoneName\":\"Australia\\/Sydney\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AEDT\",\"tzName\":\"Australian Eastern Daylight Saving Time\"}]', '{\"br\":\"Austr??lia\",\"pt\":\"Austr??lia\",\"nl\":\"Australi??\",\"hr\":\"Australija\",\"fa\":\"????????????????\",\"de\":\"Australien\",\"es\":\"Australia\",\"fr\":\"Australie\",\"ja\":\"?????????????????????\",\"it\":\"Australia\"}', -27.00000000, 133.00000000, '????????', 'U+1F1E6 U+1F1FA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q408'),
(15, 'Austria', 'AUT', 'AT', '43', 'Vienna', 'EUR', '???', '.at', '??sterreich', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe\\/Vienna\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"??ustria\",\"pt\":\"??ustria\",\"nl\":\"Oostenrijk\",\"hr\":\"Austrija\",\"fa\":\"??????????\",\"de\":\"??sterreich\",\"es\":\"Austria\",\"fr\":\"Autriche\",\"ja\":\"??????????????????\",\"it\":\"Austria\"}', 47.33333333, 13.33333333, '????????', 'U+1F1E6 U+1F1F9', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q40'),
(16, 'Azerbaijan', 'AZE', 'AZ', '994', 'Baku', 'AZN', 'm', '.az', 'Az??rbaycan', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia\\/Baku\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"AZT\",\"tzName\":\"Azerbaijan Time\"}]', '{\"br\":\"Azerbaij??o\",\"pt\":\"Azerbaij??o\",\"nl\":\"Azerbeidzjan\",\"hr\":\"Azerbajd??an\",\"fa\":\"??????????????????\",\"de\":\"Aserbaidschan\",\"es\":\"Azerbaiy??n\",\"fr\":\"Azerba??djan\",\"ja\":\"????????????????????????\",\"it\":\"Azerbaijan\"}', 40.50000000, 47.50000000, '????????', 'U+1F1E6 U+1F1FF', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q227'),
(17, 'Bahamas The', 'BHS', 'BS', '+1-242', 'Nassau', 'BSD', 'B$', '.bs', 'Bahamas', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Nassau\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America)\"}]', '{\"br\":\"Bahamas\",\"pt\":\"Baamas\",\"nl\":\"Bahama???s\",\"hr\":\"Bahami\",\"fa\":\"????????????\",\"de\":\"Bahamas\",\"es\":\"Bahamas\",\"fr\":\"Bahamas\",\"ja\":\"?????????\",\"it\":\"Bahamas\"}', 24.25000000, -76.00000000, '????????', 'U+1F1E7 U+1F1F8', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q778'),
(18, 'Bahrain', 'BHR', 'BH', '973', 'Manama', 'BHD', '.??.??', '.bh', '?????????????????', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia\\/Bahrain\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"br\":\"Bahrein\",\"pt\":\"Bar??m\",\"nl\":\"Bahrein\",\"hr\":\"Bahrein\",\"fa\":\"??????????\",\"de\":\"Bahrain\",\"es\":\"Bahrein\",\"fr\":\"Bahre??n\",\"ja\":\"???????????????\",\"it\":\"Bahrein\"}', 26.00000000, 50.55000000, '????????', 'U+1F1E7 U+1F1ED', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q398'),
(19, 'Bangladesh', 'BGD', 'BD', '880', 'Dhaka', 'BDT', '???', '.bd', 'Bangladesh', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia\\/Dhaka\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"BDT\",\"tzName\":\"Bangladesh Standard Time\"}]', '{\"br\":\"Bangladesh\",\"pt\":\"Bangladeche\",\"nl\":\"Bangladesh\",\"hr\":\"Banglade??\",\"fa\":\"??????????????\",\"de\":\"Bangladesch\",\"es\":\"Bangladesh\",\"fr\":\"Bangladesh\",\"ja\":\"?????????????????????\",\"it\":\"Bangladesh\"}', 24.00000000, 90.00000000, '????????', 'U+1F1E7 U+1F1E9', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q902'),
(20, 'Barbados', 'BRB', 'BB', '+1-246', 'Bridgetown', 'BBD', 'Bds$', '.bb', 'Barbados', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Barbados\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"Barbados\",\"pt\":\"Barbados\",\"nl\":\"Barbados\",\"hr\":\"Barbados\",\"fa\":\"????????????????\",\"de\":\"Barbados\",\"es\":\"Barbados\",\"fr\":\"Barbade\",\"ja\":\"???????????????\",\"it\":\"Barbados\"}', 13.16666666, -59.53333333, '????????', 'U+1F1E7 U+1F1E7', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q244'),
(21, 'Belarus', 'BLR', 'BY', '375', 'Minsk', 'BYN', 'Br', '.by', '??????????????????', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe\\/Minsk\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Time\"}]', '{\"br\":\"Bielorr??ssia\",\"pt\":\"Bielorr??ssia\",\"nl\":\"Wit-Rusland\",\"hr\":\"Bjelorusija\",\"fa\":\"????????????\",\"de\":\"Wei??russland\",\"es\":\"Bielorrusia\",\"fr\":\"Bi??lorussie\",\"ja\":\"???????????????\",\"it\":\"Bielorussia\"}', 53.00000000, 28.00000000, '????????', 'U+1F1E7 U+1F1FE', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q184'),
(22, 'Belgium', 'BEL', 'BE', '32', 'Brussels', 'EUR', '???', '.be', 'Belgi??', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe\\/Brussels\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"B??lgica\",\"pt\":\"B??lgica\",\"nl\":\"Belgi??\",\"hr\":\"Belgija\",\"fa\":\"??????????\",\"de\":\"Belgien\",\"es\":\"B??lgica\",\"fr\":\"Belgique\",\"ja\":\"????????????\",\"it\":\"Belgio\"}', 50.83333333, 4.00000000, '????????', 'U+1F1E7 U+1F1EA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q31'),
(23, 'Belize', 'BLZ', 'BZ', '501', 'Belmopan', 'BZD', '$', '.bz', 'Belize', 'Americas', 'Central America', '[{\"zoneName\":\"America\\/Belize\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America)\"}]', '{\"br\":\"Belize\",\"pt\":\"Belize\",\"nl\":\"Belize\",\"hr\":\"Belize\",\"fa\":\"????????\",\"de\":\"Belize\",\"es\":\"Belice\",\"fr\":\"Belize\",\"ja\":\"????????????\",\"it\":\"Belize\"}', 17.25000000, -88.75000000, '????????', 'U+1F1E7 U+1F1FF', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q242'),
(24, 'Benin', 'BEN', 'BJ', '229', 'Porto-Novo', 'XOF', 'CFA', '.bj', 'B??nin', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa\\/Porto-Novo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"br\":\"Benin\",\"pt\":\"Benim\",\"nl\":\"Benin\",\"hr\":\"Benin\",\"fa\":\"????????\",\"de\":\"Benin\",\"es\":\"Ben??n\",\"fr\":\"B??nin\",\"ja\":\"?????????\",\"it\":\"Benin\"}', 9.50000000, 2.25000000, '????????', 'U+1F1E7 U+1F1EF', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q962'),
(25, 'Bermuda', 'BMU', 'BM', '+1-441', 'Hamilton', 'BMD', '$', '.bm', 'Bermuda', 'Americas', 'Northern America', '[{\"zoneName\":\"Atlantic\\/Bermuda\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"Bermudas\",\"pt\":\"Bermudas\",\"nl\":\"Bermuda\",\"hr\":\"Bermudi\",\"fa\":\"????????????\",\"de\":\"Bermuda\",\"es\":\"Bermudas\",\"fr\":\"Bermudes\",\"ja\":\"???????????????\",\"it\":\"Bermuda\"}', 32.33333333, -64.75000000, '????????', 'U+1F1E7 U+1F1F2', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(26, 'Bhutan', 'BTN', 'BT', '975', 'Thimphu', 'BTN', 'Nu.', '.bt', '??brug-yul', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia\\/Thimphu\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"BTT\",\"tzName\":\"Bhutan Time\"}]', '{\"br\":\"But??o\",\"pt\":\"But??o\",\"nl\":\"Bhutan\",\"hr\":\"Butan\",\"fa\":\"??????????\",\"de\":\"Bhutan\",\"es\":\"But??n\",\"fr\":\"Bhoutan\",\"ja\":\"????????????\",\"it\":\"Bhutan\"}', 27.50000000, 90.50000000, '????????', 'U+1F1E7 U+1F1F9', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q917'),
(27, 'Bolivia', 'BOL', 'BO', '591', 'Sucre', 'BOB', 'Bs.', '.bo', 'Bolivia', 'Americas', 'South America', '[{\"zoneName\":\"America\\/La_Paz\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"BOT\",\"tzName\":\"Bolivia Time\"}]', '{\"br\":\"Bol??via\",\"pt\":\"Bol??via\",\"nl\":\"Bolivia\",\"hr\":\"Bolivija\",\"fa\":\"????????????\",\"de\":\"Bolivien\",\"es\":\"Bolivia\",\"fr\":\"Bolivie\",\"ja\":\"????????????????????????\",\"it\":\"Bolivia\"}', -17.00000000, -65.00000000, '????????', 'U+1F1E7 U+1F1F4', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q750'),
(28, 'Bosnia and Herzegovina', 'BIH', 'BA', '387', 'Sarajevo', 'BAM', 'KM', '.ba', 'Bosna i Hercegovina', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe\\/Sarajevo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"B??snia e Herzegovina\",\"pt\":\"B??snia e Herzegovina\",\"nl\":\"Bosni?? en Herzegovina\",\"hr\":\"Bosna i Hercegovina\",\"fa\":\"?????????? ?? ??????????????\",\"de\":\"Bosnien und Herzegowina\",\"es\":\"Bosnia y Herzegovina\",\"fr\":\"Bosnie-Herz??govine\",\"ja\":\"????????????????????????????????????\",\"it\":\"Bosnia ed Erzegovina\"}', 44.00000000, 18.00000000, '????????', 'U+1F1E7 U+1F1E6', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q225'),
(29, 'Botswana', 'BWA', 'BW', '267', 'Gaborone', 'BWP', 'P', '.bw', 'Botswana', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa\\/Gaborone\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"br\":\"Botsuana\",\"pt\":\"Botsuana\",\"nl\":\"Botswana\",\"hr\":\"Bocvana\",\"fa\":\"????????????????\",\"de\":\"Botswana\",\"es\":\"Botswana\",\"fr\":\"Botswana\",\"ja\":\"????????????\",\"it\":\"Botswana\"}', -22.00000000, 24.00000000, '????????', 'U+1F1E7 U+1F1FC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q963'),
(30, 'Bouvet Island', 'BVT', 'BV', '0055', '', 'NOK', 'kr', '.bv', 'Bouvet??ya', '', '', '[{\"zoneName\":\"Europe\\/Oslo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Ilha Bouvet\",\"pt\":\"Ilha Bouvet\",\"nl\":\"Bouveteiland\",\"hr\":\"Otok Bouvet\",\"fa\":\"?????????? ????????\",\"de\":\"Bouvetinsel\",\"es\":\"Isla Bouvet\",\"fr\":\"??le Bouvet\",\"ja\":\"????????????\",\"it\":\"Isola Bouvet\"}', -54.43333333, 3.40000000, '????????', 'U+1F1E7 U+1F1FB', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(31, 'Brazil', 'BRA', 'BR', '55', 'Brasilia', 'BRL', 'R$', '.br', 'Brasil', 'Americas', 'South America', '[{\"zoneName\":\"America\\/Araguaina\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Bras\\u00edlia Time\"},{\"zoneName\":\"America\\/Bahia\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Bras\\u00edlia Time\"},{\"zoneName\":\"America\\/Belem\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Bras\\u00edlia Time\"},{\"zoneName\":\"America\\/Boa_Vista\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Amazon Time (Brazil)[3\"},{\"zoneName\":\"America\\/Campo_Grande\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Amazon Time (Brazil)[3\"},{\"zoneName\":\"America\\/Cuiaba\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasilia Time\"},{\"zoneName\":\"America\\/Eirunepe\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"ACT\",\"tzName\":\"Acre Time\"},{\"zoneName\":\"America\\/Fortaleza\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Bras\\u00edlia Time\"},{\"zoneName\":\"America\\/Maceio\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Bras\\u00edlia Time\"},{\"zoneName\":\"America\\/Manaus\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Amazon Time (Brazil)\"},{\"zoneName\":\"America\\/Noronha\",\"gmtOffset\":-7200,\"gmtOffsetName\":\"UTC-02:00\",\"abbreviation\":\"FNT\",\"tzName\":\"Fernando de Noronha Time\"},{\"zoneName\":\"America\\/Porto_Velho\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Amazon Time (Brazil)[3\"},{\"zoneName\":\"America\\/Recife\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Bras\\u00edlia Time\"},{\"zoneName\":\"America\\/Rio_Branco\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"ACT\",\"tzName\":\"Acre Time\"},{\"zoneName\":\"America\\/Santarem\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Bras\\u00edlia Time\"},{\"zoneName\":\"America\\/Sao_Paulo\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Bras\\u00edlia Time\"}]', '{\"br\":\"Brasil\",\"pt\":\"Brasil\",\"nl\":\"Brazili??\",\"hr\":\"Brazil\",\"fa\":\"??????????\",\"de\":\"Brasilien\",\"es\":\"Brasil\",\"fr\":\"Br??sil\",\"ja\":\"????????????\",\"it\":\"Brasile\"}', -10.00000000, -55.00000000, '????????', 'U+1F1E7 U+1F1F7', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q155'),
(32, 'British Indian Ocean Territory', 'IOT', 'IO', '246', 'Diego Garcia', 'USD', '$', '.io', 'British Indian Ocean Territory', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian\\/Chagos\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"IOT\",\"tzName\":\"Indian Ocean Time\"}]', '{\"br\":\"Territ??rio Brit??nico do Oceano ????dico\",\"pt\":\"Territ??rio Brit??nico do Oceano ??ndico\",\"nl\":\"Britse Gebieden in de Indische Oceaan\",\"hr\":\"Britanski Indijskooceanski teritorij\",\"fa\":\"?????????? ???????????????? ???? ?????????????? ??????\",\"de\":\"Britisches Territorium im Indischen Ozean\",\"es\":\"Territorio Brit??nico del Oc??ano ??ndico\",\"fr\":\"Territoire britannique de l\'oc??an Indien\",\"ja\":\"?????????????????????????????????\",\"it\":\"Territorio britannico dell\'oceano indiano\"}', -6.00000000, 71.50000000, '????????', 'U+1F1EE U+1F1F4', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(33, 'Brunei', 'BRN', 'BN', '673', 'Bandar Seri Begawan', 'BND', 'B$', '.bn', 'Negara Brunei Darussalam', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia\\/Brunei\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"BNT\",\"tzName\":\"Brunei Darussalam Time\"}]', '{\"br\":\"Brunei\",\"pt\":\"Brunei\",\"nl\":\"Brunei\",\"hr\":\"Brunej\",\"fa\":\"????????????\",\"de\":\"Brunei\",\"es\":\"Brunei\",\"fr\":\"Brunei\",\"ja\":\"?????????????????????????????????\",\"it\":\"Brunei\"}', 4.50000000, 114.66666666, '????????', 'U+1F1E7 U+1F1F3', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q921'),
(34, 'Bulgaria', 'BGR', 'BG', '359', 'Sofia', 'BGN', '????.', '.bg', '????????????????', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe\\/Sofia\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"br\":\"Bulg??ria\",\"pt\":\"Bulg??ria\",\"nl\":\"Bulgarije\",\"hr\":\"Bugarska\",\"fa\":\"??????????????????\",\"de\":\"Bulgarien\",\"es\":\"Bulgaria\",\"fr\":\"Bulgarie\",\"ja\":\"???????????????\",\"it\":\"Bulgaria\"}', 43.00000000, 25.00000000, '????????', 'U+1F1E7 U+1F1EC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q219'),
(35, 'Burkina Faso', 'BFA', 'BF', '226', 'Ouagadougou', 'XOF', 'CFA', '.bf', 'Burkina Faso', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa\\/Ouagadougou\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"br\":\"Burkina Faso\",\"pt\":\"Burquina Faso\",\"nl\":\"Burkina Faso\",\"hr\":\"Burkina Faso\",\"fa\":\"??????????????????????\",\"de\":\"Burkina Faso\",\"es\":\"Burkina Faso\",\"fr\":\"Burkina Faso\",\"ja\":\"?????????????????????\",\"it\":\"Burkina Faso\"}', 13.00000000, -2.00000000, '????????', 'U+1F1E7 U+1F1EB', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q965'),
(36, 'Burundi', 'BDI', 'BI', '257', 'Bujumbura', 'BIF', 'FBu', '.bi', 'Burundi', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa\\/Bujumbura\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"br\":\"Burundi\",\"pt\":\"Bur??ndi\",\"nl\":\"Burundi\",\"hr\":\"Burundi\",\"fa\":\"??????????????\",\"de\":\"Burundi\",\"es\":\"Burundi\",\"fr\":\"Burundi\",\"ja\":\"????????????\",\"it\":\"Burundi\"}', -3.50000000, 30.00000000, '????????', 'U+1F1E7 U+1F1EE', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q967'),
(37, 'Cambodia', 'KHM', 'KH', '855', 'Phnom Penh', 'KHR', 'KHR', '.kh', 'K??mp??ch??a', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia\\/Phnom_Penh\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"ICT\",\"tzName\":\"Indochina Time\"}]', '{\"br\":\"Camboja\",\"pt\":\"Camboja\",\"nl\":\"Cambodja\",\"hr\":\"Kambod??a\",\"fa\":\"????????????\",\"de\":\"Kambodscha\",\"es\":\"Camboya\",\"fr\":\"Cambodge\",\"ja\":\"???????????????\",\"it\":\"Cambogia\"}', 13.00000000, 105.00000000, '????????', 'U+1F1F0 U+1F1ED', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q424'),
(38, 'Cameroon', 'CMR', 'CM', '237', 'Yaounde', 'XAF', 'FCFA', '.cm', 'Cameroon', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa\\/Douala\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"br\":\"Camar??es\",\"pt\":\"Camar??es\",\"nl\":\"Kameroen\",\"hr\":\"Kamerun\",\"fa\":\"????????????\",\"de\":\"Kamerun\",\"es\":\"Camer??n\",\"fr\":\"Cameroun\",\"ja\":\"???????????????\",\"it\":\"Camerun\"}', 6.00000000, 12.00000000, '????????', 'U+1F1E8 U+1F1F2', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1009'),
(39, 'Canada', 'CAN', 'CA', '1', 'Ottawa', 'CAD', '$', '.ca', 'Canada', 'Americas', 'Northern America', '[{\"zoneName\":\"America\\/Atikokan\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America)\"},{\"zoneName\":\"America\\/Blanc-Sablon\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America\\/Cambridge_Bay\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America\\/Creston\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America\\/Dawson\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America\\/Dawson_Creek\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America\\/Edmonton\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America\\/Fort_Nelson\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America\\/Glace_Bay\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America\\/Goose_Bay\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America\\/Halifax\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America\\/Inuvik\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America\\/Iqaluit\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America\\/Moncton\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America\\/Nipigon\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America\\/Pangnirtung\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America\\/Rainy_River\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America\\/Rankin_Inlet\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America\\/Regina\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America\\/Resolute\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America\\/St_Johns\",\"gmtOffset\":-12600,\"gmtOffsetName\":\"UTC-03:30\",\"abbreviation\":\"NST\",\"tzName\":\"Newfoundland Standard Time\"},{\"zoneName\":\"America\\/Swift_Current\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America\\/Thunder_Bay\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America\\/Toronto\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America\\/Vancouver\",\"gmtOffset\":-28800,\"gmtOffsetName\":\"UTC-08:00\",\"abbreviation\":\"PST\",\"tzName\":\"Pacific Standard Time (North America\"},{\"zoneName\":\"America\\/Whitehorse\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America\\/Winnipeg\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America\\/Yellowknife\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"}]', '{\"br\":\"Canad??\",\"pt\":\"Canad??\",\"nl\":\"Canada\",\"hr\":\"Kanada\",\"fa\":\"????????????\",\"de\":\"Kanada\",\"es\":\"Canad??\",\"fr\":\"Canada\",\"ja\":\"?????????\",\"it\":\"Canada\"}', 60.00000000, -95.00000000, '????????', 'U+1F1E8 U+1F1E6', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q16'),
(40, 'Cape Verde', 'CPV', 'CV', '238', 'Praia', 'CVE', '$', '.cv', 'Cabo Verde', 'Africa', 'Western Africa', '[{\"zoneName\":\"Atlantic\\/Cape_Verde\",\"gmtOffset\":-3600,\"gmtOffsetName\":\"UTC-01:00\",\"abbreviation\":\"CVT\",\"tzName\":\"Cape Verde Time\"}]', '{\"br\":\"Cabo Verde\",\"pt\":\"Cabo Verde\",\"nl\":\"Kaapverdi??\",\"hr\":\"Zelenortska Republika\",\"fa\":\"?????? ??????\",\"de\":\"Kap Verde\",\"es\":\"Cabo Verde\",\"fr\":\"Cap Vert\",\"ja\":\"??????????????????\",\"it\":\"Capo Verde\"}', 16.00000000, -24.00000000, '????????', 'U+1F1E8 U+1F1FB', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1011'),
(41, 'Cayman Islands', 'CYM', 'KY', '+1-345', 'George Town', 'KYD', '$', '.ky', 'Cayman Islands', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Cayman\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"br\":\"Ilhas Cayman\",\"pt\":\"Ilhas Caim??o\",\"nl\":\"Caymaneilanden\",\"hr\":\"Kajmanski otoci\",\"fa\":\"?????????? ????????\",\"de\":\"Kaimaninseln\",\"es\":\"Islas Caim??n\",\"fr\":\"??les Ca??mans\",\"ja\":\"??????????????????\",\"it\":\"Isole Cayman\"}', 19.50000000, -80.50000000, '????????', 'U+1F1F0 U+1F1FE', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(42, 'Central African Republic', 'CAF', 'CF', '236', 'Bangui', 'XAF', 'FCFA', '.cf', 'K??d??r??s??se t?? B??afr??ka', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa\\/Bangui\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"br\":\"Rep??blica Centro-Africana\",\"pt\":\"Rep??blica Centro-Africana\",\"nl\":\"Centraal-Afrikaanse Republiek\",\"hr\":\"Srednjoafri??ka Republika\",\"fa\":\"???????????? ?????????????? ??????????\",\"de\":\"Zentralafrikanische Republik\",\"es\":\"Rep??blica Centroafricana\",\"fr\":\"R??publique centrafricaine\",\"ja\":\"???????????????????????????\",\"it\":\"Repubblica Centrafricana\"}', 7.00000000, 21.00000000, '????????', 'U+1F1E8 U+1F1EB', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q929'),
(43, 'Chad', 'TCD', 'TD', '235', 'N\'Djamena', 'XAF', 'FCFA', '.td', 'Tchad', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa\\/Ndjamena\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"br\":\"Chade\",\"pt\":\"Chade\",\"nl\":\"Tsjaad\",\"hr\":\"??ad\",\"fa\":\"??????\",\"de\":\"Tschad\",\"es\":\"Chad\",\"fr\":\"Tchad\",\"ja\":\"?????????\",\"it\":\"Ciad\"}', 15.00000000, 19.00000000, '????????', 'U+1F1F9 U+1F1E9', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q657'),
(44, 'Chile', 'CHL', 'CL', '56', 'Santiago', 'CLP', '$', '.cl', 'Chile', 'Americas', 'South America', '[{\"zoneName\":\"America\\/Punta_Arenas\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"CLST\",\"tzName\":\"Chile Summer Time\"},{\"zoneName\":\"America\\/Santiago\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"CLST\",\"tzName\":\"Chile Summer Time\"},{\"zoneName\":\"Pacific\\/Easter\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EASST\",\"tzName\":\"Easter Island Summer Time\"}]', '{\"br\":\"Chile\",\"pt\":\"Chile\",\"nl\":\"Chili\",\"hr\":\"??ile\",\"fa\":\"????????\",\"de\":\"Chile\",\"es\":\"Chile\",\"fr\":\"Chili\",\"ja\":\"??????\",\"it\":\"Cile\"}', -30.00000000, -71.00000000, '????????', 'U+1F1E8 U+1F1F1', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q298'),
(45, 'China', 'CHN', 'CN', '86', 'Beijing', 'CNY', '??', '.cn', '??????', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia\\/Shanghai\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"CST\",\"tzName\":\"China Standard Time\"},{\"zoneName\":\"Asia\\/Urumqi\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"XJT\",\"tzName\":\"China Standard Time\"}]', '{\"br\":\"China\",\"pt\":\"China\",\"nl\":\"China\",\"hr\":\"Kina\",\"fa\":\"??????\",\"de\":\"China\",\"es\":\"China\",\"fr\":\"Chine\",\"ja\":\"??????\",\"it\":\"Cina\"}', 35.00000000, 105.00000000, '????????', 'U+1F1E8 U+1F1F3', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q148'),
(46, 'Christmas Island', 'CXR', 'CX', '61', 'Flying Fish Cove', 'AUD', '$', '.cx', 'Christmas Island', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Indian\\/Christmas\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"CXT\",\"tzName\":\"Christmas Island Time\"}]', '{\"br\":\"Ilha Christmas\",\"pt\":\"Ilha do Natal\",\"nl\":\"Christmaseiland\",\"hr\":\"Bo??i??ni otok\",\"fa\":\"?????????? ????????????\",\"de\":\"Weihnachtsinsel\",\"es\":\"Isla de Navidad\",\"fr\":\"??le Christmas\",\"ja\":\"??????????????????\",\"it\":\"Isola di Natale\"}', -10.50000000, 105.66666666, '????????', 'U+1F1E8 U+1F1FD', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(47, 'Cocos (Keeling) Islands', 'CCK', 'CC', '61', 'West Island', 'AUD', '$', '.cc', 'Cocos (Keeling) Islands', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Indian\\/Cocos\",\"gmtOffset\":23400,\"gmtOffsetName\":\"UTC+06:30\",\"abbreviation\":\"CCT\",\"tzName\":\"Cocos Islands Time\"}]', '{\"br\":\"Ilhas Cocos\",\"pt\":\"Ilhas dos Cocos\",\"nl\":\"Cocoseilanden\",\"hr\":\"Kokosovi Otoci\",\"fa\":\"?????????? ??????????\",\"de\":\"Kokosinseln\",\"es\":\"Islas Cocos o Islas Keeling\",\"fr\":\"??les Cocos\",\"ja\":\"????????????????????????????????????\",\"it\":\"Isole Cocos e Keeling\"}', -12.50000000, 96.83333333, '????????', 'U+1F1E8 U+1F1E8', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(48, 'Colombia', 'COL', 'CO', '57', 'Bogota', 'COP', '$', '.co', 'Colombia', 'Americas', 'South America', '[{\"zoneName\":\"America\\/Bogota\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"COT\",\"tzName\":\"Colombia Time\"}]', '{\"br\":\"Col??mbia\",\"pt\":\"Col??mbia\",\"nl\":\"Colombia\",\"hr\":\"Kolumbija\",\"fa\":\"????????????\",\"de\":\"Kolumbien\",\"es\":\"Colombia\",\"fr\":\"Colombie\",\"ja\":\"???????????????\",\"it\":\"Colombia\"}', 4.00000000, -72.00000000, '????????', 'U+1F1E8 U+1F1F4', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q739'),
(49, 'Comoros', 'COM', 'KM', '269', 'Moroni', 'KMF', 'CF', '.km', 'Komori', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian\\/Comoro\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"br\":\"Comores\",\"pt\":\"Comores\",\"nl\":\"Comoren\",\"hr\":\"Komori\",\"fa\":\"??????????\",\"de\":\"Union der Komoren\",\"es\":\"Comoras\",\"fr\":\"Comores\",\"ja\":\"?????????\",\"it\":\"Comore\"}', -12.16666666, 44.25000000, '????????', 'U+1F1F0 U+1F1F2', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q970'),
(50, 'Congo', 'COG', 'CG', '242', 'Brazzaville', 'XAF', 'FC', '.cg', 'R??publique du Congo', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa\\/Brazzaville\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"br\":\"Congo\",\"pt\":\"Congo\",\"nl\":\"Congo [Republiek]\",\"hr\":\"Kongo\",\"fa\":\"????????\",\"de\":\"Kongo\",\"es\":\"Congo\",\"fr\":\"Congo\",\"ja\":\"??????????????????\",\"it\":\"Congo\"}', -1.00000000, 15.00000000, '????????', 'U+1F1E8 U+1F1EC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q971'),
(51, 'Congo The Democratic Republic Of The', 'COD', 'CD', '243', 'Kinshasa', 'CDF', 'FC', '.cd', 'R??publique d??mocratique du Congo', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa\\/Kinshasa\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"},{\"zoneName\":\"Africa\\/Lubumbashi\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"br\":\"RD Congo\",\"pt\":\"RD Congo\",\"nl\":\"Congo [DRC]\",\"hr\":\"Kongo, Demokratska Republika\",\"fa\":\"???????????? ????????\",\"de\":\"Kongo (Dem. Rep.)\",\"es\":\"Congo (Rep. Dem.)\",\"fr\":\"Congo (R??p. d??m.)\",\"ja\":\"????????????????????????\",\"it\":\"Congo (Rep. Dem.)\"}', 0.00000000, 25.00000000, '????????', 'U+1F1E8 U+1F1E9', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q974'),
(52, 'Cook Islands', 'COK', 'CK', '682', 'Avarua', 'NZD', '$', '.ck', 'Cook Islands', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific\\/Rarotonga\",\"gmtOffset\":-36000,\"gmtOffsetName\":\"UTC-10:00\",\"abbreviation\":\"CKT\",\"tzName\":\"Cook Island Time\"}]', '{\"br\":\"Ilhas Cook\",\"pt\":\"Ilhas Cook\",\"nl\":\"Cookeilanden\",\"hr\":\"Cookovo Oto??je\",\"fa\":\"?????????? ??????\",\"de\":\"Cookinseln\",\"es\":\"Islas Cook\",\"fr\":\"??les Cook\",\"ja\":\"???????????????\",\"it\":\"Isole Cook\"}', -21.23333333, -159.76666666, '????????', 'U+1F1E8 U+1F1F0', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q26988'),
(53, 'Costa Rica', 'CRI', 'CR', '506', 'San Jose', 'CRC', '???', '.cr', 'Costa Rica', 'Americas', 'Central America', '[{\"zoneName\":\"America\\/Costa_Rica\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"br\":\"Costa Rica\",\"pt\":\"Costa Rica\",\"nl\":\"Costa Rica\",\"hr\":\"Kostarika\",\"fa\":\"??????????????????\",\"de\":\"Costa Rica\",\"es\":\"Costa Rica\",\"fr\":\"Costa Rica\",\"ja\":\"???????????????\",\"it\":\"Costa Rica\"}', 10.00000000, -84.00000000, '????????', 'U+1F1E8 U+1F1F7', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q800'),
(54, 'Cote D\'Ivoire (Ivory Coast)', 'CIV', 'CI', '225', 'Yamoussoukro', 'XOF', 'CFA', '.ci', NULL, 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa\\/Abidjan\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"br\":\"Costa do Marfim\",\"pt\":\"Costa do Marfim\",\"nl\":\"Ivoorkust\",\"hr\":\"Obala Bjelokosti\",\"fa\":\"???????? ??????\",\"de\":\"Elfenbeink??ste\",\"es\":\"Costa de Marfil\",\"fr\":\"C??te d\'Ivoire\",\"ja\":\"????????????????????????\",\"it\":\"Costa D\'Avorio\"}', 8.00000000, -5.00000000, '????????', 'U+1F1E8 U+1F1EE', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1008'),
(55, 'Croatia (Hrvatska)', 'HRV', 'HR', '385', 'Zagreb', 'HRK', 'kn', '.hr', 'Hrvatska', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe\\/Zagreb\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Cro??cia\",\"pt\":\"Cro??cia\",\"nl\":\"Kroati??\",\"hr\":\"Hrvatska\",\"fa\":\"????????????\",\"de\":\"Kroatien\",\"es\":\"Croacia\",\"fr\":\"Croatie\",\"ja\":\"???????????????\",\"it\":\"Croazia\"}', 45.16666666, 15.50000000, '????????', 'U+1F1ED U+1F1F7', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q224'),
(56, 'Cuba', 'CUB', 'CU', '53', 'Havana', 'CUP', '$', '.cu', 'Cuba', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Havana\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"CST\",\"tzName\":\"Cuba Standard Time\"}]', '{\"br\":\"Cuba\",\"pt\":\"Cuba\",\"nl\":\"Cuba\",\"hr\":\"Kuba\",\"fa\":\"????????\",\"de\":\"Kuba\",\"es\":\"Cuba\",\"fr\":\"Cuba\",\"ja\":\"????????????\",\"it\":\"Cuba\"}', 21.50000000, -80.00000000, '????????', 'U+1F1E8 U+1F1FA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q241'),
(57, 'Cyprus', 'CYP', 'CY', '357', 'Nicosia', 'EUR', '???', '.cy', '????????????', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Asia\\/Famagusta\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Asia\\/Nicosia\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"br\":\"Chipre\",\"pt\":\"Chipre\",\"nl\":\"Cyprus\",\"hr\":\"Cipar\",\"fa\":\"????????\",\"de\":\"Zypern\",\"es\":\"Chipre\",\"fr\":\"Chypre\",\"ja\":\"????????????\",\"it\":\"Cipro\"}', 35.00000000, 33.00000000, '????????', 'U+1F1E8 U+1F1FE', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q229'),
(58, 'Czech Republic', 'CZE', 'CZ', '420', 'Prague', 'CZK', 'K??', '.cz', '??esk?? republika', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe\\/Prague\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Rep??blica Tcheca\",\"pt\":\"Rep??blica Checa\",\"nl\":\"Tsjechi??\",\"hr\":\"??e??ka\",\"fa\":\"???????????? ????\",\"de\":\"Tschechische Republik\",\"es\":\"Rep??blica Checa\",\"fr\":\"R??publique tch??que\",\"ja\":\"?????????\",\"it\":\"Repubblica Ceca\"}', 49.75000000, 15.50000000, '????????', 'U+1F1E8 U+1F1FF', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q213'),
(59, 'Denmark', 'DNK', 'DK', '45', 'Copenhagen', 'DKK', 'Kr.', '.dk', 'Danmark', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe\\/Copenhagen\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Dinamarca\",\"pt\":\"Dinamarca\",\"nl\":\"Denemarken\",\"hr\":\"Danska\",\"fa\":\"??????????????\",\"de\":\"D??nemark\",\"es\":\"Dinamarca\",\"fr\":\"Danemark\",\"ja\":\"???????????????\",\"it\":\"Danimarca\"}', 56.00000000, 10.00000000, '????????', 'U+1F1E9 U+1F1F0', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q35'),
(60, 'Djibouti', 'DJI', 'DJ', '253', 'Djibouti', 'DJF', 'Fdj', '.dj', 'Djibouti', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa\\/Djibouti\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"br\":\"Djibuti\",\"pt\":\"Djibuti\",\"nl\":\"Djibouti\",\"hr\":\"D??ibuti\",\"fa\":\"????????????\",\"de\":\"Dschibuti\",\"es\":\"Yibuti\",\"fr\":\"Djibouti\",\"ja\":\"?????????\",\"it\":\"Gibuti\"}', 11.50000000, 43.00000000, '????????', 'U+1F1E9 U+1F1EF', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q977'),
(61, 'Dominica', 'DMA', 'DM', '+1-767', 'Roseau', 'XCD', '$', '.dm', 'Dominica', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Dominica\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"Dominica\",\"pt\":\"Dominica\",\"nl\":\"Dominica\",\"hr\":\"Dominika\",\"fa\":\"????????????????\",\"de\":\"Dominica\",\"es\":\"Dominica\",\"fr\":\"Dominique\",\"ja\":\"???????????????\",\"it\":\"Dominica\"}', 15.41666666, -61.33333333, '????????', 'U+1F1E9 U+1F1F2', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q784');
INSERT INTO `countries` (`id`, `name`, `iso3`, `iso2`, `phonecode`, `capital`, `currency`, `currency_symbol`, `tld`, `native`, `region`, `subregion`, `timezones`, `translations`, `latitude`, `longitude`, `emoji`, `emojiU`, `coins`, `status`, `created_at`, `updated_at`, `flag`, `wikiDataId`) VALUES
(62, 'Dominican Republic', 'DOM', 'DO', '+1-809 and 1-829', 'Santo Domingo', 'DOP', '$', '.do', 'Rep??blica Dominicana', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Santo_Domingo\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"Rep??blica Dominicana\",\"pt\":\"Rep??blica Dominicana\",\"nl\":\"Dominicaanse Republiek\",\"hr\":\"Dominikanska Republika\",\"fa\":\"???????????? ????????????????\",\"de\":\"Dominikanische Republik\",\"es\":\"Rep??blica Dominicana\",\"fr\":\"R??publique dominicaine\",\"ja\":\"?????????????????????\",\"it\":\"Repubblica Dominicana\"}', 19.00000000, -70.66666666, '????????', 'U+1F1E9 U+1F1F4', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q786'),
(63, 'East Timor', 'TLS', 'TL', '670', 'Dili', 'USD', '$', '.tl', 'Timor-Leste', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia\\/Dili\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"TLT\",\"tzName\":\"Timor Leste Time\"}]', '{\"br\":\"Timor Leste\",\"pt\":\"Timor Leste\",\"nl\":\"Oost-Timor\",\"hr\":\"Isto??ni Timor\",\"fa\":\"?????????? ????????\",\"de\":\"Timor-Leste\",\"es\":\"Timor Oriental\",\"fr\":\"Timor oriental\",\"ja\":\"??????????????????\",\"it\":\"Timor Est\"}', -8.83333333, 125.91666666, '????????', 'U+1F1F9 U+1F1F1', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q574'),
(64, 'Ecuador', 'ECU', 'EC', '593', 'Quito', 'USD', '$', '.ec', 'Ecuador', 'Americas', 'South America', '[{\"zoneName\":\"America\\/Guayaquil\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"ECT\",\"tzName\":\"Ecuador Time\"},{\"zoneName\":\"Pacific\\/Galapagos\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"GALT\",\"tzName\":\"Gal\\u00e1pagos Time\"}]', '{\"br\":\"Equador\",\"pt\":\"Equador\",\"nl\":\"Ecuador\",\"hr\":\"Ekvador\",\"fa\":\"??????????????\",\"de\":\"Ecuador\",\"es\":\"Ecuador\",\"fr\":\"??quateur\",\"ja\":\"???????????????\",\"it\":\"Ecuador\"}', -2.00000000, -77.50000000, '????????', 'U+1F1EA U+1F1E8', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q736'),
(65, 'Egypt', 'EGY', 'EG', '20', 'Cairo', 'EGP', '??.??', '.eg', '?????????', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa\\/Cairo\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"br\":\"Egito\",\"pt\":\"Egipto\",\"nl\":\"Egypte\",\"hr\":\"Egipat\",\"fa\":\"??????\",\"de\":\"??gypten\",\"es\":\"Egipto\",\"fr\":\"??gypte\",\"ja\":\"????????????\",\"it\":\"Egitto\"}', 27.00000000, 30.00000000, '????????', 'U+1F1EA U+1F1EC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q79'),
(66, 'El Salvador', 'SLV', 'SV', '503', 'San Salvador', 'USD', '$', '.sv', 'El Salvador', 'Americas', 'Central America', '[{\"zoneName\":\"America\\/El_Salvador\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"br\":\"El Salvador\",\"pt\":\"El Salvador\",\"nl\":\"El Salvador\",\"hr\":\"Salvador\",\"fa\":\"????????????????????\",\"de\":\"El Salvador\",\"es\":\"El Salvador\",\"fr\":\"Salvador\",\"ja\":\"?????????????????????\",\"it\":\"El Salvador\"}', 13.83333333, -88.91666666, '????????', 'U+1F1F8 U+1F1FB', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q792'),
(67, 'Equatorial Guinea', 'GNQ', 'GQ', '240', 'Malabo', 'XAF', 'FCFA', '.gq', 'Guinea Ecuatorial', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa\\/Malabo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"br\":\"Guin?? Equatorial\",\"pt\":\"Guin?? Equatorial\",\"nl\":\"Equatoriaal-Guinea\",\"hr\":\"Ekvatorijalna Gvineja\",\"fa\":\"???????? ??????????????\",\"de\":\"??quatorial-Guinea\",\"es\":\"Guinea Ecuatorial\",\"fr\":\"Guin??e-??quatoriale\",\"ja\":\"???????????????\",\"it\":\"Guinea Equatoriale\"}', 2.00000000, 10.00000000, '????????', 'U+1F1EC U+1F1F6', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q983'),
(68, 'Eritrea', 'ERI', 'ER', '291', 'Asmara', 'ERN', 'Nfk', '.er', '????????????', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa\\/Asmara\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"br\":\"Eritreia\",\"pt\":\"Eritreia\",\"nl\":\"Eritrea\",\"hr\":\"Eritreja\",\"fa\":\"????????????\",\"de\":\"Eritrea\",\"es\":\"Eritrea\",\"fr\":\"??rythr??e\",\"ja\":\"???????????????\",\"it\":\"Eritrea\"}', 15.00000000, 39.00000000, '????????', 'U+1F1EA U+1F1F7', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q986'),
(69, 'Estonia', 'EST', 'EE', '372', 'Tallinn', 'EUR', '???', '.ee', 'Eesti', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe\\/Tallinn\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"br\":\"Est??nia\",\"pt\":\"Est??nia\",\"nl\":\"Estland\",\"hr\":\"Estonija\",\"fa\":\"????????????\",\"de\":\"Estland\",\"es\":\"Estonia\",\"fr\":\"Estonie\",\"ja\":\"???????????????\",\"it\":\"Estonia\"}', 59.00000000, 26.00000000, '????????', 'U+1F1EA U+1F1EA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q191'),
(70, 'Ethiopia', 'ETH', 'ET', '251', 'Addis Ababa', 'ETB', 'Nkf', '.et', '???????????????', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa\\/Addis_Ababa\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"br\":\"Eti??pia\",\"pt\":\"Eti??pia\",\"nl\":\"Ethiopi??\",\"hr\":\"Etiopija\",\"fa\":\"????????????\",\"de\":\"??thiopien\",\"es\":\"Etiop??a\",\"fr\":\"??thiopie\",\"ja\":\"???????????????\",\"it\":\"Etiopia\"}', 8.00000000, 38.00000000, '????????', 'U+1F1EA U+1F1F9', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q115'),
(71, 'Falkland Islands', 'FLK', 'FK', '500', 'Stanley', 'FKP', '??', '.fk', 'Falkland Islands', 'Americas', 'South America', '[{\"zoneName\":\"Atlantic\\/Stanley\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"FKST\",\"tzName\":\"Falkland Islands Summer Time\"}]', '{\"br\":\"Ilhas Malvinas\",\"pt\":\"Ilhas Falkland\",\"nl\":\"Falklandeilanden [Islas Malvinas]\",\"hr\":\"Falklandski Otoci\",\"fa\":\"?????????? ??????????????\",\"de\":\"Falklandinseln\",\"es\":\"Islas Malvinas\",\"fr\":\"??les Malouines\",\"ja\":\"????????????????????????????????????????????????\",\"it\":\"Isole Falkland o Isole Malvine\"}', -51.75000000, -59.00000000, '????????', 'U+1F1EB U+1F1F0', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(72, 'Faroe Islands', 'FRO', 'FO', '298', 'Torshavn', 'DKK', 'Kr.', '.fo', 'F??royar', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Atlantic\\/Faroe\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"WET\",\"tzName\":\"Western European Time\"}]', '{\"br\":\"Ilhas Faro??\",\"pt\":\"Ilhas Faro??\",\"nl\":\"Faer??er\",\"hr\":\"Farski Otoci\",\"fa\":\"?????????? ????????\",\"de\":\"F??r??er-Inseln\",\"es\":\"Islas Faroe\",\"fr\":\"??les F??ro??\",\"ja\":\"??????????????????\",\"it\":\"Isole Far Oer\"}', 62.00000000, -7.00000000, '????????', 'U+1F1EB U+1F1F4', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(73, 'Fiji Islands', 'FJI', 'FJ', '679', 'Suva', 'FJD', 'FJ$', '.fj', 'Fiji', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific\\/Fiji\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"FJT\",\"tzName\":\"Fiji Time\"}]', '{\"br\":\"Fiji\",\"pt\":\"Fiji\",\"nl\":\"Fiji\",\"hr\":\"Fi??i\",\"fa\":\"????????\",\"de\":\"Fidschi\",\"es\":\"Fiyi\",\"fr\":\"Fidji\",\"ja\":\"????????????\",\"it\":\"Figi\"}', -18.00000000, 175.00000000, '????????', 'U+1F1EB U+1F1EF', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q712'),
(74, 'Finland', 'FIN', 'FI', '358', 'Helsinki', 'EUR', '???', '.fi', 'Suomi', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe\\/Helsinki\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"br\":\"Finl??ndia\",\"pt\":\"Finl??ndia\",\"nl\":\"Finland\",\"hr\":\"Finska\",\"fa\":\"????????????\",\"de\":\"Finnland\",\"es\":\"Finlandia\",\"fr\":\"Finlande\",\"ja\":\"??????????????????\",\"it\":\"Finlandia\"}', 64.00000000, 26.00000000, '????????', 'U+1F1EB U+1F1EE', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q33'),
(75, 'France', 'FRA', 'FR', '33', 'Paris', 'EUR', '???', '.fr', 'France', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe\\/Paris\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Fran??a\",\"pt\":\"Fran??a\",\"nl\":\"Frankrijk\",\"hr\":\"Francuska\",\"fa\":\"????????????\",\"de\":\"Frankreich\",\"es\":\"Francia\",\"fr\":\"France\",\"ja\":\"????????????\",\"it\":\"Francia\"}', 46.00000000, 2.00000000, '????????', 'U+1F1EB U+1F1F7', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q142'),
(76, 'French Guiana', 'GUF', 'GF', '594', 'Cayenne', 'EUR', '???', '.gf', 'Guyane fran??aise', 'Americas', 'South America', '[{\"zoneName\":\"America\\/Cayenne\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"GFT\",\"tzName\":\"French Guiana Time\"}]', '{\"br\":\"Guiana Francesa\",\"pt\":\"Guiana Francesa\",\"nl\":\"Frans-Guyana\",\"hr\":\"Francuska Gvajana\",\"fa\":\"?????????? ????????????\",\"de\":\"Franz??sisch Guyana\",\"es\":\"Guayana Francesa\",\"fr\":\"Guayane\",\"ja\":\"????????????????????????\",\"it\":\"Guyana francese\"}', 4.00000000, -53.00000000, '????????', 'U+1F1EC U+1F1EB', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(77, 'French Polynesia', 'PYF', 'PF', '689', 'Papeete', 'XPF', '???', '.pf', 'Polyn??sie fran??aise', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific\\/Gambier\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"GAMT\",\"tzName\":\"Gambier Islands Time\"},{\"zoneName\":\"Pacific\\/Marquesas\",\"gmtOffset\":-34200,\"gmtOffsetName\":\"UTC-09:30\",\"abbreviation\":\"MART\",\"tzName\":\"Marquesas Islands Time\"},{\"zoneName\":\"Pacific\\/Tahiti\",\"gmtOffset\":-36000,\"gmtOffsetName\":\"UTC-10:00\",\"abbreviation\":\"TAHT\",\"tzName\":\"Tahiti Time\"}]', '{\"br\":\"Polin??sia Francesa\",\"pt\":\"Polin??sia Francesa\",\"nl\":\"Frans-Polynesi??\",\"hr\":\"Francuska Polinezija\",\"fa\":\"??????????????? ????????????\",\"de\":\"Franz??sisch-Polynesien\",\"es\":\"Polinesia Francesa\",\"fr\":\"Polyn??sie fran??aise\",\"ja\":\"??????????????????????????????\",\"it\":\"Polinesia Francese\"}', -15.00000000, -140.00000000, '????????', 'U+1F1F5 U+1F1EB', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(78, 'French Southern Territories', 'ATF', 'TF', '', 'Port-aux-Francais', 'EUR', '???', '.tf', 'Territoire des Terres australes et antarctiques fr', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Indian\\/Kerguelen\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"TFT\",\"tzName\":\"French Southern and Antarctic Time\"}]', '{\"br\":\"Terras Austrais e Ant??rticas Francesas\",\"pt\":\"Terras Austrais e Ant??rticas Francesas\",\"nl\":\"Franse Gebieden in de zuidelijke Indische Oceaan\",\"hr\":\"Francuski ju??ni i antarkti??ki teritoriji\",\"fa\":\"????????????????????? ?????????? ?? ???????????????? ????????????\",\"de\":\"Franz??sische S??d- und Antarktisgebiete\",\"es\":\"Tierras Australes y Ant??rticas Francesas\",\"fr\":\"Terres australes et antarctiques fran??aises\",\"ja\":\"????????????????????????????????????\",\"it\":\"Territori Francesi del Sud\"}', -49.25000000, 69.16700000, '????????', 'U+1F1F9 U+1F1EB', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(79, 'Gabon', 'GAB', 'GA', '241', 'Libreville', 'XAF', 'FCFA', '.ga', 'Gabon', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa\\/Libreville\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"br\":\"Gab??o\",\"pt\":\"Gab??o\",\"nl\":\"Gabon\",\"hr\":\"Gabon\",\"fa\":\"????????\",\"de\":\"Gabun\",\"es\":\"Gab??n\",\"fr\":\"Gabon\",\"ja\":\"?????????\",\"it\":\"Gabon\"}', -1.00000000, 11.75000000, '????????', 'U+1F1EC U+1F1E6', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1000'),
(80, 'Gambia The', 'GMB', 'GM', '220', 'Banjul', 'GMD', 'D', '.gm', 'Gambia', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa\\/Banjul\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"br\":\"G??mbia\",\"pt\":\"G??mbia\",\"nl\":\"Gambia\",\"hr\":\"Gambija\",\"fa\":\"????????????\",\"de\":\"Gambia\",\"es\":\"Gambia\",\"fr\":\"Gambie\",\"ja\":\"????????????\",\"it\":\"Gambia\"}', 13.46666666, -16.56666666, '????????', 'U+1F1EC U+1F1F2', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1005'),
(81, 'Georgia', 'GEO', 'GE', '995', 'Tbilisi', 'GEL', '???', '.ge', '??????????????????????????????', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia\\/Tbilisi\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"GET\",\"tzName\":\"Georgia Standard Time\"}]', '{\"br\":\"Ge??rgia\",\"pt\":\"Ge??rgia\",\"nl\":\"Georgi??\",\"hr\":\"Gruzija\",\"fa\":\"??????????????\",\"de\":\"Georgien\",\"es\":\"Georgia\",\"fr\":\"G??orgie\",\"ja\":\"????????????\",\"it\":\"Georgia\"}', 42.00000000, 43.50000000, '????????', 'U+1F1EC U+1F1EA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q230'),
(82, 'Germany', 'DEU', 'DE', '49', 'Berlin', 'EUR', '???', '.de', 'Deutschland', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe\\/Berlin\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"},{\"zoneName\":\"Europe\\/Busingen\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Alemanha\",\"pt\":\"Alemanha\",\"nl\":\"Duitsland\",\"hr\":\"Njema??ka\",\"fa\":\"??????????\",\"de\":\"Deutschland\",\"es\":\"Alemania\",\"fr\":\"Allemagne\",\"ja\":\"?????????\",\"it\":\"Germania\"}', 51.00000000, 9.00000000, '????????', 'U+1F1E9 U+1F1EA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q183'),
(83, 'Ghana', 'GHA', 'GH', '233', 'Accra', 'GHS', 'GH???', '.gh', 'Ghana', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa\\/Accra\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"br\":\"Gana\",\"pt\":\"Gana\",\"nl\":\"Ghana\",\"hr\":\"Gana\",\"fa\":\"??????\",\"de\":\"Ghana\",\"es\":\"Ghana\",\"fr\":\"Ghana\",\"ja\":\"?????????\",\"it\":\"Ghana\"}', 8.00000000, -2.00000000, '????????', 'U+1F1EC U+1F1ED', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q117'),
(84, 'Gibraltar', 'GIB', 'GI', '350', 'Gibraltar', 'GIP', '??', '.gi', 'Gibraltar', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe\\/Gibraltar\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Gibraltar\",\"pt\":\"Gibraltar\",\"nl\":\"Gibraltar\",\"hr\":\"Gibraltar\",\"fa\":\"?????????????????\",\"de\":\"Gibraltar\",\"es\":\"Gibraltar\",\"fr\":\"Gibraltar\",\"ja\":\"??????????????????\",\"it\":\"Gibilterra\"}', 36.13333333, -5.35000000, '????????', 'U+1F1EC U+1F1EE', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(85, 'Greece', 'GRC', 'GR', '30', 'Athens', 'EUR', '???', '.gr', '????????????', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe\\/Athens\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"br\":\"Gr??cia\",\"pt\":\"Gr??cia\",\"nl\":\"Griekenland\",\"hr\":\"Gr??ka\",\"fa\":\"??????????\",\"de\":\"Griechenland\",\"es\":\"Grecia\",\"fr\":\"Gr??ce\",\"ja\":\"????????????\",\"it\":\"Grecia\"}', 39.00000000, 22.00000000, '????????', 'U+1F1EC U+1F1F7', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q41'),
(86, 'Greenland', 'GRL', 'GL', '299', 'Nuuk', 'DKK', 'Kr.', '.gl', 'Kalaallit Nunaat', 'Americas', 'Northern America', '[{\"zoneName\":\"America\\/Danmarkshavn\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"},{\"zoneName\":\"America\\/Nuuk\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"WGT\",\"tzName\":\"West Greenland Time\"},{\"zoneName\":\"America\\/Scoresbysund\",\"gmtOffset\":-3600,\"gmtOffsetName\":\"UTC-01:00\",\"abbreviation\":\"EGT\",\"tzName\":\"Eastern Greenland Time\"},{\"zoneName\":\"America\\/Thule\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"Groel??ndia\",\"pt\":\"Gronel??ndia\",\"nl\":\"Groenland\",\"hr\":\"Grenland\",\"fa\":\"??????????????\",\"de\":\"Gr??nland\",\"es\":\"Groenlandia\",\"fr\":\"Groenland\",\"ja\":\"?????????????????????\",\"it\":\"Groenlandia\"}', 72.00000000, -40.00000000, '????????', 'U+1F1EC U+1F1F1', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(87, 'Grenada', 'GRD', 'GD', '+1-473', 'St. George\'s', 'XCD', '$', '.gd', 'Grenada', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Grenada\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"Granada\",\"pt\":\"Granada\",\"nl\":\"Grenada\",\"hr\":\"Grenada\",\"fa\":\"????????????\",\"de\":\"Grenada\",\"es\":\"Grenada\",\"fr\":\"Grenade\",\"ja\":\"????????????\",\"it\":\"Grenada\"}', 12.11666666, -61.66666666, '????????', 'U+1F1EC U+1F1E9', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q769'),
(88, 'Guadeloupe', 'GLP', 'GP', '590', 'Basse-Terre', 'EUR', '???', '.gp', 'Guadeloupe', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Guadeloupe\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"Guadalupe\",\"pt\":\"Guadalupe\",\"nl\":\"Guadeloupe\",\"hr\":\"Gvadalupa\",\"fa\":\"?????????? ??????????????\",\"de\":\"Guadeloupe\",\"es\":\"Guadalupe\",\"fr\":\"Guadeloupe\",\"ja\":\"??????????????????\",\"it\":\"Guadeloupa\"}', 16.25000000, -61.58333300, '????????', 'U+1F1EC U+1F1F5', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(89, 'Guam', 'GUM', 'GU', '+1-671', 'Hagatna', 'USD', '$', '.gu', 'Guam', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific\\/Guam\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"CHST\",\"tzName\":\"Chamorro Standard Time\"}]', '{\"br\":\"Guam\",\"pt\":\"Guame\",\"nl\":\"Guam\",\"hr\":\"Guam\",\"fa\":\"????????\",\"de\":\"Guam\",\"es\":\"Guam\",\"fr\":\"Guam\",\"ja\":\"?????????\",\"it\":\"Guam\"}', 13.46666666, 144.78333333, '????????', 'U+1F1EC U+1F1FA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(90, 'Guatemala', 'GTM', 'GT', '502', 'Guatemala City', 'GTQ', 'Q', '.gt', 'Guatemala', 'Americas', 'Central America', '[{\"zoneName\":\"America\\/Guatemala\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"br\":\"Guatemala\",\"pt\":\"Guatemala\",\"nl\":\"Guatemala\",\"hr\":\"Gvatemala\",\"fa\":\"????????????????\",\"de\":\"Guatemala\",\"es\":\"Guatemala\",\"fr\":\"Guatemala\",\"ja\":\"???????????????\",\"it\":\"Guatemala\"}', 15.50000000, -90.25000000, '????????', 'U+1F1EC U+1F1F9', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q774'),
(91, 'Guernsey and Alderney', 'GGY', 'GG', '+44-1481', 'St Peter Port', 'GBP', '??', '.gg', 'Guernsey', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe\\/Guernsey\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"br\":\"Guernsey\",\"pt\":\"Guernsey\",\"nl\":\"Guernsey\",\"hr\":\"Guernsey\",\"fa\":\"??????????\",\"de\":\"Guernsey\",\"es\":\"Guernsey\",\"fr\":\"Guernesey\",\"ja\":\"???????????????\",\"it\":\"Guernsey\"}', 49.46666666, -2.58333333, '????????', 'U+1F1EC U+1F1EC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(92, 'Guinea', 'GIN', 'GN', '224', 'Conakry', 'GNF', 'FG', '.gn', 'Guin??e', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa\\/Conakry\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"br\":\"Guin??\",\"pt\":\"Guin??\",\"nl\":\"Guinee\",\"hr\":\"Gvineja\",\"fa\":\"????????\",\"de\":\"Guinea\",\"es\":\"Guinea\",\"fr\":\"Guin??e\",\"ja\":\"?????????\",\"it\":\"Guinea\"}', 11.00000000, -10.00000000, '????????', 'U+1F1EC U+1F1F3', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1006'),
(93, 'Guinea-Bissau', 'GNB', 'GW', '245', 'Bissau', 'XOF', 'CFA', '.gw', 'Guin??-Bissau', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa\\/Bissau\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"br\":\"Guin??-Bissau\",\"pt\":\"Guin??-Bissau\",\"nl\":\"Guinee-Bissau\",\"hr\":\"Gvineja Bisau\",\"fa\":\"???????? ????????????\",\"de\":\"Guinea-Bissau\",\"es\":\"Guinea-Bis??u\",\"fr\":\"Guin??e-Bissau\",\"ja\":\"??????????????????\",\"it\":\"Guinea-Bissau\"}', 12.00000000, -15.00000000, '????????', 'U+1F1EC U+1F1FC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1007'),
(94, 'Guyana', 'GUY', 'GY', '592', 'Georgetown', 'GYD', '$', '.gy', 'Guyana', 'Americas', 'South America', '[{\"zoneName\":\"America\\/Guyana\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"GYT\",\"tzName\":\"Guyana Time\"}]', '{\"br\":\"Guiana\",\"pt\":\"Guiana\",\"nl\":\"Guyana\",\"hr\":\"Gvajana\",\"fa\":\"??????????\",\"de\":\"Guyana\",\"es\":\"Guyana\",\"fr\":\"Guyane\",\"ja\":\"????????????\",\"it\":\"Guyana\"}', 5.00000000, -59.00000000, '????????', 'U+1F1EC U+1F1FE', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q734'),
(95, 'Haiti', 'HTI', 'HT', '509', 'Port-au-Prince', 'HTG', 'G', '.ht', 'Ha??ti', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Port-au-Prince\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"br\":\"Haiti\",\"pt\":\"Haiti\",\"nl\":\"Ha??ti\",\"hr\":\"Haiti\",\"fa\":\"????????????\",\"de\":\"Haiti\",\"es\":\"Haiti\",\"fr\":\"Ha??ti\",\"ja\":\"?????????\",\"it\":\"Haiti\"}', 19.00000000, -72.41666666, '????????', 'U+1F1ED U+1F1F9', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q790'),
(96, 'Heard Island and McDonald Islands', 'HMD', 'HM', '', '', 'AUD', '$', '.hm', 'Heard Island and McDonald Islands', '', '', '[{\"zoneName\":\"Indian\\/Kerguelen\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"TFT\",\"tzName\":\"French Southern and Antarctic Time\"}]', '{\"br\":\"Ilha Heard e Ilhas McDonald\",\"pt\":\"Ilha Heard e Ilhas McDonald\",\"nl\":\"Heard- en McDonaldeilanden\",\"hr\":\"Otok Heard i oto??je McDonald\",\"fa\":\"?????????? ?????? ?? ?????????? ???????????????????\",\"de\":\"Heard und die McDonaldinseln\",\"es\":\"Islas Heard y McDonald\",\"fr\":\"??les Heard-et-MacDonald\",\"ja\":\"???????????????????????????????????????\",\"it\":\"Isole Heard e McDonald\"}', -53.10000000, 72.51666666, '????????', 'U+1F1ED U+1F1F2', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(97, 'Honduras', 'HND', 'HN', '504', 'Tegucigalpa', 'HNL', 'L', '.hn', 'Honduras', 'Americas', 'Central America', '[{\"zoneName\":\"America\\/Tegucigalpa\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"br\":\"Honduras\",\"pt\":\"Honduras\",\"nl\":\"Honduras\",\"hr\":\"Honduras\",\"fa\":\"??????????????\",\"de\":\"Honduras\",\"es\":\"Honduras\",\"fr\":\"Honduras\",\"ja\":\"??????????????????\",\"it\":\"Honduras\"}', 15.00000000, -86.50000000, '????????', 'U+1F1ED U+1F1F3', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q783'),
(98, 'Hong Kong S.A.R.', 'HKG', 'HK', '852', 'Hong Kong', 'HKD', '$', '.hk', '??????', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia\\/Hong_Kong\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"HKT\",\"tzName\":\"Hong Kong Time\"}]', '{\"br\":\"Hong Kong\",\"pt\":\"Hong Kong\",\"nl\":\"Hongkong\",\"hr\":\"Hong Kong\",\"fa\":\"???????????????\",\"de\":\"Hong Kong\",\"es\":\"Hong Kong\",\"fr\":\"Hong Kong\",\"ja\":\"??????\",\"it\":\"Hong Kong\"}', 22.25000000, 114.16666666, '????????', 'U+1F1ED U+1F1F0', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(99, 'Hungary', 'HUN', 'HU', '36', 'Budapest', 'HUF', 'Ft', '.hu', 'Magyarorsz??g', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe\\/Budapest\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Hungria\",\"pt\":\"Hungria\",\"nl\":\"Hongarije\",\"hr\":\"Ma??arska\",\"fa\":\"????????????????\",\"de\":\"Ungarn\",\"es\":\"Hungr??a\",\"fr\":\"Hongrie\",\"ja\":\"???????????????\",\"it\":\"Ungheria\"}', 47.00000000, 20.00000000, '????????', 'U+1F1ED U+1F1FA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q28'),
(100, 'Iceland', 'ISL', 'IS', '354', 'Reykjavik', 'ISK', 'kr', '.is', '??sland', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Atlantic\\/Reykjavik\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"br\":\"Isl??ndia\",\"pt\":\"Isl??ndia\",\"nl\":\"IJsland\",\"hr\":\"Island\",\"fa\":\"????????????\",\"de\":\"Island\",\"es\":\"Islandia\",\"fr\":\"Islande\",\"ja\":\"??????????????????\",\"it\":\"Islanda\"}', 65.00000000, -18.00000000, '????????', 'U+1F1EE U+1F1F8', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q189'),
(101, 'India', 'IND', 'IN', '91', 'New Delhi', 'INR', '???', '.in', '????????????', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia\\/Kolkata\",\"gmtOffset\":19800,\"gmtOffsetName\":\"UTC+05:30\",\"abbreviation\":\"IST\",\"tzName\":\"Indian Standard Time\"}]', '{\"br\":\"??ndia\",\"pt\":\"??ndia\",\"nl\":\"India\",\"hr\":\"Indija\",\"fa\":\"??????\",\"de\":\"Indien\",\"es\":\"India\",\"fr\":\"Inde\",\"ja\":\"?????????\",\"it\":\"India\"}', 20.00000000, 77.00000000, '????????', 'U+1F1EE U+1F1F3', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q668'),
(102, 'Indonesia', 'IDN', 'ID', '62', 'Jakarta', 'IDR', 'Rp', '.id', 'Indonesia', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia\\/Jakarta\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"WIB\",\"tzName\":\"Western Indonesian Time\"},{\"zoneName\":\"Asia\\/Jayapura\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"WIT\",\"tzName\":\"Eastern Indonesian Time\"},{\"zoneName\":\"Asia\\/Makassar\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"WITA\",\"tzName\":\"Central Indonesia Time\"},{\"zoneName\":\"Asia\\/Pontianak\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"WIB\",\"tzName\":\"Western Indonesian Time\"}]', '{\"br\":\"Indon??sia\",\"pt\":\"Indon??sia\",\"nl\":\"Indonesi??\",\"hr\":\"Indonezija\",\"fa\":\"??????????????\",\"de\":\"Indonesien\",\"es\":\"Indonesia\",\"fr\":\"Indon??sie\",\"ja\":\"??????????????????\",\"it\":\"Indonesia\"}', -5.00000000, 120.00000000, '????????', 'U+1F1EE U+1F1E9', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q252'),
(103, 'Iran', 'IRN', 'IR', '98', 'Tehran', 'IRR', '???', '.ir', '??????????', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia\\/Tehran\",\"gmtOffset\":12600,\"gmtOffsetName\":\"UTC+03:30\",\"abbreviation\":\"IRDT\",\"tzName\":\"Iran Daylight Time\"}]', '{\"br\":\"Ir??\",\"pt\":\"Ir??o\",\"nl\":\"Iran\",\"hr\":\"Iran\",\"fa\":\"??????????\",\"de\":\"Iran\",\"es\":\"Iran\",\"fr\":\"Iran\",\"ja\":\"?????????????????????????????????\"}', 32.00000000, 53.00000000, '????????', 'U+1F1EE U+1F1F7', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q794'),
(104, 'Iraq', 'IRQ', 'IQ', '964', 'Baghdad', 'IQD', '??.??', '.iq', '????????????', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia\\/Baghdad\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"br\":\"Iraque\",\"pt\":\"Iraque\",\"nl\":\"Irak\",\"hr\":\"Irak\",\"fa\":\"????????\",\"de\":\"Irak\",\"es\":\"Irak\",\"fr\":\"Irak\",\"ja\":\"?????????\",\"it\":\"Iraq\"}', 33.00000000, 44.00000000, '????????', 'U+1F1EE U+1F1F6', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q796'),
(105, 'Ireland', 'IRL', 'IE', '353', 'Dublin', 'EUR', '???', '.ie', '??ire', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe\\/Dublin\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"br\":\"Irlanda\",\"pt\":\"Irlanda\",\"nl\":\"Ierland\",\"hr\":\"Irska\",\"fa\":\"????????????\",\"de\":\"Irland\",\"es\":\"Irlanda\",\"fr\":\"Irlande\",\"ja\":\"??????????????????\",\"it\":\"Irlanda\"}', 53.00000000, -8.00000000, '????????', 'U+1F1EE U+1F1EA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q27'),
(106, 'Israel', 'ISR', 'IL', '972', 'Jerusalem', 'ILS', '???', '.il', '????????????????????', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia\\/Jerusalem\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"IST\",\"tzName\":\"Israel Standard Time\"}]', '{\"br\":\"Israel\",\"pt\":\"Israel\",\"nl\":\"Isra??l\",\"hr\":\"Izrael\",\"fa\":\"??????????????\",\"de\":\"Israel\",\"es\":\"Israel\",\"fr\":\"Isra??l\",\"ja\":\"???????????????\",\"it\":\"Israele\"}', 31.50000000, 34.75000000, '????????', 'U+1F1EE U+1F1F1', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q801'),
(107, 'Italy', 'ITA', 'IT', '39', 'Rome', 'EUR', '???', '.it', 'Italia', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe\\/Rome\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"It??lia\",\"pt\":\"It??lia\",\"nl\":\"Itali??\",\"hr\":\"Italija\",\"fa\":\"??????????????\",\"de\":\"Italien\",\"es\":\"Italia\",\"fr\":\"Italie\",\"ja\":\"????????????\",\"it\":\"Italia\"}', 42.83333333, 12.83333333, '????????', 'U+1F1EE U+1F1F9', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q38'),
(108, 'Jamaica', 'JAM', 'JM', '+1-876', 'Kingston', 'JMD', 'J$', '.jm', 'Jamaica', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Jamaica\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"br\":\"Jamaica\",\"pt\":\"Jamaica\",\"nl\":\"Jamaica\",\"hr\":\"Jamajka\",\"fa\":\"????????????????\",\"de\":\"Jamaika\",\"es\":\"Jamaica\",\"fr\":\"Jama??que\",\"ja\":\"???????????????\",\"it\":\"Giamaica\"}', 18.25000000, -77.50000000, '????????', 'U+1F1EF U+1F1F2', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q766'),
(109, 'Japan', 'JPN', 'JP', '81', 'Tokyo', 'JPY', '??', '.jp', '??????', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia\\/Tokyo\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"JST\",\"tzName\":\"Japan Standard Time\"}]', '{\"br\":\"Jap??o\",\"pt\":\"Jap??o\",\"nl\":\"Japan\",\"hr\":\"Japan\",\"fa\":\"????????\",\"de\":\"Japan\",\"es\":\"Jap??n\",\"fr\":\"Japon\",\"ja\":\"??????\",\"it\":\"Giappone\"}', 36.00000000, 138.00000000, '????????', 'U+1F1EF U+1F1F5', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q17'),
(110, 'Jersey', 'JEY', 'JE', '+44-1534', 'Saint Helier', 'GBP', '??', '.je', 'Jersey', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe\\/Jersey\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"br\":\"Jersey\",\"pt\":\"Jersey\",\"nl\":\"Jersey\",\"hr\":\"Jersey\",\"fa\":\"????????\",\"de\":\"Jersey\",\"es\":\"Jersey\",\"fr\":\"Jersey\",\"ja\":\"???????????????\",\"it\":\"Isola di Jersey\"}', 49.25000000, -2.16666666, '????????', 'U+1F1EF U+1F1EA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q785'),
(111, 'Jordan', 'JOR', 'JO', '962', 'Amman', 'JOD', '??.??', '.jo', '????????????', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia\\/Amman\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"br\":\"Jord??nia\",\"pt\":\"Jord??nia\",\"nl\":\"Jordani??\",\"hr\":\"Jordan\",\"fa\":\"????????\",\"de\":\"Jordanien\",\"es\":\"Jordania\",\"fr\":\"Jordanie\",\"ja\":\"????????????\",\"it\":\"Giordania\"}', 31.00000000, 36.00000000, '????????', 'U+1F1EF U+1F1F4', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q810'),
(112, 'Kazakhstan', 'KAZ', 'KZ', '7', 'Astana', 'KZT', '????', '.kz', '??????????????????', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia\\/Almaty\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"ALMT\",\"tzName\":\"Alma-Ata Time[1\"},{\"zoneName\":\"Asia\\/Aqtau\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"AQTT\",\"tzName\":\"Aqtobe Time\"},{\"zoneName\":\"Asia\\/Aqtobe\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"AQTT\",\"tzName\":\"Aqtobe Time\"},{\"zoneName\":\"Asia\\/Atyrau\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"MSD+1\",\"tzName\":\"Moscow Daylight Time+1\"},{\"zoneName\":\"Asia\\/Oral\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"ORAT\",\"tzName\":\"Oral Time\"},{\"zoneName\":\"Asia\\/Qostanay\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"QYZST\",\"tzName\":\"Qyzylorda Summer Time\"},{\"zoneName\":\"Asia\\/Qyzylorda\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"QYZT\",\"tzName\":\"Qyzylorda Summer Time\"}]', '{\"br\":\"Cazaquist??o\",\"pt\":\"Cazaquist??o\",\"nl\":\"Kazachstan\",\"hr\":\"Kazahstan\",\"fa\":\"????????????????\",\"de\":\"Kasachstan\",\"es\":\"Kazajist??n\",\"fr\":\"Kazakhstan\",\"ja\":\"??????????????????\",\"it\":\"Kazakistan\"}', 48.00000000, 68.00000000, '????????', 'U+1F1F0 U+1F1FF', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q232'),
(113, 'Kenya', 'KEN', 'KE', '254', 'Nairobi', 'KES', 'KSh', '.ke', 'Kenya', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa\\/Nairobi\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"br\":\"Qu??nia\",\"pt\":\"Qu??nia\",\"nl\":\"Kenia\",\"hr\":\"Kenija\",\"fa\":\"????????\",\"de\":\"Kenia\",\"es\":\"Kenia\",\"fr\":\"Kenya\",\"ja\":\"?????????\",\"it\":\"Kenya\"}', 1.00000000, 38.00000000, '????????', 'U+1F1F0 U+1F1EA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q114'),
(114, 'Kiribati', 'KIR', 'KI', '686', 'Tarawa', 'AUD', '$', '.ki', 'Kiribati', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific\\/Enderbury\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"PHOT\",\"tzName\":\"Phoenix Island Time\"},{\"zoneName\":\"Pacific\\/Kiritimati\",\"gmtOffset\":50400,\"gmtOffsetName\":\"UTC+14:00\",\"abbreviation\":\"LINT\",\"tzName\":\"Line Islands Time\"},{\"zoneName\":\"Pacific\\/Tarawa\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"GILT\",\"tzName\":\"Gilbert Island Time\"}]', '{\"br\":\"Kiribati\",\"pt\":\"Quirib??ti\",\"nl\":\"Kiribati\",\"hr\":\"Kiribati\",\"fa\":\"????????????????\",\"de\":\"Kiribati\",\"es\":\"Kiribati\",\"fr\":\"Kiribati\",\"ja\":\"????????????\",\"it\":\"Kiribati\"}', 1.41666666, 173.00000000, '????????', 'U+1F1F0 U+1F1EE', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q710'),
(115, 'Korea North', 'PRK', 'KP', '850', 'Pyongyang', 'KPW', '???', '.kp', '??????', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia\\/Pyongyang\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"KST\",\"tzName\":\"Korea Standard Time\"}]', '{\"br\":\"Coreia do Norte\",\"pt\":\"Coreia do Norte\",\"nl\":\"Noord-Korea\",\"hr\":\"Sjeverna Koreja\",\"fa\":\"?????? ??????????\",\"de\":\"Nordkorea\",\"es\":\"Corea del Norte\",\"fr\":\"Cor??e du Nord\",\"ja\":\"?????????????????????????????????\",\"it\":\"Corea del Nord\"}', 40.00000000, 127.00000000, '????????', 'U+1F1F0 U+1F1F5', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q423'),
(116, 'Korea South', 'KOR', 'KR', '82', 'Seoul', 'KRW', '???', '.kr', '????????????', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia\\/Seoul\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"KST\",\"tzName\":\"Korea Standard Time\"}]', '{\"br\":\"Coreia do Sul\",\"pt\":\"Coreia do Sul\",\"nl\":\"Zuid-Korea\",\"hr\":\"Ju??na Koreja\",\"fa\":\"?????? ??????????\",\"de\":\"S??dkorea\",\"es\":\"Corea del Sur\",\"fr\":\"Cor??e du Sud\",\"ja\":\"????????????\",\"it\":\"Corea del Sud\"}', 37.00000000, 127.50000000, '????????', 'U+1F1F0 U+1F1F7', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q884'),
(117, 'Kuwait', 'KWT', 'KW', '965', 'Kuwait City', 'KWD', '??.??', '.kw', '????????????', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia\\/Kuwait\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"br\":\"Kuwait\",\"pt\":\"Kuwait\",\"nl\":\"Koeweit\",\"hr\":\"Kuvajt\",\"fa\":\"????????\",\"de\":\"Kuwait\",\"es\":\"Kuwait\",\"fr\":\"Kowe??t\",\"ja\":\"???????????????\",\"it\":\"Kuwait\"}', 29.50000000, 45.75000000, '????????', 'U+1F1F0 U+1F1FC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q817'),
(118, 'Kyrgyzstan', 'KGZ', 'KG', '996', 'Bishkek', 'KGS', '????', '.kg', '????????????????????', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia\\/Bishkek\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"KGT\",\"tzName\":\"Kyrgyzstan Time\"}]', '{\"br\":\"Quirguist??o\",\"pt\":\"Quirguizist??o\",\"nl\":\"Kirgizi??\",\"hr\":\"Kirgistan\",\"fa\":\"??????????????????\",\"de\":\"Kirgisistan\",\"es\":\"Kirguizist??n\",\"fr\":\"Kirghizistan\",\"ja\":\"????????????\",\"it\":\"Kirghizistan\"}', 41.00000000, 75.00000000, '????????', 'U+1F1F0 U+1F1EC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q813'),
(119, 'Laos', 'LAO', 'LA', '856', 'Vientiane', 'LAK', '???', '.la', '??????????????????', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia\\/Vientiane\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"ICT\",\"tzName\":\"Indochina Time\"}]', '{\"br\":\"Laos\",\"pt\":\"Laos\",\"nl\":\"Laos\",\"hr\":\"Laos\",\"fa\":\"??????????\",\"de\":\"Laos\",\"es\":\"Laos\",\"fr\":\"Laos\",\"ja\":\"??????????????????????????????\",\"it\":\"Laos\"}', 18.00000000, 105.00000000, '????????', 'U+1F1F1 U+1F1E6', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q819'),
(120, 'Latvia', 'LVA', 'LV', '371', 'Riga', 'EUR', '???', '.lv', 'Latvija', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe\\/Riga\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"br\":\"Let??nia\",\"pt\":\"Let??nia\",\"nl\":\"Letland\",\"hr\":\"Latvija\",\"fa\":\"??????????\",\"de\":\"Lettland\",\"es\":\"Letonia\",\"fr\":\"Lettonie\",\"ja\":\"????????????\",\"it\":\"Lettonia\"}', 57.00000000, 25.00000000, '????????', 'U+1F1F1 U+1F1FB', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q211'),
(121, 'Lebanon', 'LBN', 'LB', '961', 'Beirut', 'LBP', '??', '.lb', '??????????', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia\\/Beirut\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"br\":\"L??bano\",\"pt\":\"L??bano\",\"nl\":\"Libanon\",\"hr\":\"Libanon\",\"fa\":\"??????????\",\"de\":\"Libanon\",\"es\":\"L??bano\",\"fr\":\"Liban\",\"ja\":\"????????????\",\"it\":\"Libano\"}', 33.83333333, 35.83333333, '????????', 'U+1F1F1 U+1F1E7', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q822'),
(122, 'Lesotho', 'LSO', 'LS', '266', 'Maseru', 'LSL', 'L', '.ls', 'Lesotho', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa\\/Maseru\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"SAST\",\"tzName\":\"South African Standard Time\"}]', '{\"br\":\"Lesoto\",\"pt\":\"Lesoto\",\"nl\":\"Lesotho\",\"hr\":\"Lesoto\",\"fa\":\"??????????\",\"de\":\"Lesotho\",\"es\":\"Lesotho\",\"fr\":\"Lesotho\",\"ja\":\"?????????\",\"it\":\"Lesotho\"}', -29.50000000, 28.50000000, '????????', 'U+1F1F1 U+1F1F8', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1013'),
(123, 'Liberia', 'LBR', 'LR', '231', 'Monrovia', 'LRD', '$', '.lr', 'Liberia', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa\\/Monrovia\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"br\":\"Lib??ria\",\"pt\":\"Lib??ria\",\"nl\":\"Liberia\",\"hr\":\"Liberija\",\"fa\":\"????????????\",\"de\":\"Liberia\",\"es\":\"Liberia\",\"fr\":\"Liberia\",\"ja\":\"????????????\",\"it\":\"Liberia\"}', 6.50000000, -9.50000000, '????????', 'U+1F1F1 U+1F1F7', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1014'),
(124, 'Libya', 'LBY', 'LY', '218', 'Tripolis', 'LYD', '??.??', '.ly', '?????????????', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa\\/Tripoli\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"br\":\"L??bia\",\"pt\":\"L??bia\",\"nl\":\"Libi??\",\"hr\":\"Libija\",\"fa\":\"????????\",\"de\":\"Libyen\",\"es\":\"Libia\",\"fr\":\"Libye\",\"ja\":\"?????????\",\"it\":\"Libia\"}', 25.00000000, 17.00000000, '????????', 'U+1F1F1 U+1F1FE', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1016'),
(125, 'Liechtenstein', 'LIE', 'LI', '423', 'Vaduz', 'CHF', 'CHf', '.li', 'Liechtenstein', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe\\/Vaduz\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Liechtenstein\",\"pt\":\"Listenstaine\",\"nl\":\"Liechtenstein\",\"hr\":\"Lihten??tajn\",\"fa\":\"?????????????????????????\",\"de\":\"Liechtenstein\",\"es\":\"Liechtenstein\",\"fr\":\"Liechtenstein\",\"ja\":\"???????????????????????????\",\"it\":\"Liechtenstein\"}', 47.26666666, 9.53333333, '????????', 'U+1F1F1 U+1F1EE', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q347'),
(126, 'Lithuania', 'LTU', 'LT', '370', 'Vilnius', 'EUR', '???', '.lt', 'Lietuva', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe\\/Vilnius\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"br\":\"Litu??nia\",\"pt\":\"Litu??nia\",\"nl\":\"Litouwen\",\"hr\":\"Litva\",\"fa\":\"??????????????\",\"de\":\"Litauen\",\"es\":\"Lituania\",\"fr\":\"Lituanie\",\"ja\":\"???????????????\",\"it\":\"Lituania\"}', 56.00000000, 24.00000000, '????????', 'U+1F1F1 U+1F1F9', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q37'),
(127, 'Luxembourg', 'LUX', 'LU', '352', 'Luxembourg', 'EUR', '???', '.lu', 'Luxembourg', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe\\/Luxembourg\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Luxemburgo\",\"pt\":\"Luxemburgo\",\"nl\":\"Luxemburg\",\"hr\":\"Luksemburg\",\"fa\":\"????????????????????\",\"de\":\"Luxemburg\",\"es\":\"Luxemburgo\",\"fr\":\"Luxembourg\",\"ja\":\"?????????????????????\",\"it\":\"Lussemburgo\"}', 49.75000000, 6.16666666, '????????', 'U+1F1F1 U+1F1FA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q32'),
(128, 'Macau S.A.R.', 'MAC', 'MO', '853', 'Macao', 'MOP', '$', '.mo', '??????', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia\\/Macau\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"CST\",\"tzName\":\"China Standard Time\"}]', '{\"br\":\"Macau\",\"pt\":\"Macau\",\"nl\":\"Macao\",\"hr\":\"Makao\",\"fa\":\"??????????\",\"de\":\"Macao\",\"es\":\"Macao\",\"fr\":\"Macao\",\"ja\":\"?????????\",\"it\":\"Macao\"}', 22.16666666, 113.55000000, '????????', 'U+1F1F2 U+1F1F4', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(129, 'Macedonia', 'MKD', 'MK', '389', 'Skopje', 'MKD', '??????', '.mk', '?????????????? ????????????????????', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe\\/Skopje\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Maced??nia\",\"pt\":\"Maced??nia\",\"nl\":\"Macedoni??\",\"hr\":\"Makedonija\",\"fa\":\"\",\"de\":\"Mazedonien\",\"es\":\"Macedonia\",\"fr\":\"Mac??doine\",\"ja\":\"????????????????????????????????????????????????\",\"it\":\"Macedonia\"}', 41.83333333, 22.00000000, '????????', 'U+1F1F2 U+1F1F0', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q221'),
(130, 'Madagascar', 'MDG', 'MG', '261', 'Antananarivo', 'MGA', 'Ar', '.mg', 'Madagasikara', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian\\/Antananarivo\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"br\":\"Madagascar\",\"pt\":\"Madag??scar\",\"nl\":\"Madagaskar\",\"hr\":\"Madagaskar\",\"fa\":\"????????????????????\",\"de\":\"Madagaskar\",\"es\":\"Madagascar\",\"fr\":\"Madagascar\",\"ja\":\"??????????????????\",\"it\":\"Madagascar\"}', -20.00000000, 47.00000000, '????????', 'U+1F1F2 U+1F1EC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1019'),
(131, 'Malawi', 'MWI', 'MW', '265', 'Lilongwe', 'MWK', 'MK', '.mw', 'Malawi', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa\\/Blantyre\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"br\":\"Malawi\",\"pt\":\"Mal??vi\",\"nl\":\"Malawi\",\"hr\":\"Malavi\",\"fa\":\"????????????\",\"de\":\"Malawi\",\"es\":\"Malawi\",\"fr\":\"Malawi\",\"ja\":\"????????????\",\"it\":\"Malawi\"}', -13.50000000, 34.00000000, '????????', 'U+1F1F2 U+1F1FC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1020'),
(132, 'Malaysia', 'MYS', 'MY', '60', 'Kuala Lumpur', 'MYR', 'RM', '.my', 'Malaysia', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia\\/Kuala_Lumpur\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"MYT\",\"tzName\":\"Malaysia Time\"},{\"zoneName\":\"Asia\\/Kuching\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"MYT\",\"tzName\":\"Malaysia Time\"}]', '{\"br\":\"Mal??sia\",\"pt\":\"Mal??sia\",\"nl\":\"Maleisi??\",\"hr\":\"Malezija\",\"fa\":\"??????????\",\"de\":\"Malaysia\",\"es\":\"Malasia\",\"fr\":\"Malaisie\",\"ja\":\"???????????????\",\"it\":\"Malesia\"}', 2.50000000, 112.50000000, '????????', 'U+1F1F2 U+1F1FE', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q833'),
(133, 'Maldives', 'MDV', 'MV', '960', 'Male', 'MVR', 'Rf', '.mv', 'Maldives', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Indian\\/Maldives\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"MVT\",\"tzName\":\"Maldives Time\"}]', '{\"br\":\"Maldivas\",\"pt\":\"Maldivas\",\"nl\":\"Maldiven\",\"hr\":\"Maldivi\",\"fa\":\"????????????\",\"de\":\"Malediven\",\"es\":\"Maldivas\",\"fr\":\"Maldives\",\"ja\":\"???????????????\",\"it\":\"Maldive\"}', 3.25000000, 73.00000000, '????????', 'U+1F1F2 U+1F1FB', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q826'),
(134, 'Mali', 'MLI', 'ML', '223', 'Bamako', 'XOF', 'CFA', '.ml', 'Mali', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa\\/Bamako\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"br\":\"Mali\",\"pt\":\"Mali\",\"nl\":\"Mali\",\"hr\":\"Mali\",\"fa\":\"????????\",\"de\":\"Mali\",\"es\":\"Mali\",\"fr\":\"Mali\",\"ja\":\"??????\",\"it\":\"Mali\"}', 17.00000000, -4.00000000, '????????', 'U+1F1F2 U+1F1F1', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q912'),
(135, 'Malta', 'MLT', 'MT', '356', 'Valletta', 'EUR', '???', '.mt', 'Malta', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe\\/Malta\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Malta\",\"pt\":\"Malta\",\"nl\":\"Malta\",\"hr\":\"Malta\",\"fa\":\"????????\",\"de\":\"Malta\",\"es\":\"Malta\",\"fr\":\"Malte\",\"ja\":\"?????????\",\"it\":\"Malta\"}', 35.83333333, 14.58333333, '????????', 'U+1F1F2 U+1F1F9', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q233'),
(136, 'Man (Isle of)', 'IMN', 'IM', '+44-1624', 'Douglas, Isle of Man', 'GBP', '??', '.im', 'Isle of Man', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe\\/Isle_of_Man\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"br\":\"Ilha de Man\",\"pt\":\"Ilha de Man\",\"nl\":\"Isle of Man\",\"hr\":\"Otok Man\",\"fa\":\"?????????? ????\",\"de\":\"Insel Man\",\"es\":\"Isla de Man\",\"fr\":\"??le de Man\",\"ja\":\"?????????\",\"it\":\"Isola di Man\"}', 54.25000000, -4.50000000, '????????', 'U+1F1EE U+1F1F2', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(137, 'Marshall Islands', 'MHL', 'MH', '692', 'Majuro', 'USD', '$', '.mh', 'M??aje??', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific\\/Kwajalein\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"MHT\",\"tzName\":\"Marshall Islands Time\"},{\"zoneName\":\"Pacific\\/Majuro\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"MHT\",\"tzName\":\"Marshall Islands Time\"}]', '{\"br\":\"Ilhas Marshall\",\"pt\":\"Ilhas Marshall\",\"nl\":\"Marshalleilanden\",\"hr\":\"Mar??alovi Otoci\",\"fa\":\"?????????? ????????????\",\"de\":\"Marshallinseln\",\"es\":\"Islas Marshall\",\"fr\":\"??les Marshall\",\"ja\":\"?????????????????????\",\"it\":\"Isole Marshall\"}', 9.00000000, 168.00000000, '????????', 'U+1F1F2 U+1F1ED', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q709'),
(138, 'Martinique', 'MTQ', 'MQ', '596', 'Fort-de-France', 'EUR', '???', '.mq', 'Martinique', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Martinique\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"Martinica\",\"pt\":\"Martinica\",\"nl\":\"Martinique\",\"hr\":\"Martinique\",\"fa\":\"????????????????\",\"de\":\"Martinique\",\"es\":\"Martinica\",\"fr\":\"Martinique\",\"ja\":\"?????????????????????\",\"it\":\"Martinica\"}', 14.66666700, -61.00000000, '????????', 'U+1F1F2 U+1F1F6', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(139, 'Mauritania', 'MRT', 'MR', '222', 'Nouakchott', 'MRO', 'MRU', '.mr', '??????????????????', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa\\/Nouakchott\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"br\":\"Maurit??nia\",\"pt\":\"Maurit??nia\",\"nl\":\"Mauritani??\",\"hr\":\"Mauritanija\",\"fa\":\"????????????????\",\"de\":\"Mauretanien\",\"es\":\"Mauritania\",\"fr\":\"Mauritanie\",\"ja\":\"??????????????????\",\"it\":\"Mauritania\"}', 20.00000000, -12.00000000, '????????', 'U+1F1F2 U+1F1F7', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1025'),
(140, 'Mauritius', 'MUS', 'MU', '230', 'Port Louis', 'MUR', '???', '.mu', 'Maurice', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian\\/Mauritius\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"MUT\",\"tzName\":\"Mauritius Time\"}]', '{\"br\":\"Maur??cio\",\"pt\":\"Maur??cia\",\"nl\":\"Mauritius\",\"hr\":\"Mauricijus\",\"fa\":\"??????????\",\"de\":\"Mauritius\",\"es\":\"Mauricio\",\"fr\":\"??le Maurice\",\"ja\":\"??????????????????\",\"it\":\"Mauritius\"}', -20.28333333, 57.55000000, '????????', 'U+1F1F2 U+1F1FA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1027');
INSERT INTO `countries` (`id`, `name`, `iso3`, `iso2`, `phonecode`, `capital`, `currency`, `currency_symbol`, `tld`, `native`, `region`, `subregion`, `timezones`, `translations`, `latitude`, `longitude`, `emoji`, `emojiU`, `coins`, `status`, `created_at`, `updated_at`, `flag`, `wikiDataId`) VALUES
(141, 'Mayotte', 'MYT', 'YT', '262', 'Mamoudzou', 'EUR', '???', '.yt', 'Mayotte', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian\\/Mayotte\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"br\":\"Mayotte\",\"pt\":\"Mayotte\",\"nl\":\"Mayotte\",\"hr\":\"Mayotte\",\"fa\":\"??????????\",\"de\":\"Mayotte\",\"es\":\"Mayotte\",\"fr\":\"Mayotte\",\"ja\":\"????????????\",\"it\":\"Mayotte\"}', -12.83333333, 45.16666666, '????????', 'U+1F1FE U+1F1F9', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(142, 'Mexico', 'MEX', 'MX', '52', 'Mexico City', 'MXN', '$', '.mx', 'M??xico', 'Americas', 'Central America', '[{\"zoneName\":\"America\\/Bahia_Banderas\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America\\/Cancun\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America\\/Chihuahua\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America\\/Hermosillo\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America\\/Matamoros\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America\\/Mazatlan\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America\\/Merida\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America\\/Mexico_City\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America\\/Monterrey\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America\\/Ojinaga\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America\\/Tijuana\",\"gmtOffset\":-28800,\"gmtOffsetName\":\"UTC-08:00\",\"abbreviation\":\"PST\",\"tzName\":\"Pacific Standard Time (North America\"}]', '{\"br\":\"M??xico\",\"pt\":\"M??xico\",\"nl\":\"Mexico\",\"hr\":\"Meksiko\",\"fa\":\"??????????\",\"de\":\"Mexiko\",\"es\":\"M??xico\",\"fr\":\"Mexique\",\"ja\":\"????????????\",\"it\":\"Messico\"}', 23.00000000, -102.00000000, '????????', 'U+1F1F2 U+1F1FD', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q96'),
(143, 'Micronesia', 'FSM', 'FM', '691', 'Palikir', 'USD', '$', '.fm', 'Micronesia', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific\\/Chuuk\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"CHUT\",\"tzName\":\"Chuuk Time\"},{\"zoneName\":\"Pacific\\/Kosrae\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"KOST\",\"tzName\":\"Kosrae Time\"},{\"zoneName\":\"Pacific\\/Pohnpei\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"PONT\",\"tzName\":\"Pohnpei Standard Time\"}]', '{\"br\":\"Micron??sia\",\"pt\":\"Micron??sia\",\"nl\":\"Micronesi??\",\"hr\":\"Mikronezija\",\"fa\":\"???????????? ?????????? ????????????????\",\"de\":\"Mikronesien\",\"es\":\"Micronesia\",\"fr\":\"Micron??sie\",\"ja\":\"????????????????????????\",\"it\":\"Micronesia\"}', 6.91666666, 158.25000000, '????????', 'U+1F1EB U+1F1F2', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q702'),
(144, 'Moldova', 'MDA', 'MD', '373', 'Chisinau', 'MDL', 'L', '.md', 'Moldova', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe\\/Chisinau\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"br\":\"Mold??via\",\"pt\":\"Mold??via\",\"nl\":\"Moldavi??\",\"hr\":\"Moldova\",\"fa\":\"??????????????\",\"de\":\"Moldawie\",\"es\":\"Moldavia\",\"fr\":\"Moldavie\",\"ja\":\"?????????????????????\",\"it\":\"Moldavia\"}', 47.00000000, 29.00000000, '????????', 'U+1F1F2 U+1F1E9', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q217'),
(145, 'Monaco', 'MCO', 'MC', '377', 'Monaco', 'EUR', '???', '.mc', 'Monaco', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe\\/Monaco\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"M??naco\",\"pt\":\"M??naco\",\"nl\":\"Monaco\",\"hr\":\"Monako\",\"fa\":\"????????????\",\"de\":\"Monaco\",\"es\":\"M??naco\",\"fr\":\"Monaco\",\"ja\":\"?????????\",\"it\":\"Principato di Monaco\"}', 43.73333333, 7.40000000, '????????', 'U+1F1F2 U+1F1E8', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(146, 'Mongolia', 'MNG', 'MN', '976', 'Ulan Bator', 'MNT', '???', '.mn', '???????????? ??????', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia\\/Choibalsan\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"CHOT\",\"tzName\":\"Choibalsan Standard Time\"},{\"zoneName\":\"Asia\\/Hovd\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"HOVT\",\"tzName\":\"Hovd Time\"},{\"zoneName\":\"Asia\\/Ulaanbaatar\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"ULAT\",\"tzName\":\"Ulaanbaatar Standard Time\"}]', '{\"br\":\"Mong??lia\",\"pt\":\"Mong??lia\",\"nl\":\"Mongoli??\",\"hr\":\"Mongolija\",\"fa\":\"????????????????\",\"de\":\"Mongolei\",\"es\":\"Mongolia\",\"fr\":\"Mongolie\",\"ja\":\"????????????\",\"it\":\"Mongolia\"}', 46.00000000, 105.00000000, '????????', 'U+1F1F2 U+1F1F3', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q711'),
(147, 'Montenegro', 'MNE', 'ME', '382', 'Podgorica', 'EUR', '???', '.me', '???????? ????????', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe\\/Podgorica\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Montenegro\",\"pt\":\"Montenegro\",\"nl\":\"Montenegro\",\"hr\":\"Crna Gora\",\"fa\":\"?????????????????????\",\"de\":\"Montenegro\",\"es\":\"Montenegro\",\"fr\":\"Mont??n??gro\",\"ja\":\"??????????????????\",\"it\":\"Montenegro\"}', 42.50000000, 19.30000000, '????????', 'U+1F1F2 U+1F1EA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q236'),
(148, 'Montserrat', 'MSR', 'MS', '+1-664', 'Plymouth', 'XCD', '$', '.ms', 'Montserrat', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Montserrat\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"Montserrat\",\"pt\":\"Monserrate\",\"nl\":\"Montserrat\",\"hr\":\"Montserrat\",\"fa\":\"??????????\",\"de\":\"Montserrat\",\"es\":\"Montserrat\",\"fr\":\"Montserrat\",\"ja\":\"??????????????????\",\"it\":\"Montserrat\"}', 16.75000000, -62.20000000, '????????', 'U+1F1F2 U+1F1F8', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(149, 'Morocco', 'MAR', 'MA', '212', 'Rabat', 'MAD', 'DH', '.ma', '????????????', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa\\/Casablanca\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WEST\",\"tzName\":\"Western European Summer Time\"}]', '{\"br\":\"Marrocos\",\"pt\":\"Marrocos\",\"nl\":\"Marokko\",\"hr\":\"Maroko\",\"fa\":\"??????????\",\"de\":\"Marokko\",\"es\":\"Marruecos\",\"fr\":\"Maroc\",\"ja\":\"????????????\",\"it\":\"Marocco\"}', 32.00000000, -5.00000000, '????????', 'U+1F1F2 U+1F1E6', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1028'),
(150, 'Mozambique', 'MOZ', 'MZ', '258', 'Maputo', 'MZN', 'MT', '.mz', 'Mo??ambique', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa\\/Maputo\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"br\":\"Mo??ambique\",\"pt\":\"Mo??ambique\",\"nl\":\"Mozambique\",\"hr\":\"Mozambik\",\"fa\":\"????????????????\",\"de\":\"Mosambik\",\"es\":\"Mozambique\",\"fr\":\"Mozambique\",\"ja\":\"??????????????????\",\"it\":\"Mozambico\"}', -18.25000000, 35.00000000, '????????', 'U+1F1F2 U+1F1FF', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1029'),
(151, 'Myanmar', 'MMR', 'MM', '95', 'Nay Pyi Taw', 'MMK', 'K', '.mm', '??????????????????', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia\\/Yangon\",\"gmtOffset\":23400,\"gmtOffsetName\":\"UTC+06:30\",\"abbreviation\":\"MMT\",\"tzName\":\"Myanmar Standard Time\"}]', '{\"br\":\"Myanmar\",\"pt\":\"Myanmar\",\"nl\":\"Myanmar\",\"hr\":\"Mijanmar\",\"fa\":\"??????????????\",\"de\":\"Myanmar\",\"es\":\"Myanmar\",\"fr\":\"Myanmar\",\"ja\":\"???????????????\",\"it\":\"Birmania\"}', 22.00000000, 98.00000000, '????????', 'U+1F1F2 U+1F1F2', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q836'),
(152, 'Namibia', 'NAM', 'NA', '264', 'Windhoek', 'NAD', '$', '.na', 'Namibia', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa\\/Windhoek\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"WAST\",\"tzName\":\"West Africa Summer Time\"}]', '{\"br\":\"Nam??bia\",\"pt\":\"Nam??bia\",\"nl\":\"Namibi??\",\"hr\":\"Namibija\",\"fa\":\"??????????????\",\"de\":\"Namibia\",\"es\":\"Namibia\",\"fr\":\"Namibie\",\"ja\":\"????????????\",\"it\":\"Namibia\"}', -22.00000000, 17.00000000, '????????', 'U+1F1F3 U+1F1E6', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1030'),
(153, 'Nauru', 'NRU', 'NR', '674', 'Yaren', 'AUD', '$', '.nr', 'Nauru', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific\\/Nauru\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"NRT\",\"tzName\":\"Nauru Time\"}]', '{\"br\":\"Nauru\",\"pt\":\"Nauru\",\"nl\":\"Nauru\",\"hr\":\"Nauru\",\"fa\":\"????????????\",\"de\":\"Nauru\",\"es\":\"Nauru\",\"fr\":\"Nauru\",\"ja\":\"?????????\",\"it\":\"Nauru\"}', -0.53333333, 166.91666666, '????????', 'U+1F1F3 U+1F1F7', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q697'),
(154, 'Nepal', 'NPL', 'NP', '977', 'Kathmandu', 'NPR', '???', '.np', '?????????', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia\\/Kathmandu\",\"gmtOffset\":20700,\"gmtOffsetName\":\"UTC+05:45\",\"abbreviation\":\"NPT\",\"tzName\":\"Nepal Time\"}]', '{\"br\":\"Nepal\",\"pt\":\"Nepal\",\"nl\":\"Nepal\",\"hr\":\"Nepal\",\"fa\":\"????????\",\"de\":\"N??pal\",\"es\":\"Nepal\",\"fr\":\"N??pal\",\"ja\":\"????????????\",\"it\":\"Nepal\"}', 28.00000000, 84.00000000, '????????', 'U+1F1F3 U+1F1F5', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q837'),
(155, 'Bonaire, Sint Eustatius and Saba', 'BES', 'BQ', '599', 'Kralendijk', 'USD', '$', '.an', 'Caribisch Nederland', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Anguilla\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"Bonaire\",\"pt\":\"Bonaire\",\"fa\":\"??????????\",\"de\":\"Bonaire, Sint Eustatius und Saba\",\"fr\":\"Bonaire, Saint-Eustache et Saba\",\"it\":\"Bonaire, Saint-Eustache e Saba\"}', 12.15000000, -68.26666700, '????????', 'U+1F1E7 U+1F1F6', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q27561'),
(156, 'Netherlands The', 'NLD', 'NL', '31', 'Amsterdam', 'EUR', '???', '.nl', 'Nederland', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe\\/Amsterdam\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Holanda\",\"pt\":\"Pa??ses Baixos\",\"nl\":\"Nederland\",\"hr\":\"Nizozemska\",\"fa\":\"?????????????? ????????\",\"de\":\"Niederlande\",\"es\":\"Pa??ses Bajos\",\"fr\":\"Pays-Bas\",\"ja\":\"????????????\",\"it\":\"Paesi Bassi\"}', 52.50000000, 5.75000000, '????????', 'U+1F1F3 U+1F1F1', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q55'),
(157, 'New Caledonia', 'NCL', 'NC', '687', 'Noumea', 'XPF', '???', '.nc', 'Nouvelle-Cal??donie', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific\\/Noumea\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"NCT\",\"tzName\":\"New Caledonia Time\"}]', '{\"br\":\"Nova Caled??nia\",\"pt\":\"Nova Caled??nia\",\"nl\":\"Nieuw-Caledoni??\",\"hr\":\"Nova Kaledonija\",\"fa\":\"?????????????????? ????????\",\"de\":\"Neukaledonien\",\"es\":\"Nueva Caledonia\",\"fr\":\"Nouvelle-Cal??donie\",\"ja\":\"????????????????????????\",\"it\":\"Nuova Caledonia\"}', -21.50000000, 165.50000000, '????????', 'U+1F1F3 U+1F1E8', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(158, 'New Zealand', 'NZL', 'NZ', '64', 'Wellington', 'NZD', '$', '.nz', 'New Zealand', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Pacific\\/Auckland\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"NZDT\",\"tzName\":\"New Zealand Daylight Time\"},{\"zoneName\":\"Pacific\\/Chatham\",\"gmtOffset\":49500,\"gmtOffsetName\":\"UTC+13:45\",\"abbreviation\":\"CHAST\",\"tzName\":\"Chatham Standard Time\"}]', '{\"br\":\"Nova Zel??ndia\",\"pt\":\"Nova Zel??ndia\",\"nl\":\"Nieuw-Zeeland\",\"hr\":\"Novi Zeland\",\"fa\":\"????????????????\",\"de\":\"Neuseeland\",\"es\":\"Nueva Zelanda\",\"fr\":\"Nouvelle-Z??lande\",\"ja\":\"????????????????????????\",\"it\":\"Nuova Zelanda\"}', -41.00000000, 174.00000000, '????????', 'U+1F1F3 U+1F1FF', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q664'),
(159, 'Nicaragua', 'NIC', 'NI', '505', 'Managua', 'NIO', 'C$', '.ni', 'Nicaragua', 'Americas', 'Central America', '[{\"zoneName\":\"America\\/Managua\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"br\":\"Nicar??gua\",\"pt\":\"Nicar??gua\",\"nl\":\"Nicaragua\",\"hr\":\"Nikaragva\",\"fa\":\"????????????????????\",\"de\":\"Nicaragua\",\"es\":\"Nicaragua\",\"fr\":\"Nicaragua\",\"ja\":\"???????????????\",\"it\":\"Nicaragua\"}', 13.00000000, -85.00000000, '????????', 'U+1F1F3 U+1F1EE', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q811'),
(160, 'Niger', 'NER', 'NE', '227', 'Niamey', 'XOF', 'CFA', '.ne', 'Niger', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa\\/Niamey\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"br\":\"N??ger\",\"pt\":\"N??ger\",\"nl\":\"Niger\",\"hr\":\"Niger\",\"fa\":\"????????\",\"de\":\"Niger\",\"es\":\"N??ger\",\"fr\":\"Niger\",\"ja\":\"???????????????\",\"it\":\"Niger\"}', 16.00000000, 8.00000000, '????????', 'U+1F1F3 U+1F1EA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1032'),
(161, 'Nigeria', 'NGA', 'NG', '234', 'Abuja', 'NGN', '???', '.ng', 'Nigeria', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa\\/Lagos\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"br\":\"Nig??ria\",\"pt\":\"Nig??ria\",\"nl\":\"Nigeria\",\"hr\":\"Nigerija\",\"fa\":\"????????????\",\"de\":\"Nigeria\",\"es\":\"Nigeria\",\"fr\":\"Nig??ria\",\"ja\":\"??????????????????\",\"it\":\"Nigeria\"}', 10.00000000, 8.00000000, '????????', 'U+1F1F3 U+1F1EC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1033'),
(162, 'Niue', 'NIU', 'NU', '683', 'Alofi', 'NZD', '$', '.nu', 'Niu??', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific\\/Niue\",\"gmtOffset\":-39600,\"gmtOffsetName\":\"UTC-11:00\",\"abbreviation\":\"NUT\",\"tzName\":\"Niue Time\"}]', '{\"br\":\"Niue\",\"pt\":\"Niue\",\"nl\":\"Niue\",\"hr\":\"Niue\",\"fa\":\"??????????\",\"de\":\"Niue\",\"es\":\"Niue\",\"fr\":\"Niue\",\"ja\":\"?????????\",\"it\":\"Niue\"}', -19.03333333, -169.86666666, '????????', 'U+1F1F3 U+1F1FA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q34020'),
(163, 'Norfolk Island', 'NFK', 'NF', '672', 'Kingston', 'AUD', '$', '.nf', 'Norfolk Island', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Pacific\\/Norfolk\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"NFT\",\"tzName\":\"Norfolk Time\"}]', '{\"br\":\"Ilha Norfolk\",\"pt\":\"Ilha Norfolk\",\"nl\":\"Norfolkeiland\",\"hr\":\"Otok Norfolk\",\"fa\":\"?????????? ??????????\",\"de\":\"Norfolkinsel\",\"es\":\"Isla de Norfolk\",\"fr\":\"??le de Norfolk\",\"ja\":\"?????????????????????\",\"it\":\"Isola Norfolk\"}', -29.03333333, 167.95000000, '????????', 'U+1F1F3 U+1F1EB', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(164, 'Northern Mariana Islands', 'MNP', 'MP', '+1-670', 'Saipan', 'USD', '$', '.mp', 'Northern Mariana Islands', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific\\/Saipan\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"ChST\",\"tzName\":\"Chamorro Standard Time\"}]', '{\"br\":\"Ilhas Marianas\",\"pt\":\"Ilhas Marianas\",\"nl\":\"Noordelijke Marianeneilanden\",\"hr\":\"Sjevernomarijanski otoci\",\"fa\":\"?????????? ???????????????? ??????????\",\"de\":\"N??rdliche Marianen\",\"es\":\"Islas Marianas del Norte\",\"fr\":\"??les Mariannes du Nord\",\"ja\":\"?????????????????????\",\"it\":\"Isole Marianne Settentrionali\"}', 15.20000000, 145.75000000, '????????', 'U+1F1F2 U+1F1F5', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(165, 'Norway', 'NOR', 'NO', '47', 'Oslo', 'NOK', 'kr', '.no', 'Norge', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe\\/Oslo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Noruega\",\"pt\":\"Noruega\",\"nl\":\"Noorwegen\",\"hr\":\"Norve??ka\",\"fa\":\"????????\",\"de\":\"Norwegen\",\"es\":\"Noruega\",\"fr\":\"Norv??ge\",\"ja\":\"???????????????\",\"it\":\"Norvegia\"}', 62.00000000, 10.00000000, '????????', 'U+1F1F3 U+1F1F4', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q20'),
(166, 'Oman', 'OMN', 'OM', '968', 'Muscat', 'OMR', '.??.??', '.om', '????????', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia\\/Muscat\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"GST\",\"tzName\":\"Gulf Standard Time\"}]', '{\"br\":\"Om??\",\"pt\":\"Om??\",\"nl\":\"Oman\",\"hr\":\"Oman\",\"fa\":\"????????\",\"de\":\"Oman\",\"es\":\"Om??n\",\"fr\":\"Oman\",\"ja\":\"????????????\",\"it\":\"oman\"}', 21.00000000, 57.00000000, '????????', 'U+1F1F4 U+1F1F2', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q842'),
(167, 'Pakistan', 'PAK', 'PK', '92', 'Islamabad', 'PKR', '???', '.pk', 'Pakistan', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia\\/Karachi\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"PKT\",\"tzName\":\"Pakistan Standard Time\"}]', '{\"br\":\"Paquist??o\",\"pt\":\"Paquist??o\",\"nl\":\"Pakistan\",\"hr\":\"Pakistan\",\"fa\":\"??????????????\",\"de\":\"Pakistan\",\"es\":\"Pakist??n\",\"fr\":\"Pakistan\",\"ja\":\"???????????????\",\"it\":\"Pakistan\"}', 30.00000000, 70.00000000, '????????', 'U+1F1F5 U+1F1F0', 6, 1, '2018-07-20 20:11:03', '2021-11-08 11:26:44', 1, 'Q843'),
(168, 'Palau', 'PLW', 'PW', '680', 'Melekeok', 'USD', '$', '.pw', 'Palau', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific\\/Palau\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"PWT\",\"tzName\":\"Palau Time\"}]', '{\"br\":\"Palau\",\"pt\":\"Palau\",\"nl\":\"Palau\",\"hr\":\"Palau\",\"fa\":\"????????????\",\"de\":\"Palau\",\"es\":\"Palau\",\"fr\":\"Palaos\",\"ja\":\"?????????\",\"it\":\"Palau\"}', 7.50000000, 134.50000000, '????????', 'U+1F1F5 U+1F1FC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q695'),
(169, 'Palestinian Territory Occupied', 'PSE', 'PS', '970', 'East Jerusalem', 'ILS', '???', '.ps', '????????????', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia\\/Gaza\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Asia\\/Hebron\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"br\":\"Palestina\",\"pt\":\"Palestina\",\"nl\":\"Palestijnse gebieden\",\"hr\":\"Palestina\",\"fa\":\"????????????\",\"de\":\"Pal??stina\",\"es\":\"Palestina\",\"fr\":\"Palestine\",\"ja\":\"???????????????\",\"it\":\"Palestina\"}', 31.90000000, 35.20000000, '????????', 'U+1F1F5 U+1F1F8', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(170, 'Panama', 'PAN', 'PA', '507', 'Panama City', 'PAB', 'B/.', '.pa', 'Panam??', 'Americas', 'Central America', '[{\"zoneName\":\"America\\/Panama\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"br\":\"Panam??\",\"pt\":\"Panam??\",\"nl\":\"Panama\",\"hr\":\"Panama\",\"fa\":\"????????????\",\"de\":\"Panama\",\"es\":\"Panam??\",\"fr\":\"Panama\",\"ja\":\"?????????\",\"it\":\"Panama\"}', 9.00000000, -80.00000000, '????????', 'U+1F1F5 U+1F1E6', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q804'),
(171, 'Papua new Guinea', 'PNG', 'PG', '675', 'Port Moresby', 'PGK', 'K', '.pg', 'Papua Niugini', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific\\/Bougainville\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"BST\",\"tzName\":\"Bougainville Standard Time[6\"},{\"zoneName\":\"Pacific\\/Port_Moresby\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"PGT\",\"tzName\":\"Papua New Guinea Time\"}]', '{\"br\":\"Papua Nova Guin??\",\"pt\":\"Papua Nova Guin??\",\"nl\":\"Papoea-Nieuw-Guinea\",\"hr\":\"Papua Nova Gvineja\",\"fa\":\"?????????? ???????? ????\",\"de\":\"Papua-Neuguinea\",\"es\":\"Pap??a Nueva Guinea\",\"fr\":\"Papouasie-Nouvelle-Guin??e\",\"ja\":\"???????????????????????????\",\"it\":\"Papua Nuova Guinea\"}', -6.00000000, 147.00000000, '????????', 'U+1F1F5 U+1F1EC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q691'),
(172, 'Paraguay', 'PRY', 'PY', '595', 'Asuncion', 'PYG', '???', '.py', 'Paraguay', 'Americas', 'South America', '[{\"zoneName\":\"America\\/Asuncion\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"PYST\",\"tzName\":\"Paraguay Summer Time\"}]', '{\"br\":\"Paraguai\",\"pt\":\"Paraguai\",\"nl\":\"Paraguay\",\"hr\":\"Paragvaj\",\"fa\":\"????????????????\",\"de\":\"Paraguay\",\"es\":\"Paraguay\",\"fr\":\"Paraguay\",\"ja\":\"???????????????\",\"it\":\"Paraguay\"}', -23.00000000, -58.00000000, '????????', 'U+1F1F5 U+1F1FE', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q733'),
(173, 'Peru', 'PER', 'PE', '51', 'Lima', 'PEN', 'S/.', '.pe', 'Per??', 'Americas', 'South America', '[{\"zoneName\":\"America\\/Lima\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"PET\",\"tzName\":\"Peru Time\"}]', '{\"br\":\"Peru\",\"pt\":\"Peru\",\"nl\":\"Peru\",\"hr\":\"Peru\",\"fa\":\"??????\",\"de\":\"Peru\",\"es\":\"Per??\",\"fr\":\"P??rou\",\"ja\":\"?????????\",\"it\":\"Per??\"}', -10.00000000, -76.00000000, '????????', 'U+1F1F5 U+1F1EA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q419'),
(174, 'Philippines', 'PHL', 'PH', '63', 'Manila', 'PHP', '???', '.ph', 'Pilipinas', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia\\/Manila\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"PHT\",\"tzName\":\"Philippine Time\"}]', '{\"br\":\"Filipinas\",\"pt\":\"Filipinas\",\"nl\":\"Filipijnen\",\"hr\":\"Filipini\",\"fa\":\"?????????? ??????????????????????\",\"de\":\"Philippinen\",\"es\":\"Filipinas\",\"fr\":\"Philippines\",\"ja\":\"???????????????\",\"it\":\"Filippine\"}', 13.00000000, 122.00000000, '????????', 'U+1F1F5 U+1F1ED', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q928'),
(175, 'Pitcairn Island', 'PCN', 'PN', '870', 'Adamstown', 'NZD', '$', '.pn', 'Pitcairn Islands', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific\\/Pitcairn\",\"gmtOffset\":-28800,\"gmtOffsetName\":\"UTC-08:00\",\"abbreviation\":\"PST\",\"tzName\":\"Pacific Standard Time (North America\"}]', '{\"br\":\"Ilhas Pitcairn\",\"pt\":\"Ilhas Pic??rnia\",\"nl\":\"Pitcairneilanden\",\"hr\":\"Pitcairnovo oto??je\",\"fa\":\"????????????\",\"de\":\"Pitcairn\",\"es\":\"Islas Pitcairn\",\"fr\":\"??les Pitcairn\",\"ja\":\"???????????????\",\"it\":\"Isole Pitcairn\"}', -25.06666666, -130.10000000, '????????', 'U+1F1F5 U+1F1F3', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(176, 'Poland', 'POL', 'PL', '48', 'Warsaw', 'PLN', 'z??', '.pl', 'Polska', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe\\/Warsaw\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Pol??nia\",\"pt\":\"Pol??nia\",\"nl\":\"Polen\",\"hr\":\"Poljska\",\"fa\":\"????????????\",\"de\":\"Polen\",\"es\":\"Polonia\",\"fr\":\"Pologne\",\"ja\":\"???????????????\",\"it\":\"Polonia\"}', 52.00000000, 20.00000000, '????????', 'U+1F1F5 U+1F1F1', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q36'),
(177, 'Portugal', 'PRT', 'PT', '351', 'Lisbon', 'EUR', '???', '.pt', 'Portugal', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Atlantic\\/Azores\",\"gmtOffset\":-3600,\"gmtOffsetName\":\"UTC-01:00\",\"abbreviation\":\"AZOT\",\"tzName\":\"Azores Standard Time\"},{\"zoneName\":\"Atlantic\\/Madeira\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"WET\",\"tzName\":\"Western European Time\"},{\"zoneName\":\"Europe\\/Lisbon\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"WET\",\"tzName\":\"Western European Time\"}]', '{\"br\":\"Portugal\",\"pt\":\"Portugal\",\"nl\":\"Portugal\",\"hr\":\"Portugal\",\"fa\":\"????????????\",\"de\":\"Portugal\",\"es\":\"Portugal\",\"fr\":\"Portugal\",\"ja\":\"???????????????\",\"it\":\"Portogallo\"}', 39.50000000, -8.00000000, '????????', 'U+1F1F5 U+1F1F9', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q45'),
(178, 'Puerto Rico', 'PRI', 'PR', '+1-787 and 1-939', 'San Juan', 'USD', '$', '.pr', 'Puerto Rico', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Puerto_Rico\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"Porto Rico\",\"pt\":\"Porto Rico\",\"nl\":\"Puerto Rico\",\"hr\":\"Portoriko\",\"fa\":\"?????????? ????????\",\"de\":\"Puerto Rico\",\"es\":\"Puerto Rico\",\"fr\":\"Porto Rico\",\"ja\":\"??????????????????\",\"it\":\"Porto Rico\"}', 18.25000000, -66.50000000, '????????', 'U+1F1F5 U+1F1F7', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(179, 'Qatar', 'QAT', 'QA', '974', 'Doha', 'QAR', '??.??', '.qa', '??????', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia\\/Qatar\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"br\":\"Catar\",\"pt\":\"Catar\",\"nl\":\"Qatar\",\"hr\":\"Katar\",\"fa\":\"??????\",\"de\":\"Katar\",\"es\":\"Catar\",\"fr\":\"Qatar\",\"ja\":\"????????????\",\"it\":\"Qatar\"}', 25.50000000, 51.25000000, '????????', 'U+1F1F6 U+1F1E6', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q846'),
(180, 'Reunion', 'REU', 'RE', '262', 'Saint-Denis', 'EUR', '???', '.re', 'La R??union', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian\\/Reunion\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"RET\",\"tzName\":\"R\\u00e9union Time\"}]', '{\"br\":\"Reuni??o\",\"pt\":\"Reuni??o\",\"nl\":\"R??union\",\"hr\":\"R??union\",\"fa\":\"??????????????\",\"de\":\"R??union\",\"es\":\"Reuni??n\",\"fr\":\"R??union\",\"ja\":\"???????????????\",\"it\":\"Riunione\"}', -21.15000000, 55.50000000, '????????', 'U+1F1F7 U+1F1EA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(181, 'Romania', 'ROU', 'RO', '40', 'Bucharest', 'RON', 'lei', '.ro', 'Rom??nia', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe\\/Bucharest\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"br\":\"Rom??nia\",\"pt\":\"Rom??nia\",\"nl\":\"Roemeni??\",\"hr\":\"Rumunjska\",\"fa\":\"????????????\",\"de\":\"Rum??nien\",\"es\":\"Rumania\",\"fr\":\"Roumanie\",\"ja\":\"???????????????\",\"it\":\"Romania\"}', 46.00000000, 25.00000000, '????????', 'U+1F1F7 U+1F1F4', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q218'),
(182, 'Russia', 'RUS', 'RU', '7', 'Moscow', 'RUB', '???', '.ru', '????????????', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Asia\\/Anadyr\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"ANAT\",\"tzName\":\"Anadyr Time[4\"},{\"zoneName\":\"Asia\\/Barnaul\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"KRAT\",\"tzName\":\"Krasnoyarsk Time\"},{\"zoneName\":\"Asia\\/Chita\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"YAKT\",\"tzName\":\"Yakutsk Time\"},{\"zoneName\":\"Asia\\/Irkutsk\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"IRKT\",\"tzName\":\"Irkutsk Time\"},{\"zoneName\":\"Asia\\/Kamchatka\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"PETT\",\"tzName\":\"Kamchatka Time\"},{\"zoneName\":\"Asia\\/Khandyga\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"YAKT\",\"tzName\":\"Yakutsk Time\"},{\"zoneName\":\"Asia\\/Krasnoyarsk\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"KRAT\",\"tzName\":\"Krasnoyarsk Time\"},{\"zoneName\":\"Asia\\/Magadan\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"MAGT\",\"tzName\":\"Magadan Time\"},{\"zoneName\":\"Asia\\/Novokuznetsk\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"KRAT\",\"tzName\":\"Krasnoyarsk Time\"},{\"zoneName\":\"Asia\\/Novosibirsk\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"NOVT\",\"tzName\":\"Novosibirsk Time\"},{\"zoneName\":\"Asia\\/Omsk\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"OMST\",\"tzName\":\"Omsk Time\"},{\"zoneName\":\"Asia\\/Sakhalin\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"SAKT\",\"tzName\":\"Sakhalin Island Time\"},{\"zoneName\":\"Asia\\/Srednekolymsk\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"SRET\",\"tzName\":\"Srednekolymsk Time\"},{\"zoneName\":\"Asia\\/Tomsk\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"MSD+3\",\"tzName\":\"Moscow Daylight Time+3\"},{\"zoneName\":\"Asia\\/Ust-Nera\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"VLAT\",\"tzName\":\"Vladivostok Time\"},{\"zoneName\":\"Asia\\/Vladivostok\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"VLAT\",\"tzName\":\"Vladivostok Time\"},{\"zoneName\":\"Asia\\/Yakutsk\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"YAKT\",\"tzName\":\"Yakutsk Time\"},{\"zoneName\":\"Asia\\/Yekaterinburg\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"YEKT\",\"tzName\":\"Yekaterinburg Time\"},{\"zoneName\":\"Europe\\/Astrakhan\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"SAMT\",\"tzName\":\"Samara Time\"},{\"zoneName\":\"Europe\\/Kaliningrad\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Europe\\/Kirov\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Time\"},{\"zoneName\":\"Europe\\/Moscow\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Time\"},{\"zoneName\":\"Europe\\/Samara\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"SAMT\",\"tzName\":\"Samara Time\"},{\"zoneName\":\"Europe\\/Saratov\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"MSD\",\"tzName\":\"Moscow Daylight Time+4\"},{\"zoneName\":\"Europe\\/Ulyanovsk\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"SAMT\",\"tzName\":\"Samara Time\"},{\"zoneName\":\"Europe\\/Volgograd\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Standard Time\"}]', '{\"br\":\"R??ssia\",\"pt\":\"R??ssia\",\"nl\":\"Rusland\",\"hr\":\"Rusija\",\"fa\":\"??????????\",\"de\":\"Russland\",\"es\":\"Rusia\",\"fr\":\"Russie\",\"ja\":\"???????????????\",\"it\":\"Russia\"}', 60.00000000, 100.00000000, '????????', 'U+1F1F7 U+1F1FA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q159'),
(183, 'Rwanda', 'RWA', 'RW', '250', 'Kigali', 'RWF', 'FRw', '.rw', 'Rwanda', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa\\/Kigali\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"br\":\"Ruanda\",\"pt\":\"Ruanda\",\"nl\":\"Rwanda\",\"hr\":\"Ruanda\",\"fa\":\"????????????\",\"de\":\"Ruanda\",\"es\":\"Ruanda\",\"fr\":\"Rwanda\",\"ja\":\"????????????\",\"it\":\"Ruanda\"}', -2.00000000, 30.00000000, '????????', 'U+1F1F7 U+1F1FC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1037'),
(184, 'Saint Helena', 'SHN', 'SH', '290', 'Jamestown', 'SHP', '??', '.sh', 'Saint Helena', 'Africa', 'Western Africa', '[{\"zoneName\":\"Atlantic\\/St_Helena\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"br\":\"Santa Helena\",\"pt\":\"Santa Helena\",\"nl\":\"Sint-Helena\",\"hr\":\"Sveta Helena\",\"fa\":\"?????? ?????????? ?????????? ?? ?????????????? ???? ????????\",\"de\":\"Sankt Helena\",\"es\":\"Santa Helena\",\"fr\":\"Sainte-H??l??ne\",\"ja\":\"??????????????????????????????????????????????????????????????????????????????\",\"it\":\"Sant\'Elena\"}', -15.95000000, -5.70000000, '????????', 'U+1F1F8 U+1F1ED', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(185, 'Saint Kitts And Nevis', 'KNA', 'KN', '+1-869', 'Basseterre', 'XCD', '$', '.kn', 'Saint Kitts and Nevis', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/St_Kitts\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"S??o Crist??v??o e Neves\",\"pt\":\"S??o Crist??v??o e Neves\",\"nl\":\"Saint Kitts en Nevis\",\"hr\":\"Sveti Kristof i Nevis\",\"fa\":\"?????? ???????? ?? ????????\",\"de\":\"St. Kitts und Nevis\",\"es\":\"San Crist??bal y Nieves\",\"fr\":\"Saint-Christophe-et-Ni??v??s\",\"ja\":\"?????????????????????????????????????????????\",\"it\":\"Saint Kitts e Nevis\"}', 17.33333333, -62.75000000, '????????', 'U+1F1F0 U+1F1F3', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q763'),
(186, 'Saint Lucia', 'LCA', 'LC', '+1-758', 'Castries', 'XCD', '$', '.lc', 'Saint Lucia', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/St_Lucia\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"Santa L??cia\",\"pt\":\"Santa L??cia\",\"nl\":\"Saint Lucia\",\"hr\":\"Sveta Lucija\",\"fa\":\"?????? ??????????\",\"de\":\"Saint Lucia\",\"es\":\"Santa Luc??a\",\"fr\":\"Saint-Lucie\",\"ja\":\"??????????????????\",\"it\":\"Santa Lucia\"}', 13.88333333, -60.96666666, '????????', 'U+1F1F1 U+1F1E8', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q760'),
(187, 'Saint Pierre and Miquelon', 'SPM', 'PM', '508', 'Saint-Pierre', 'EUR', '???', '.pm', 'Saint-Pierre-et-Miquelon', 'Americas', 'Northern America', '[{\"zoneName\":\"America\\/Miquelon\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"PMDT\",\"tzName\":\"Pierre & Miquelon Daylight Time\"}]', '{\"br\":\"Saint-Pierre e Miquelon\",\"pt\":\"S??o Pedro e Miquelon\",\"nl\":\"Saint Pierre en Miquelon\",\"hr\":\"Sveti Petar i Mikelon\",\"fa\":\"???? ?????? ?? ??????????\",\"de\":\"Saint-Pierre und Miquelon\",\"es\":\"San Pedro y Miquel??n\",\"fr\":\"Saint-Pierre-et-Miquelon\",\"ja\":\"???????????????????????????????????????\",\"it\":\"Saint-Pierre e Miquelon\"}', 46.83333333, -56.33333333, '????????', 'U+1F1F5 U+1F1F2', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(188, 'Saint Vincent And The Grenadines', 'VCT', 'VC', '+1-784', 'Kingstown', 'XCD', '$', '.vc', 'Saint Vincent and the Grenadines', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/St_Vincent\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"S??o Vicente e Granadinas\",\"pt\":\"S??o Vicente e Granadinas\",\"nl\":\"Saint Vincent en de Grenadines\",\"hr\":\"Sveti Vincent i Grenadini\",\"fa\":\"?????? ???????????? ?? ?????????????????????\",\"de\":\"Saint Vincent und die Grenadinen\",\"es\":\"San Vicente y Granadinas\",\"fr\":\"Saint-Vincent-et-les-Grenadines\",\"ja\":\"????????????????????????????????????????????????????????????\",\"it\":\"Saint Vincent e Grenadine\"}', 13.25000000, -61.20000000, '????????', 'U+1F1FB U+1F1E8', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q757'),
(189, 'Saint-Barthelemy', 'BLM', 'BL', '590', 'Gustavia', 'EUR', '???', '.bl', 'Saint-Barth??lemy', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/St_Barthelemy\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"S??o Bartolomeu\",\"pt\":\"S??o Bartolomeu\",\"nl\":\"Saint Barth??lemy\",\"hr\":\"Saint Barth??lemy\",\"fa\":\"????-??????????????\",\"de\":\"Saint-Barth??lemy\",\"es\":\"San Bartolom??\",\"fr\":\"Saint-Barth??lemy\",\"ja\":\"???????????????????????????\",\"it\":\"Antille Francesi\"}', 18.50000000, -63.41666666, '????????', 'U+1F1E7 U+1F1F1', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(190, 'Saint-Martin (French part)', 'MAF', 'MF', '590', 'Marigot', 'EUR', '???', '.mf', 'Saint-Martin', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Marigot\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"Saint Martin\",\"pt\":\"Ilha S??o Martinho\",\"nl\":\"Saint-Martin\",\"hr\":\"Sveti Martin\",\"fa\":\"???????? ??????????\",\"de\":\"Saint Martin\",\"es\":\"Saint Martin\",\"fr\":\"Saint-Martin\",\"ja\":\"??????????????????????????????????????????\",\"it\":\"Saint Martin\"}', 18.08333333, -63.95000000, '????????', 'U+1F1F2 U+1F1EB', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(191, 'Samoa', 'WSM', 'WS', '685', 'Apia', 'WST', 'SAT', '.ws', 'Samoa', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific\\/Apia\",\"gmtOffset\":50400,\"gmtOffsetName\":\"UTC+14:00\",\"abbreviation\":\"WST\",\"tzName\":\"West Samoa Time\"}]', '{\"br\":\"Samoa\",\"pt\":\"Samoa\",\"nl\":\"Samoa\",\"hr\":\"Samoa\",\"fa\":\"??????????\",\"de\":\"Samoa\",\"es\":\"Samoa\",\"fr\":\"Samoa\",\"ja\":\"?????????\",\"it\":\"Samoa\"}', -13.58333333, -172.33333333, '????????', 'U+1F1FC U+1F1F8', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q683'),
(192, 'San Marino', 'SMR', 'SM', '378', 'San Marino', 'EUR', '???', '.sm', 'San Marino', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe\\/San_Marino\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"San Marino\",\"pt\":\"S??o Marinho\",\"nl\":\"San Marino\",\"hr\":\"San Marino\",\"fa\":\"?????? ????????????\",\"de\":\"San Marino\",\"es\":\"San Marino\",\"fr\":\"Saint-Marin\",\"ja\":\"???????????????\",\"it\":\"San Marino\"}', 43.76666666, 12.41666666, '????????', 'U+1F1F8 U+1F1F2', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q238'),
(193, 'Sao Tome and Principe', 'STP', 'ST', '239', 'Sao Tome', 'STD', 'Db', '.st', 'S??o Tom?? e Pr??ncipe', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa\\/Sao_Tome\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"br\":\"S??o Tom?? e Pr??ncipe\",\"pt\":\"S??o Tom?? e Pr??ncipe\",\"nl\":\"Sao Tom?? en Principe\",\"hr\":\"Sveti Toma i Princip\",\"fa\":\"???????????? ???? ????????????\",\"de\":\"S??o Tom?? und Pr??ncipe\",\"es\":\"Santo Tom?? y Pr??ncipe\",\"fr\":\"Sao Tom??-et-Principe\",\"ja\":\"??????????????????????????????\",\"it\":\"S??o Tom?? e Pr??ncipe\"}', 1.00000000, 7.00000000, '????????', 'U+1F1F8 U+1F1F9', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1039'),
(194, 'Saudi Arabia', 'SAU', 'SA', '966', 'Riyadh', 'SAR', '???', '.sa', '?????????????? ????????????????', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia\\/Riyadh\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"br\":\"Ar??bia Saudita\",\"pt\":\"Ar??bia Saudita\",\"nl\":\"Saoedi-Arabi??\",\"hr\":\"Saudijska Arabija\",\"fa\":\"?????????????? ??????????\",\"de\":\"Saudi-Arabien\",\"es\":\"Arabia Saud??\",\"fr\":\"Arabie Saoudite\",\"ja\":\"?????????????????????\",\"it\":\"Arabia Saudita\"}', 25.00000000, 45.00000000, '????????', 'U+1F1F8 U+1F1E6', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q851'),
(195, 'Senegal', 'SEN', 'SN', '221', 'Dakar', 'XOF', 'CFA', '.sn', 'S??n??gal', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa\\/Dakar\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"br\":\"Senegal\",\"pt\":\"Senegal\",\"nl\":\"Senegal\",\"hr\":\"Senegal\",\"fa\":\"??????????\",\"de\":\"Senegal\",\"es\":\"Senegal\",\"fr\":\"S??n??gal\",\"ja\":\"????????????\",\"it\":\"Senegal\"}', 14.00000000, -14.00000000, '????????', 'U+1F1F8 U+1F1F3', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1041'),
(196, 'Serbia', 'SRB', 'RS', '381', 'Belgrade', 'RSD', 'din', '.rs', '????????????', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe\\/Belgrade\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"S??rvia\",\"pt\":\"S??rvia\",\"nl\":\"Servi??\",\"hr\":\"Srbija\",\"fa\":\"??????????????\",\"de\":\"Serbien\",\"es\":\"Serbia\",\"fr\":\"Serbie\",\"ja\":\"????????????\",\"it\":\"Serbia\"}', 44.00000000, 21.00000000, '????????', 'U+1F1F7 U+1F1F8', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q403'),
(197, 'Seychelles', 'SYC', 'SC', '248', 'Victoria', 'SCR', 'SRe', '.sc', 'Seychelles', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian\\/Mahe\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"SCT\",\"tzName\":\"Seychelles Time\"}]', '{\"br\":\"Seicheles\",\"pt\":\"Seicheles\",\"nl\":\"Seychellen\",\"hr\":\"Sej??eli\",\"fa\":\"????????\",\"de\":\"Seychellen\",\"es\":\"Seychelles\",\"fr\":\"Seychelles\",\"ja\":\"???????????????\",\"it\":\"Seychelles\"}', -4.58333333, 55.66666666, '????????', 'U+1F1F8 U+1F1E8', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1042'),
(198, 'Sierra Leone', 'SLE', 'SL', '232', 'Freetown', 'SLL', 'Le', '.sl', 'Sierra Leone', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa\\/Freetown\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"br\":\"Serra Leoa\",\"pt\":\"Serra Leoa\",\"nl\":\"Sierra Leone\",\"hr\":\"Sijera Leone\",\"fa\":\"????????????????\",\"de\":\"Sierra Leone\",\"es\":\"Sierra Leone\",\"fr\":\"Sierra Leone\",\"ja\":\"??????????????????\",\"it\":\"Sierra Leone\"}', 8.50000000, -11.50000000, '????????', 'U+1F1F8 U+1F1F1', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1044'),
(199, 'Singapore', 'SGP', 'SG', '65', 'Singapur', 'SGD', '$', '.sg', 'Singapore', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia\\/Singapore\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"SGT\",\"tzName\":\"Singapore Time\"}]', '{\"br\":\"Singapura\",\"pt\":\"Singapura\",\"nl\":\"Singapore\",\"hr\":\"Singapur\",\"fa\":\"??????????????\",\"de\":\"Singapur\",\"es\":\"Singapur\",\"fr\":\"Singapour\",\"ja\":\"??????????????????\",\"it\":\"Singapore\"}', 1.36666666, 103.80000000, '????????', 'U+1F1F8 U+1F1EC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q334'),
(200, 'Slovakia', 'SVK', 'SK', '421', 'Bratislava', 'EUR', '???', '.sk', 'Slovensko', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe\\/Bratislava\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Eslov??quia\",\"pt\":\"Eslov??quia\",\"nl\":\"Slowakije\",\"hr\":\"Slova??ka\",\"fa\":\"??????????????\",\"de\":\"Slowakei\",\"es\":\"Rep??blica Eslovaca\",\"fr\":\"Slovaquie\",\"ja\":\"???????????????\",\"it\":\"Slovacchia\"}', 48.66666666, 19.50000000, '????????', 'U+1F1F8 U+1F1F0', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q214'),
(201, 'Slovenia', 'SVN', 'SI', '386', 'Ljubljana', 'EUR', '???', '.si', 'Slovenija', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe\\/Ljubljana\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Eslov??nia\",\"pt\":\"Eslov??nia\",\"nl\":\"Sloveni??\",\"hr\":\"Slovenija\",\"fa\":\"??????????????\",\"de\":\"Slowenien\",\"es\":\"Eslovenia\",\"fr\":\"Slov??nie\",\"ja\":\"???????????????\",\"it\":\"Slovenia\"}', 46.11666666, 14.81666666, '????????', 'U+1F1F8 U+1F1EE', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q215'),
(202, 'Solomon Islands', 'SLB', 'SB', '677', 'Honiara', 'SBD', 'Si$', '.sb', 'Solomon Islands', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific\\/Guadalcanal\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"SBT\",\"tzName\":\"Solomon Islands Time\"}]', '{\"br\":\"Ilhas Salom??o\",\"pt\":\"Ilhas Salom??o\",\"nl\":\"Salomonseilanden\",\"hr\":\"Solomonski Otoci\",\"fa\":\"?????????? ????????????\",\"de\":\"Salomonen\",\"es\":\"Islas Salom??n\",\"fr\":\"??les Salomon\",\"ja\":\"??????????????????\",\"it\":\"Isole Salomone\"}', -8.00000000, 159.00000000, '????????', 'U+1F1F8 U+1F1E7', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q685'),
(203, 'Somalia', 'SOM', 'SO', '252', 'Mogadishu', 'SOS', 'Sh.so.', '.so', 'Soomaaliya', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa\\/Mogadishu\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"br\":\"Som??lia\",\"pt\":\"Som??lia\",\"nl\":\"Somali??\",\"hr\":\"Somalija\",\"fa\":\"????????????\",\"de\":\"Somalia\",\"es\":\"Somalia\",\"fr\":\"Somalie\",\"ja\":\"????????????\",\"it\":\"Somalia\"}', 10.00000000, 49.00000000, '????????', 'U+1F1F8 U+1F1F4', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1045'),
(204, 'South Africa', 'ZAF', 'ZA', '27', 'Pretoria', 'ZAR', 'R', '.za', 'South Africa', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa\\/Johannesburg\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"SAST\",\"tzName\":\"South African Standard Time\"}]', '{\"br\":\"Rep??blica Sul-Africana\",\"pt\":\"Rep??blica Sul-Africana\",\"nl\":\"Zuid-Afrika\",\"hr\":\"Ju??noafri??ka Republika\",\"fa\":\"?????????????? ??????????\",\"de\":\"Republik S??dafrika\",\"es\":\"Rep??blica de Sud??frica\",\"fr\":\"Afrique du Sud\",\"ja\":\"???????????????\",\"it\":\"Sud Africa\"}', -29.00000000, 24.00000000, '????????', 'U+1F1FF U+1F1E6', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q258'),
(205, 'South Georgia', 'SGS', 'GS', '', 'Grytviken', 'GBP', '??', '.gs', 'South Georgia', 'Americas', 'South America', '[{\"zoneName\":\"Atlantic\\/South_Georgia\",\"gmtOffset\":-7200,\"gmtOffsetName\":\"UTC-02:00\",\"abbreviation\":\"GST\",\"tzName\":\"South Georgia and the South Sandwich Islands Time\"}]', '{\"br\":\"Ilhas Ge??rgias do Sul e Sandwich do Sul\",\"pt\":\"Ilhas Ge??rgia do Sul e Sandu??che do Sul\",\"nl\":\"Zuid-Georgia en Zuidelijke Sandwicheilanden\",\"hr\":\"Ju??na Georgija i oto??je Ju??ni Sandwich\",\"fa\":\"?????????? ?????????????? ?????????? ?? ?????????????? ??????????\",\"de\":\"S??dgeorgien und die S??dlichen Sandwichinseln\",\"es\":\"Islas Georgias del Sur y Sandwich del Sur\",\"fr\":\"G??orgie du Sud-et-les ??les Sandwich du Sud\",\"ja\":\"???????????????????????????????????????????????????????????????\",\"it\":\"Georgia del Sud e Isole Sandwich Meridionali\"}', -54.50000000, -37.00000000, '????????', 'U+1F1EC U+1F1F8', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(206, 'South Sudan', 'SSD', 'SS', '211', 'Juba', 'SSP', '??', '.ss', 'South Sudan', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa\\/Juba\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"br\":\"Sud??o do Sul\",\"pt\":\"Sud??o do Sul\",\"nl\":\"Zuid-Soedan\",\"hr\":\"Ju??ni Sudan\",\"fa\":\"?????????? ??????????\",\"de\":\"S??dsudan\",\"es\":\"Sud??n del Sur\",\"fr\":\"Soudan du Sud\",\"ja\":\"???????????????\",\"it\":\"Sudan del sud\"}', 7.00000000, 30.00000000, '????????', 'U+1F1F8 U+1F1F8', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q958'),
(207, 'Spain', 'ESP', 'ES', '34', 'Madrid', 'EUR', '???', '.es', 'Espa??a', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Africa\\/Ceuta\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"},{\"zoneName\":\"Atlantic\\/Canary\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"WET\",\"tzName\":\"Western European Time\"},{\"zoneName\":\"Europe\\/Madrid\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Espanha\",\"pt\":\"Espanha\",\"nl\":\"Spanje\",\"hr\":\"??panjolska\",\"fa\":\"??????????????\",\"de\":\"Spanien\",\"es\":\"Espa??a\",\"fr\":\"Espagne\",\"ja\":\"????????????\",\"it\":\"Spagna\"}', 40.00000000, -4.00000000, '????????', 'U+1F1EA U+1F1F8', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q29'),
(208, 'Sri Lanka', 'LKA', 'LK', '94', 'Colombo', 'LKR', 'Rs', '.lk', '??r?? la???k??va', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia\\/Colombo\",\"gmtOffset\":19800,\"gmtOffsetName\":\"UTC+05:30\",\"abbreviation\":\"IST\",\"tzName\":\"Indian Standard Time\"}]', '{\"br\":\"Sri Lanka\",\"pt\":\"Sri Lanka\",\"nl\":\"Sri Lanka\",\"hr\":\"??ri Lanka\",\"fa\":\"???????????????????\",\"de\":\"Sri Lanka\",\"es\":\"Sri Lanka\",\"fr\":\"Sri Lanka\",\"ja\":\"???????????????\",\"it\":\"Sri Lanka\"}', 7.00000000, 81.00000000, '????????', 'U+1F1F1 U+1F1F0', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q854'),
(209, 'Sudan', 'SDN', 'SD', '249', 'Khartoum', 'SDG', '.??.??', '.sd', '??????????????', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa\\/Khartoum\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EAT\",\"tzName\":\"Eastern African Time\"}]', '{\"br\":\"Sud??o\",\"pt\":\"Sud??o\",\"nl\":\"Soedan\",\"hr\":\"Sudan\",\"fa\":\"??????????\",\"de\":\"Sudan\",\"es\":\"Sud??n\",\"fr\":\"Soudan\",\"ja\":\"????????????\",\"it\":\"Sudan\"}', 15.00000000, 30.00000000, '????????', 'U+1F1F8 U+1F1E9', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1049'),
(210, 'Suriname', 'SUR', 'SR', '597', 'Paramaribo', 'SRD', '$', '.sr', 'Suriname', 'Americas', 'South America', '[{\"zoneName\":\"America\\/Paramaribo\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"SRT\",\"tzName\":\"Suriname Time\"}]', '{\"br\":\"Suriname\",\"pt\":\"Suriname\",\"nl\":\"Suriname\",\"hr\":\"Surinam\",\"fa\":\"??????????????\",\"de\":\"Suriname\",\"es\":\"Surinam\",\"fr\":\"Surinam\",\"ja\":\"????????????\",\"it\":\"Suriname\"}', 4.00000000, -56.00000000, '????????', 'U+1F1F8 U+1F1F7', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q730');
INSERT INTO `countries` (`id`, `name`, `iso3`, `iso2`, `phonecode`, `capital`, `currency`, `currency_symbol`, `tld`, `native`, `region`, `subregion`, `timezones`, `translations`, `latitude`, `longitude`, `emoji`, `emojiU`, `coins`, `status`, `created_at`, `updated_at`, `flag`, `wikiDataId`) VALUES
(211, 'Svalbard And Jan Mayen Islands', 'SJM', 'SJ', '47', 'Longyearbyen', 'NOK', 'kr', '.sj', 'Svalbard og Jan Mayen', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Arctic\\/Longyearbyen\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Svalbard\",\"pt\":\"Svalbard\",\"nl\":\"Svalbard en Jan Mayen\",\"hr\":\"Svalbard i Jan Mayen\",\"fa\":\"???????????????? ?? ?????? ????????\",\"de\":\"Svalbard und Jan Mayen\",\"es\":\"Islas Svalbard y Jan Mayen\",\"fr\":\"Svalbard et Jan Mayen\",\"ja\":\"?????????????????????????????????????????????????????????\",\"it\":\"Svalbard e Jan Mayen\"}', 78.00000000, 20.00000000, '????????', 'U+1F1F8 U+1F1EF', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(212, 'Swaziland', 'SWZ', 'SZ', '268', 'Mbabane', 'SZL', 'E', '.sz', 'Swaziland', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa\\/Mbabane\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"SAST\",\"tzName\":\"South African Standard Time\"}]', '{\"br\":\"Suazil??ndia\",\"pt\":\"Suazil??ndia\",\"nl\":\"Swaziland\",\"hr\":\"Svazi\",\"fa\":\"????????????????\",\"de\":\"Swasiland\",\"es\":\"Suazilandia\",\"fr\":\"Swaziland\",\"ja\":\"??????????????????\",\"it\":\"Swaziland\"}', -26.50000000, 31.50000000, '????????', 'U+1F1F8 U+1F1FF', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1050'),
(213, 'Sweden', 'SWE', 'SE', '46', 'Stockholm', 'SEK', 'kr', '.se', 'Sverige', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe\\/Stockholm\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Su??cia\",\"pt\":\"Su??cia\",\"nl\":\"Zweden\",\"hr\":\"??vedska\",\"fa\":\"????????\",\"de\":\"Schweden\",\"es\":\"Suecia\",\"fr\":\"Su??de\",\"ja\":\"??????????????????\",\"it\":\"Svezia\"}', 62.00000000, 15.00000000, '????????', 'U+1F1F8 U+1F1EA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q34'),
(214, 'Switzerland', 'CHE', 'CH', '41', 'Bern', 'CHF', 'CHf', '.ch', 'Schweiz', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe\\/Zurich\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Su????a\",\"pt\":\"Su????a\",\"nl\":\"Zwitserland\",\"hr\":\"??vicarska\",\"fa\":\"??????????\",\"de\":\"Schweiz\",\"es\":\"Suiza\",\"fr\":\"Suisse\",\"ja\":\"?????????\",\"it\":\"Svizzera\"}', 47.00000000, 8.00000000, '????????', 'U+1F1E8 U+1F1ED', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q39'),
(215, 'Syria', 'SYR', 'SY', '963', 'Damascus', 'SYP', 'LS', '.sy', '??????????', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia\\/Damascus\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"br\":\"S??ria\",\"pt\":\"S??ria\",\"nl\":\"Syri??\",\"hr\":\"Sirija\",\"fa\":\"??????????\",\"de\":\"Syrien\",\"es\":\"Siria\",\"fr\":\"Syrie\",\"ja\":\"??????????????????????????????\",\"it\":\"Siria\"}', 35.00000000, 38.00000000, '????????', 'U+1F1F8 U+1F1FE', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q858'),
(216, 'Taiwan', 'TWN', 'TW', '886', 'Taipei', 'TWD', '$', '.tw', '??????', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia\\/Taipei\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"CST\",\"tzName\":\"China Standard Time\"}]', '{\"br\":\"Taiwan\",\"pt\":\"Taiwan\",\"nl\":\"Taiwan\",\"hr\":\"Tajvan\",\"fa\":\"????????????\",\"de\":\"Taiwan\",\"es\":\"Taiw??n\",\"fr\":\"Ta??wan\",\"ja\":\"????????????????????????\",\"it\":\"Taiwan\"}', 23.50000000, 121.00000000, '????????', 'U+1F1F9 U+1F1FC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q865'),
(217, 'Tajikistan', 'TJK', 'TJ', '992', 'Dushanbe', 'TJS', 'SM', '.tj', '????????????????????', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia\\/Dushanbe\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"TJT\",\"tzName\":\"Tajikistan Time\"}]', '{\"br\":\"Tajiquist??o\",\"pt\":\"Tajiquist??o\",\"nl\":\"Tadzjikistan\",\"hr\":\"Ta??ikistan\",\"fa\":\"??????????????????\",\"de\":\"Tadschikistan\",\"es\":\"Tayikist??n\",\"fr\":\"Tadjikistan\",\"ja\":\"??????????????????\",\"it\":\"Tagikistan\"}', 39.00000000, 71.00000000, '????????', 'U+1F1F9 U+1F1EF', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q863'),
(218, 'Tanzania', 'TZA', 'TZ', '255', 'Dodoma', 'TZS', 'TSh', '.tz', 'Tanzania', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa\\/Dar_es_Salaam\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"br\":\"Tanz??nia\",\"pt\":\"Tanz??nia\",\"nl\":\"Tanzania\",\"hr\":\"Tanzanija\",\"fa\":\"????????????????\",\"de\":\"Tansania\",\"es\":\"Tanzania\",\"fr\":\"Tanzanie\",\"ja\":\"???????????????\",\"it\":\"Tanzania\"}', -6.00000000, 35.00000000, '????????', 'U+1F1F9 U+1F1FF', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q924'),
(219, 'Thailand', 'THA', 'TH', '66', 'Bangkok', 'THB', '???', '.th', '???????????????????????????', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia\\/Bangkok\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"ICT\",\"tzName\":\"Indochina Time\"}]', '{\"br\":\"Tail??ndia\",\"pt\":\"Tail??ndia\",\"nl\":\"Thailand\",\"hr\":\"Tajland\",\"fa\":\"????????????\",\"de\":\"Thailand\",\"es\":\"Tailandia\",\"fr\":\"Tha??lande\",\"ja\":\"??????\",\"it\":\"Tailandia\"}', 15.00000000, 100.00000000, '????????', 'U+1F1F9 U+1F1ED', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q869'),
(220, 'Togo', 'TGO', 'TG', '228', 'Lome', 'XOF', 'CFA', '.tg', 'Togo', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa\\/Lome\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"br\":\"Togo\",\"pt\":\"Togo\",\"nl\":\"Togo\",\"hr\":\"Togo\",\"fa\":\"????????\",\"de\":\"Togo\",\"es\":\"Togo\",\"fr\":\"Togo\",\"ja\":\"?????????\",\"it\":\"Togo\"}', 8.00000000, 1.16666666, '????????', 'U+1F1F9 U+1F1EC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q945'),
(221, 'Tokelau', 'TKL', 'TK', '690', '', 'NZD', '$', '.tk', 'Tokelau', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific\\/Fakaofo\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"TKT\",\"tzName\":\"Tokelau Time\"}]', '{\"br\":\"Tokelau\",\"pt\":\"Toquelau\",\"nl\":\"Tokelau\",\"hr\":\"Tokelau\",\"fa\":\"??????????????\",\"de\":\"Tokelau\",\"es\":\"Islas Tokelau\",\"fr\":\"Tokelau\",\"ja\":\"????????????\",\"it\":\"Isole Tokelau\"}', -9.00000000, -172.00000000, '????????', 'U+1F1F9 U+1F1F0', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(222, 'Tonga', 'TON', 'TO', '676', 'Nuku\'alofa', 'TOP', '$', '.to', 'Tonga', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific\\/Tongatapu\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"TOT\",\"tzName\":\"Tonga Time\"}]', '{\"br\":\"Tonga\",\"pt\":\"Tonga\",\"nl\":\"Tonga\",\"hr\":\"Tonga\",\"fa\":\"??????????\",\"de\":\"Tonga\",\"es\":\"Tonga\",\"fr\":\"Tonga\",\"ja\":\"?????????\",\"it\":\"Tonga\"}', -20.00000000, -175.00000000, '????????', 'U+1F1F9 U+1F1F4', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q678'),
(223, 'Trinidad And Tobago', 'TTO', 'TT', '+1-868', 'Port of Spain', 'TTD', '$', '.tt', 'Trinidad and Tobago', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Port_of_Spain\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"Trinidad e Tobago\",\"pt\":\"Trindade e Tobago\",\"nl\":\"Trinidad en Tobago\",\"hr\":\"Trinidad i Tobago\",\"fa\":\"???????????????? ?? ????????????\",\"de\":\"Trinidad und Tobago\",\"es\":\"Trinidad y Tobago\",\"fr\":\"Trinit?? et Tobago\",\"ja\":\"??????????????????????????????\",\"it\":\"Trinidad e Tobago\"}', 11.00000000, -61.00000000, '????????', 'U+1F1F9 U+1F1F9', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q754'),
(224, 'Tunisia', 'TUN', 'TN', '216', 'Tunis', 'TND', '??.??', '.tn', '????????', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa\\/Tunis\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Tun??sia\",\"pt\":\"Tun??sia\",\"nl\":\"Tunesi??\",\"hr\":\"Tunis\",\"fa\":\"????????\",\"de\":\"Tunesien\",\"es\":\"T??nez\",\"fr\":\"Tunisie\",\"ja\":\"???????????????\",\"it\":\"Tunisia\"}', 34.00000000, 9.00000000, '????????', 'U+1F1F9 U+1F1F3', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q948'),
(225, 'Turkey', 'TUR', 'TR', '90', 'Ankara', 'TRY', '???', '.tr', 'T??rkiye', 'Asia', 'Western Asia', '[{\"zoneName\":\"Europe\\/Istanbul\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"br\":\"Turquia\",\"pt\":\"Turquia\",\"nl\":\"Turkije\",\"hr\":\"Turska\",\"fa\":\"??????????\",\"de\":\"T??rkei\",\"es\":\"Turqu??a\",\"fr\":\"Turquie\",\"ja\":\"?????????\",\"it\":\"Turchia\"}', 39.00000000, 35.00000000, '????????', 'U+1F1F9 U+1F1F7', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q43'),
(226, 'Turkmenistan', 'TKM', 'TM', '993', 'Ashgabat', 'TMT', 'T', '.tm', 'T??rkmenistan', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia\\/Ashgabat\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"TMT\",\"tzName\":\"Turkmenistan Time\"}]', '{\"br\":\"Turcomenist??o\",\"pt\":\"Turquemenist??o\",\"nl\":\"Turkmenistan\",\"hr\":\"Turkmenistan\",\"fa\":\"??????????????????\",\"de\":\"Turkmenistan\",\"es\":\"Turkmenist??n\",\"fr\":\"Turkm??nistan\",\"ja\":\"????????????????????????\",\"it\":\"Turkmenistan\"}', 40.00000000, 60.00000000, '????????', 'U+1F1F9 U+1F1F2', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q874'),
(227, 'Turks And Caicos Islands', 'TCA', 'TC', '+1-649', 'Cockburn Town', 'USD', '$', '.tc', 'Turks and Caicos Islands', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Grand_Turk\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"br\":\"Ilhas Turcas e Caicos\",\"pt\":\"Ilhas Turcas e Caicos\",\"nl\":\"Turks- en Caicoseilanden\",\"hr\":\"Otoci Turks i Caicos\",\"fa\":\"?????????? ?????????? ?? ????????????\",\"de\":\"Turks- und Caicosinseln\",\"es\":\"Islas Turks y Caicos\",\"fr\":\"??les Turques-et-Ca??ques\",\"ja\":\"?????????????????????????????????\",\"it\":\"Isole Turks e Caicos\"}', 21.75000000, -71.58333333, '????????', 'U+1F1F9 U+1F1E8', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(228, 'Tuvalu', 'TUV', 'TV', '688', 'Funafuti', 'AUD', '$', '.tv', 'Tuvalu', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific\\/Funafuti\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"TVT\",\"tzName\":\"Tuvalu Time\"}]', '{\"br\":\"Tuvalu\",\"pt\":\"Tuvalu\",\"nl\":\"Tuvalu\",\"hr\":\"Tuvalu\",\"fa\":\"????????????\",\"de\":\"Tuvalu\",\"es\":\"Tuvalu\",\"fr\":\"Tuvalu\",\"ja\":\"?????????\",\"it\":\"Tuvalu\"}', -8.00000000, 178.00000000, '????????', 'U+1F1F9 U+1F1FB', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q672'),
(229, 'Uganda', 'UGA', 'UG', '256', 'Kampala', 'UGX', 'USh', '.ug', 'Uganda', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa\\/Kampala\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"br\":\"Uganda\",\"pt\":\"Uganda\",\"nl\":\"Oeganda\",\"hr\":\"Uganda\",\"fa\":\"??????????????\",\"de\":\"Uganda\",\"es\":\"Uganda\",\"fr\":\"Uganda\",\"ja\":\"????????????\",\"it\":\"Uganda\"}', 1.00000000, 32.00000000, '????????', 'U+1F1FA U+1F1EC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q1036'),
(230, 'Ukraine', 'UKR', 'UA', '380', 'Kiev', 'UAH', '???', '.ua', '??????????????', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe\\/Kiev\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Europe\\/Simferopol\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Time\"},{\"zoneName\":\"Europe\\/Uzhgorod\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Europe\\/Zaporozhye\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"br\":\"Ucr??nia\",\"pt\":\"Ucr??nia\",\"nl\":\"Oekra??ne\",\"hr\":\"Ukrajina\",\"fa\":\"????????????\",\"de\":\"Ukraine\",\"es\":\"Ucrania\",\"fr\":\"Ukraine\",\"ja\":\"???????????????\",\"it\":\"Ucraina\"}', 49.00000000, 32.00000000, '????????', 'U+1F1FA U+1F1E6', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q212'),
(231, 'United Arab Emirates', 'ARE', 'AE', '971', 'Abu Dhabi', 'AED', '??.??', '.ae', '???????? ???????????????? ?????????????? ??????????????', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia\\/Dubai\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"GST\",\"tzName\":\"Gulf Standard Time\"}]', '{\"br\":\"Emirados ??rabes Unidos\",\"pt\":\"Emirados ??rabes Unidos\",\"nl\":\"Verenigde Arabische Emiraten\",\"hr\":\"Ujedinjeni Arapski Emirati\",\"fa\":\"???????????? ?????????? ????????\",\"de\":\"Vereinigte Arabische Emirate\",\"es\":\"Emiratos ??rabes Unidos\",\"fr\":\"??mirats arabes unis\",\"ja\":\"????????????????????????\",\"it\":\"Emirati Arabi Uniti\"}', 24.00000000, 54.00000000, '????????', 'U+1F1E6 U+1F1EA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q878'),
(232, 'United Kingdom', 'GBR', 'GB', '44', 'London', 'GBP', '??', '.uk', 'United Kingdom', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe\\/London\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC\\u00b100\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"br\":\"Reino Unido\",\"pt\":\"Reino Unido\",\"nl\":\"Verenigd Koninkrijk\",\"hr\":\"Ujedinjeno Kraljevstvo\",\"fa\":\"?????????????????? ???????? ?? ???????????? ??????????\",\"de\":\"Vereinigtes K??nigreich\",\"es\":\"Reino Unido\",\"fr\":\"Royaume-Uni\",\"ja\":\"????????????\",\"it\":\"Regno Unito\"}', 54.00000000, -2.00000000, '????????', 'U+1F1EC U+1F1E7', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q145'),
(233, 'United States', 'USA', 'US', '1', 'Washington', 'USD', '$', '.us', 'United States', 'Americas', 'Northern America', '[{\"zoneName\":\"America\\/Adak\",\"gmtOffset\":-36000,\"gmtOffsetName\":\"UTC-10:00\",\"abbreviation\":\"HST\",\"tzName\":\"Hawaii\\u2013Aleutian Standard Time\"},{\"zoneName\":\"America\\/Anchorage\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America\\/Boise\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America\\/Chicago\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America\\/Denver\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America\\/Detroit\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America\\/Indiana\\/Indianapolis\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America\\/Indiana\\/Knox\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America\\/Indiana\\/Marengo\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America\\/Indiana\\/Petersburg\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America\\/Indiana\\/Tell_City\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America\\/Indiana\\/Vevay\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America\\/Indiana\\/Vincennes\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America\\/Indiana\\/Winamac\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America\\/Juneau\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America\\/Kentucky\\/Louisville\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America\\/Kentucky\\/Monticello\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America\\/Los_Angeles\",\"gmtOffset\":-28800,\"gmtOffsetName\":\"UTC-08:00\",\"abbreviation\":\"PST\",\"tzName\":\"Pacific Standard Time (North America\"},{\"zoneName\":\"America\\/Menominee\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America\\/Metlakatla\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America\\/New_York\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America\\/Nome\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America\\/North_Dakota\\/Beulah\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America\\/North_Dakota\\/Center\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America\\/North_Dakota\\/New_Salem\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America\\/Phoenix\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America\\/Sitka\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America\\/Yakutat\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"Pacific\\/Honolulu\",\"gmtOffset\":-36000,\"gmtOffsetName\":\"UTC-10:00\",\"abbreviation\":\"HST\",\"tzName\":\"Hawaii\\u2013Aleutian Standard Time\"}]', '{\"br\":\"Estados Unidos\",\"pt\":\"Estados Unidos\",\"nl\":\"Verenigde Staten\",\"hr\":\"Sjedinjene Ameri??ke Dr??ave\",\"fa\":\"???????????? ?????????? ????????????\",\"de\":\"Vereinigte Staaten von Amerika\",\"es\":\"Estados Unidos\",\"fr\":\"??tats-Unis\",\"ja\":\"?????????????????????\",\"it\":\"Stati Uniti D\'America\"}', 38.00000000, -97.00000000, '????????', 'U+1F1FA U+1F1F8', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q30'),
(234, 'United States Minor Outlying Islands', 'UMI', 'UM', '1', '', 'USD', '$', '.us', 'United States Minor Outlying Islands', 'Americas', 'Northern America', '[{\"zoneName\":\"Pacific\\/Midway\",\"gmtOffset\":-39600,\"gmtOffsetName\":\"UTC-11:00\",\"abbreviation\":\"SST\",\"tzName\":\"Samoa Standard Time\"},{\"zoneName\":\"Pacific\\/Wake\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"WAKT\",\"tzName\":\"Wake Island Time\"}]', '{\"br\":\"Ilhas Menores Distantes dos Estados Unidos\",\"pt\":\"Ilhas Menores Distantes dos Estados Unidos\",\"nl\":\"Kleine afgelegen eilanden van de Verenigde Staten\",\"hr\":\"Mali udaljeni otoci SAD-a\",\"fa\":\"?????????? ???????? ????????????????? ???????????? ?????????? ????????????\",\"de\":\"Kleinere Inselbesitzungen der Vereinigten Staaten\",\"es\":\"Islas Ultramarinas Menores de Estados Unidos\",\"fr\":\"??les mineures ??loign??es des ??tats-Unis\",\"ja\":\"????????????????????????\",\"it\":\"Isole minori esterne degli Stati Uniti d\'America\"}', 0.00000000, 0.00000000, '????????', 'U+1F1FA U+1F1F2', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(235, 'Uruguay', 'URY', 'UY', '598', 'Montevideo', 'UYU', '$', '.uy', 'Uruguay', 'Americas', 'South America', '[{\"zoneName\":\"America\\/Montevideo\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"UYT\",\"tzName\":\"Uruguay Standard Time\"}]', '{\"br\":\"Uruguai\",\"pt\":\"Uruguai\",\"nl\":\"Uruguay\",\"hr\":\"Urugvaj\",\"fa\":\"??????????????\",\"de\":\"Uruguay\",\"es\":\"Uruguay\",\"fr\":\"Uruguay\",\"ja\":\"???????????????\",\"it\":\"Uruguay\"}', -33.00000000, -56.00000000, '????????', 'U+1F1FA U+1F1FE', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q77'),
(236, 'Uzbekistan', 'UZB', 'UZ', '998', 'Tashkent', 'UZS', '????', '.uz', 'O???zbekiston', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia\\/Samarkand\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"UZT\",\"tzName\":\"Uzbekistan Time\"},{\"zoneName\":\"Asia\\/Tashkent\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"UZT\",\"tzName\":\"Uzbekistan Time\"}]', '{\"br\":\"Uzbequist??o\",\"pt\":\"Usbequist??o\",\"nl\":\"Oezbekistan\",\"hr\":\"Uzbekistan\",\"fa\":\"????????????????\",\"de\":\"Usbekistan\",\"es\":\"Uzbekist??n\",\"fr\":\"Ouzb??kistan\",\"ja\":\"?????????????????????\",\"it\":\"Uzbekistan\"}', 41.00000000, 64.00000000, '????????', 'U+1F1FA U+1F1FF', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q265'),
(237, 'Vanuatu', 'VUT', 'VU', '678', 'Port Vila', 'VUV', 'VT', '.vu', 'Vanuatu', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific\\/Efate\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"VUT\",\"tzName\":\"Vanuatu Time\"}]', '{\"br\":\"Vanuatu\",\"pt\":\"Vanuatu\",\"nl\":\"Vanuatu\",\"hr\":\"Vanuatu\",\"fa\":\"??????????????\",\"de\":\"Vanuatu\",\"es\":\"Vanuatu\",\"fr\":\"Vanuatu\",\"ja\":\"????????????\",\"it\":\"Vanuatu\"}', -16.00000000, 167.00000000, '????????', 'U+1F1FB U+1F1FA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q686'),
(238, 'Vatican City State (Holy See)', 'VAT', 'VA', '379', 'Vatican City', 'EUR', '???', '.va', 'Vaticano', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe\\/Vatican\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"br\":\"Vaticano\",\"pt\":\"Vaticano\",\"nl\":\"Heilige Stoel\",\"hr\":\"Sveta Stolica\",\"fa\":\"???????? ????????\",\"de\":\"Heiliger Stuhl\",\"es\":\"Santa Sede\",\"fr\":\"voir Saint\",\"ja\":\"??????\",\"it\":\"Santa Sede\"}', 41.90000000, 12.45000000, '????????', 'U+1F1FB U+1F1E6', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q237'),
(239, 'Venezuela', 'VEN', 'VE', '58', 'Caracas', 'VEF', 'Bs', '.ve', 'Venezuela', 'Americas', 'South America', '[{\"zoneName\":\"America\\/Caracas\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"VET\",\"tzName\":\"Venezuelan Standard Time\"}]', '{\"br\":\"Venezuela\",\"pt\":\"Venezuela\",\"nl\":\"Venezuela\",\"hr\":\"Venezuela\",\"fa\":\"??????????????\",\"de\":\"Venezuela\",\"es\":\"Venezuela\",\"fr\":\"Venezuela\",\"ja\":\"???????????????????????????????????????\",\"it\":\"Venezuela\"}', 8.00000000, -66.00000000, '????????', 'U+1F1FB U+1F1EA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q717'),
(240, 'Vietnam', 'VNM', 'VN', '84', 'Hanoi', 'VND', '???', '.vn', 'Vi???t Nam', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia\\/Ho_Chi_Minh\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"ICT\",\"tzName\":\"Indochina Time\"}]', '{\"br\":\"Vietn??\",\"pt\":\"Vietname\",\"nl\":\"Vietnam\",\"hr\":\"Vijetnam\",\"fa\":\"????????????\",\"de\":\"Vietnam\",\"es\":\"Vietnam\",\"fr\":\"Vi??t Nam\",\"ja\":\"????????????\",\"it\":\"Vietnam\"}', 16.16666666, 107.83333333, '????????', 'U+1F1FB U+1F1F3', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q881'),
(241, 'Virgin Islands (British)', 'VGB', 'VG', '+1-284', 'Road Town', 'USD', '$', '.vg', 'British Virgin Islands', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Tortola\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"Ilhas Virgens Brit??nicas\",\"pt\":\"Ilhas Virgens Brit??nicas\",\"nl\":\"Britse Maagdeneilanden\",\"hr\":\"Britanski Djevi??anski Otoci\",\"fa\":\"?????????? ???????????? ????????????????\",\"de\":\"Britische Jungferninseln\",\"es\":\"Islas V??rgenes del Reino Unido\",\"fr\":\"??les Vierges britanniques\",\"ja\":\"????????????????????????????????????\",\"it\":\"Isole Vergini Britanniche\"}', 18.43138300, -64.62305000, '????????', 'U+1F1FB U+1F1EC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(242, 'Virgin Islands (US)', 'VIR', 'VI', '+1-340', 'Charlotte Amalie', 'USD', '$', '.vi', 'United States Virgin Islands', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/St_Thomas\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"Ilhas Virgens Americanas\",\"pt\":\"Ilhas Virgens Americanas\",\"nl\":\"Verenigde Staten Maagdeneilanden\",\"fa\":\"?????????? ???????????? ????????????\",\"de\":\"Amerikanische Jungferninseln\",\"es\":\"Islas V??rgenes de los Estados Unidos\",\"fr\":\"??les Vierges des ??tats-Unis\",\"ja\":\"????????????????????????????????????\",\"it\":\"Isole Vergini americane\"}', 18.34000000, -64.93000000, '????????', 'U+1F1FB U+1F1EE', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(243, 'Wallis And Futuna Islands', 'WLF', 'WF', '681', 'Mata Utu', 'XPF', '???', '.wf', 'Wallis et Futuna', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific\\/Wallis\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"WFT\",\"tzName\":\"Wallis & Futuna Time\"}]', '{\"br\":\"Wallis e Futuna\",\"pt\":\"Wallis e Futuna\",\"nl\":\"Wallis en Futuna\",\"hr\":\"Wallis i Fortuna\",\"fa\":\"?????????? ?? ????????????\",\"de\":\"Wallis und Futuna\",\"es\":\"Wallis y Futuna\",\"fr\":\"Wallis-et-Futuna\",\"ja\":\"????????????????????????\",\"it\":\"Wallis e Futuna\"}', -13.30000000, -176.20000000, '????????', 'U+1F1FC U+1F1EB', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(244, 'Western Sahara', 'ESH', 'EH', '212', 'El-Aaiun', 'MAD', 'MAD', '.eh', '?????????????? ??????????????', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa\\/El_Aaiun\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WEST\",\"tzName\":\"Western European Summer Time\"}]', '{\"br\":\"Saara Ocidental\",\"pt\":\"Saara Ocidental\",\"nl\":\"Westelijke Sahara\",\"hr\":\"Zapadna Sahara\",\"fa\":\"???????????? ?????????????????? ???????? ????????\",\"de\":\"Westsahara\",\"es\":\"Sahara Occidental\",\"fr\":\"Sahara Occidental\",\"ja\":\"????????????\",\"it\":\"Sahara Occidentale\"}', 24.50000000, -13.00000000, '????????', 'U+1F1EA U+1F1ED', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, NULL),
(245, 'Yemen', 'YEM', 'YE', '967', 'Sanaa', 'YER', '???', '.ye', '??????????????', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia\\/Aden\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"br\":\"I??men\",\"pt\":\"I??men\",\"nl\":\"Jemen\",\"hr\":\"Jemen\",\"fa\":\"??????\",\"de\":\"Jemen\",\"es\":\"Yemen\",\"fr\":\"Y??men\",\"ja\":\"????????????\",\"it\":\"Yemen\"}', 15.00000000, 48.00000000, '????????', 'U+1F1FE U+1F1EA', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q805'),
(246, 'Zambia', 'ZMB', 'ZM', '260', 'Lusaka', 'ZMW', 'ZK', '.zm', 'Zambia', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa\\/Lusaka\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"br\":\"Z??mbia\",\"pt\":\"Z??mbia\",\"nl\":\"Zambia\",\"hr\":\"Zambija\",\"fa\":\"????????????\",\"de\":\"Sambia\",\"es\":\"Zambia\",\"fr\":\"Zambie\",\"ja\":\"????????????\",\"it\":\"Zambia\"}', -15.00000000, 30.00000000, '????????', 'U+1F1FF U+1F1F2', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q953'),
(247, 'Zimbabwe', 'ZWE', 'ZW', '263', 'Harare', 'ZWL', '$', '.zw', 'Zimbabwe', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa\\/Harare\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"br\":\"Zimbabwe\",\"pt\":\"Zimbabu??\",\"nl\":\"Zimbabwe\",\"hr\":\"Zimbabve\",\"fa\":\"??????????????\",\"de\":\"Simbabwe\",\"es\":\"Zimbabue\",\"fr\":\"Zimbabwe\",\"ja\":\"???????????????\",\"it\":\"Zimbabwe\"}', -20.00000000, 30.00000000, '????????', 'U+1F1FF U+1F1FC', 50, 0, '2018-07-20 20:11:03', '2021-11-08 02:36:00', 1, 'Q954'),
(248, 'Kosovo', 'XKX', 'XK', '383', 'Pristina', 'EUR', '???', '.xk', 'Republika e Kosov??s', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe\\/Belgrade\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', NULL, 42.56129090, 20.34030350, '????????', 'U+1F1FD U+1F1F0', 50, 0, '2020-08-15 15:33:50', '2021-11-08 02:36:00', 1, 'Q1246'),
(249, 'Cura??ao', 'CUW', 'CW', '599', 'Willemstad', 'ANG', '??', '.cw', 'Cura??ao', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Curacao\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"Cura??ao\",\"pt\":\"Cura??ao\",\"nl\":\"Cura??ao\",\"fa\":\"????????????????\",\"de\":\"Cura??ao\",\"fr\":\"Cura??ao\",\"it\":\"Cura??ao\"}', 12.11666700, -68.93333300, '????????', 'U+1F1E8 U+1F1FC', 50, 0, '2020-10-25 14:54:20', '2021-11-08 02:36:00', 1, 'Q25279'),
(250, 'Sint Maarten (Dutch part)', 'SXM', 'SX', '1721', 'Philipsburg', 'ANG', '??', '.sx', 'Sint Maarten', 'Americas', 'Caribbean', '[{\"zoneName\":\"America\\/Anguilla\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"br\":\"Sint Maarten\",\"pt\":\"S??o Martinho\",\"nl\":\"Sint Maarten\",\"fa\":\"???????? ??????????\",\"de\":\"Sint Maarten (niederl. Teil)\",\"fr\":\"Saint Martin (partie n??erlandaise)\",\"it\":\"Saint Martin (parte olandese)\"}', 18.03333300, -63.05000000, '????????', 'U+1F1F8 U+1F1FD', 50, 0, '2020-12-05 13:03:39', '2021-11-08 02:36:00', 1, 'Q26273');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `institute_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `associate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `teacher_id`, `institute_name`, `degree_type`, `degree_name`, `start_month`, `start_year`, `end_month`, `end_year`, `associate`, `speciality`, `score`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 11, 'test', 'graduation', 'yed', 'January', '1999', 'January', '2002', 'part time', 'Speciality', 'Speciality', '2021-06-21 05:51:00', '2021-06-21 05:51:00', NULL),
(2, 12, 'test', 'graduation', 'yed', 'January', '2001', 'February', '2003', 'correspondance', 'Speciality', 'Speciality', '2021-06-30 07:11:30', '2021-06-30 07:11:30', NULL),
(3, 13, 'test', 'graduation', 'yed', 'February', '2000', 'March', '2001', 'full time', 'Speciality', 'Speciality', '2021-06-30 07:15:22', '2021-06-30 07:15:22', NULL),
(4, 14, 'test', 'post graduation', 'yed', 'January', '1999', 'February', '2001', 'full time', 'Speciality', 'Speciality', '2021-09-01 07:45:12', '2021-09-01 07:45:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `coins` int(11) NOT NULL,
  `expired_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `member_id`, `coins`, `expired_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 11, 1000, NULL, '2021-06-21 06:03:04', '2021-06-21 06:03:04', NULL),
(2, 12, 2000, NULL, '2021-06-30 07:19:16', '2021-06-30 07:19:16', NULL),
(3, 11, 5000, NULL, '2021-08-17 03:31:43', '2021-08-17 03:31:43', NULL),
(4, 11, 6000, NULL, '2021-08-17 03:32:19', '2021-08-17 03:32:19', NULL),
(5, 14, 10000, NULL, '2021-09-01 07:54:47', '2021-09-01 07:54:47', NULL),
(6, 15, 500, NULL, '2021-09-01 08:04:33', '2021-09-01 08:04:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thread_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `thread_id`, `user_id`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 11, 'a', '2021-07-13 00:29:35', '2021-07-13 00:29:35', NULL),
(2, 1, 11, 'a', '2021-07-13 00:29:36', '2021-07-13 00:29:36', NULL),
(3, 1, 11, 'a', '2021-07-13 00:29:37', '2021-07-13 00:29:37', NULL),
(4, 1, 11, 'a', '2021-07-13 00:29:38', '2021-07-13 00:29:38', NULL),
(5, 1, 11, 'a', '2021-07-13 00:29:38', '2021-07-13 00:29:38', NULL),
(6, 1, 11, 'a', '2021-07-13 00:29:39', '2021-07-13 00:29:39', NULL),
(7, 1, 11, 'a', '2021-07-13 00:29:40', '2021-07-13 00:29:40', NULL),
(8, 1, 11, 'a', '2021-07-13 00:29:41', '2021-07-13 00:29:41', NULL),
(9, 1, 11, 'hii', '2021-08-17 02:25:14', '2021-08-17 02:25:14', NULL),
(10, 3, 14, '4', '2021-09-09 09:51:43', '2021-09-09 09:51:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `message_notifications`
--

CREATE TABLE `message_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message_id` bigint(20) UNSIGNED NOT NULL,
  `notify_user_id` bigint(20) UNSIGNED NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message_notifications`
--

INSERT INTO `message_notifications` (`id`, `message_id`, `notify_user_id`, `is_seen`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 1, '2021-07-12 03:52:24', '2021-07-12 03:52:24', NULL),
(2, 2, 2, 1, '2021-07-12 03:58:48', '2021-07-12 03:58:48', NULL),
(3, 3, 2, 1, '2021-07-12 04:01:23', '2021-07-12 04:01:23', NULL),
(4, 4, 2, 1, '2021-07-12 04:01:51', '2021-07-12 04:01:51', NULL),
(5, 5, 2, 1, '2021-07-12 04:02:20', '2021-07-12 04:02:20', NULL),
(6, 6, 11, 1, '2021-07-12 04:03:17', '2021-07-12 04:03:17', NULL),
(7, 1, 2, 0, '2021-07-13 00:28:46', '2021-07-13 00:28:46', NULL),
(8, 2, 2, 0, '2021-07-13 00:28:49', '2021-07-13 00:28:49', NULL),
(9, 3, 2, 0, '2021-07-13 00:28:50', '2021-07-13 00:28:50', NULL),
(10, 4, 2, 0, '2021-07-13 00:28:53', '2021-07-13 00:28:53', NULL),
(11, 5, 2, 0, '2021-07-13 00:28:55', '2021-07-13 00:28:55', NULL),
(12, 6, 2, 0, '2021-07-13 00:28:56', '2021-07-13 00:28:56', NULL),
(13, 7, 2, 0, '2021-07-13 00:28:57', '2021-07-13 00:28:57', NULL),
(14, 8, 2, 0, '2021-07-13 00:28:58', '2021-07-13 00:28:58', NULL),
(15, 9, 2, 0, '2021-07-13 00:28:59', '2021-07-13 00:28:59', NULL),
(16, 10, 2, 0, '2021-07-13 00:29:00', '2021-07-13 00:29:00', NULL),
(17, 11, 2, 0, '2021-07-13 00:29:00', '2021-07-13 00:29:00', NULL),
(18, 12, 2, 0, '2021-07-13 00:29:00', '2021-07-13 00:29:00', NULL),
(19, 13, 2, 0, '2021-07-13 00:29:00', '2021-07-13 00:29:00', NULL),
(20, 14, 2, 0, '2021-07-13 00:29:01', '2021-07-13 00:29:01', NULL),
(21, 15, 2, 0, '2021-07-13 00:29:01', '2021-07-13 00:29:01', NULL),
(22, 16, 2, 0, '2021-07-13 00:29:01', '2021-07-13 00:29:01', NULL),
(23, 17, 2, 0, '2021-07-13 00:29:01', '2021-07-13 00:29:01', NULL),
(24, 18, 2, 0, '2021-07-13 00:29:02', '2021-07-13 00:29:02', NULL),
(25, 1, 2, 0, '2021-07-13 00:29:35', '2021-07-13 00:29:35', NULL),
(26, 2, 2, 0, '2021-07-13 00:29:36', '2021-07-13 00:29:36', NULL),
(27, 3, 2, 0, '2021-07-13 00:29:37', '2021-07-13 00:29:37', NULL),
(28, 4, 2, 0, '2021-07-13 00:29:38', '2021-07-13 00:29:38', NULL),
(29, 5, 2, 0, '2021-07-13 00:29:38', '2021-07-13 00:29:38', NULL),
(30, 6, 2, 0, '2021-07-13 00:29:39', '2021-07-13 00:29:39', NULL),
(31, 7, 2, 0, '2021-07-13 00:29:40', '2021-07-13 00:29:40', NULL),
(32, 8, 2, 0, '2021-07-13 00:29:41', '2021-07-13 00:29:41', NULL),
(33, 9, 2, 0, '2021-08-17 02:25:14', '2021-08-17 02:25:14', NULL),
(34, 10, 2, 0, '2021-09-09 09:51:43', '2021-09-09 09:51:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_02_053326_create_permission_tables', 1),
(5, '2021_06_02_072017_create_teacher_table', 1),
(6, '2021_06_02_090006_create_subject_table', 1),
(7, '2021_06_02_090613_create_education_table', 1),
(8, '2021_06_02_091615_create_qualifications_table', 1),
(9, '2021_06_03_064920_create_request_tutor_table', 1),
(10, '2021_06_04_051906_create_user_verifications_table', 1),
(11, '2021_06_04_062626_create_coins_table', 1),
(12, '2021_06_04_065417_create_payment_table', 1),
(13, '2021_06_04_065701_create_wallet_table', 1),
(14, '2021_06_04_071500_create_transaction_table', 1),
(17, '2021_06_07_053133_add_columns_in_users_table', 2),
(18, '2021_06_07_121624_add_columns_in_user_table', 2),
(19, '2021_06_08_061547_change_teacher_detail_table_name', 3),
(20, '2021_06_08_063003_drop_profile_column_in_teacher_info_table', 4),
(21, '2021_06_08_082535_create_billing_info_table', 5),
(30, '2021_06_08_124942_create_coin_used_table', 6),
(31, '2021_06_08_125043_create_wallet_log_table', 6),
(32, '2021_06_09_061648_create_chat_tables', 6),
(34, '2021_06_14_054506_create_coin_used_items_table', 7),
(36, '2021_06_14_063332_create_review_table', 8),
(37, '2021_06_15_102235_add_description_column_in_teacher_info_table', 9),
(39, '2021_06_15_112724_create_membership_table', 10),
(40, '2021_06_18_071742_add_is_verification_detail_complete_column_in_user_verifications_table', 11),
(41, '2021_07_02_060546_create_blogs_table', 12),
(42, '2021_07_05_085404_add_deleted_at_to_users_table', 13),
(43, '2021_07_05_103322_add_post_is_public_column_in_user_verifications_table', 14),
(44, '2021_07_08_065547_add_price_column_in_coins_table', 15),
(45, '2021_07_12_084138_add_thread_id_column_in_coin_used_table', 16),
(48, '2021_09_01_123946_add_status_column_review_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 3),
(1, 'App\\User', 4),
(1, 'App\\User', 5),
(1, 'App\\User', 6),
(1, 'App\\User', 7),
(1, 'App\\User', 8),
(1, 'App\\User', 9),
(1, 'App\\User', 10),
(1, 'App\\User', 11),
(1, 'App\\User', 12),
(1, 'App\\User', 13),
(1, 'App\\User', 14),
(1, 'App\\User', 15),
(2, 'App\\User', 2),
(3, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thread_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `last_read` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `thread_id`, `user_id`, `last_read`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 11, '2021-08-20 06:02:55', '2021-07-12 03:52:19', '2021-08-20 06:02:55', NULL),
(2, 1, 2, '2021-07-12 04:03:07', '2021-07-12 03:52:19', '2021-07-12 08:37:20', NULL),
(3, 2, 11, '2021-07-16 02:18:37', '2021-07-16 02:18:37', '2021-07-16 02:18:37', NULL),
(4, 2, 2, '2021-07-16 02:18:37', '2021-07-16 02:18:37', '2021-07-16 02:18:37', NULL),
(5, 3, 14, '2021-09-09 09:53:13', '2021-09-09 09:51:19', '2021-09-09 09:53:13', '2021-09-09 09:53:13'),
(6, 3, 2, '2021-09-09 09:51:19', '2021-09-09 09:51:19', '2021-09-09 09:53:13', '2021-09-09 09:53:13'),
(7, 4, 14, '2021-09-09 09:56:43', '2021-09-09 09:56:23', '2021-09-09 09:56:43', '2021-09-09 09:56:43'),
(8, 4, 2, '2021-09-09 09:56:23', '2021-09-09 09:56:23', '2021-09-09 09:56:43', '2021-09-09 09:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('shahzaibs.pluton@gmail.com', '$2y$10$gddab2qo7U3trDZs8hDzF.pP9j4HM57ku.0snakB0W66rVJhAZVzG', '2021-06-30 04:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `coin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `user_id`, `coin_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 11, 2, '2021-07-12 03:50:35', '2021-07-12 03:50:35', NULL),
(2, 11, 2, '2021-07-12 03:50:35', '2021-07-12 03:50:35', NULL),
(3, 11, 3, '2021-07-12 03:51:53', '2021-07-12 03:51:53', NULL),
(4, 11, 0, '2021-07-26 04:02:29', '2021-07-26 04:02:29', NULL),
(5, 11, 0, '2021-08-17 03:30:39', '2021-08-17 03:30:39', NULL),
(6, 11, 0, '2021-08-17 03:31:43', '2021-08-17 03:31:43', NULL),
(7, 11, 0, '2021-08-17 03:32:19', '2021-08-17 03:32:19', NULL),
(8, 14, 0, '2021-09-01 07:54:47', '2021-09-01 07:54:47', NULL),
(9, 15, 0, '2021-09-01 08:04:33', '2021-09-01 08:04:33', NULL),
(10, 14, 7, '2021-09-09 09:54:56', '2021-09-09 09:54:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `paypal_key` varchar(500) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `status` varchar(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `name`, `paypal_key`, `type`, `status`) VALUES
(1, 'Paypal', 'sdfqw3r3224234324234fdsfewr3243423423423fdfwrfsefw', 'production', '1');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'All', 'web', '2021-06-04 17:57:03', '2021-06-04 17:57:03'),
(2, 'Create', 'web', '2021-06-04 17:57:03', '2021-06-04 17:57:03'),
(3, 'Delete', 'web', '2021-06-04 17:57:03', '2021-06-04 17:57:03'),
(4, 'Edit', 'web', '2021-06-04 17:57:03', '2021-06-04 17:57:03'),
(5, 'Post', 'web', '2021-06-04 17:57:03', '2021-06-04 17:57:03'),
(6, 'Show', 'web', '2021-06-04 17:57:04', '2021-06-04 17:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `organization_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `associate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qualifications`
--

INSERT INTO `qualifications` (`id`, `teacher_id`, `organization_name`, `designation`, `degree`, `start_month`, `start_year`, `end_month`, `end_year`, `associate`, `job_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 11, 'test', 'test', 'test', 'February', '2001', 'February', '2000', 'part time', 'Job', '2021-06-21 05:51:00', '2021-06-21 05:51:36', NULL),
(2, 12, 'test', 'test', 'test', 'January', '2000', 'March', '2000', 'full time', 'Job Description', '2021-06-30 07:11:30', '2021-06-30 07:11:30', NULL),
(3, 13, 'test', 'test', 'test', 'February', '1999', 'January', '2001', 'part time', 'Job Description', '2021-06-30 07:15:22', '2021-06-30 07:15:22', NULL),
(4, 14, 'test', 'test', 'test', 'January', '1999', 'January', '2000', 'full time', 'Job Description', '2021-09-01 07:45:12', '2021-09-01 07:45:12', NULL),
(5, 15, 'test', 'test', 'test', 'January', '1999', 'January', '2000', 'full time', 'Job Description', '2021-09-01 07:45:12', '2021-09-01 07:45:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `request_tutors`
--

CREATE TABLE `request_tutors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade_level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `help_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `online_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_at_student_place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_at_tutor_place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` double(15,2) NOT NULL,
  `gender_preference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_tutor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `working_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_closed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_tutors`
--

INSERT INTO `request_tutors` (`id`, `student_id`, `location`, `phone`, `detail`, `subject`, `grade_level`, `help_type`, `online_class`, `class_at_student_place`, `class_at_tutor_place`, `budget`, `gender_preference`, `no_of_tutor`, `working_type`, `file`, `is_closed`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'karachi', '03472236570', 'I will help you in cubing and mathematics. Non cubers will become good in cubing. I will teach you some math tricks will help you in your exam. Mathematical calculation in your mind. And some mathematics. I will teach you 2 look oll and 2 look pll. Hope you enjoy learning with me as your friend. I will teach you in online through zoom or meet....', 'chemistry', 'begginer', 'Assignment Help', 'yes', NULL, NULL, 100.00, 'Preferably Male', 'Only One', 'Part time', '', 0, '2021-06-21 05:27:12', '2021-07-06 08:28:25', NULL),
(2, 2, 'karachi', '03472236570', 'I will help you in cubing and mathematics. Non cubers will become good in cubing. I will teach you some math tricks will help you in your exam. Mathematical calculation in your mind. And some mathematics. I will teach you 2 look oll and 2 look pll. Hope you enjoy learning with me as your friend. I will teach you in online through zoom or meet....', 'physics', 'begginer', 'Tutoring', 'yes', NULL, NULL, 100.00, 'Preferably Male', 'More than One', 'Part time', '', 0, '2021-06-30 04:33:39', '2021-06-30 04:33:39', NULL),
(3, 2, 'karachi', '03472236570', 'I will help you in cubing and mathematics. Non cubers will become good in cubing. I will teach you some math tricks will help you in your exam. Mathematical calculation in your mind. And some mathematics. I will teach you 2 look oll and 2 look pll. Hope you enjoy learning with me as your friend. I will teach you in online through zoom or meet....', 'physics', 'begginer', 'Assignment Help', 'yes', NULL, NULL, 100.00, 'Preferably Male', 'Only One', 'Full time', '', 0, '2021-06-30 07:17:09', '2021-06-30 07:17:09', NULL),
(4, 2, 'karachi', '03472236570', 'I will help you in cubing and mathematics. Non cubers will become good in cubing. I will teach you some math tricks will help you in your exam. Mathematical calculation in your mind. And some mathematics. I will teach you 2 look oll and 2 look pll. Hope you enjoy learning with me as your friend. I will teach you in online through zoom or meet....', 'physics', 'begginer', 'Assignment Help', NULL, NULL, NULL, 100.00, 'Preferably Female', 'Only One', 'Full time', '', 0, '2021-07-01 06:40:14', '2021-07-01 06:40:14', NULL),
(5, 2, 'karachi', '03472236570', 'I will help you in cubing and mathematics. Non cubers will become good in cubing. I will teach you some math tricks will help you in your exam. Mathematical calculation in your mind. And some mathematics. I will teach you 2 look oll and 2 look pll. Hope you enjoy learning with me as your friend. I will teach you in online through zoom or meet....', 'physics', 'intermediate', 'Tutoring', 'yes', NULL, NULL, 100.00, 'Preferably Male', 'As many as possible', 'Part time', '', 0, '2021-07-16 07:38:59', '2021-07-16 07:38:59', NULL),
(6, 2, 'karachi', '03472236570', 'I will help you in cubing and mathematics. Non cubers will become good in cubing. I will teach you some math tricks will help you in your exam. Mathematical calculation in your mind. And some mathematics. I will teach you 2 look oll and 2 look pll. Hope you enjoy learning with me as your friend. I will teach you in online through zoom or meet....', 'physics', 'begginer', 'Assignment Help', 'yes', NULL, NULL, 100.00, 'Preferably Male', 'Only One', 'Part time', '', 0, '2021-09-01 07:43:25', '2021-09-01 07:43:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `review_to_user_id` bigint(20) UNSIGNED NOT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `review_to_user_id`, `rating`, `headline`, `review`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 11, '1.5', 'Heading', 'Best TeaBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher EverBest Teacher Evercher Ever', '0', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'teacher', 'web', '2021-06-04 17:57:04', '2021-06-04 17:57:04'),
(2, 'student', 'web', '2021-06-04 17:57:04', '2021-06-04 17:57:04'),
(3, 'super-admin', 'web', '2021-06-04 17:57:05', '2021-06-04 17:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `teacher_id`, `subject`, `level_from`, `level_to`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 11, 'physics', 'begginer', 'intermediate', '2021-06-21 05:51:00', '2021-06-21 05:51:00', NULL),
(2, 12, 'physics', 'intermediate', 'begginer', '2021-06-30 07:11:30', '2021-06-30 07:11:30', NULL),
(3, 13, 'physics', 'begginer', 'begginer', '2021-06-30 07:15:22', '2021-06-30 07:15:22', NULL),
(4, 14, 'physics', 'begginer', 'begginer', '2021-09-01 07:45:12', '2021-09-01 07:45:12', NULL),
(5, 15, 'physics', 'begginer', 'begginer', '2021-09-01 07:45:12', '2021-09-01 07:45:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE `teacher_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee_charge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_fee` double(15,2) DEFAULT NULL,
  `max_fee` double(15,2) DEFAULT NULL,
  `fee_detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_experience` double(15,2) DEFAULT NULL,
  `total_experience_online_offline` double(15,2) DEFAULT NULL,
  `total_experience_online` double(15,2) DEFAULT NULL,
  `travel_to_student` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_available` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digital_pen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `help_with` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_time_employee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interested_in` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`id`, `teacher_id`, `type`, `current_role`, `gender`, `dob`, `location`, `phone`, `postal_code`, `description`, `fee_charge`, `min_fee`, `max_fee`, `fee_detail`, `total_experience`, `total_experience_online_offline`, `total_experience_online`, `travel_to_student`, `online_available`, `digital_pen`, `help_with`, `full_time_employee`, `interested_in`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 11, 'individual', 'test123', 'male', '2020-11-11', 'karachi', '03472236570', '75400', 'I want to learn Automation Testing,', 'hourly', 23.00, 23.00, 'sdf', 1.00, 2.00, 3.00, 'no', 'yes', 'yes', 'yes', 'yes', 'part time', '2021-06-21 05:51:00', '2021-07-09 03:58:23', NULL),
(2, 12, 'individual', 'test123', 'male', '2021-06-10', 'karachi', '03472236570', NULL, 'I want to learn Automation Testing, I am Manual Tester\r\n                                so want upgrade for that I want to learn Selenium with\r\n                                any easy programming language. I will be available on\r\n                                Weekends online so please let me know your fees,\r\n                                course time and any other details. Please share your\r\n                                whats app number where we can discuss, email me on...', 'hourly', 23.00, 23.00, 'sdf', 2.00, 2.00, 2.00, 'yes', 'yes', 'yes', 'yes', 'yes', 'full time', '2021-06-30 07:11:30', '2021-06-30 07:11:30', NULL),
(3, 13, 'company', 'test123', 'male', '2021-06-19', 'karachi', '03472236570', NULL, 'I want to learn Automation Testing, I am Manual Tester\r\n                                so want upgrade for that I want to learn Selenium with\r\n                                any easy programming language. I will be available on\r\n                                Weekends online so please let me know your fees,\r\n                                course time and any other details. Please share your\r\n                                whats app number where we can discuss, email me on...', 'daily', 23.00, 23.00, 'sdf', 2.00, 2.00, 2.00, 'yes', 'no', 'yes', 'no', 'yes', 'full time', '2021-06-30 07:15:22', '2021-06-30 07:15:22', NULL),
(4, 14, 'individual', 'test123', 'male', '2021-09-09', 'karachi', '03472236570', '75400', NULL, 'hourly', 23.00, 23.00, 'sdf', 2.00, 2.00, 2.00, 'yes', 'yes', 'yes', 'yes', 'yes', 'full time', '2021-09-01 07:45:12', '2021-09-01 07:45:12', NULL),
(5, 15, 'individual', 'test123', 'male', '2021-09-09', 'karachi', '03472236570', '75400', NULL, 'hourly', 23.00, 23.00, 'sdf', 2.00, 2.00, 2.00, 'yes', 'yes', 'yes', 'yes', 'yes', 'full time', '2021-09-01 07:45:12', '2021-09-01 07:45:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `requirement_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`id`, `requirement_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, '2021-06-29 13:12:05', '2021-07-12 03:52:19', NULL),
(2, 3, '2021-07-16 02:18:36', '2021-07-16 02:18:36', NULL),
(3, 6, '2021-09-09 09:51:19', '2021-09-09 09:53:13', '2021-09-09 09:53:13'),
(4, 6, '2021-09-09 09:56:23', '2021-09-09 09:56:43', '2021-09-09 09:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `txn_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `payment_id`, `description`, `txn_id`, `amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Buy New Coins', '10254831842313', 80.00, '2021-07-12 03:50:35', '2021-07-12 03:50:35', NULL),
(2, 2, 'Buy New Coins', '10254831842313', 80.00, '2021-07-12 03:50:35', '2021-07-12 03:50:35', NULL),
(3, 3, 'Buy New Coins', '10254831842313', 240.00, '2021-07-12 03:51:54', '2021-07-12 03:51:54', NULL),
(4, 6, 'Buy Premium Coins', '10254831842313', 0.00, '2021-08-17 03:31:43', '2021-08-17 03:31:43', NULL),
(5, 7, 'Buy Premium Coins', '10254831842313', 0.00, '2021-08-17 03:32:19', '2021-08-17 03:32:19', NULL),
(6, 8, 'Buy Premium Coins', '10254831842313', 0.00, '2021-09-01 07:54:47', '2021-09-01 07:54:47', NULL),
(7, 9, 'Buy Premium Coins', '10254831842313', 0.00, '2021-09-01 08:04:33', '2021-09-01 08:04:33', NULL),
(8, 10, 'Buy New Coins', '10254831842313', 450.00, '2021-09-09 09:54:56', '2021-09-09 09:54:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `last_login_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `profile`, `email_verified_at`, `password`, `remember_token`, `last_login_at`, `last_login_ip`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '1625205149.fall-back.png', '2021-06-21 04:46:45', '$2y$10$GUyw8tN7LeBnwPLd9fDBmuNAkYXM6C/qgdPeV6D7qRp4/gi8Gt3NS', NULL, '2021-11-10 05:55:35', '202.47.46.159', '2021-06-21 04:46:45', '2021-11-10 10:55:35', NULL),
(2, 'Shahzaib', 'student@gmail.com', NULL, '1624447661.user.png', '2021-06-21 05:26:39', '$2y$10$oa/bMA4JzC6RRb5eD6FiVOx3hhZESQNUzXogfbFoCgzTVko1mv8VK', NULL, '2021-09-01 12:37:53', '::1', '2021-06-21 05:26:39', '2021-09-01 07:37:53', NULL),
(12, 'Shahzaib', 'teacher1@gmail.com', NULL, NULL, '2021-06-30 12:04:12', '$2y$10$42V1eDb7IFQk4hyoJynrCOaqoLFBdT8pAABmEvcMqwylJ7rv4tdKS', NULL, '2021-07-07 12:56:56', '::1', '2021-06-30 07:03:49', '2021-07-07 07:56:56', NULL),
(13, 'Shahzaib', 'teacher2@gmail.com', NULL, '', '2021-06-30 12:14:21', '$2y$10$x16TbXKscibYkaFJJpCWCeGkSvWwqzvucNWyIbLPjVXcUzuFvOZNS', NULL, NULL, NULL, '2021-06-30 07:12:36', '2021-06-30 07:15:22', NULL),
(14, 'Shahzaib', 'shahzaibs.pluton@gmail.com', NULL, '', '2021-09-01 07:44:08', '$2y$10$Kmf.GZRcfoWWMAPk4wOWoOb.lx3WkA2/AQ4a1tUHyteZhZV75QBna', NULL, '2021-09-14 11:31:09', '202.47.46.159', '2021-08-25 09:44:19', '2021-09-14 15:31:09', NULL),
(15, 'Shahzaib', 'shahzaibs.pluton1@gmail.com', NULL, '', '2021-09-01 07:44:08', '$2y$10$Kmf.GZRcfoWWMAPk4wOWoOb.lx3WkA2/AQ4a1tUHyteZhZV75QBna', NULL, '2021-09-01 13:01:38', '::1', '2021-08-25 09:44:19', '2021-09-01 08:01:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_verifications`
--

CREATE TABLE `user_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_account_verified_at` timestamp NULL DEFAULT NULL,
  `payment_verified` tinyint(1) NOT NULL DEFAULT 0,
  `phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `active_status` tinyint(1) NOT NULL DEFAULT 1,
  `is_verification_detail_complete` tinyint(1) NOT NULL DEFAULT 0,
  `post_is_public` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_verifications`
--

INSERT INTO `user_verifications` (`id`, `user_id`, `is_account_verified_at`, `payment_verified`, `phone_verified`, `active_status`, `is_verification_detail_complete`, `post_is_public`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '2021-06-21 05:26:39', 0, 0, 1, 0, 1, '2021-06-21 05:26:40', '2021-07-02 00:38:39', NULL),
(2, 3, NULL, 0, 0, 1, 0, 1, '2021-06-21 05:28:23', '2021-06-21 05:28:23', NULL),
(3, 4, NULL, 0, 0, 1, 0, 1, '2021-06-21 05:35:31', '2021-06-21 05:35:31', NULL),
(4, 5, NULL, 0, 0, 1, 0, 1, '2021-06-21 05:36:34', '2021-06-21 05:36:34', NULL),
(5, 6, NULL, 0, 0, 1, 0, 1, '2021-06-21 05:40:07', '2021-06-21 05:40:07', NULL),
(6, 7, NULL, 0, 0, 1, 0, 1, '2021-06-21 05:42:01', '2021-06-21 05:42:01', NULL),
(7, 8, NULL, 0, 0, 1, 0, 1, '2021-06-21 05:43:37', '2021-06-21 05:43:37', NULL),
(8, 9, NULL, 0, 0, 1, 0, 1, '2021-06-21 05:45:56', '2021-06-21 05:45:56', NULL),
(9, 10, NULL, 0, 0, 1, 0, 1, '2021-06-21 05:48:03', '2021-06-21 05:48:03', NULL),
(10, 11, '2021-08-17 04:47:52', 0, 0, 1, 1, 1, '2021-06-21 05:49:55', '2021-08-17 04:49:08', NULL),
(11, 12, '2021-06-30 07:16:26', 0, 0, 1, 1, 1, '2021-06-30 07:03:50', '2021-07-05 06:29:30', NULL),
(12, 13, '2021-06-30 07:16:16', 0, 0, 1, 1, 1, '2021-06-30 07:12:36', '2021-06-30 07:16:16', NULL),
(13, 14, '2021-09-01 07:45:55', 0, 0, 1, 1, 1, '2021-08-25 09:44:19', '2021-09-01 07:45:55', NULL),
(14, 15, '2021-09-01 07:45:55', 0, 0, 1, 1, 1, '2021-08-25 09:44:19', '2021-09-01 07:45:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `coins` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `user_id`, `coins`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 11, 11700, '2021-07-12 03:50:35', '2021-08-17 03:32:19', NULL),
(2, 14, 1100, '2021-08-25 09:44:19', '2021-09-09 09:56:43', NULL),
(3, 15, 600, '2021-09-01 08:04:33', '2021-09-01 08:04:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_log`
--

CREATE TABLE `wallet_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `coin_used_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `coin` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_log`
--

INSERT INTO `wallet_log` (`id`, `user_id`, `coin_used_id`, `coin`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 11, 0, 200, 'Buy New Coins', '2021-07-12 03:50:35', '2021-07-12 03:50:35', NULL),
(2, 11, 0, 200, 'Buy New Coins', '2021-07-12 03:50:35', '2021-07-12 03:50:35', NULL),
(3, 11, 0, 300, 'Buy New Coins', '2021-07-12 03:51:54', '2021-07-12 03:51:54', NULL),
(4, 11, 1, 50, 'Coin Used Against', '2021-07-12 03:52:19', '2021-07-12 03:52:19', NULL),
(5, 11, 0, 50, 'Coin Refunded', '2021-07-12 08:16:49', '2021-07-12 08:16:49', NULL),
(6, 11, 1, 50, 'Coin Refunded against', '2021-07-12 08:26:22', '2021-07-12 08:26:22', NULL),
(7, 11, 2, 50, 'Coin Used Against', '2021-07-16 02:18:37', '2021-07-16 02:18:37', NULL),
(8, 11, 0, 5000, 'Buy Premium Coins', '2021-08-17 03:31:43', '2021-08-17 03:31:43', NULL),
(9, 11, 0, 6000, 'Buy Premium Coins', '2021-08-17 03:32:19', '2021-08-17 03:32:19', NULL),
(10, 14, 0, 10000, 'Buy Premium Coins', '2021-09-01 07:54:47', '2021-09-01 07:54:47', NULL),
(11, 15, 0, 500, 'Buy Premium Coins', '2021-09-01 08:04:33', '2021-09-01 08:04:33', NULL),
(12, 14, 3, 50, 'Coin Used Against', '2021-09-09 09:51:19', '2021-09-09 09:51:19', NULL),
(13, 14, 3, 50, 'Coin Refunded Against', '2021-09-09 09:53:13', '2021-09-09 09:53:13', NULL),
(14, 14, 0, 500, 'Buy New Coins', '2021-09-09 09:54:56', '2021-09-09 09:54:56', NULL),
(15, 14, 4, 50, 'Coin Used Against', '2021-09-09 09:56:23', '2021-09-09 09:56:23', NULL),
(16, 14, 4, 50, 'Coin Refunded Against', '2021-09-09 09:56:43', '2021-09-09 09:56:43', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing_info`
--
ALTER TABLE `billing_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coins`
--
ALTER TABLE `coins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coin_used`
--
ALTER TABLE `coin_used`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coin_used_items`
--
ALTER TABLE `coin_used_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_notifications`
--
ALTER TABLE `message_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_tutors`
--
ALTER TABLE `request_tutors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_verifications`
--
ALTER TABLE `user_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_log`
--
ALTER TABLE `wallet_log`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing_info`
--
ALTER TABLE `billing_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `coins`
--
ALTER TABLE `coins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coin_used`
--
ALTER TABLE `coin_used`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coin_used_items`
--
ALTER TABLE `coin_used_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `message_notifications`
--
ALTER TABLE `message_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `request_tutors`
--
ALTER TABLE `request_tutors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teacher_info`
--
ALTER TABLE `teacher_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_verifications`
--
ALTER TABLE `user_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wallet_log`
--
ALTER TABLE `wallet_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
