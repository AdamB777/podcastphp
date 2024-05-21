-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Sty 2023, 20:05
-- Wersja serwera: 10.4.25-MariaDB
-- Wersja PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `podcasty`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autorzy`
--

CREATE TABLE `autorzy` (
  `Id` int(11) NOT NULL,
  `imieAutora` varchar(256) COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwiskoAutora` varchar(256) COLLATE utf8mb4_polish_ci NOT NULL,
  `opisAutora` text COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `idPodcastu` int(11) NOT NULL,
  `zdjecieAutora` text COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `idKategorii` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `idUzytkownika` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `autorzy`
--

INSERT INTO `autorzy` (`Id`, `imieAutora`, `nazwiskoAutora`, `opisAutora`, `idPodcastu`, `zdjecieAutora`, `idKategorii`, `data`, `idUzytkownika`) VALUES
(1, 'Marcin ', 'Myszka', 'Polski youtuber, tropiciel nierozwiązanych zagadek kryminalnych[3] oraz twórca Kryminatorium, jednego z najpopularniejszych podcastów w Polsce[1], który był pierwszym tego typu podcastem w Polsce[3][4]. Jest także autorem audioserialu z czasów PRL − „Rozpruwacz z Bydgoszczy”[5][6], nazywanego Polskim Kubą Rozpruwaczem[7].', 1, 'Marcin_Myszka', 1, '2021-01-01', NULL),
(2, 'Justyna', 'Mazur', 'Polska podcasterka i blogerka[2].\r\n\r\nStudiowała dziennikarstwo oraz psychologię na Uniwersytecie Jagiellońskim w Krakowie[3], ale nie ukończyła tych studiów. Jest absolwentką Polskiej Szkoły Reportażu, którą ukończyła pracą „Cierpienia wewnętrznego krytyka”[4] opublikowaną w magazynie reporterskim Non/Fiction. Obecnie mieszka w Warszawie[5]. Autorka podcastów Piąte: nie zabijaj, Pogadajmy o życiu, Piąte przez dziesiąte, których odcinki odsłuchano już ponad 30 000 000 razy[6]. Swoją obecność w Internecie rozpoczęła od bloga Krótki poradnik jak ogarnąć życie. Od początku swojego istnienia, podcast Piąte: nie zabijaj znajduje się w pierwszej dziesiątce najpopularniejszych podcastów w Polsce[7] oraz jest jednym z dwóch polskich podcastów, które znalazły się w globalnym zestawieniu 100 najczęściej słuchanych podcastów[8].', 2, 'Justyna_Mazur', 1, '2022-02-01', NULL),
(3, 'nn', 'nn', 'brak', 3, NULL, 1, '2022-04-01', NULL),
(4, 'Olga ', 'Herring', 'Opowiadam o kryminalnych sprawach, które w teorii mogą spotkać każdego z nas.', 4, 'Olga_Herring', 1, '2022-04-01', NULL),
(5, 'Dawid, Radosław', 'Podsiadło Kotarski', 'Dawid Henryk Podsiadło (ur. 23 maja 1993 w Dąbrowie Górniczej) – polski piosenkarz oraz autor tekstów. Wokalista zespołu Curly Heads.\r\n\r\nW 2012 zwyciężył w finale drugiej edycji programu telewizyjnego X Factor[2]. W 2013 wydał debiutancki album pt. Comfort and Happiness, który dotarł do 1. miejsca polskiej listy sprzedaży i rozszedł się ponad 150 tys. egzemplarzy, dzięki czemu zdobył status diamentowej płyty[3] i został najlepiej sprzedającym się albumem w Polsce w 2013. W 2015 wydał drugi album pt. Annoyance and Disappointment, który również dotarł do 1. miejsca OLiS oraz sprzedał się w ponad 150 tys. sztuk, zdobywając status diamentowy[3]. W 2018 wydał trzeci album pt. Małomiasteczkowy, z którym trzeci raz z rzędu zagościł na 1. miejscu OLiS[3]. Łącznie sprzedał ponad 600 tys. płyt w Polsce.\r\nBył 18 razy nominowany do nagród Fryderyków, z czego 12-krotnie wygrywał plebiscy\r\n\r\nRadosław Jerzy Kotarski (ur. 9 stycznia 1986 w Zielonej Górze) – polski dziennikarz, przedsiębiorca, twórca kanału Polimaty w serwisie YouTube, w którym prezentuje treści edukacyjne. Prowadzący i reżyser programu Podróże z historią tworzonego dla TVP2, współzałożyciel sieci partnerskiej LifeTube, właściciel wydawnictwa Altenberg.', 5, 'Podsiadło_Kotarski', 2, '2023-01-01', NULL),
(6, 'Tomasz', 'Sekielski', 'Polski dziennikarz radiowy i telewizyjny, autor filmów dokumentalnych, reportaży telewizyjnych, prozaik, od lipca 2022 redaktor naczelny Newsweek Polska.\r\n\r\nScenarzysta i reżyser filmów dokumentalnych Tylko nie mów nikomu (2019) Zabawa w chowanego (2020), które poruszyły temat wykorzystywania seksualnego dzieci w Kościele katolickim w Polsce i wywołały ogólnokrajową dyskusję. Na przestrzeni lat Sekielski był związany z redakcjami TVN, TVN24, TVP1, TVP Info, Wprost, Nowej TV, Wirtualnej Polski i Onetu. Wraz z Andrzejem Morozowskim był współgospodarzem programu Teraz my! w TVN. W 2006 roku śledztwo dziennikarzy ujawniło rozmowy pomiędzy grupą polityków rządzącej partii Prawo i Sprawiedliwość i jedną z posłanek. Publikacja jego wyników doprowadziła do wybuchu tzw. afery taśmowej. Część komentatorów twierdziła, że nagrania są dowodem korupcji politycznej rządzącej partii. W 2018 Sekielski zapoczątkował własny kanał na YouTube.\r\n\r\nZa swoją pracę otrzymał szereg nagród, w tym Nagrodę im. Andrzeja Woyciechowskiego (2006, 2019), Grand Press (2006, 2014, 2019), Wiktora (2006, 2019), Telekamery (2007, 2008), MediaTory (2010, 2019) i Polską Nagrodę Filmową Orzeł za najlepszy film dokumentalny (2020).', 6, 'Tomasz_Sekielski', 2, '2022-09-01', NULL),
(7, 'Adam ', 'Bodnar', 'Adam Piotr Bodnar (ur. 6 stycznia 1977 w Trzebiatowie) – polski prawnik i nauczyciel akademicki, doktor habilitowany nauk prawnych, działacz na rzecz praw człowieka. W latach 2010–2015 wiceprezes Helsińskiej Fundacji Praw Człowieka, w latach 2015–2021 rzecznik praw obywatelskich, profesor uczelni na Uniwersytecie SWPS i od 2021 dziekan Wydziału Prawa tego uniwersytetu.', 7, 'Adam_Bodnar', 2, NULL, NULL),
(8, 'Joanna', 'Okuniewska', 'Joanna Okuniewska – polska podcasterka, twórczyni m.in. Tu Okuniewska i Ja i moje przyjaciółki idiotki, które uznaje się za jedne z najpopularniejszych podcastów w Polsce w 2020 roku z około 100 000 odsłuchań pojedynczych odcinków.', 8, 'Joanna_Okuniewska', 3, NULL, NULL),
(9, 'Karol', 'Paciorek', '(ur. 15 października 1986 w Limanowej) – polski twórca internetowy, dziennikarz, prezenter telewizyjny, fotograf.', 10, 'Karol_Paciorek', 3, NULL, NULL),
(10, 'Stand-up Polska – Życie jest śmieszne', '', 'Stand-up Polska to grupa komików spcejalizujących się w stand-up comedy.', 11, 'Stand-up_Polska', 3, NULL, NULL),
(11, 'Katarzyna', 'Michałowska', 'Jestem absolwentką dwóch kierunków na PG (Wydziału Elektrycznego i Wydziału Zarządzania i Ekonomii). Studiowała dziennikarstwo, doradztwo psychologiczne i pedagogikę.', 12, 'Katarzyna_Michalowska', 5, NULL, NULL),
(12, 'Maciej', 'Okraszewski', 'Maciej Okraszewski to twórca bloga i podcastu pt. Dział Zagraniczny, gdzie porusza tematy, o których w mediach słychać niewiele albo wcale.', 13, 'Maciej_Okraszewski', 5, NULL, NULL),
(13, 'Anna', 'Witko', NULL, 14, 'Anna_Witko', 8, NULL, NULL),
(14, 'Alicja', '', 'Mieszka obecnie na Wysokim Wybrzeżu w Szwecji. Miejscu gdzie głęboki las spotyka się ze stromymi skałami. Opowiada o tym jak po kilku latach mieszkania w Norwegii odnalazłam się na północy. ', 15, 'Alicja', 8, NULL, NULL),
(15, 'Asia ', 'Dziuba ', 'Już od ponad 10 lat uczę Was gruzińskiego, a Kaukazem zajmuję się od 16 lat. Prowadzę również podcast ”Kaukazomaniacy”, w którym w zaproszonymi gośćmi przybliżam Wam ten region. Z wykształcenia jestem politologiem specjalizującym się w Kaukazie, który pasję do kaukaskiej polityki zamienił na pasję językoznawczą. Mam na swoim koncie grubo ponad 30 artykułów i publikacji na temat regionu. \r\n\r\nZnam 7 języków , uczyłam się w sumie 14, a do tego czytam w 5 alfabetach. A kiedy nie zajmuję się Kaukazem, wspieram innych jako business i agile coach oraz leader zespołów IT. ', 16, NULL, 8, NULL, NULL),
(17, '', '', NULL, 0, NULL, 0, NULL, 1),
(18, '', '', NULL, 0, NULL, 0, NULL, 2),
(19, '', '', NULL, 0, NULL, 0, NULL, 3),
(20, '', '', NULL, 0, NULL, 0, NULL, 4),
(21, '', '', NULL, 0, NULL, 0, NULL, 5),
(22, '', '', NULL, 0, NULL, 0, NULL, 6),
(23, '', '', NULL, 0, NULL, 0, NULL, 1),
(24, '', '', NULL, 0, NULL, 0, NULL, 2),
(25, '', '', NULL, 0, NULL, 0, NULL, 3),
(26, '', '', NULL, 0, NULL, 0, NULL, 4),
(27, '', '', NULL, 0, NULL, 0, NULL, 5),
(28, '', '', NULL, 0, NULL, 0, NULL, 6),
(29, '', '', NULL, 0, NULL, 0, NULL, 1),
(30, '', '', NULL, 0, NULL, 0, NULL, 2),
(31, '', '', NULL, 0, NULL, 0, NULL, 3),
(32, '', '', NULL, 0, NULL, 0, NULL, 4),
(33, '', '', NULL, 0, NULL, 0, NULL, 5),
(34, '', '', NULL, 0, NULL, 0, NULL, 6),
(35, '', '', NULL, 0, NULL, 0, NULL, 1),
(36, '', '', NULL, 0, NULL, 0, NULL, 2),
(37, '', '', NULL, 0, NULL, 0, NULL, 3),
(38, '', '', NULL, 0, NULL, 0, NULL, 4),
(39, '', '', NULL, 0, NULL, 0, NULL, 5),
(40, '', '', NULL, 0, NULL, 0, NULL, 6),
(41, '', '', NULL, 0, NULL, 0, NULL, 1),
(42, '', '', NULL, 0, NULL, 0, NULL, 2),
(43, '', '', NULL, 0, NULL, 0, NULL, 3),
(44, '', '', NULL, 0, NULL, 0, NULL, 4),
(45, '', '', NULL, 0, NULL, 0, NULL, 5),
(46, '', '', NULL, 0, NULL, 0, NULL, 6),
(47, '', '', NULL, 0, NULL, 0, NULL, 1),
(48, '', '', NULL, 0, NULL, 0, NULL, 2),
(49, '', '', NULL, 0, NULL, 0, NULL, 3),
(50, '', '', NULL, 0, NULL, 0, NULL, 4),
(51, '', '', NULL, 0, NULL, 0, NULL, 5),
(52, '', '', NULL, 0, NULL, 0, NULL, 6),
(53, '', '', NULL, 0, NULL, 0, NULL, 1),
(54, '', '', NULL, 0, NULL, 0, NULL, 2),
(55, '', '', NULL, 0, NULL, 0, NULL, 3),
(56, '', '', NULL, 0, NULL, 0, NULL, 4),
(57, '', '', NULL, 0, NULL, 0, NULL, 5),
(58, '', '', NULL, 0, NULL, 0, NULL, 6),
(59, '', '', NULL, 0, NULL, 0, NULL, 1),
(60, '', '', NULL, 0, NULL, 0, NULL, 2),
(61, '', '', NULL, 0, NULL, 0, NULL, 3),
(62, '', '', NULL, 0, NULL, 0, NULL, 4),
(63, '', '', NULL, 0, NULL, 0, NULL, 5),
(64, '', '', NULL, 0, NULL, 0, NULL, 6),
(65, '', '', NULL, 0, NULL, 0, NULL, 1),
(66, '', '', NULL, 0, NULL, 0, NULL, 2),
(67, '', '', NULL, 0, NULL, 0, NULL, 3),
(68, '', '', NULL, 0, NULL, 0, NULL, 4),
(69, '', '', NULL, 0, NULL, 0, NULL, 5),
(70, '', '', NULL, 0, NULL, 0, NULL, 6),
(71, '', '', NULL, 0, NULL, 0, NULL, 1),
(72, '', '', NULL, 0, NULL, 0, NULL, 2),
(73, '', '', NULL, 0, NULL, 0, NULL, 3),
(74, '', '', NULL, 0, NULL, 0, NULL, 4),
(75, '', '', NULL, 0, NULL, 0, NULL, 5),
(76, '', '', NULL, 0, NULL, 0, NULL, 6),
(77, '', '', NULL, 0, NULL, 0, NULL, 1),
(78, '', '', NULL, 0, NULL, 0, NULL, 2),
(79, '', '', NULL, 0, NULL, 0, NULL, 3),
(80, '', '', NULL, 0, NULL, 0, NULL, 4),
(81, '', '', NULL, 0, NULL, 0, NULL, 5),
(82, '', '', NULL, 0, NULL, 0, NULL, 6),
(83, '', '', NULL, 0, NULL, 0, NULL, 1),
(84, '', '', NULL, 0, NULL, 0, NULL, 2),
(85, '', '', NULL, 0, NULL, 0, NULL, 3),
(86, '', '', NULL, 0, NULL, 0, NULL, 4),
(87, '', '', NULL, 0, NULL, 0, NULL, 5),
(88, '', '', NULL, 0, NULL, 0, NULL, 6),
(89, '', '', NULL, 0, NULL, 0, NULL, 1),
(90, '', '', NULL, 0, NULL, 0, NULL, 2),
(91, '', '', NULL, 0, NULL, 0, NULL, 3),
(92, '', '', NULL, 0, NULL, 0, NULL, 4),
(93, '', '', NULL, 0, NULL, 0, NULL, 5),
(94, '', '', NULL, 0, NULL, 0, NULL, 6),
(95, '', '', NULL, 0, NULL, 0, NULL, 1),
(96, '', '', NULL, 0, NULL, 0, NULL, 2),
(97, '', '', NULL, 0, NULL, 0, NULL, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

CREATE TABLE `kategorie` (
  `Id` int(11) NOT NULL,
  `nazwa` varchar(256) COLLATE utf8mb4_polish_ci NOT NULL,
  `opis` text COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `kategorie`
--

INSERT INTO `kategorie` (`Id`, `nazwa`, `opis`) VALUES
(1, 'Kryminalny', 'Skupia się na historiach związanych z przestępczością, zarówno prawdziwych jak i fikcyjnych.'),
(2, 'Informacyjny ', 'Skupia się na przekazywaniu informacji na różne tematy, takie jak polityka, ekonomia, nauka lub technologia.'),
(3, 'Rozrywkowy ', 'Zawiera rozrywkowe treści, takie jak komentarze na temat popkultury, recenzje filmów i gier, a także rozmowy z gośćmi z różnych dziedzin.'),
(4, 'Motywacyjny ', 'Skupia się na motywowaniu i inspirowaniu słuchaczy do osiągnięcia ich celów, zawiera rozmowy z ludźmi, którzy odniesli sukces oraz porady dotyczące rozwoju osobistego.'),
(5, 'Edukacyjny ', 'Zawiera treści edukacyjne na różne tematy, takie jak historia, języki obce, nauki przyrodnicze.'),
(6, 'Psychologiczny', 'Skupia się na tematach związanych z psychologią, takich jak zdrowie psychiczne, radzenie sobie z emocjami, relacje międzyludzkie, rozwój osobisty itp.'),
(7, 'historyczny', 'Skupia się na tematach związanych z historią. Może dotyczyć różnych okresów historycznych, od starożytności po współczesność, a także różnych regionów świata.'),
(8, 'Podróżniczy ', 'Skupia się na tematach związanych z podróżami, takich jak destynacje, kultura, jedzenie i przeżycia. Może zawierać wywiady z ekspertami w dziedzinie podróży, osobiste historie i porady od podróżników oraz informacje dotyczące planowania i budżetowania podróży.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `komentarzedoautorow`
--

CREATE TABLE `komentarzedoautorow` (
  `Id` int(11) NOT NULL,
  `tytul` varchar(256) COLLATE utf8mb4_polish_ci NOT NULL,
  `tresc` text COLLATE utf8mb4_polish_ci NOT NULL,
  `idAutora` int(11) NOT NULL,
  `idUzytkownika` int(11) NOT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `komentarzedoautorow`
--

INSERT INTO `komentarzedoautorow` (`Id`, `tytul`, `tresc`, `idAutora`, `idUzytkownika`, `data`) VALUES
(2, 'Polecam!', 'Ten podkast jest naprawdę wart uwagi. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 8, 4, '2022-11-02'),
(3, 'Rewelacja!', 'Ten podkast to prawdziwa rewelacja. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 1, 6, '2022-11-03'),
(4, 'Znakomity!', 'Słucham tego podkastu od samego początku i jestem pod wrażeniem. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 3, 5, '2022-11-04'),
(5, 'Niezwykle interesujący!', 'Ten podkast jest naprawdę niezwykle interesujący. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 9, 1, '2022-11-05'),
(6, 'Wart uwagi!', 'Ten podkast jest naprawdę wart uwagi. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 12, 3, '2022-11-06'),
(7, 'Rewelacyjny!', 'Ten podkast to prawdziwa rewelacja. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 7, 2, '2022-11-07'),
(8, 'Znakomity!', 'Słucham tego podkastu od samego początku i jestem pod wrażeniem. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 2, 4, '0000-00-00'),
(9, 'Niezwykle interesujący!', 'Ten podkast jest naprawdę niezwykle interesujący. Autorzy są bardzo kompetentni i potrafią przedstawić ciekawe tematy.', 4, 6, '2022-11-09'),
(10, 'Bardzo dobry!', 'Ten podkast jest naprawdę bardzo dobry. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 6, 5, '2022-11-10'),
(11, 'Rewelacyjny!', 'Ten podkast to prawdziwa rewelacja. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 11, 1, '2022-11-11'),
(12, 'Wart uwagi!', 'Ten podkast jest naprawdę wart uwagi. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 10, 3, '2022-11-12'),
(13, 'Niezwykle interesujący!', 'Ten podkast jest naprawdę niezwykle interesujący. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 1, 2, '2022-11-13'),
(14, 'Rewelacyjny!', 'Ten podkast to prawdziwa rewelacja. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 12, 4, '2022-11-14'),
(15, 'Niezwykle interesujący!', 'Ten podkast jest naprawdę niezwykle interesujący. Autorzy są bardzo kompetentni i potrafią przedstawić ciekawe tematy.', 3, 6, '2022-11-15'),
(16, 'Bardzo dobry!', 'Ten podkast jest naprawdę bardzo dobry. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 7, 5, '2022-11-16'),
(17, 'Rewelacyjny!', 'Ten podkast to prawdziwa rewelacja. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 9, 1, '2022-11-17'),
(18, 'Wart uwagi!', 'Ten podkast jest naprawdę wart uwagi. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 2, 3, '2022-11-18'),
(19, 'Świetny!', 'Ten podkast jest naprawdę świetny. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 4, 2, '2022-11-19'),
(21, 'Rewelacyjny!', 'Ten podkast to prawdziwa rewelacja. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 6, 6, '2022-11-21'),
(22, 'Niezwykle interesujący!', 'Ten podkast jest naprawdę niezwykle interesujący. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 7, 5, '2022-11-22'),
(23, 'Znakomity!', 'Słucham tego podkastu od samego początku i jestem pod wrażeniem. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 8, 1, '2022-11-23'),
(24, 'Wart uwagi!', 'Ten podkast jest naprawdę wart uwagi. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 9, 3, '2022-11-24'),
(25, 'Rewelacyjny!', 'Ten podkast to prawdziwa rewelacja. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 10, 2, '2022-11-25'),
(26, 'Świetny!', 'Ten podkast jest naprawdę świetny. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 11, 4, '2022-11-26'),
(27, 'Polecam!', 'Ten podkast jest naprawdę wart uwagi. Autorzy są bardzo kompetentni i potrafią przedstawić ciekawe tematy.', 12, 6, '2022-11-27'),
(28, 'Rewelacyjny podkast!', 'Słucham tego podkastu od samego początku i za każdym razem jestem zachwycony.', 14, 2, '2022-12-01'),
(29, 'Świetna rozmowa', 'Ostatni odcinek z gościem X był naprawdę interesujący i pouczający.', 15, 4, '2022-11-25'),
(30, 'Polecam!', 'Ten podkast to prawdziwa gratka dla fanów tematyki Y.', 13, 6, '2022-11-15'),
(31, 'Znakomity!', 'Autor potrafi przedstawić skomplikowane zagadnienia w prosty i zrozumiały sposób.', 13, 1, '2022-10-20'),
(32, 'Niezwykle ciekawy', 'Każdy odcinek to nowa porcja wiedzy i inspiracji.', 14, 3, '2022-10-10'),
(33, 'Wyjątkowy', 'Ten podkast to prawdziwa perła w morzu treści dostępnych online.', 15, 5, '2022-09-30'),
(34, 'Niepowtarzalny', 'Autor ma niezwykły dar przyciągania uwagi słuchaczy swoim ciepłym i przyjaznym głosem.', 15, 2, '2022-09-15'),
(35, 'Bezkonkurencyjny', 'Ten podkast to obowiązkowa pozycja dla każdego, kto interesuje się tematyką Z.', 13, 4, '2022-09-01'),
(36, 'Wybitny', 'Autor potrafi przedstawić ważne wydarzenia w sposób interesujący i przystępny.', 14, 6, '2022-08-15'),
(37, 'asd', 'asd', 0, 1, '2023-01-22'),
(38, 'asd', 'asd', 0, 1, '2023-01-22'),
(39, 'dwa', 'dwa', 2, 1, '2023-01-22'),
(40, 'dwa', 'dwa', 2, 1, '2023-01-22'),
(41, 'asd', 'asd', 0, 1, '2023-01-22'),
(42, 'vv', '', 2, 1, '2023-01-22'),
(43, 'vv', 'vv', 2, 1, '2023-01-22'),
(44, 'm m', 'mm', 2, 1, '2023-01-22'),
(45, 'm m', 'mm', 2, 1, '2023-01-22'),
(46, 'm m', 'mm', 2, 1, '2023-01-22'),
(47, 'vv', 'vv', 2, 1, '2023-01-22'),
(48, 'vv', '', 2, 1, '2023-01-22'),
(49, 'asd', 'asd', 0, 1, '2023-01-22'),
(50, '', '', 2, 1, '2023-01-22'),
(51, 'rr', 'rr', 2, 1, '2023-01-22'),
(52, 'ww', 'ww', 2, 1, '2023-01-22'),
(53, 'ww', 'ww', 2, 1, '2023-01-22'),
(54, 'jk', 'jk', 2, 1, '2023-01-22'),
(57, 'ddddddddddd', 'dddd', 0, 1, '2023-01-22'),
(58, 'gg', 'gg', 0, 1, '2023-01-22'),
(59, '', '', 0, 1, '2023-01-22'),
(60, '', '', 0, 1, '2023-01-22'),
(62, '00', '00', 3, 1, '2023-01-22'),
(302873, 'rr', 'rr', 6, 1, '2023-01-22'),
(302874, 'ee', 'ee', 6, 1, '2023-01-22'),
(302875, 'asdasd', 'dsadsa', 6, 1, '2023-01-22'),
(302876, '', '', 0, 1, '2023-01-22'),
(302877, '', '', 0, 1, '2023-01-22'),
(302878, 'qwe', 'ww', 6, 1, '2023-01-22'),
(302879, 'sd', 'sd', 5, 1, '2023-01-22'),
(302880, '', 'ss', 6, 1, NULL),
(302881, '', 'ss', 6, 1, NULL),
(302882, 'qq', 'qq', 6, 1, NULL),
(302883, 'vv', 'vv', 6, 1, NULL),
(302884, 'vv', 'vv', 6, 9, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `komentarzedopodcastow`
--

CREATE TABLE `komentarzedopodcastow` (
  `Id` int(11) NOT NULL,
  `tytul` varchar(256) COLLATE utf8mb4_polish_ci NOT NULL,
  `tresc` text COLLATE utf8mb4_polish_ci NOT NULL,
  `idUzytkownika` int(11) NOT NULL,
  `idPodcastu` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `komentarzedopodcastow`
--

INSERT INTO `komentarzedopodcastow` (`Id`, `tytul`, `tresc`, `idUzytkownika`, `idPodcastu`, `data`) VALUES
(1, 'Świetny podcast!', 'Słucham tego podcastu już od dłuższego czasu i zawsze jestem zadowolony. Tematy są bardzo interesujące i merytoryczne.', 2, 5, '2022-11-01'),
(2, 'Polecam!', 'Ten podcast jest naprawdę wart uwagi. Tematy są ciekawe i przedstawione w przystępny sposób.', 4, 8, '2022-11-02'),
(3, 'Rewelacja!', 'Ten podcast to prawdziwa rewelacja. Tematy są bardzo interesujące i merytoryczne.', 6, 1, '2022-11-03'),
(4, 'Znakomity!', 'Słucham tego podcastu od samego początku i jestem pod wrażeniem. Tematy są bardzo interesujące i przedstawione w ciekawy sposób.', 5, 3, '2022-11-04'),
(5, 'Niezwykle interesujący!', 'Ten podcast jest naprawdę niezwykle interesujący. Tematy są ciekawe i przedstawione w przystępny sposób.', 1, 9, '2022-11-05'),
(6, 'Wart uwagi!', 'Ten podcast jest naprawdę wart uwagi. Tematy są bardzo interesujące i merytoryczne.', 3, 12, '2022-11-06'),
(7, 'Rewelacyjny!', 'Ten podcast to prawdziwa rewelacja. Tematy są ciekawe i przedstawione w przystępny sposób.', 2, 7, '2022-11-07'),
(8, 'Znakomity!', 'Słucham tego podcastu od samego początku i jestem pod wrażeniem. Tematy są bardzo interesujące i przedstawione w ciekawy sposób.', 4, 2, '2022-11-08'),
(9, '', 'z', 6, 4, '2022-11-09'),
(10, 'Bardzo dobry!', 'Ten podcast jest naprawdę bardzo dobry. Tematy są bardzo interesujące i merytoryczne.', 5, 6, '2022-11-10'),
(11, 'Rewelacyjny!', 'Ten podcast to prawdziwa rewelacja. Tematy są ciekawe i przedstawione w przystępny sposób.', 1, 11, '2022-11-11'),
(12, 'Wart uwagi!', 'Ten podcast jest naprawdę wart uwagi. Tematy są bardzo interesujące i przedstawione w ciekawy sposób.', 3, 10, '2022-11-12'),
(13, 'Niezwykle interesujący!', 'Ten podcast jest naprawdę niezwykle interesujący. Tematy są ciekawe i przedstawione w przystępny sposób.', 2, 1, '2022-11-13'),
(14, 'Rewelacyjny!', 'Ten podcast to prawdziwa rewelacja. Tematy są bardzo interesujące i merytoryczne.', 4, 12, '2022-11-14'),
(15, 'Niezwykle interesujący!', 'Ten podcast jest naprawdę niezwykle interesujący. Tematy są bardzo kompetentne i przedstawione w interesujący sposób.', 6, 3, '2022-11-15'),
(16, 'Bardzo dobry!', 'Ten podcast jest naprawdę bardzo dobry. Tematy są ciekawe i przedstawione w przystępny sposób.', 5, 7, '2022-11-16'),
(17, 'Rewelacyjny!', 'Ten podcast to prawdziwa rewelacja. Tematy są bardzo interesujące i merytoryczne.', 1, 9, '2022-11-17'),
(18, 'Wart uwagi!', 'Ten podcast jest naprawdę wart uwagi. Tematy są ciekawe i przedstawione w przystępny sposób.', 3, 2, '2022-11-18'),
(19, 'Świetny!', 'Ten podcast jest naprawdę świetny. Tematy są bardzo interesujące i przedstawione w ciekawy sposób.', 2, 4, '2022-11-19'),
(20, 'Polecam!', 'Ten podcast jest naprawdę wart uwagi. Tematy są bardzo kompetentne i przedstawione w interesujący sposób.', 4, 6, '2022-11-20'),
(21, 'Rewelacyjny!', 'Ten podcast to prawdziwa rewelacja. Tematy są ciekawe i przedstawione w przystępny sposób.', 6, 5, '2022-11-21'),
(22, 'Niezwykle interesujący!', 'Ten podcast jest naprawdę niezwykle interesujący. Tematy są bardzo interesujące i merytoryczne.', 5, 1, '2022-11-22'),
(23, 'Znakomity!', 'Słucham tego podcastu od samego początku i jestem pod wrażeniem. Tematy są bardzo interesujące i przedstawione w ciekawy sposób.', 3, 3, '2022-11-23'),
(24, 'Wart uwagi!', 'Ten podcast jest naprawdę wart uwagi. Tematy są ciekawe i przedstawione w przystępny sposób.', 2, 2, '2022-11-24'),
(25, 'Rewelacyjny!', 'Ten podcast to prawdziwa rewelacja. Tematy są bardzo interesujące i merytoryczne.', 4, 4, '2022-11-25'),
(26, 'Świetny!', 'Ten podcast jest naprawdę świetny. Tematy są ciekawe i przedstawione w przystępny sposób.', 6, 6, '2022-11-26'),
(27, 'Polecam!', 'Ten podcast jest naprawdę wart uwagi. Tematy są bardzo kompetentne i przedstawione w interesujący sposób.', 5, 5, '2022-11-27'),
(28, 'Rewelacyjny!', 'Ten podcast to prawdziwa rewelacja. Tematy są ciekawe i przedstawione w przystępny sposób.', 1, 1, '2022-11-28'),
(29, 'Niezwykle interesujący!', 'Ten podcast jest naprawdę niezwykle interesujący. Tematy są bardzo interesujące i merytoryczne.', 3, 3, '2022-11-29'),
(30, 'Wart uwagi!', 'Ten podcast jest naprawdę wart uwagi. Tematy są ciekawe i przedstawione w przystępny sposób.', 2, 2, '2022-11-30'),
(31, 'Rewelacyjny!', 'Ten podcast jest naprawdę rewelacyjny. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 2, 13, '2022-11-28'),
(32, 'Niezwykle interesujący!', 'Ten podcast jest naprawdę niezwykle interesujący. Autorzy są bardzo kompetentni i potrafią przedstawić ciekawe tematy.', 4, 14, '2022-11-29'),
(33, 'Znakomity!', 'Słucham tego podcastu od samego początku i jestem pod wrażeniem. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 6, 15, '2022-11-30'),
(34, 'Wartuwagi!', 'Ten podcast jest naprawdę wart uwagi. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 1, 16, '2022-12-01'),
(35, 'Rewelacyjny!', 'Ten podcast to prawdziwa rewelacja. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 3, 13, '2022-12-02'),
(36, 'Świetny!', 'Ten podcast jest naprawdę świetny. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 5, 14, '2022-12-03'),
(37, 'Polecam!', 'Ten podcast jest naprawdę wart uwagi. Autorzy są bardzo kompetentni i potrafią przedstawić ciekawe tematy.', 6, 15, '2022-12-04'),
(38, 'Rewelacyjny!', 'Ten podcast to prawdziwa rewelacja. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 2, 16, '2022-12-05'),
(39, 'Niezwykle interesujący!', 'Ten podcast jest naprawdę niezwykle interesujący. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 4, 13, '2022-12-06'),
(40, 'Znakomity!', 'Słucham tego podcastu od samego początku i jestem pod wrażeniem. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 1, 14, '2022-12-07'),
(41, 'Wart uwagi!', 'Ten podcast jest naprawdę wart uwagi. Autorzy są bardzo kompetentni i potrafią przedstawić ciekawe tematy.', 3, 15, '2022-12-08'),
(42, 'v', 'v', 1, 0, '0000-00-00'),
(43, 'bb', 'bb', 1, 0, '0000-00-00'),
(44, 'cc', 'cc', 1, 0, '0000-00-00'),
(45, 'aa', 'aa', 1, 11, '0000-00-00'),
(46, 'w', 'w', 1, 5, '0000-00-00'),
(47, 'a', 'a', 1, 5, '0000-00-00'),
(48, 'dd', 'dd', 1, 11, '0000-00-00'),
(49, 'a', 'a', 11, 11, '0000-00-00'),
(65, 'v', 'new', 13, 11, '2023-01-25'),
(66, 'spr przeego', 'proba2', 9, 11, '2023-01-25'),
(67, '', '', 0, 11, '2023-01-26'),
(69, '', 'fdgfdg', 9, 11, '2023-01-26');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `newsy`
--

CREATE TABLE `newsy` (
  `Id` int(11) NOT NULL,
  `tytul` varchar(256) COLLATE utf8mb4_polish_ci NOT NULL,
  `tresc` text COLLATE utf8mb4_polish_ci NOT NULL,
  `idUzytkownika` int(11) NOT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `newsy`
--

INSERT INTO `newsy` (`Id`, `tytul`, `tresc`, `idUzytkownika`, `data`) VALUES
(1, '1news', '1tresc', 1, '2023-01-01'),
(2, '2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor reiciendis, consectetur nesciunt labore necessitatibus excepturi enim quasi facilis sapiente sit.', 2, '2023-01-20'),
(3, '3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dollis sapiente sit.', 3, '2023-01-10');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oceny`
--

CREATE TABLE `oceny` (
  `Id` int(11) NOT NULL,
  `ocena` double DEFAULT NULL,
  `idPodcastu` int(11) NOT NULL,
  `idUzytkownika` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `oceny`
--

INSERT INTO `oceny` (`Id`, `ocena`, `idPodcastu`, `idUzytkownika`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 6, 6, 6),
(7, 1, 7, 1),
(8, 2, 8, 2),
(9, 3, 9, 3),
(10, 4, 10, 4),
(11, 5, 11, 5),
(12, 6, 12, 6),
(13, 1, 13, 1),
(14, 2, 14, 2),
(15, 3, 15, 3),
(16, 4, 16, 4),
(17, 5, 1, 5),
(18, 6, 2, 6),
(19, 1, 3, 1),
(20, 2, 4, 2),
(21, 3, 5, 3),
(22, 4, 6, 4),
(23, 5, 7, 5),
(24, 6, 8, 6),
(25, 1, 9, 1),
(26, 2, 10, 2),
(27, 3, 11, 3),
(28, 4, 12, 4),
(29, 5, 13, 5),
(30, 6, 14, 6),
(31, 3, 0, 9),
(34, 1, 12, 9),
(35, 1, 5, 9),
(36, 1, 11, 9),
(37, 1, 9, 9),
(38, 1, 2, 9),
(39, 1, 8, 9),
(40, 2, 6, 9),
(41, 1, 14, 9),
(42, 2, 16, 9);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `podcasty`
--

CREATE TABLE `podcasty` (
  `Id` int(11) NOT NULL,
  `tytul` varchar(256) COLLATE utf8mb4_polish_ci NOT NULL,
  `opis` text COLLATE utf8mb4_polish_ci NOT NULL,
  `idAutora` int(11) DEFAULT NULL,
  `zdjeciePodcastu` text COLLATE utf8mb4_polish_ci NOT NULL,
  `idKategorii` int(11) NOT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `podcasty`
--

INSERT INTO `podcasty` (`Id`, `tytul`, `opis`, `idAutora`, `zdjeciePodcastu`, `idKategorii`, `data`) VALUES
(1, 'Kryminatorium ', 'Audycja prowadzona jest od 2018 roku przez Marcina Myszkę, który wykorzystuje w niej muzykę, efekty dźwiękowe oraz głos aktorów.\r\n\r\nTo blisko 200 odcinków przedstawiających przerażające sprawy kryminalne, które w pewnym czasie wstrząsnęły Polską. Słynne zaginięcia, sylwetki znanych morderców, wreszcie dawne zbrodnie odkurzane w ramach Archiwum X. Jednym słowem – Kryminatorium.', 1, 'Kryminatorium', 1, '2020-11-01'),
(2, 'Piąte: nie zabijaj', 'Justyna Mazur prezentuje w niej autorski wybór najbardziej intrygujących spraw kryminalnych. Ale wstrząsające opowieści to nie wszystko – autorka zastanawia się również nad podłożem psychologicznym opisywanych spraw.', 2, 'Piąte_nie_zabijaj', 1, '2022-11-01'),
(3, 'Zbrodnie Zapomniane', 'Zbrodnie Zapomniane to podcast i kanał na YouTube prezentujący historie true crime. Autorka skupia się na morderstwach, porwaniach i zaginięciach, które – jak sama nazwa wskazuje – dziś są już nieco zapomniane. Głównie dlatego, że miały miejsce wiele lat temu.', 3, 'Zbrodnie_Zapomniane', 1, '2022-11-01'),
(4, 'Olga Herring: Polskie True Crime & Mystery', 'To polski podcast kryminalny z gatunku true crime i mystery. Olga Herring skupia się w nim na sprawach kryminalnych z całego świata, które do tej pory nie zostały wyjaśnione. Duży nacisk położony jest na rzetelny research, dzięki czemu możemy posłuchać o najdrobniejszych szczegółach dotyczących opisywanych zbrodni.', 4, 'Olga_Herring_Polskie_True_Crime_Mystery', 1, '2022-11-01'),
(5, 'Podsiadło Kotarski ', 'Podcast Dawida i Radka.', 5, 'Podsiadło_Kotarski_Podcast', 2, '2023-01-01'),
(6, 'Sekielski Online', 'Rozmowy na ważne tematy, nie tylko te polityczne z ciekawymi ludźmi, którzy mają coś istotnego do powiedzenia. Bez cenzury, ale zawsze z kulturą. Bez bicia piany, ale z dociekliwością.', 6, 'Sekielski_Online', 2, '2022-01-01'),
(7, 'Nie tylko o prawach człowieka', 'W podcaście dyskutuję o najważniejszych wydarzeniach z zakresu praw człowieka, praworządności i standardów demokratycznych - w Polsce i na świecie.', 7, 'Nie_tylko_o_prawach', 2, '2022-11-01'),
(8, 'Ja i moje przyjaciółki idiotki', 'Złamane serca, miłosne rozczarowania i historie bez happy-endu. Czyli historie Twoje i innych mądrych dziewczyn, które miały odwagę się głupio zakochać, a teraz umieją się z tego śmiać.', 8, 'Ja_i_moje_przyjaciółki_idiotki', 3, '2022-11-01'),
(9, 'Tu Okuniewska', 'Tu Okuniewska, prosto z piwniczki w Reykjaviku. Osobiste dramaty i komedie, wieczne zaczynanie od początku, nocne przemyślenia i rzutnik zorzy polarnej, czyli dźwiękowy zapis tego o czym myślę.', 8, 'Tu_Okuniewska', 3, '2022-12-01'),
(10, 'Impoderabilia - Karol Paciorek', 'Rozmawiam z moimi gośćmi długo i szczerze.', 9, 'Impoderabilia_Karol_Paciorek', 3, '2022-11-01'),
(11, 'Stand-Up Polska', 'Zbór Stand-upow polskich twórców', 10, 'Stand-Up_Polska_logo', 3, '2023-11-02'),
(12, 'Stacja Zmiana', 'Katarzyna Michałowska już od ponad czterech lat nagrywa dla nas rozmowy z tymi, którzy nie boją się zmian, a uważają je za drzwi do lepszego świata. Z tych rozmów dowiemy się niemal wszystkiego. Tematy, związane z życiem zawodowym, osobistym, psychologią, filozofią, hobby, technologią, zdrowiem, zapełniają podcastowe rozmowy. Jeśli więc brakuje Wam motywacji, inspiracji, sił do działania i zmieniania rzeczywistości własnej i społecznej, uruchomcie te rozmowy. Naprawdę warto, bo jeśli już zdecydujecie się na zmiany, goście podcastu podpowiedzą Wam również, jak je wprowadzić małymi krokami, jak przez nie przebrnąć, jak reagować, jeśli nie zaakceptuje ich Wasze otoczenie.', 11, 'Stacja_Zmiana', 5, '2022-11-01'),
(13, 'Dział Zagraniczny', 'Dział Zagraniczny to podcast o wydarzeniach na świecie, o których w polskich mediach słychać niewiele, lub wcale.', 12, 'Dział_Zagraniczny', 5, '2022-11-01'),
(14, 'PrzygodowAnia', 'Podcast PrzygodowAnia to miejsce, gdzie rozmawiamy o podróżach, przygodach i życiu za granicą.', 13, 'PrzygodowAnia_logo', 8, '2022-11-01'),
(15, 'Łosiologia - nordyckie spacery', 'Łosiologia to podcast prowadzony przez Alicję. To Polka mieszkająca w Szwecji, która przybliża słuchaczom skandynawskie życie.\r\n\r\nAlicja zaprasza do rozmowy gości z innych rejonów Szwecji, aby razem z nimi pogawędzić o podróżach i życiu wśród… tytułowych łosiów. Dużo jest tu mowy o zwyczajnej, codziennej egzystencji, szwedzkich zwyczajach, a także trudnościach życia na emigracji.', 14, 'Łosiologia_-_nordyckie_spacery', 8, '2022-11-01'),
(16, 'Kaukazomaniacy', 'Kaukazomaniacy - podcast o Gruzji, Armenii, Azerbejdżanie i Kaukazie Północnym. Będzie o historii, o kulturze, o kaukaskich opowieściach, języku, turystyce i innych tematach z Kaukazem związanych.', 15, 'Kaukazomaniacy_logo', 8, '2022-11-01');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `Id` int(11) NOT NULL,
  `imie` varchar(256) COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwisko` varchar(256) COLLATE utf8mb4_polish_ci NOT NULL,
  `login` varchar(256) COLLATE utf8mb4_polish_ci NOT NULL,
  `email` varchar(256) COLLATE utf8mb4_polish_ci NOT NULL,
  `hash_pass` text COLLATE utf8mb4_polish_ci NOT NULL,
  `czyAdmin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`Id`, `imie`, `nazwisko`, `login`, `email`, `hash_pass`, `czyAdmin`) VALUES
(1, 'John', 'Doe', 'johndoe', 'johndoe@example.com', 'password1', 1),
(2, 'Jane', 'Doe', 'janedoe', 'janedoe@example.com', 'password2', 1),
(3, 'Bob', 'Smith', 'bobsmith', 'bobsmith@example.com', 'password3', 0),
(4, 'Amy', 'Johnson', 'amyjohnson', 'amyjohnson@example.com', 'password4', 0),
(5, 'Mike', 'Williams', 'mikewilliams', 'mikewilliams@example.com', 'password5', 0),
(6, 'Emily', 'Jones', 'emilyjones', 'emilyjones@example.com', 'password6', 0),
(7, 'sad', 'sda', 's', 'sad@!', '$2y$10$Dl3QqSroLlpyy43tT1TkJOssCGC7VIBiPiisIGeG3H3oZsTsfqtiq', 0),
(8, '', '', '', '', '$2y$10$ssv/5sMDeGuxA7s49MkoKujtNWsaSTA5tcFUnUe2IaqnbtnT40dmW', 0),
(9, 'a', 'a', 'a', '', '$2y$10$s7ybq7nVeedNFtanCcOADezmZI3sG/M6OR0JlSqxdE/ssf/8VAh.K', 0),
(10, '', '', '', '', '$2y$10$SBNzfBYQVmvHbkWvoENszu8lAxwU/XhhCTL52KJLC9DLMTrOu.ceS', 0),
(11, '', '', '', '', '$2y$10$/ViNbWul6hNCw/Dd.R0pVer/BSxDRtS6Hv/bfkznaympu8QEolqQG', 0),
(12, '', '', '', '', '$2y$10$BFu1nfq5/8IkScDZwlFfluGU2gB1qNbGNPsagcf05zpy3ISQ5NT5u', 0),
(13, 'v', 'v', 'v', 'a@wa.pl', '$2y$10$ZD51sdLc49FjExgyLlNaE.Y2e/R.aLNLMSlxYBIqbTnaylBCEjU92', 0),
(14, '', '', '', '', '$2y$10$Egs7hov8h.g5wBnSAW3NuuDZIVEGKaY90jorY5W5YOnMIaHNtS3Oe', 0),
(15, '', '', '', '', '$2y$10$sW99gtFfw7NgNheEUZ7DfOxL21Z8ODtojZuHayatxu83vhIdFrSw2', 0),
(16, '', '', '', '', '$2y$10$uXS0bEB0OWKRzDr6U57yA.AVB5JUB4gDfbwejGI50YL4DKN4JaHQi', 0),
(17, '', '', '', '', '$2y$10$SC59H2lbpLgV9mI.6d4v1.TZ6gfndtNGD/rdAkny4FRr1vDROA23W', 0),
(18, '', '', '', '', '$2y$10$ipacFl9bPBbSsNGDO2T2.utitjYPcf3drJH0aC2v0K8fhaRr51L8i', 0),
(19, '', '', '', '', '$2y$10$0/wQTfr9yzH7cyJI705Ll.BX.9rFtHMlDNRRgrvJoj.JxB.m2PGgK', 0),
(20, '', '', '', '', '$2y$10$JWVCUC9vyHq26D.2loou7u3KA/2RiNZRgsPsrdJRi7A8VgysQNffK', 0),
(21, '', '', '', '', '$2y$10$RM2bhvbgBb8CIHCKVfRM7usApBOdB7KQRAuFOZLlUC4yCi4gL0d.2', 0),
(22, '', '', '', '', '$2y$10$/k.VhpO/fBtz4F5UCUqU.OwSXjF9HMVXyQKNaQ4C9i8dZDp1RmxDa', 0),
(23, '', '', '', '', '$2y$10$fZnLfmxw/5XGZ.yiCXdfg.pUQ70sgrV4GMa0BE6KJ..ifTNW./69W', 0),
(24, '', '', '', '', '$2y$10$7HMPu7EVK1yit1mVKwuCIuJ9Zgrg9zXAHgiV4JXqQ04mGtVTw3hsm', 0),
(25, '', '', '', '', '$2y$10$SpglThiC/1ARifCOOHYtf.wEvea80t5lQzFsjFdCQIHKU9i1jW.KW', 0),
(26, '', '', '', '', '$2y$10$86d8WkJvSzf9qUMhThrfSuUyKl9XOnoGn7XRpGgRWqOYOdlP/bSNW', 0),
(27, '', '', '', '', '$2y$10$HvdirB5zjDTWAf4oqlwdnuGpePbmxMzjYJyAs013MBOJgA/ziaGCO', 0),
(28, '', '', '', '', '$2y$10$/328kdi3RJgG7RlcdX.FFunyIp.SdzG5R94WtKRRVWB.EcGWebHdy', 0),
(29, '', '', '', '', '$2y$10$THfnl094Na1pAhb0vZRIf.F.2BVCPzIz2azwh4FJei6wJfZB3smOy', 0),
(30, '', '', '', '', '$2y$10$iQNeltrKF2.gKdZRCiMI4e5qc.1uokoHJ3lWx.U6QhOTxaUPLsNai', 0),
(31, '', '', '', '', '$2y$10$V2ll.DNec70m6gYHVVDTKOo.tsb.CwiWMjlIAVYO8F2uskkRK5e.C', 0),
(32, '', '', '', '', '$2y$10$9BrZ3UFkQyM7mYdVp1ovkejs3HWvTb/faxPjpnCt.O3b6AzbIrELa', 0),
(33, '', '', '', '', '$2y$10$fDlZKL18SqH1QcKra1o77Og/Z4sBTFRh9Zsc001alYRRlQ3A/AZnm', 0),
(34, '', '', '', '', '$2y$10$nyKkgwfcCiDJFF8/QtYvEeDO5dvDLpjcftOqKHdcWeEQZaOn5ZZae', 0),
(35, '', '', '', '', '$2y$10$a2zGcn3wNCYOb5879Ut5PO5pk01wg5k5EoPJ85DSYIUTdYEnBahcW', 0),
(36, '', '', '', '', '$2y$10$Rfe7FwPwfIuSgUqR/Q.nFev2sKthssi8/SX1rXXtOrzAIZY7D8.Fi', 0),
(37, '', '', '', '', '$2y$10$jipxhG5qGdvNEz/Hw.MlSOiB5kFyj7HleC9x9xfA.HMH0vwpL6iVe', 0),
(38, '', '', '', '', '$2y$10$9.nkV3d.EMcExMk9/yGOIupfdunbgvXdG34j08idkLSevsHdz5M0a', 0),
(39, '', '', '', '', '$2y$10$maspH8Wfku6SU4zDIO9Z6.gy22UhYTdvmw5lR4OpwBMBH5Xu.7hFS', 0),
(40, '', '', '', '', '$2y$10$v9dueSvc/YK4MBiwOEKZUed6kO9eVg29/6LrJYjSZ1JxFOp66Z8iW', 0),
(41, '', '', '', '', '$2y$10$cM2zIgzl6inGPouDT2G5NufFyOlBPS5H/K/LkTlc0cARy1UzpRkz6', 0),
(42, '', '', '', '', '$2y$10$5Bd/ptZguSlye5//toIYKOXp8m9b7e5ahS0ektokO8d8HeJ.T30Bi', 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `autorzy`
--
ALTER TABLE `autorzy`
  ADD PRIMARY KEY (`Id`);

--
-- Indeksy dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`Id`);

--
-- Indeksy dla tabeli `komentarzedoautorow`
--
ALTER TABLE `komentarzedoautorow`
  ADD PRIMARY KEY (`Id`);

--
-- Indeksy dla tabeli `komentarzedopodcastow`
--
ALTER TABLE `komentarzedopodcastow`
  ADD PRIMARY KEY (`Id`);

--
-- Indeksy dla tabeli `newsy`
--
ALTER TABLE `newsy`
  ADD PRIMARY KEY (`Id`);

--
-- Indeksy dla tabeli `oceny`
--
ALTER TABLE `oceny`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `idPodcastu` (`idPodcastu`,`idUzytkownika`);

--
-- Indeksy dla tabeli `podcasty`
--
ALTER TABLE `podcasty`
  ADD PRIMARY KEY (`Id`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `autorzy`
--
ALTER TABLE `autorzy`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `komentarzedoautorow`
--
ALTER TABLE `komentarzedoautorow`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302885;

--
-- AUTO_INCREMENT dla tabeli `komentarzedopodcastow`
--
ALTER TABLE `komentarzedopodcastow`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT dla tabeli `newsy`
--
ALTER TABLE `newsy`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `oceny`
--
ALTER TABLE `oceny`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT dla tabeli `podcasty`
--
ALTER TABLE `podcasty`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
