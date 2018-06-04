-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Vert: localhost
-- Generert den: 27. Mai, 2015 08:37 
-- Tjenerversjon: 5.1.41
-- PHP-Versjon: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `arenaoslo`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `deltagere`
--

CREATE TABLE IF NOT EXISTS `deltagere` (
  `deltager_id` int(255) NOT NULL AUTO_INCREMENT,
  `Fornavn` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Etternavn` varchar(255) CHARACTER SET latin1 NOT NULL,
  `E-post` text CHARACTER SET latin1 NOT NULL,
  `Passord` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`deltager_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=ascii AUTO_INCREMENT=87655 ;

--
-- Dataark for tabell `deltagere`
--

INSERT INTO `deltagere` (`deltager_id`, `Fornavn`, `Etternavn`, `E-post`, `Passord`) VALUES
(1, 'Julie', 'Klunge ', 'Kulejulie@hotmail.com', 'f278b9f40d168112645801a8298c10f9'),
(2, 'Martin ', 'Larsen ', 'kulemartin@hotmail.com', '1735fc61dce21677a13e399b65f4f6fd'),
(3, 'Winny', 'Ullsvik', 'Ullsvik98@hotmail.com', '34b1f3db4241f9fb341afed22579811c'),
(4, 'Pilasilda', 'A.George', 'pilasilda96@hotmail.com', '252c8d807f301b9a9898232dd575e6b3'),
(5, 'Kimmern', 'Trakt', 'Kimmern.trakt@gmail.com', '432e5314c81c098e13f66b4774780a69'),
(6, 'Santijude ', 'A.George', 'Santijude91@hotmail.com', '2cece084f403c2e1e9845cd9fe9c0086'),
(7, 'Per ', 'Smart', 'smarteper@hotmail.com', '71bc986b353066cbee5add6765070a38'),
(8, 'Jon', 'Gården', 'Kulejon@hotmail.com', '02aeb1a3981e388290d0bcafdf596063'),
(9, 'Ole ', 'kristian ', 'kristian@hotmail.com', '847979203dafc272d5c73fd46f52fc33'),
(10, 'Scott', 'Cooling', 'Britishcooling@gmail.com', 'b96f7bdbd0cba559df74a47e18991e49'),
(11, 'Hesten', 'Besten', 'Hesterikkjebest@gmail.com', 'f663c38ec6a0f45c724aa533984f4a1e'),
(12, 'Jon', 'Kul', 'kul96@hotmail.com', 'a4704fd35f0308287f2937ba3eccf5fe');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `event_id` int(255) NOT NULL AUTO_INCREMENT,
  `eventnavn` varchar(255) NOT NULL,
  `eventsjanger` varchar(255) NOT NULL,
  `tid` date NOT NULL,
  `beskrivelse` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dataark for tabell `events`
--

INSERT INTO `events` (`event_id`, `eventnavn`, `eventsjanger`, `tid`, `beskrivelse`) VALUES
(1, 'Cirkus Arnardo', 'Forestilling ', '2015-06-11', 'Cirkus Arnardo''s 66 sesong med nyskapende artister og banebrytende akrobatikk er i gang. Norges eldste sirkus kombinerer det klassiske moderne altså det å gi publikum et fantastisk show hver gang. \r\n\r\nBilletter er i salg på www.billettluka.no eller ring oss på tlf:(+47) 48 30 44 50. '),
(2, 'Little Jazz', 'Musikk ', '2015-07-21', 'Jazzgruppen Little Jazz kommer til gi dere en musikalsk opplevelse med Mill Granes i spissen. Her får du oppleve klassisk jazz og blues. '),
(3, 'Twinkle Tips ', 'Forestilling', '2015-06-22', 'Twinkle Tips er en koreansk ballettgruppe bestående av ekstremt dyktige dansere som har gjennom dansestykket "Svanen" vunnet en rekke priser for deres talent. Du får sjansen til å vitne til en av verdens mest spektakulære ballettfremvisninger. '),
(4, 'Moteshow av Costa Chic', 'Fashion', '2015-09-18', 'Designeren Paul Wilson har kommet med høstens største trender. Det blir arrangert moteshow av designermerket Costa Chic. Det blir fremvist klær for alle og det blir mulighet for å vinne grasiøse klesvarer. Det blir servert allergivennlig fingermat. Vel møtt! '),
(5, 'Utstilling av Kulturskolen ', 'Utstilling', '2015-08-16', 'Kulturskolen i Oslo kommer til å vise frem verkene til de flittige elevene. Du får muligheten til å bli inspirert og fascinert av kunstmalerier, tegninger, keramikk, trykk, blekk-kunst og kreative fotografier. Det blir en kreativ Berg-O-dalbane opplevelse. Velkommen!'),
(6, 'Mummitrollet og det usynlige barnet', 'Teater', '2015-10-22', 'Figurteater av Tove Janson''s Mummitrollet og det usynlige barnet, spilt på norsk. '),
(7, 'Silkeramp', 'Musikk', '2015-05-29', 'Bakgårds scenen på Skaugum/ Palace Grill åpner for sesongen med en konsert spilt av rockebandet Silkeramp. På Skaugum blir det servert både mat og drikke. Dagen skal bli en skikkelig fest på bakgården akkompagnert med god musikk og en spesiell atmosfære.'),
(8, 'Europeisk marked ', 'Utstilling ', '2015-08-27', 'Stort marked med selgere fra hele Europa som tilbyr spesialiteter fra Nederland, Frankrike,Italia,England og Spania. Her kan du kjøpe alt fra ost,pølser,tørkede frukter, sjokolader og masse mer. \r\n\r\nNoen boder tilbyr også varm mat som paella, couscous, kylling, bratwurst og andre retter. \r\n\r\nDet vil bli mulighet til å kjøpe klær, lærvesker og lignende.  '),
(9, 'Revisoren ', 'Teater', '2015-05-29', 'Nikolai Gogol''s berømte komedie teaterstykke. Fremført på norsk. '),
(12, 'Gåtur', 'Tur og friluftsliv', '2015-06-17', 'Oslo Turlag ønsker at flest mulig skal komme i fysisk aktivitet og få gode naturopplevelser. Derfor startes det nå opp et nytt turtilbud som består av ekstra lette turer for eldre.\r\nTurene går på dagtid og har fast oppmøtetid og –sted. Det legges stor vekt på et sosialt og inkluderende fellesskap. Turene vil vare ca. 1,5 time. På noen av turene vil det kanskje også bli instruert i enkle styrketreningsøvelser ute i det fri. Turene krever verken medlemskap eller påmelding og det er gratis å delta!\r\nMålgruppen for turene er seniorer som ønsker å komme i fysisk aktivitet og bli en del av et sosialt turmiljø. Andre som har anledning til å gå tur på dagtid er også velkomne.');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `paamelding`
--

CREATE TABLE IF NOT EXISTS `paamelding` (
  `deltager_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `fremstilling` text NOT NULL,
  UNIQUE KEY `deltager_id` (`deltager_id`,`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `paamelding`
--

INSERT INTO `paamelding` (`deltager_id`, `event_id`, `fremstilling`) VALUES
(5, 1, 'Kimmern Trakt du har meldt deg på Circus Arnardo. Nærmere informasjon vil bli sendt ut på din oppgitte e-post adresse. '),
(10, 2, 'Scott Walcot du har meldt deg på Little Jazz. Nærmere informasjon vil bli sendt ut på din oppgitte e-post adresse. '),
(10, 1, 'Scott Walcot du har meldt deg på Circus Arnardo. Nærmere informasjon vil bli sendt ut på din oppgitte e-post adresse. '),
(1, 4, 'Julie Klunge du har meldt deg på Costa Chic moteshow. Nærmere informasjon vil bli sendt ut på din oppgitte e-post adresse. ');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `sjanger`
--

CREATE TABLE IF NOT EXISTS `sjanger` (
  `sjanger_id` int(255) NOT NULL AUTO_INCREMENT,
  `sjangernavn` varchar(255) NOT NULL,
  `beskrivelse` varchar(255) NOT NULL,
  PRIMARY KEY (`sjanger_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dataark for tabell `sjanger`
--

INSERT INTO `sjanger` (`sjanger_id`, `sjangernavn`, `beskrivelse`) VALUES
(1, 'Utstilling ', 'Utstilling av diverse alt fra kunst til utstilling av dyr. '),
(2, 'Forestilling', 'Forestilling av diverse. Både dans, drama og diverse. '),
(3, 'Musikk', 'Diverse konserter '),
(4, 'Teater ', 'Berømte teaterstykker som vises på hovedscenen. '),
(6, 'Tur/friluftsliv', 'Diverse arrangement for de med interesse for friluftsliv. '),
(5, 'Fashion ', 'Berømte designere kommer ofte til Norge og spesielt til Oslo for å holde sine fashionshows. Fashion kan være alt fra fashion shows til utstillinger av klær. ');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
