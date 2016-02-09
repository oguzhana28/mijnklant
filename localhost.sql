-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 09, 2016 at 08:31 AM
-- Server version: 5.6.13
-- PHP Version: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `svw`
--
CREATE DATABASE IF NOT EXISTS `svw` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `svw`;

-- --------------------------------------------------------

--
-- Table structure for table `nieuw_verslag`
--

DROP TABLE IF EXISTS `nieuw_verslag`;
CREATE TABLE IF NOT EXISTS `nieuw_verslag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `score` varchar(255) NOT NULL,
  `verslag` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(25) NOT NULL,
  `user_email` varchar(35) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pass`) VALUES
(1, 'test', 'test@testmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'kees', 'furkanisbronz@hotmail.nl', 'b195bd1f522ac2c4ea41cf9f8098f5e0'),
(3, 'kees', 'op@hotmail.nl', '81dc9bdb52d04dc20036dbd8313ed055'),
(4, 'sadfasdf', 'asdfasdfasdf@hotmail.com', '42728ff2118430bdff5f9a189e0034ec'),
(6, 'bronscrubs', 'brons@hotmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(7, 'oxanisbronsnoob', 'oguzhandieisbrons@hotmail.com', '196f0b46a0bd7abaf4bba385d5cf133f'),
(8, 'Mulderkiller', 'killer@hotmail.nl', '202cb962ac59075b964b07152d234b70'),
(9, 'dsfsdf', 'killedfsfr@hotmail.nl', 'ae4b57dd10695a75861221d2204dd032'),
(10, 'wdqwe', 'kilweqweqqler@hotmail.nl', '88e12fe2dffeff8fc7d2ddff68fe23dd'),
(11, 'jesse', 'jesse98@live.nl', '079f14926c99c65ddbe4b0f4f74b054e'),
(12, 'oguzhan', 'oguzhan28@hotmail.nl', 'c5ac7b5737913b61b43ed7cd40243587');

-- --------------------------------------------------------

--
-- Table structure for table `verslagen`
--

DROP TABLE IF EXISTS `verslagen`;
CREATE TABLE IF NOT EXISTS `verslagen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `score` varchar(100) NOT NULL,
  `samenvatting` text NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `verslagen`
--

INSERT INTO `verslagen` (`id`, `title`, `score`, `samenvatting`, `date`) VALUES
(2, 'svw b1- gjs b1', '10-0', 'B1 uitgeschakeld na zwak begin PCC\r\nVandaag de poule wedstrijden voor de PCC.\r\nSVW werd vooraf gezien als 1 van de kanshebbers voor de eindzege . \r\nEchter de 1e wedstrijd ging het al mis .\r\nSVW begon tegen Hardinxveld onrustig en onwennig. Hardinxveld leunde achterover en bleef wachten op foutjes van SVW, die werden er genoeg gemaakt en 1 van die foutjes werd afgestraft .\r\nJulian was vlak voor tijd dicht bij de gelijkmaker maar de bal werd op de doellijn gekeerd . 0-1 verlies\r\nIn de 2e wedstrijd moest het dan gebeuren ditmaal was SVS''65 de tegenstander .\r\nSVS kwam er niet aan te pas alleen SVW miste een karrenvracht aan kansen . En als SVS prompt na 6 minuten met hun enigste doelpoging op voorsprong komt lijkt het toernooi een complete teleurstelling te worden .\r\nSVW maakt echter de verdiende gelijkmaker en is nog dicht bij de winst maar SVW verspeelt wederom punten en de halve finale is verder weg dan ooit .\r\nDe 3e wedstrijd tegen Asperen is er 1 om in te lijsten. De druk is weg bij de ploeg en met fraaie go', 'December 29, 2015 at 5:45pm '),
(3, 'Voorbeschouwing ASWH B1 - SVW B1', 'n.v.t', '\r\nAanstaande zaterdag staat alweer het ena laatste duel voor de winterstop op het programma, we spelen dan uit in Hendrik Ido Ambacht tegen ASWH wat we terug vinden op een 8e plek .\r\nASWH heeft 11 punten uit 10 duels, het verloor al 5 keer speelde 3 keer gelijk en won 2 keer waarvan 3 weken geleden knap van Nivo Sparta(4-2). Het verloor daarna nipt van koploper Desk (1-0) en speelde 2 weken geleden gelijk tegen Hardinxveld (1-1).\r\nDan SVW\r\nDe brigade van Ron Schaap vinden we terug op een keurige 3e plek. Vorige week was er voor de B1 een vrij weekend , echter verloor het opnieuw Sam die bij de B2 na zijn armbreuk mooi ritme kon opdoen . Helaas sloeg het noodlot weer toe en brak Sam al voor de 5e keer zijn arm . Een tegenslag voor SVW , maar vooral voor Sam . (BETERSCHAP) .\r\nVoor de rest is de selectie fit en compleet en met nog 2 speelronde moet SVW de druk vol op deze ploegen boven zich houden , met in het vooruitzicht Nivo Sparta - GJS en de week erop DESK - GJS.\r\nWil SVW zich in een mooie positie na de win', '2 december'),
(5, 'B1 blijft knap presteren in de Hoofdklasse', '3-2', 'SVW B1 ontving vandaag Nivo Sparta B1 wat op een 5e plek staat . In de beker verloor SVW nog ongelukkig en dat moest vandaag dan maar recht gezet worden .\r\nSVW speelden bij vlagen een prima 1e helft . De bal ging regelmatig goed rond en Nivo Sparta wist daar geen raad mee . Na 2 kansen te hebben gemist kwam SVW in de 19e minuut op 1-0 . Na goed doordrukken voorin kwam de steekpass van Menno aan bij Emre en die faalde niet en schoot beheerst binnen .\r\nSVW kreeg kansen op meer maar de goal viel pas vlak voor rust weer was het Emre die ontsnapte op links en de bal goed breed lag op Berat die simpel binnen kon schieten 2-0 tevens de ruststand.\r\nDe 2e helft was rommelig van beide kanten maar SVW hield de controle en kreeg zelf goede kansen maar besliste het duel niet . 20 minuten voor tijd ging Jaafar de fout in en dat werd door de spits van Nivo Sparta afgestraft 2-1 .\r\nSVW pakte de draad weer op en niet veel later was het verschil weer 2 een mooie voorzet van Emre werd net zo mooi ingekopt door Menno 3-1\r\nNivo S', 'November 14, 2015'),
(6, 'Voorbeschouwing SVW B1 - Nivo Sparta B1 .', 'n.v.t', 'Aanstaande zaterdag ontvangen we op Sportpark Molenvliet , Nivo Sparta B1 .\r\nNivo Sparta B1 is geen onbekende . In augustus kwamen we deze ploeg tegen voor de KNVB beker . SVW miste wat spelers heerste op het veld maar verloor onterecht met 2-3 .\r\nNivo Sparta vinden we in de competite terug op de 5e plek met 13 punten uit 9 wedstrijden . Ondertussen lijkt de ploeg uit Zaltbommel in een heuse herfsdip te zijn beland , want de ploeg verzamelde slecht 1 schamel puntje in de laatste 4 wedstrijden en dat puntje werd vorige week thuis gehaald tegen de nummer 11 Hardinxveld (2-2)\r\nTussentijds werd er voor de beker een moeizame zege geboekt tegen buurman Unitas (0-1)wat laatste staat in de 1e klasse .\r\nDan SVW\r\nDe spelersgroep van SVW heeft zich laten horen met het groeps-gesprek maandag . Aanleiding was de absentie van 2 spelers zonder afmelden . Die plooien zijn glad gestreken en er is goed getraint afgelopen week .\r\nSVW is juist aan een goede reeks bezig van de laatste 5 duels werden er 4 gewonnen en 1 onnodig gel', '27-1-2016'),
(10, 'sadasd', '10-0', 'L Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.\r\n\r\nEtiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, bland', '2016-02-24'),
(11, 'sadasd', '10-0', 'L Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.  Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit', '2016-02-02'),
(12, 'sadasd', '10-0', 'L Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.\r\n\r\nEtiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, bland', '2016-02-15'),
(13, 'sadasd', '10-0', 'L Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.\r\n\r\nEtiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia.\r\n\r\nNam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed lectus. Donec mollis hendrerit risus. Phasellus nec sem in justo pellentesque facilisis. Etiam imperdiet imperdiet orci. Nunc nec neque. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi.\r\n\r\nCurabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Maecenas malesuada. Praesent congue erat at massa. Sed cursus turpis vitae tortor. Donec posuere vulputate arcu. Phasellus accumsan cursus velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Phasellus consectetuer vestibulum elit. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Vestibulum fringilla pede sit amet augue. In turpis. Pellentesque posuere. Praesent turpis.\r\n\r\nAenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Nullam sagittis. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Ut varius tincidunt libero. Phasellus dolor. Maecenas vestibulum mollis diam. Pellentesque ut neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\r\n\r\nIn dui magna, posuere eget, vestibulum et, tempor auctor, justo. In ac felis quis tortor malesuada pretium. Pellentesque auctor neque nec urna. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Aenean viverra rhoncus pede. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat. Vivamus quis mi. Phasellus a est. Phasellus magna.\r\n\r\nIn hac habitasse platea dictumst. Curabitur at lacus ac velit ornare lobortis. Curabitur a felis in nunc fringilla tristique. Morbi mattis ullamcorper velit. Phasellus gravida semper nisi. Nullam vel sem. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Sed hendrerit. Morbi ac felis. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Nunc nulla. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Donec venenatis vulputate lorem.\r\n\r\nMorbi nec metus. Phasellus blandit leo ut odio. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. In auctor lobortis lacus. Quisque libero metus, condimentum nec, tempor a, commodo mollis, magna. Vestibulum ullamcorper mauris at ligula. Fusce fermentum. Nullam cursus lacinia erat. Praesent blandit laoreet nibh.\r\n\r\nFusce convallis metus id felis luctus adipiscing. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Quisque id mi. Ut tincidunt tincidunt erat. Etiam feugiat lorem non metus. Vestibulum dapibus nunc ac augue. Curabitur vestibulum aliquam leo. Praesent egestas neque eu enim. In hac habitasse platea dictumst. Fusce a quam. Etiam ut purus mattis mauris sodales aliquam. Curabitur nisi. Quisque malesuada placerat nisl. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus.\r\n\r\nSed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Vestibulum facilisis, purus nec pulvinar iaculis, ligula mi congue nunc, vitae euismod ligula urna in dolor. Mauris sollicitudin fermentum libero. Praesent nonummy mi in odio. Nunc interdum lacus sit amet orci. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Morbi mollis tellus ac sapien. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Fusce vel dui. Sed in libero ut nibh placerat accumsan. Proin faucibus arcu quis ante. In consectetuer turpis ut velit. Nulla sit amet est. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Cras risus ipsum, faucibus ut, ullamcorper id, varius ac, leo. Suspendisse feugiat. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Praesent nec nisl a purus blandit viverra. Praesent ac massa at ligula laoreet iaculis. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit.\r\n\r\nMauris turpis nunc, blandit et, volutpat molestie, porta ut, ligula. Fusce pharetra convallis urna. Quisque ut nisi. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Suspendisse non nisl sit amet velit hendrerit rutrum. Ut leo. Ut a nisl id ante tempus hendrerit. Proin pretium, leo ac pellentesque mollis, felis nunc ultrices eros, sed gravida augue augue mollis justo. Suspendisse eu ligula. Nulla facilisi. Donec id justo. Praesent porttitor, nulla vitae posuere iaculis, arcu nisl dignissim dolor, a pretium mi sem ut ipsum. Curabitur suscipit suscipit tellus.\r\n\r\nPraesent vestibulum dapibus nibh. Etiam iaculis nunc ac metus. Ut id nisl quis enim dignissim sagittis. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Proin magna. Duis vel nibh at velit scelerisque suscipit. Curabitur turpis. Vestibulum suscipit nulla quis orci. Fusce ac felis sit amet ligula pharetra condimentum. Maecenas egestas arcu quis ligula mattis placerat. Duis lobortis massa imperdiet quam. Suspendisse potenti.\r\n\r\nPellentesque commodo eros a enim. Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Sed libero. Aliquam erat volutpat. Etiam vitae tortor. Morbi vestibulum volutpat enim. Aliquam eu nunc. Nunc sed turpis. Sed mollis, eros et ultrices tempus, mauris ipsum aliquam libero, non adipiscing dolor urna a orci. Nulla porta dolor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos.\r\n\r\nPellentesque dapibus hendrerit tortor. Praesent egestas tristique nibh. Sed a libero. Cras varius. Donec vitae orci sed dolor rutrum auctor. Fusce egestas elit eget lorem. Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Nam at tortor in tellus interdum sagittis. Aliquam lobortis. Donec orci lectus, aliquam ut, faucibus non, euismod id, nulla. Curabitur blandit mollis lacus. Nam adipiscing. Vestibulum eu odio.\r\n\r\nVivamus laoreet. Nullam tincidunt adipiscing enim. Phasellus tempus. Proin viverra, ligula sit amet ultrices semper, ligula arcu tristique sapien, a accumsan nisi mauris ac eros. Fusce neque. Suspendisse faucibus, nunc et pellentesque egestas, lacus ante convallis tellus, vitae iaculis lacus elit id tortor. Vivamus aliquet elit ac nisl. Fusce fermentum odio nec arcu. Vivamus euismod mauris. In ut quam vitae odio lacinia tincidunt. Praesent ut ligula non mi varius sagittis. Cras sagittis. Praesent ac sem eget est egestas volutpat. Vivamus consectetuer hendrerit lacus. Cras non dolor. Vivamus in erat ut urna cursus vestibulum. Fusce commodo aliquam arcu. Nam commodo suscipit quam. Quisque id odio. Praesent venenatis metus at tortor pulvinar varius.', '2016-02-24');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
