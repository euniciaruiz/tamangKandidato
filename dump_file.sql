-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 26, 2019 at 01:05 AM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `tamangKandidato`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate_prof_tb`
--

CREATE TABLE `candidate_prof_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `party_id` int(11) NOT NULL,
  `education` varchar(500) NOT NULL,
  `prof_background` text NOT NULL,
  `achievements` text NOT NULL,
  `govt_relatives` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `candidate_prof_tb`
--

INSERT INTO `candidate_prof_tb` (`id`, `name`, `party_id`, `education`, `prof_background`, `achievements`, `govt_relatives`) VALUES
(1, 'Freddie Aguilar', 1, 'Undergrad, BSEE De Guzman Institute', 'Professional singer', 'May likha ng awit na “Anak”', ''),
(2, 'Gary Alejano', 2, 'Master of Management, UP Open University, PMA Class of 1995', 'Rep. Magdalo Party Capt. Phil Marines', '2nd most productive in 17th Congress Dist. Conduct Star, Gold Cross Medal', ''),
(3, 'Raffy Alunan', 3, 'MPA, Harvard Kennedy School MPA Ateneo de Manila', 'DILG Sec. under Pres. Fidel Ramos', 'Eminent Fellow, Dev’t Academy of the Philippines', 'Former Cabinet member Rafael Alunan Sr. (grandfather)'),
(4, 'Sonny Angara', 13, 'Master of Laws, Harvard Law School, UP College of Law', 'Senator Former Rep of Aurora, Quezon', 'Nagpasa ng batas sa labor, PWDs, OFWs, “Father” ng TRAIN law TOYM 2010', 'Former Sen. Edgardo Angara (father); Others: Aurora Rep & Former Gov.; Vice Gov.; Baler Mayor & Vice-Mayor'),
(5, 'Bam Aquino', 2, 'ADMU Law School BSME Ateneo Mla Summa cum Laude', 'Senator Former Chair/CEO Nat’l Youth Comm', 'Nagpasa ng 35 batas: Free College, PWDs, Anti-Hazing; JCI Ten Outstanding Young Persons of the World 2012', 'Pres Cory Aquino & Benigno Aquino III. (aunt & cousin); Others: Former Senators; Tarlac Reps'),
(6, 'Nancy Binay', 14, 'AB Tourism UP Diliman', 'Senator Former Personal Asst. VP Jejomar Binay', 'Nagpasa ng batas sa sugar industry, PWDs, premature marriage', 'Former VP Jejomar Binay (father); Former Makati Mayors Elenita, Junjun (mother, brother) Mayor Abby Binay (sister)');

-- --------------------------------------------------------

--
-- Table structure for table `makabayan_tb`
--

CREATE TABLE `makabayan_tb` (
  `id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `demokrasya` text NOT NULL,
  `martial_law_min` text NOT NULL,
  `charter_change` text NOT NULL,
  `malinis_na_eleksyon` text NOT NULL,
  `poli_dynasty` text NOT NULL,
  `soberanya` text NOT NULL,
  `nakaw_na_yaman` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `makabayan_tb`
--

INSERT INTO `makabayan_tb` (`id`, `candidate_id`, `demokrasya`, `martial_law_min`, `charter_change`, `malinis_na_eleksyon`, `poli_dynasty`, `soberanya`, `nakaw_na_yaman`) VALUES
(1, 1, 'Walang nakuhang impormasyon', 'Walang nakuhang impormasyon', 'Walang nakuhang impormasyon', 'Walang nakuhang impormasyon', 'Walang nakuhang impormasyon', 'Hindi takot sa Tsina dahil wala\r\nraw record ng pangangamkam\r\nng lupa ang Tsina.', 'Walang nakuhang impormasyon'),
(2, 2, 'Ang pag-atake sa mga journalist\r\nay mapanganib sa demokrasya', 'Tutol sa extension ng Martial\r\nLaw', 'Tutol sa charter change', 'Lumagda para sa malinis\r\nmapayapa at maayos na halalan', 'Tutol sa political dynasty.\r\nPabor sa batas para sa pantay\r\nna oportunidad sa lingkod-bayan', 'Nanawagan na huwag isuko ang\r\nWest PH Sea sa Tsina na\r\nkumakamkam sa ari-arian at\r\nkabuhayan ng Pilipino', 'Nananawagan sa mga Marcos\r\nna pumirma ng bank waiver\r\npara sa mga Swiss accounts'),
(3, 3, 'Pabor sa pagpatibay ng batas\r\npara sa good governance', 'Pabor sa Martial Law sa\r\nMindanao', 'Pabor sa Pederalismo', 'Walang nakuhang impormasyon', 'Tutol sa political dynasty.\r\nDapat walang political dynasty\r\nkung may Pederalismo', 'Bukas sa PH-China joint\r\nexploration sa West PH Sea', 'Walang nakuhang impormasyon'),
(4, 4, 'Walang nakuhang impormasyon', 'Pabor. Bumoto para sa\r\nextension ng Martial Law', 'Walang nakuhang impormasyon', 'Walang nakuhang impormasyon', 'Tutol sa political dynasty\r\nbagamat miyembro ng isang\r\npolitical dynasty', 'Pabor sa partnership ng PH at\r\nTsina sa West PH Sea at sa mga\r\ngawaing inprastraktura sa bansa', 'Co-author ng APECO law, pero\r\numupong Board member. May\r\nP1.8B proyektong di pa tapos'),
(5, 5, 'Kailangan maging\r\nindependiente ang Senado para\r\nsa demokrasya', 'Tutol. Bumoto kontra sa\r\nextension ng Martial Law', 'Tutol sa charter change', 'Lumagda para sa malinis\r\nmapayapa’t maayos na halalan', 'Tutol. Nagsulong ng bill kontra\r\nsa-political dynasty bagamat\r\nmiyembro ng isang political\r\ndynasty', 'Kontra sa pagsakop ng Tsina sa\r\nteritoryo ng Pilipinas.\r\nNananawagang ipaglaban ang\r\ntalagang atin', 'Nananawagan sa patuloy na\r\npagbawi sa mga nakaw na\r\nyaman'),
(6, 6, 'Walang nakuhang impormasyon', 'Pabor sa extension ng Martial\r\nLaw sa Mindanao', 'Pag-aralan muna ang local govt\r\ncode bago mag ChaCha', 'Walang nakuhang impormasyon', 'Pabor. Ayaw sa anti-dynasty\r\nbill. Iginigiit na hindi sila political\r\ndynasty kahit ang 2 kapatid at\r\nama ay tumatakbo sa pwesto.', 'Dapat kilalanin ng Tsina ang\r\nsoberanya ng Pilipinas', 'Ang desisyon daw ng Korte ang\r\nebidensiya tungkol sa nakaw na\r\nyaman ng mga Marcos');

-- --------------------------------------------------------

--
-- Table structure for table `makadiyos_tb`
--

CREATE TABLE `makadiyos_tb` (
  `id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `war_on_drugs` text NOT NULL,
  `death_penalty` text NOT NULL,
  `pagtataksil` text NOT NULL,
  `korupsyon` text NOT NULL,
  `katotohanan` text NOT NULL,
  `moralidad` text NOT NULL,
  `kalikasan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `makadiyos_tb`
--

INSERT INTO `makadiyos_tb` (`id`, `candidate_id`, `war_on_drugs`, `death_penalty`, `pagtataksil`, `korupsyon`, `katotohanan`, `moralidad`, `kalikasan`) VALUES
(1, 1, 'Walang nakuhang impormasyon', 'Walang nakuhang impormasyon', 'Kinasuhan ng qualified seduction & child abuse. Nagka-relasyon sa menor de edad. Maraming naging asawa.', 'May record. Inaresto ng CIDG dahil sa paglabag ng Intellectual Property Code.', 'Nag-anunsyo na siya ay na i-apoint na pinuno ng NCCA subalit ang mga pinuno ng NCCA ay pinagbobotohan at hindi ina-appoint.', 'Dalawang beses sumailalim sa divorce. Nasita ng DSWD dahil sa pakikipagrelasyon sa menor de edad.', 'Walang nakuhang impormasyon'),
(2, 2, 'Tutol. Nagsampa ng kaso sa ICC para imbestigahan ang Pangulo sa kaso ng EJK.', 'Tutol. Ang death penalty raw ay (paghihiganti) na nagkukunwaring hustisya', 'Na-pardon sa partisipasyon sa Oakwood Mutiny 2003 at Manila Peninsula Siege 2007 bilang-protesta sa korupsyon ni Pang Arroyo.', 'Walang nakuhang impormasyon', 'Nananawagan ng tunay na transparency sa pamahalaan.', 'Tutol sa divorce; Tutol sa pagbigay ng legal rights at status sa same-sex couples sa ilalim ng civil union bill.', 'Nag-akda ng bill “Graduation Legacy for the Environment Act”- magtanim ang mga student ng puno bago mag-gradweyt.'),
(3, 3, 'Pabor sa pagpapatuloy ng Oplan Tokhang.', 'Hindi klaro. Pabor na ipataw sa heinous crime ngunit wala raw matatakot dahil sa mahinang hustisya.', 'Walang nakuhang impormasyon', 'Walang nakuhang impormasyon', 'Pabor sa Freedom of Information (FOI) bill. Pinuri ang Pangulo sa pag-surender ng 121 NPA sa Bukidnon, pero fake news lamang pala.', 'Sang-ayon sa divorce; Pabor sa pagbawal ng diskriminasyon sa LGBTQ community', 'Nagmungkahi ng “forward- looking land use acts and urban planning” sa isang climate change forum.'),
(4, 4, 'Tutol. \"Vigilante justice\" hindi solusyon.', 'Bukas sa panukala pero may alinlangan dahil sa korupsyon sa pulis at pag-aareglo sa husgado.', 'Nasangkot sa isyu ng landgrabbing ng 12 ektaryang lupain sa Aurora Pacific Ecozone Project (APECO).', 'Walang nakuhang impormasyon', 'Pabor sa FOI; Nagsasabing ang edukasyon ay mainam na lunas sa fake news', 'Tutol sa divorce; Pabor sa same sex union.', 'Hindi malinaw. Nag sponsor ng Green Jobs Act habang tuloy ang APECO project na nakaapekto sa mga katutubo, magsasaka at mangingisda.'),
(5, 5, 'Tutol. Kontra sa EJK at sa pagtarget sa mga mahihirap. Kailangan ng bagong solusyon sa problema ng droga.', 'Tutol. Mawawalan ng hustisya ang mga mahihirap na walang kakayanang idepensa ang sarili sa korte.', 'Walang nakuhang impormasyon', 'Walang nakuhang impormasyon', 'Nananawagang labanan ang fake news at itaguyod ang katotohanan.', 'Tutol sa divorce. Tutol sa diskriminasyon base sa sexual orientation. Pabor sa same sex civil union.', 'Itinutulak ang pagbabawal ng mineral ore mining; Pabor sa paglago ng bamboo industry.'),
(6, 6, 'Hindi klaro. Pumirma sa Resolution ng Senado na itigil ang patayan; pero wala daw katibayan ang EJK.', 'Tutol.', 'Walang nakuhang impormasyon', 'May kaso sa Sandiganbayan ang ama at kapatid tungkol sa Php1.3B iregularidad.', 'Sinita ang mga taga-gobyerno na nagpapakalat ng fake news.', 'Tutol sa divorce. Tutol sa diskriminasyon base sa sekswal na oryentasyon.', 'Pabor sa paglinis ng Boracay at sa pagimbentaryo ng ibang isla upang maiwasan ang environmental crisis.');

-- --------------------------------------------------------

--
-- Table structure for table `makatao_tb`
--

CREATE TABLE `makatao_tb` (
  `id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `karapatan_ng_mamamayan` text NOT NULL,
  `age_crim_liability` text NOT NULL,
  `free_speech` text NOT NULL,
  `rule_of_law` text NOT NULL,
  `pagtulong_sa_mahirap` text NOT NULL,
  `ekonomiya_at_kabuhaya` text NOT NULL,
  `chinese_workers` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `makatao_tb`
--

INSERT INTO `makatao_tb` (`id`, `candidate_id`, `karapatan_ng_mamamayan`, `age_crim_liability`, `free_speech`, `rule_of_law`, `pagtulong_sa_mahirap`, `ekonomiya_at_kabuhaya`, `chinese_workers`) VALUES
(1, 1, 'Walang nakuhang impormasyon', 'Walang nakuhang impormasyon', 'Walang nakuhang impormasyon', 'Walang nakuhang impormasyon', 'Walang nakuhang impormasyon', 'Walang nakuhang impormasyon', 'Walang nakuhang impormasyon'),
(2, 2, 'Nagsusulong ng human rights\r\neducation sa mga paaralan', 'Tutol.', 'Tutol sa pag-aresto ng Rappler\r\njournalist. Nanawagang labanan\r\nang fake news', 'Nanawagan ng accountability sa\r\nlegal na mga pamamaraan at\r\nproseso', 'Sinusulong ang pagpapalawak\r\nng mga medical assistance at\r\ncharities', 'Tutol sa pagpasa ng TRAIN law;\r\nnagsusulong ng pagkakapantaypantay\r\nat social justice', 'Tutol. Nananawagan ng\r\nproteksyon sa Pilipinong\r\nmanggagawa laban sa Tsino'),
(3, 3, 'Walang nakuhang impormasyon', 'Dapat raw kasama ang mga\r\nmagulang sa pag protekta sa\r\nmga bata', 'Walang nakuhang impormasyon', 'Walang nakuhang impormasyon', 'Walang nakuhang impormasyon', 'Pabor sa patuloy na pagsuporta\r\nsa mga beneficiaries ng landreform\r\nlaw', 'Korapsyon ang dahilan sa\r\npagdagsa ng mga trabahanteng\r\nTsino'),
(4, 4, 'Walang nakuhang impormasyon', 'Hindi pabor na ikulong ang\r\nmga edad 9 anyos', 'Walang nakuhang impormasyon', 'Walang nakuhang impormasyon', 'May akda ng mga batas para sa PWD, OFW, mga seaman, programa para sa mga estudyante', 'Pabor sa Anti-Endo law; Principal\r\nauthor ng TRAIN law, hindi raw\r\ndapat isisi sa TRAIN law ang\r\npagtaas ng mga presyo.', 'Pabor. Tama ang Pangulo.\r\nDiplomasya ang kailangan dahil\r\nmarami tayong OFW'),
(5, 5, 'Pinapaimbestigahan sa Senado\r\nang pagkakamatay ng mga pari', 'Tutol. Kalokohan, kalupitan at\r\nimmoral raw ang panukala.', 'Pabor na gawing hindi krimen\r\nang libel', 'Nanawagan na sundin ang due\r\nprocess sa pagpapatupad ng\r\nmga batas', 'May akda ng maraming batas\r\npara sa mahihirap, sa kabataan,\r\nestudyante, maliliit na\r\nnegosyante', 'Tutol sa pagpasa ng TRAIN law;\r\nnagsulong ng tax exemption ng\r\nmaliliit na negosyo', 'Tutol. Dapat ang trabaho para\r\nsa Pilipino hindi para sa iligal na\r\ndayuhan'),
(6, 6, 'Nananawagan sa pagrespeto sa\r\nmga karapatang pantao', 'Tutol.', 'Naniniwalang kailangan ang\r\nfreedom ng press sa\r\ndemokrasya', 'Walang nakuhang impormasyon', 'May akda ng batas para sa PWD', 'Nananawagan na itigil ang endo\r\nsa gobyerno. Bumoto ng Yes sa\r\nTRAIN law.', 'Tutol. Dapat kanselahen ang\r\nmga working permits ng mga\r\ntrabahanteng Tsino.');

-- --------------------------------------------------------

--
-- Table structure for table `party_tb`
--

CREATE TABLE `party_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `party_tb`
--

INSERT INTO `party_tb` (`id`, `name`) VALUES
(1, 'Independent'),
(2, 'Liberal Party'),
(3, 'Bagumbayan'),
(4, 'Katipunan ng Demokratikong Pilipino'),
(5, 'Nacionalista Party'),
(6, 'Labor Party Philippines'),
(7, 'PDP-Laban'),
(8, 'Nationalist People’s Coalition'),
(9, 'Partido ng Masang Pilipino'),
(10, 'Kilusang Bagong Lipunan'),
(11, 'Partido Lapiang Manggagawa'),
(12, 'MAKABAYAN'),
(13, 'Laban ng Demokratikong Pilipino'),
(14, 'United Nationalist Alliance'),
(15, 'Aksyon Demokratiko'),
(16, 'LAKAS-CMD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate_prof_tb`
--
ALTER TABLE `candidate_prof_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `party_id` (`party_id`);

--
-- Indexes for table `makabayan_tb`
--
ALTER TABLE `makabayan_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidate_id` (`candidate_id`);

--
-- Indexes for table `makadiyos_tb`
--
ALTER TABLE `makadiyos_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidate_id` (`candidate_id`);

--
-- Indexes for table `makatao_tb`
--
ALTER TABLE `makatao_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidate_id` (`candidate_id`);

--
-- Indexes for table `party_tb`
--
ALTER TABLE `party_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate_prof_tb`
--
ALTER TABLE `candidate_prof_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `makabayan_tb`
--
ALTER TABLE `makabayan_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `makadiyos_tb`
--
ALTER TABLE `makadiyos_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `makatao_tb`
--
ALTER TABLE `makatao_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `party_tb`
--
ALTER TABLE `party_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidate_prof_tb`
--
ALTER TABLE `candidate_prof_tb`
  ADD CONSTRAINT `candidate_prof_tb_ibfk_1` FOREIGN KEY (`party_id`) REFERENCES `party_tb` (`id`);

--
-- Constraints for table `makabayan_tb`
--
ALTER TABLE `makabayan_tb`
  ADD CONSTRAINT `makabayan_tb_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidate_prof_tb` (`id`);

--
-- Constraints for table `makadiyos_tb`
--
ALTER TABLE `makadiyos_tb`
  ADD CONSTRAINT `makadiyos_tb_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidate_prof_tb` (`id`);

--
-- Constraints for table `makatao_tb`
--
ALTER TABLE `makatao_tb`
  ADD CONSTRAINT `makatao_tb_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidate_prof_tb` (`id`);
