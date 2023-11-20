-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 18, 2023 alle 20:25
-- Versione del server: 10.4.27-MariaDB
-- Versione PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourguide`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `evento`
--

CREATE TABLE `evento` (
  `id` int(11) NOT NULL,
  `guidedis` varchar(255) DEFAULT NULL,
  `luogo` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `orario` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `evento`
--

INSERT INTO `evento` (`id`, `guidedis`, `luogo`, `month`, `orario`, `day`) VALUES
(1, 'Luigi Iaccarino', 'Colosseo', 'MAY', '9.00 AM-2.00 PM', '19'),
(2, 'Rita Pisani', 'Torre di Pisa', 'MAY', '9.30 AM-2.30 PM', '20'),
(202, 'Giuliana De Gregori, Luigi Iaccarino', 'Castel Del Monte', 'MAY', '9.30 AM- 1.30 PM', '19'),
(203, 'Corrado De Tito, Roxana Enacache', 'Scavi di Pompei', 'MAY', '9.30 AM- 1.30 PM', '24');

-- --------------------------------------------------------

--
-- Struttura della tabella `evento_seq`
--

CREATE TABLE `evento_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `evento_seq`
--

INSERT INTO `evento_seq` (`next_val`) VALUES
(301);

-- --------------------------------------------------------

--
-- Struttura della tabella `guida`
--

CREATE TABLE `guida` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `numberp` int(11) NOT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `guida`
--

INSERT INTO `guida` (`id`, `email`, `foto`, `numberp`, `surname`, `description`, `nome`) VALUES
(0, 'luigiiaccarino@gmail.com', 'https://i.postimg.cc/zBfCs7Nf/foto-curriculum-2.png', 354887518, 'Iaccarino', 'Sono guida turistica e accompagnatore turistico con una formazione universitaria storico-artistica. Dal 2011 mi occupo di didattica museale, lavorando presso diversi siti e musei di Roma per un pubblico di adulti e bambini.', 'Luigi'),
(1, 'detito.corrado1998@gmail.com', 'https://i.postimg.cc/qMkc81P5/1680180612486.jpg', 333458778, 'De Tito', 'Ho iniziato la mia carriera come archeologo classico e topografo antico. Dopo aver lavorato in scavi archeologici come quello della coenatio rotunda, la sala da pranzo girevole dell’imperatore Nerone sul Palatino, mi sono concentrato sul lavoro da guida turistica.', 'Corrado'),
(2, 'ritapisani@gmail.com', 'https://i.postimg.cc/Y93WCWps/b.jpg', 398558745, 'Pisani', 'Guida turistica della regione Umbria abilitata per il francese. Sono ormai più di dieci anni che svolgo il mio lavoro con grande passione, accompagnando gruppi italiani, francesi e belgi, alla scoperta della mia regione e delle sue bellezze.', 'Rita'),
(3, 'roxanaenacache@gmail.com', 'https://i.postimg.cc/vTfckx4B/roxana2.jpg', 311879558, 'Enacache', 'Ho iniziato a lavorare come guida turistica dopo l\'Università, dal 2019 al 2021, e alla fine del 2020 ho iniziato a raccontare la Sardegna, quasi per gioco, anche sui social, cosa che mi ha letteralmente cambiato la vita.', 'Roxana'),
(152, 'giulianadegregori@gmail.com', 'https://i.ibb.co/0rjq3XP/giuliana1.jpg', 35884755, 'De Gregori', 'La mia missione è quella di offrirvi esperienze uniche e autentiche durante i vostri viaggi. Sono una persona curiosa e sempre alla ricerca di luoghi nascosti e poco conosciuti, che vi faranno scoprire la vera essenza di una destinazione. Con me come guida, non solo visiterete i principali punti di interesse, ma anche i luoghi meno battuti, dove potrete sperimentare la cultura locale, incontrare le persone del posto e assaporare la cucina tradizionale.', 'Giuliana');

-- --------------------------------------------------------

--
-- Struttura della tabella `guida_recensione`
--

CREATE TABLE `guida_recensione` (
  `id` int(11) NOT NULL,
  `guida_recensione` varchar(255) DEFAULT NULL,
  `guida_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `guida_recensione_seq`
--

CREATE TABLE `guida_recensione_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `guida_recensione_seq`
--

INSERT INTO `guida_recensione_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Struttura della tabella `guida_seq`
--

CREATE TABLE `guida_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `guida_seq`
--

INSERT INTO `guida_seq` (`next_val`) VALUES
(251);

-- --------------------------------------------------------

--
-- Struttura della tabella `recensione`
--

CREATE TABLE `recensione` (
  `id` int(11) NOT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `titolo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `recensione`
--

INSERT INTO `recensione` (`id`, `rating`, `review`, `titolo`) VALUES
(202, '4', 'La guida e\' stato molto esaustiva nel suo percorso informativo. E\' stato divertente visitare questa bellissima struttura con lei. La visitero\' dinuovo!', 'Castel Del Monte - Giuliana de Gregori'),
(203, '5', 'E\' stato molto piacevole fare questa visita! ', 'Scavi di Pompei- Roxana Enacache'),
(204, '3', 'Bello', 'Antonio - Scavi di Pompei'),
(205, '5', 'Ragazzo simpatico, ci ha portati a mangiare anche la carbonara! 5 stelle a te', 'Colosseo - Luigi Iaccarino');

-- --------------------------------------------------------

--
-- Struttura della tabella `recensione_seq`
--

CREATE TABLE `recensione_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `recensione_seq`
--

INSERT INTO `recensione_seq` (`next_val`) VALUES
(301);

-- --------------------------------------------------------

--
-- Struttura della tabella `regione`
--

CREATE TABLE `regione` (
  `id` int(11) NOT NULL,
  `nome_regione` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `regione_seq`
--

CREATE TABLE `regione_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `regione_seq`
--

INSERT INTO `regione_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Struttura della tabella `usert`
--

CREATE TABLE `usert` (
  `id` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `usert`
--

INSERT INTO `usert` (`id`, `password`, `username`) VALUES
(1, 'walter1', 'walter'),
(2, 'roxana1', 'roxana');

-- --------------------------------------------------------

--
-- Struttura della tabella `usert_seq`
--

CREATE TABLE `usert_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `usert_seq`
--

INSERT INTO `usert_seq` (`next_val`) VALUES
(1);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `guida`
--
ALTER TABLE `guida`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `guida_recensione`
--
ALTER TABLE `guida_recensione`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2vyya39lnvf0myugklhof5lt7` (`guida_id`),
  ADD KEY `FK7vdlhg5oueostd195ln7so1ly` (`user_id`);

--
-- Indici per le tabelle `recensione`
--
ALTER TABLE `recensione`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `regione`
--
ALTER TABLE `regione`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `usert`
--
ALTER TABLE `usert`
  ADD PRIMARY KEY (`id`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `guida_recensione`
--
ALTER TABLE `guida_recensione`
  ADD CONSTRAINT `FK2vyya39lnvf0myugklhof5lt7` FOREIGN KEY (`guida_id`) REFERENCES `guida` (`id`),
  ADD CONSTRAINT `FK7vdlhg5oueostd195ln7so1ly` FOREIGN KEY (`user_id`) REFERENCES `usert` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
