-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 04:51 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edu_news`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `firstname`, `lastname`, `email`) VALUES
(1, 'arim', 'secret', 'Bagus', 'Arimbawa', 'mail@mailserver.com'),
(2, 'theCiciero', '123456', 'Marcus Tullius', 'Cicero', 'ciciero@boommail.com'),
(3, 'invariant_gloom', '100001', 'Mark ', 'Mongoose', 'mongoose@mails.com'),
(4, 'TheArgonianWeeb', 'sluttyargonianmaid', 'Mar\'ya', 'Weeb-na', 'argonauts2@mails.com');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `category` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `content` text NOT NULL,
  `snippet` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `category`, `author`, `content`, `snippet`) VALUES
(1, 'Article 1', 1, 2, '<div class=\"container\" style=\"max-height:300;\"><img class=\"img-fluid\" src=\"https://s.kaskus.id/img/hot_thread/hot_thread_fbz111f5gqwp.jpg\"></div>					<p class=\"card-text\">Lorem Ipsum dolor sit amet adispicing elit bla bla bla tinseray igpay atinlay erehay. </p>\r\n						<p class=\"card-text\">Aliquam quis tortor blandit, iaculis lorem in, placerat elit. In suscipit mollis vulputate. \r\nCras ac leo quis eros efficitur bibendum. Donec risus nisi, bibendum ac sapien at, viverra varius massa. \r\nDonec hendrerit tincidunt elit, nec vulputate felis egestas vehicula. Sed varius nisi vitae mollis accumsan. Donec nunc lorem, placerat vitae ipsum ut, efficitur tincidunt arcu. \r\n<br>\r\nCras luctus, quam quis finibus bibendum, libero sapien faucibus justo, facilisis volutpat nibh orci ac arcu. Nam pellentesque diam et eros laoreet, eu consequat dui vehicula. \r\n<br>\r\nNulla dapibus vehicula diam at lacinia. Pellentesque sit amet ex nec massa aliquet imperdiet.</p>\r\n						<p class=\"card-text\">PNullam accumsan egestas nibh id pulvinar. Duis sollicitudin velit ac ex bibendum viverra. Quisque augue dolor, porttitor pulvinar elit sit amet, tempus scelerisque ex. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean et tristique diam. In hac habitasse platea dictumst. Curabitur sit amet tristique lectus. Curabitur ultrices elementum ultrices. Integer egestas libero vitae dui sagittis iaculis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce orci odio, tempor id felis ac, hendrerit facilisis enim. Vivamus eget laoreet metus. Nullam volutpat vitae nisl sed tempor. Ut pellentesque iaculis laoreet. Aliquam dictum lectus rhoncus, pellentesque leo quis, finibus velit.</p>\r\n						', '<div class=\"container\" style=\"max-height:300;\"><img class=\"img-fluid\" src=\"https://s.kaskus.id/img/hot_thread/hot_thread_fbz111f5gqwp.jpg\"></div>					<p class=\"card-text\">Lorem Ipsum dolor sit amet adispicing elit bla bla bla tinseray igpay atinlay erehay'),
(2, 'Brown Fox Rescue!', 2, 3, '<div class=\"container\" style=\"max-height:300;\"><img class=\"img-fluid\" src=\"https://images.immediate.co.uk/production/volatile/sites/23/2019/05/IMG_0762-392f8f1.jpg\"></div>\r\n						\r\n<p class=\"card-text\">The brown fox jumped over the lazy dog. Jumped staright into a deep ditch. More at eleven.</p>\r\n						<p class=\"card-text\">Rescue operation is still ongoing as of right now. </p>\r\n						<p class=\"card-text\">\"It\'s all a blur, one moment I\'m dozing off, the next I hear a loud yelp and a wet crash. Gave me a good scare, definitely not going back to sleep any time soon,\" said the Lazy Dog during our interview.</p>\r\n						<p class=\"card-text\">Paramedics from Milton General Hospital arrived minutes after the Lazy Dog\'s call. The Brown Fox will be brought there to address any of his medical need pertaing this incident.</p>\r\n						<p class=\"card-text\">This is your Morning Eleven News reporting.</p>', '<div class=\"container\" style=\"max-height:300;\"><img class=\"img-fluid\" src=\"https://images.immediate.co.uk/production/volatile/sites/23/2019/05/IMG_0762-392f8f1.jpg\"></div>\r\n						\r\n<p class=\"card-text\">The brown fox jumped over the lazy dog. Jumped starig'),
(3, 'Florida Man Strikes ', 2, 3, '<div class=\"container\" style=\"max-height:300;\"><img class=\"img-fluid\" src=\"https://rare.us/wp-content/uploads/2019/05/lawrence-kansas-police-tornado.png\"></div>\r\n						\r\n<p class=\"card-text\">Local Florida Man screams at the sky. Hurricane suddenly appears from clear sky. Florida man shoots Hurricane</p>\r\n						<p class=\"card-text\">The Hurricane, called \"Hurricane Maddie\" by locals, is currently ravaging the southern panhandle. The Florida Man suspected of summoning it nowhere to be found after the shooting incident. Only the weapon used, a Ruger P20 Pistol, was found near his last known location.</p>\r\n						<p class=\"card-text\">\"Don\'t worry, we got this,\" the Florida Bureau of Metereology spokeperson stated, \"We had a bigger one last month, this one\'ll be over soon\".</p>\r\n						', '<div class=\"container\" style=\"max-height:300;\"><img class=\"img-fluid\" src=\"https://rare.us/wp-content/uploads/2019/05/lawrence-kansas-police-tornado.png\"></div>\r\n						\r\n<p class=\"card-text\">Local Florida Man screams at the sky. Hurricane suddenly appears'),
(4, 'Catgir IS Real!!', 3, 4, '\r\n						\r\n<p class=\"card-text\">Scientist finally discoverd how to make Catgirls real! Weebs rejoiced world wide! Unfortunately, the sacrifice is not worth it.</p>\r\n<p class=\"card-text\">The breakthrough happened in the University of Amestria, Amsterdam, by the team led by one professor Shou Tucker. Infamous for his previous animal chimaera breakthroughs, his coworkers hoped his expertise would give them insight in the making of human-animal hybrid. They were wrong, oh so right.</p>\r\n<p class=\"card-text\">The subject, nicknamed \"Lady Gatlington\", was an unprecedented success in the field of human-animal hybrid. However, they went in the completely opposite direction of what has been long desired by men everywhere. Instead of a human with animal characteristic parts, namely ears and tail, they made a cat with human head.</p>\r\n<div class=\"container\" style=\"max-height:300;\"><img class=\"img-fluid\" src=\"https://vignette.wikia.nocookie.net/if-the-emperor-had-a-texttospeech-device/images/1/1d/Regal_Tailord_Lorad_Gatlington.png/revision/latest?cb=20180218133027\"></div>\r\n<p class=\"card-text\">The horrific images forced upon our reporters and editors has claimed more than one of our own to a life of insanity. We offer our condolences to the families of the afflicted, and condemn this line of research any further.</p>', '\r\n						\r\n<p class=\"card-text\">Scientist finally discoverd how to make Catgirls real! Weebs rejoiced world wide! Unfortunately, the sacrifice is not worth it.</p>\r\n<p class=\"card-text\">The breakthrough happened in the University of Amestria, Amsterdam, by'),
(5, 'Umbacanno', 1, 1, '\r\n\r\nUmbacano\r\n\r\nUmbacano is a wealthy High Elf mage living in the Imperial City\'s Talos Plaza District. He has an extensive household of servants, including his steward Jollring and four guards. He spends most of his time reading upstairs at the manor; in order to gain access to the room, you will need to talk with Jollring first, who will then escort you upstairs.\r\n\r\nUmbacano wears a set of upper class clothing: a black & burgundy outfit with a pair of gold trimmed shoes. He carries a spare red velvet garment, his key, the key to his manor, and a large amount of gold.\r\n\r\nHe can use a few major destruction spells (two Shock Damage spells (one touch, one target), Disintegrate Armor or Disintegrate Weapon and Absorb Health), a major chameleon spell, one major restore health spell, one minor restore fatigue spell, a major shield and a major shock shield spell, and a rather weak fortify intelligence spell.\r\n\r\nUmbacano is an avid collector of Ayleid artifacts, and will offer a reward in exchange for Ayleid Statues as a part of The Collector quest. He greatly admires the Ayleids and is something of an apologist for them, notably holding a pro-Ayleid opinion of the fall of White Gold Tower, calling the human victory a \"brutal sack\". It is later revealed that he desires to wield the power of the Ayleids and restore their fallen empire.\r\n\r\nUpon entering his private quarters for the first time, he will say, \"What can I do for you?\" After beginning The Collector, this greeting will change to \"Ah, the treasure hunter. Please, have a seat.\" Speaking to him before beginning the quest chain will have him introduce himself: \"Yes. My name is Umbacano.\" You will also be able to ask him about the Imperial City, to which he replies, \"It is well known in the City that I collect Ayleid antiquities. It\'s true, but I desire only very specific items.\" After beginning the quest chain, he will greet you with: \"Ah, yes. My treasure-hunting friend. What can I do for you?\"', '\r\n\r\nUmbacano\r\n\r\nUmbacano is a wealthy High Elf mage living in the Imperial City\'s Talos Plaza District. He has an extensive household of servants, including his steward Jollring and four guards. He spends most of his time reading upstairs at the manor; in'),
(6, 'The Collector', 1, 1, 'Ayleid Artifacts\r\n\r\nOne Ayleid Statue, with the other nine visible in the display case in the background\r\nTo begin this quest, find an Ayleid Statue. There are ten in total, one in each of the Ayleid ruins listed in the section below. Selling this statue to a merchant will net you a maximum of 250 septims. The statue disappears from the merchant\'s inventory as soon as you exit the barter screen. After selling the statue, expect to be approached by a messenger after a short period of time. The messenger will take you to Umbacano\'s Manor in the Talos Plaza District, where you find out that he has purchased the statue from the merchant. Alternatively, take the first statue directly to Umbacano. Enter his manor and show the statue to his butler, Jollring, who will then introduce you to Umbacano. Umbacano will then buy the statue for 500 gold, which is double its base value.\r\n\r\nThe Collector\r\nYou learn from Umbacano that the statue is one of the Ten Ancestors, statues that once resided in the Temple of the Ancestors, now known as White Gold Tower. Before the fall of the Temple to the rebellious Cyrodiil, the statues were removed for safekeeping and held within ten different Ayleid cities. He wishes to acquire the full set of ten, but he lacks a resourceful treasure hunter.\r\n\r\nTo continue this quest, search Ayleid ruins until another statue is found; see the section below for locations. When the second statue is sold to Umbacano, he will say that his research has discovered five Ayleid settlements where he believes statues were taken—Fanacas, Mackamentain, Moranda, Ninendava, and Wenyandawik. Map markers for all of these will appear on the map, but you will have to travel there manually, unless you have been there before.\r\n\r\nNext Assignment\r\nOnce the third statue is sold to him, he will give you another assignment as well: the quest Nothing You Can Possess. He will pay 5,500 gold when the tenth statue is delivered (500 for the statue, plus a 5000 bonus for completing the set).\r\n\r\nWARNING: It is recommended to find and sell all ten statues to Umbacano before Stage 60 of Secrets of the Ayleids, which follows Nothing You Can Possess. After this point, The Collector cannot be completed successfully.', 'Ayleid Artifacts\r\n\r\nOne Ayleid Statue, with the other nine visible in the display case in the background\r\nTo begin this quest, find an Ayleid Statue. There are ten in total, one in each of the Ayleid ruins listed in the section below. Selling this statue '),
(7, 'Criticizing Holotalk', 3, 3, '\r\nWhat is the goal of HoloTalk?\r\n\r\n. Holotalk is a live talkshow with the purpose of interviewing and live translating (mainly) Japanese Hololive talents to bring as much wholesome knowledge to oversea viewers as possible! Brought to you by your host, Takanashi Kiara.\r\n\r\nI have watched all HoloTalk exactly because of this, but very early in I noticed that it isn’t fulfilling its purpose. First of all why is it live?\r\n\r\nIf you don’t just assume it has to be, consider why. It is true most interview shows are live as are most talk shows, but a critical element of HoloTalk isn’t present in those, live translation. Live translation causes a lot of stalling for both guest and audience. Guest talks, most audience doesn’t understand, Kiara translates, guest just waits. This adds time to the show for no reason other than keeping it live.\r\n\r\nOn most talk shows, the guests are not coming in blank to answer questions they’ve never heard. They already know mostly the questions they’ll get and formulate their thoughts before going on air, it makes everything flow better. I’m not aware if she does tell her guests beforehand, but if not then this adds yet more stalking time while they think plus it makes answers be thought on the spot which can lead to answers that with a bit of time could be better. And as has happened on the show before, sometimes the guest gives a very long answer that takes longer to translate, more time.\r\n\r\nIf the purpose is “bring as much wholesome knowledge to oversea viewers as possible”, then time is extremely important so it should be used at its fullest.\r\n\r\nWe can all agree that the purpose of a talk show is to highlight the guest more than the host, but HoloTalk is designed in a way that Kiara is the one you will inevitably hear the most. Sure she is translating her guest, but though translation a lot of things change and get lost. I won’t critisize her abilities at translation because I’m not proficient in Japanese enough to judge, but her delivery is the same always. The Talk in HoloTalk is Kiara. Having the same cadence for every guest takes away from every individual guest, she relays the translation in a rushed manner like she wants to get over it quickly to return to interview. Plenty of Idols have specific speech patterns or ways to speak that are lost by doing this, while subtitles can preserve this or even translate it better. And I believe this getting lost is a disservice to the guests.\r\n\r\nTo me she is trying to do two roles at the same time that are incompatible, interviewer and translator. I haven’t seen anyone other than her do this Live, and I think there’s a reason for it. I believe she should focus on the interview alone.\r\n\r\nIf you still think it is fundamental for it to be Live, there have been 5 that weren’t. Go watch them and see which you prefer. You can even see Suisei as prerecorded and live and judge. To me the improvement is so vast that it’s jarring to go back to the other.\r\n\r\nBut ok, there are positives for it being live right? Maybe, maybe to the host, but as an audience I don’t see it. Chat is still there for prerecorded interviews. I’ve heard that she sometimes reads chat and may take questions from it but that’s yet another role to add to host and it diminishes the point of the next section.\r\n\r\nAccording to her community posts asking for questions, this is what people should consider when giving her questions:\r\n\r\n. Remember, the goal is to get some deeper knowledge and understanding of the JP talents, because many overseas viewers only have a shallow knowledge of them through clips.\r\n\r\nSo if the point is to have deep knowledge, why are they given no time to answer other than live? And I repeat, if she is giving them the questions before going live, to me it doesn’t feel like it. Interesting questions usually lead to great discussions, but those are not fit for live translation. All answers feel very short and general, not deep. And for that matter, why even ask?? This is fundamentally different from the show but if you bring in a guest that has a very particular skill, on a recorded show this is very easy to show.\r\n\r\nWhile I’m here I’ll just throw a random suggestions, it could be cool to add little “fun facts” on screen that scroll on the bottom or pop during the show. This adds reasons to watch VODS and while the idols are speaking viewers can look at those. They can even add more fan interaction this way.\r\n\r\nIt’s also interesting that the intent is beyond shallow knowledge but one if if not the most replayed section of most shows is the speed round, which is made up of shallow answers and questions.\r\n\r\nAs a final thing, if the purpose is to introduce the JP side to the EN viewers, then in all the time I’ve been on a lot of fan spaces I’ve never seen anyone recommend HoloTalk to get to know a specific idol if they’ve been on it. It’s usually the obvious “just watch her”, but if they have to give a specific video to recommend to get to know someone it’s almost always one of those The (name of Idol) Experience or similar compilations.\r\n\r\nShe is a good interviewer and I’d like to see her delegate tasks so she could be more prolific on it.\r\n\r\nIf you like it just how it is , great for you, The next one will probably be the last I see.', '\r\nWhat is the goal of HoloTalk?\r\n\r\n. Holotalk is a live talkshow with the purpose of interviewing and live translating (mainly) Japanese Hololive talents to bring as much wholesome knowledge to oversea viewers as possible! Brought to you by your host, Tak');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `user_id`) VALUES
(1, 'test', 1),
(2, 'Markus Tullius Cicero', 2),
(3, 'Reporter Mongoose', 3),
(4, 'Mar\'ya Weeb-na', 4);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `type`) VALUES
(1, 'test'),
(2, 'news'),
(3, 'opinion');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `lastname`, `email`) VALUES
(1, 'jonboom', 'jonboom', 'Jon', 'Booom', 'jon@boommail.com'),
(2, 'theCiciero', '123456', 'Marcus Tullius', 'Cicero', 'ciciero@boommail.com'),
(3, 'invariant_gloom', '100001', 'Mark ', 'Mongoose', 'mongoose@mails.com'),
(4, 'TheArgonianWeeb', 'sluttyargonianmaid', 'Mar\'ya', 'Weeb-na', 'argonauts2@mails.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`),
  ADD KEY `author` (`author`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authors` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`author`) REFERENCES `authors` (`id`);

--
-- Constraints for table `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `authors` FOREIGN KEY (`user_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `authors_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `authors_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `admins` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
