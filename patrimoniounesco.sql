-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Creato il: Nov 20, 2023 alle 11:31
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
-- Database: `patrimoniounesco`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `immagine`
--

CREATE TABLE `immagine` (
  `id` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `patrimonio_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `immagine`
--

INSERT INTO `immagine` (`id`, `link`, `patrimonio_id`) VALUES
(1, 'immagini/Colosseo1.jpg', 1),
(3, 'immagini/Colosseo3.jpg', 1),
(6, 'immagini/Pantheon1.jpg', 2),
(7, 'immagini/Pantheon2.jpg', 2),
(8, 'immagini/Pantheon3.jpg', 2),
(9, 'immagini/Pantheon4.jpg', 2),
(10, 'immagini/Necropoli1.jpg', 3),
(11, 'immagini/Necropoli2.jpg', 3),
(12, 'immagini/Adriana1.jpg', 4),
(13, 'immagini/Adriana2.jpg', 4),
(14, 'immagini/Pisa1.jpg', 5),
(15, 'immagini/Pisa2.jpg', 5),
(16, 'immagini/CastelDelMonte1.jpg', 6),
(17, 'immagini/CastelDelMonte2.jpg', 6),
(18, 'immagini/ReggiaDiCaserta2.jpg', 7),
(19, 'immagini/ReggiaDiCaserta3.jpg', 7),
(20, 'immagini/ResidenzeSabaude1.jpg', 8),
(21, 'immagini/ResidenzeSabaude2.jpg', 8),
(22, 'immagini/SantaMariaDelFiore1.jpg', 9),
(23, 'immagini/SantaMariaDelFiore2.jpg', 9),
(24, 'immagini/ValleDeiTempli1.jpg', 10),
(25, 'immagini/ValleDeiTempli2.jpg', 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `immagine_seq`
--

CREATE TABLE `immagine_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `immagine_seq`
--

INSERT INTO `immagine_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Struttura della tabella `patrimonio`
--

CREATE TABLE `patrimonio` (
  `id` int(11) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `history` varchar(2000) DEFAULT NULL,
  `immagine_patrimonio` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `model3d` varchar(2000) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `video` varchar(2000) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `immagine_patrimonio2` varchar(255) DEFAULT NULL,
  `map` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `patrimonio`
--

INSERT INTO `patrimonio` (`id`, `city`, `description`, `history`, `immagine_patrimonio`, `label`, `model3d`, `name`, `video`, `year`, `region_id`, `type_id`, `immagine_patrimonio2`, `map`) VALUES
(1, 'Roma (RM)', 'Il Colosseo è diventato il più grande anfiteatro romano, con una struttura ellittica lunga 188 metri, larga 156 metri ed alta 57 metri. Fatto di mattoni e ricoperto in travertino è stato diviso in cinque livelli con una capacità di oltre 50.000 persone.', 'Il Colosseo, originariamente conosciuto come Anfiteatro Flavio (in latino: Amphitheatrum Flavium) o semplicemente Amphitheatrum (in italiano: Anfiteatro), situato nel centro della città di Roma, è il più grande anfiteatro romano del mondo (in grado di contenere un numero di spettatori stimato tra 50 000 e 87 000). È il più importante anfiteatro romano, nonché il più imponente monumento dell\\\'antica Roma che sia giunto fino a noi. Inserito nel 1980 nella lista dei Patrimoni dell\\\'umanità dell\\\'UNESCO - insieme all\\\'intero Centro storico di Roma, alle Zone extraterritoriali della Santa Sede in Italia e alla Basilica di San Paolo fuori le mura - nel 2007, unico monumento europeo, è stato anche inserito fra le Nuove sette meraviglie del mondo a seguito di un concorso organizzato da New Open World Corporation (NOWC). Il nome <<Colosseo>> si diffuse solo nel Medioevo, e deriva dalla deformazione popolare dell\\\'aggettivo latino \\\'colosseum\\\' (traducibile in \\\'colossale\\\', come appariva nell\\\'Alto Medioevo tra le casette a uno o due piani) o, più probabilmente, dalla vicinanza della colossale statua acrolitica di Nerone che sorgeva nei pressi.[4] Presto l\\\'edificio divenne simbolo della città imperiale, espressione di un\\\'ideologia in cui la volontà celebrativa giunge a definire modelli per lo svago e il divertimento del popolo. Anticamente era usato per gli spettacoli dei gladiatori e altre manifestazioni pubbliche (spettacoli di caccia, battaglie navali, rievocazioni di battaglie famose e drammi basati sulla mitologia classica). La tradizione che lo vuole luogo di martirio di cristiani è infondata[5]. Non più in uso dopo il VI secolo, l\\\'enorme struttura venne riutilizzata nei secoli, anche come cava di materiale. Oggi è un simbolo della città di Roma e una delle maggiori attrazioni turistiche sotto forma di monumento archeologico regolarmente visitabile.', 'immagini/colosseo.jpg', 'presentazione', 'https://sketchfab.com/models/b93fe10726ed41cc8868b9b02b9cc84e/embed', 'COLOSSEO', 'https://www.youtube.com/embed/56tlOtVn40c', 1980, 7, 2, 'immagini/Colosseo10.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2970.12307418006!2d12.48965597602122!3d41.890210171240426!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132f61b6532013ad%3A0x28f1c82e908503c4!2sColosseo!5e0!3m2!1sit!2sit!4v1684330947377!5m2!1sit!2sit'),
(2, 'Roma (RM)', 'Il Pantheon (in greco antico: Πάνθεων [ἱερόν], Pántheon [hierón], «[tempio] di tutti gli dei»), in latino classico Pantheum, è un edificio della Roma antica situato nel rione Pigna nel centro storico, costruito come tempio dedicato a tutte le divinità passate, presenti e future.', 'Fu fondato nel 27 a.C. dall\\\'arpinate Marco Vipsanio Agrippa, genero di Augusto. Agrippa lo dedicò alla dea Cibele e a tutti gli dei. Fu fatto ricostruire dall\\\'imperatore Adriano presumibilmente dal 112-115 fino al 124 d.C. circa, dopo che gli incendi dell\\\'80 e del 110 d.C. avevano danneggiato la costruzione precedente di età augustea. È composto da una struttura circolare unita a un pronao in colonne corinzie (otto frontali e due gruppi di quattro in seconda e terza fila) che sorreggono un frontone. La grande cella circolare, detta rotonda, è cinta da spesse pareti in muratura e da otto grandi piloni su cui è ripartito il peso della caratteristica cupola emisferica in calcestruzzo che ospita al suo apice un\\\'apertura circolare detta oculo, che permette l\\\'illuminazione dell\\\'ambiente interno. L\\\'altezza dell\\\'edificio calcolata all\\\'oculo è pari al diametro della rotonda, caratteristica che rispecchia i criteri classici di architettura equilibrata e armoniosa. A quasi due millenni dalla sua costruzione, la cupola intradossata del Pantheon è ancora oggi una delle cupole più grandi di tutto il mondo, e nello specifico la più grande costruita in calcestruzzo romano. All\\\'inizio del VII secolo il Pantheon venne donato dall\\\'imperatore Foca al papa Bonifacio IV e fu convertito in basilica cristiana chiamata Santa Maria della Rotonda o Santa Maria ad Martyres, il che gli ha consentito di sopravvivere quasi integro alle spoliazioni inflitte dai papi agli edifici della Roma classica. Gode del rango di basilica minore ed è l\\\'unica basilica di Roma oltre a quelle patriarcali ad avere ancora un capitolo. Gli abitanti di Roma lo chiamavano popolarmente la Rotonna (<<la Rotonda>>), da cui derivano anche il nome della piazza e della via antistanti.', 'immagini/PantheonPrincipale.jpg', 'Romana', 'https://sketchfab.com/models/2f4240b5bb8c42528098ab5073dcee7e/embed', 'PANTHEON', 'https://www.youtube.com/embed/CyGLbsJ_iKk', 1980, 7, 2, 'immagini/Pantheon10.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1484.8643672515846!2d12.475617622925489!3d41.898690628890876!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132f604f678640a9%3A0xcad165fa2036ce2c!2sPantheon!5e0!3m2!1sit!2sit!4v1684331337444!5m2!1sit!2sit'),
(3, 'Roma (RM)', 'Le necropoli etrusche sono complessi di tombe e sepolture dell\'antica civiltà etrusca, situati fuori dalle antiche città etrusche. Questi siti funerari erano considerati vere e proprie città dei morti, con tombe e monumenti che testimoniano l\'importanza data agli antenati nella cultura etrusca. Le necropoli erano solitamente posizionate su colline o pianure panoramiche e rappresentano un importante patrimonio storico-archeologico dell\'Italia.', 'La storia delle necropoli etrusche a Roma risale al periodo in cui gli Etruschi influenzarono la regione prima dell\'ascesa di Roma come potenza dominante. Gli Etruschi, un popolo italico proveniente dalla regione dell\'odierna Toscana, stabilirono insediamenti lungo il fiume Tevere, compresa l\'area che sarebbe diventata Roma.\r\n\r\nDurante il periodo etrusco, furono create diverse necropoli intorno a Roma per ospitare le tombe dei defunti. Queste necropoli, situate nelle zone periferiche della città, testimoniano l\'importanza che gli Etruschi attribuivano al culto degli antenati e alla vita dopo la morte.\r\n\r\nLe necropoli etrusche a Roma erano costituite da varie tipologie di tombe, tra cui tumuli (mound) e tombe a camera. I tumuli erano grandi tumuli di terra che coprivano le camere funerarie sotterranee, mentre le tombe a camera erano costruzioni in pietra o tufo, spesso decorate con rilievi e affreschi.\r\n\r\nDurante il periodo di transizione tra l\'era etrusca e l\'ascesa di Roma, molte delle necropoli etrusche a Roma subirono influssi culturali romani e furono gradualmente assimilate all\'interno del territorio romano.\r\n\r\nOggi, le necropoli etrusche a Roma, come la Necropoli di Banditaccia a Cerveteri e la Necropoli della Via Cassia, sono importanti siti archeologici che offrono preziose informazioni sulla cultura, le pratiche funerarie e l\'arte degli Etruschi nella regione.', 'immagini/NecropoliPrincipale.jpg', 'Etrusca', NULL, 'NECROPOLI DELLA BANDITACCIA', 'https://www.youtube.com/embed/qPeETyz8J94', 2004, 7, 2, 'immagini/Necropoli10.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2964.694378542553!2d12.100914676027342!3d42.00683417122791!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132f536b5ff3e8d5%3A0xafd9c65f12522a7b!2sNecropoli%20della%20Banditaccia!5e0!3m2!1sit!2sit!4v1684331630133!5m2!1sit!2sit'),
(4, 'Roma (RM)', 'Villa Adriana, costruita da Adriano nel II secolo d.C., è una sontuosa residenza imperiale a Tivoli, vicino a Roma. Il vasto complesso include lussuose residenze, bagni, teatri, templi e giardini, con un\'architettura eclettica che riflette la grandezza dell\'Impero Romano. È un importante sito archeologico romano.', 'La storia di Villa Adriana risale al II secolo d.C., quando l\'imperatore romano Adriano decise di costruire una sontuosa residenza per sé stesso. Adriano era un grande amante dell\'arte, della cultura e dell\'architettura, e desiderava creare un luogo che combinasse elementi di diverse culture e stili architettonici.\r\n\r\nLa villa fu costruita a Tivoli, nelle vicinanze di Roma, su un vasto terreno di oltre 120 ettari. Il complesso comprendeva numerosi edifici e strutture, tra cui residenze, terme, teatri, templi, biblioteche, giardini e molto altro. La villa fu progettata per riflettere la varietà di influenze culturali che Adriano aveva incontrato durante i suoi viaggi in tutto l\'Impero Romano, come la Grecia, l\'Egitto e l\'Asia Minore.\r\n\r\nVilla Adriana divenne il rifugio personale di Adriano, dove poteva godere di tranquillità, lusso e cultura. Fu anche un centro di potere e amministrazione, con sale per incontri politici e ampi spazi per gli affari di Stato.\r\n\r\nDopo la morte di Adriano nel 138 d.C., la villa subì diverse trasformazioni e alterazioni nel corso dei secoli successivi. Fu abbandonata e saccheggiata durante le invasioni barbariche del V secolo d.C. e successivamente fu oggetto di scavi e ricerche archeologiche.\r\n\r\nOggi, Villa Adriana è uno dei più importanti siti archeologici romani e un\'attrazione turistica di grande rilievo. La sua architettura eclettica e la vastità del complesso testimoniano la grandezza e il lusso dell\'Impero Romano, nonché il gusto e la passione artistica di Adriano.', 'immagini/AdrianaPrincipale.jpeg', 'Romana', NULL, 'VILLA ADRIANA', 'https://www.youtube.com/embed/DJty96FkpT4', 1999, 7, 2, 'immagini/Adriana10.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5935.435263735758!2d12.770159395405521!3d41.94191858493887!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132f78efedc9988d%3A0x45f29239cf2a42c4!2sVilla%20Adriana%2C%20Tivoli%20RM!5e0!3m2!1sit!2sit!4v1684336030001!5m2!1sit!2sit'),
(5, 'Pisa (PI)', 'La Torre di Pisa è un\'icona mondiale situata a Pisa, in Italia. È una torre campanaria inclinata costruita nel XII secolo. Alta 56 metri, è fatta di marmo bianco e presenta una decorazione architettonica affascinante. La sua inclinazione è diventata un tratto distintivo e l\'ha resa famosa in tutto il mondo.', 'La storia della Torre di Pisa risale al XII secolo quando la sua costruzione ebbe inizio. La torre faceva parte di un complesso architettonico che comprendeva la Cattedrale di Pisa, il Battistero e il Camposanto. Tuttavia, già durante la costruzione, si notò che la torre stava lentamente inclinandosi verso sud.\r\n\r\nLa causa dell\'inclinazione della torre è da attribuire a un errore nella progettazione e alla fondazione instabile su terreni sabbiosi. Durante i lavori, l\'inclinazione iniziò ad aumentare e fu necessario sospendere la costruzione temporaneamente. Durante questa pausa, che durò diversi decenni, i piani successivi furono progettati con un\'inclinazione leggermente opposta per cercare di compensare l\'errore e stabilizzare la struttura.\r\n\r\nLa torre fu infine completata nel XIV secolo, ma l\'inclinazione era ormai diventata un tratto distintivo e riconoscibile. Nel corso dei secoli, la torre continuò a inclinarsi gradualmente e furono intrapresi vari interventi di stabilità per prevenire un possibile collasso. Nel corso degli anni, sono state effettuate diverse opere di restauro e consolidamento per preservare la torre.\r\n\r\nOggi, la Torre di Pisa è un\'importante attrazione turistica che attira visitatori da tutto il mondo. Nel 1987, è stata inclusa nella lista dei Patrimoni dell\'Umanità dell\'UNESCO. Gli sforzi di conservazione e il lavoro di ingegneri e esperti hanno permesso di stabilizzare la torre e garantirne la sicurezza per i visitatori. La sua inclinazione caratteristica, insieme alla sua storia affascinante, la rendono un simbolo iconico di Pisa e un\'attrazione imperdibile per i turisti.', 'immagini/PisaPrincipale.jpg', 'presentazione', 'https://sketchfab.com/models/b2c84fa2cfe643d98b49048c0531404b/embed', 'TORRE DI PISA', 'https://www.youtube.com/embed/toaNqLNovks', 1987, 16, 2, 'immagini/Pisa10.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d11533.612453958167!2d10.377542587158198!3d43.722952!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12d591a6c44e88cd%3A0x32eca9b1d554fc03!2sTorre%20di%20Pisa!5e0!3m2!1sit!2sit!4v1684334405172!5m2!1sit!2sit'),
(6, 'Barletta-Andria-Trani (BAT)', 'Castel del Monte è una fortezza medievale situata in Puglia, Italia. Costruito nel XIII secolo da Federico II di Svevia, ha una forma ottagonale con otto torri uguali. È un esempio unico di architettura romanica, gotica e bizantina. Oggi è un\'attrazione turistica popolare e un sito del patrimonio mondiale dell\'UNESCO.', 'Castel del Monte è una fortezza storica situata in Puglia, Italia, e la sua storia è avvolta da misteri e speculazioni. Fu commissionata dall\'imperatore Federico II di Svevia nel XIII secolo e costruita tra il 1240 e il 1250. Federico II era un sovrano eclettico, noto per il suo interesse per la scienza, l\'architettura e la cultura.\r\n\r\nLa fortezza è stata costruita su una collina isolata nella regione della Murgia, utilizzando la caratteristica pietra calcarea locale. Castel del Monte presenta una forma ottagonale unica, con otto torri identiche posizionate agli angoli. L\'architettura combina elementi romanici, gotici e bizantini, creando uno stile unico e affascinante.\r\n\r\nLa vera funzione di Castel del Monte è ancora oggetto di dibattito tra gli storici. Non ci sono documenti storici che confermino il suo scopo originale. Alcune teorie suggeriscono che potrebbe essere stato utilizzato come residenza di caccia o come simbolo del potere di Federico II. Altri ipotizzano che potrebbe aver avuto un significato simbolico o essere stato utilizzato per scopi cerimoniali o difensivi.\r\n\r\nDopo la morte di Federico II, il castello ha subito varie vicissitudini. È passato attraverso diverse famiglie nobiliari e ha subito modifiche e restauri nel corso dei secoli. Nel corso del tempo, è stato utilizzato come residenza, prigione e persino come rifugio per pastori.\r\n\r\nNel 1876, Castel del Monte è stato dichiarato monumento nazionale italiano e successivamente è stato incluso nella lista dei siti del patrimonio mondiale dell\'UNESCO nel 1996. Oggi, il castello è aperto al pubblico e attira visitatori da tutto il mondo con la sua architettura affascinante e la sua storia avvolta dal mistero.', 'immagini/CastelDelMontePrincipale.jpg', 'presentazione', 'https://sketchfab.com/models/4f818b51aa364af895a095d62909283f/embed', 'CASTEL DEL MONTE', 'https://www.youtube.com/embed/nJfCZ4h_o24\"', 1996, 13, 2, 'immagini/CastelDelMonte10.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3007.278266077567!2d16.268361075779794!3d41.08476637133986!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x133813466e300001%3A0x6608f3da93c70cf5!2sCastel%20del%20Monte!5e0!3m2!1sit!2sit!4v1684330463722!5m2!1sit!2sit'),
(7, 'Caserta (CE)', 'La Reggia di Caserta è un imponente complesso architettonico barocco situato a Caserta, Italia. Costruita nel XVIII secolo, è una delle residenze reali più grandi al mondo. La reggia presenta sontuosi appartamenti reali, sale da ballo, teatri e un vasto parco circostante. È una delle principali attrazioni turistiche del Sud Italia.', 'La Reggia di Caserta ha una storia che risale al XVIII secolo. Fu commissionata dal re di Napoli, Carlo di Borbone, come residenza reale e centro amministrativo del Regno di Napoli. La costruzione iniziò nel 1752 sotto la direzione dell\'architetto Luigi Vanvitelli e fu completata nel 1780.\r\n\r\nCarlo di Borbone desiderava una reggia che potesse competere con la grandiosità del Palazzo di Versailles in Francia. Pertanto, Vanvitelli progettò una struttura imponente e magnifica, che rifletteva lo stile architettonico barocco. La reggia fu costruita utilizzando materiali di alta qualità e coinvolse un vasto numero di artigiani e operai.\r\n\r\nDurante il periodo di costruzione, Carlo di Borbone trasferì la sua corte a Caserta e la reggia divenne il centro politico e culturale del regno. Tuttavia, la reggia fu completata solo dopo la morte di Carlo di Borbone e fu il suo figlio Ferdinando IV a inaugurare ufficialmente la residenza.\r\n\r\nLa reggia fu utilizzata come residenza reale fino all\'unità d\'Italia nel XIX secolo. Successivamente, fu adibita a scopi diversi, come caserma e sede amministrativa. Durante la Seconda Guerra Mondiale, subì danni a causa di bombardamenti, ma fu successivamente restaurata.\r\n\r\nNel 1997, la Reggia di Caserta è stata dichiarata Patrimonio dell\'Umanità dall\'UNESCO per la sua importanza storica e il suo valore architettonico. Oggi, la reggia è aperta al pubblico e rappresenta una delle principali attrazioni culturali e turistiche dell\'Italia meridionale.', 'immagini/ReggiaDiCasertaPrincipale.jpg', 'Barocco', NULL, 'REGGIA DI CASERTA', 'https://www.youtube.com/embed/5tsOpPTXXuQ', 1997, 4, 2, 'immagini/ReggiaDiCaserta10.png', 'https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d3007.711645603744!2d14.324754175779368!3d41.07529532134126!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sreggia%20di%20caserta!5e0!3m2!1sit!2sit!4v1684331089888!5m2!1sit!2sit'),
(8, 'Torino (TO)', 'La Residenza Sabaude è un complesso di edifici storici a Torino, Italia, che fu la dimora dei Savoia, la famiglia reale italiana. Ospita il famoso Palazzo Reale e altri edifici come la Palazzina di Caccia di Stupinigi e il Castello di Racconigi. È Patrimonio dell\'Umanità dell\'UNESCO e una popolare attrazione turistica.', 'La Residenza Sabaude ha una storia che risale al periodo dei Savoia, la famiglia reale che governò il Regno di Sardegna e successivamente il Regno d\'Italia. La costruzione e lo sviluppo della residenza ebbero inizio nel XV secolo e continuarono nei secoli successivi.\r\n\r\nIl Palazzo Reale di Torino, uno dei principali edifici della residenza, venne iniziato nel XVI secolo e ampliato nel corso dei secoli successivi. Fu la residenza principale dei Savoia e ospitò numerose personalità di spicco. Il palazzo fu arricchito con sontuosi interni affrescati, mobili di lusso e una preziosa collezione d\'arte.\r\n\r\nLa residenza fu estesa con l\'aggiunta di altri edifici e complessi, come la Palazzina di Caccia di Stupinigi, costruita nel XVIII secolo come residenza di caccia reale, e il Castello di Racconigi, una sontuosa residenza circondata da ampi giardini, costruita nel XIX secolo.\r\n\r\nDurante il periodo dell\'Unità d\'Italia, la residenza perse il suo ruolo come sede di potere politico, ma continuò ad essere una dimora reale e un importante centro culturale. Nel corso del XX secolo, molti dei palazzi e dei complessi della residenza furono aperti al pubblico come musei, consentendo ai visitatori di ammirare la loro architettura, le opere d\'arte e l\'eleganza delle dimore reali.\r\n\r\nOggi, la Residenza Sabaude è riconosciuta come Patrimonio dell\'Umanità dall\'UNESCO e rappresenta un importante tesoro culturale e turistico per la città di Torino e per l\'intera Italia.', 'immagini/ResidenzeSabaudePrincipale.jpg', 'Barocco', NULL, 'RESIDENZE SABAUDE', 'https://www.youtube.com/embed/tfoWLKRFrUA', 1997, 12, 2, 'immagini/ResidenzeSabaude10.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28821.589367539287!2d7.690233709047568!3d45.05601675230425!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4788729e7aa0a989%3A0xc957b8236cb9539!2sVilla%20della%20Regina!5e0!3m2!1sit!2sit!4v1684396937234!5m2!1sit!2sit'),
(9, 'Firenze (FI)', 'Santa Maria del Fiore è una cattedrale gotica a Firenze, Italia. È famosa per la sua grande cupola e la facciata di marmo bianco. All\'interno si trovano affreschi rinascimentali e un campanile progettato da Giotto. È una delle attrazioni più popolari di Firenze.', 'La storia di Santa Maria del Fiore risale al XIII secolo, quando si decise di costruire una nuova cattedrale a Firenze per sostituire la vecchia chiesa di Santa Reparata. La costruzione della cattedrale iniziò nel 1296 sotto la direzione dell\'architetto Arnolfo di Cambio.\r\n\r\nIl progetto originale prevedeva una cattedrale di dimensioni imponenti, ma a causa di vari problemi finanziari e politici, i lavori procedettero lentamente. Fu solo nel 1334 che la costruzione della cattedrale prese slancio con l\'arrivo di Giotto, che assunse la carica di capomastro della cattedrale e iniziò a lavorare sul campanile.\r\n\r\nLa cupola, una delle caratteristiche più distintive di Santa Maria del Fiore, fu progettata da Filippo Brunelleschi nel XV secolo. La sua realizzazione rappresentò una sfida tecnica notevole, ma Brunelleschi riuscì a realizzare una cupola autonoma e autoportante, rivoluzionando l\'architettura dell\'epoca.\r\n\r\nLa facciata della cattedrale, che oggi vediamo, fu aggiunta nel XIX secolo su progetto di Emilio De Fabris, completando così l\'aspetto esterno della chiesa.\r\n\r\nDurante i secoli successivi, Santa Maria del Fiore ha subito vari interventi di restauro e ampliamento, mantenendo intatto il suo ruolo come principale cattedrale di Firenze e un importante simbolo della città.\r\n\r\nOggi, Santa Maria del Fiore continua ad essere un importante luogo di culto e una delle principali attrazioni turistiche di Firenze, attirando visitatori da tutto il mondo con la sua straordinaria architettura gotica, i suoi affreschi e la sua storia affascinante.', 'immagini/SantaMariaDelFiorePrincipale.jpg', 'presentazione', NULL, 'SANTA MARIA DEL FIORE', 'https://www.youtube.com/embed/5tTGKfW6JQg', 1982, 16, 2, 'immagini/SantaMariaDelFiore10.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2880.9868562795036!2d11.254036175608082!3d43.7731316710967!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132a5403bfe22ff5%3A0x5591438487aaf1f5!2sCattedrale%20di%20Santa%20Maria%20del%20Fiore!5e0!3m2!1sit!2sit!4v1684395211198!5m2!1sit!2sit'),
(10, 'Agrigento (AG)', 'La Valle dei Templi è un sito archeologico in Sicilia con templi greci ben conservati. È patrimonio dell\'umanità UNESCO e include il Tempio della Concordia e il Tempio di Ercole. È una destinazione turistica popolare.', 'La storia della Valle dei Templi risale all\'antica città greca di Akragas, fondata nel VI secolo a.C. dagli abitanti di Gela. La città divenne uno dei centri più importanti della Magna Grecia e prosperò per diversi secoli.\r\n\r\nDurante il periodo di massimo splendore di Akragas, furono costruiti numerosi templi dedicati alle divinità greche. I templi erano situati lungo una collina a sud della città, offrendo una vista spettacolare sulla valle sottostante e sul Mar Mediterraneo.\r\n\r\nTuttavia, nel corso dei secoli, Akragas fu soggetta a invasioni e distruzioni. Nel 406 a.C., la città fu saccheggiata dai Cartaginesi, seguita da ulteriori devastazioni durante le guerre puniche e le invasioni romane.\r\n\r\nCon il declino di Akragas, i templi caddero in rovina e furono gradualmente abbandonati. Nel corso dei secoli successivi, la vegetazione e il terreno accumulato nascosero le antiche strutture sotto uno strato di terra.\r\n\r\nLa rediscoperta della Valle dei Templi avvenne nel XVIII secolo, quando fu avviata un\'opera di scavo e restauro. Gli archeologi riportarono alla luce i templi e iniziarono a studiare e conservare questi importanti reperti dell\'antica Grecia occidentale.\r\n\r\nOggi, la Valle dei Templi è uno dei siti archeologici più importanti e visitati d\'Italia. Le rovine dei templi sono state restaurate e sono ancora visibili, offrendo una testimonianza della grandezza e della ricchezza dell\'antica Akragas. Il sito è stato dichiarato patrimonio dell\'umanità dall\'UNESCO nel 1997.', 'immagini/ValleDeiTempliPrincipale.jpg', 'Dorico', 'https://sketchfab.com/models/b28946ad96af42b29f248a4d89050d16/embed', 'VALLE DEI TEMPLI', 'https://www.youtube.com/embed/sEBHEUt1vg0', 1997, 15, 2, 'immagini/ValleDeiTempli10.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3174.1167681300453!2d13.588830180551616!3d37.29236630020076!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x13108233c5eea5b7%3A0xf693b8d53107bc9e!2sValle%20dei%20Templi!5e0!3m2!1sit!2sit!4v1684395526001!5m2!1sit!2sit');

-- --------------------------------------------------------

--
-- Struttura della tabella `patrimonio_seq`
--

CREATE TABLE `patrimonio_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `patrimonio_seq`
--

INSERT INTO `patrimonio_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Struttura della tabella `patrimonio_servizio`
--

CREATE TABLE `patrimonio_servizio` (
  `id` int(11) NOT NULL,
  `patrimonio_id` int(11) DEFAULT NULL,
  `servizio_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `patrimonio_servizio`
--

INSERT INTO `patrimonio_servizio` (`id`, `patrimonio_id`, `servizio_id`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 7),
(4, 1, 4),
(5, 1, 6),
(6, 2, 8),
(7, 2, 2),
(8, 2, 1),
(9, 5, 9),
(10, 5, 2),
(11, 5, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `patrimonio_servizio_seq`
--

CREATE TABLE `patrimonio_servizio_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `patrimonio_servizio_seq`
--

INSERT INTO `patrimonio_servizio_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Struttura della tabella `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `map` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `region`
--

INSERT INTO `region` (`id`, `description`, `icon`, `map`, `name`) VALUES
(1, 'Si tratta di una regione prevalentemente montuosa e occupata in gran parte dagli Appennini. La fascia costiera è formata da una serie di rilievi collinari che digradano verso il mare. Il principale Sito nominato Patrimonio dell\'Umanità UNESCO presente in Abruzzo è 1: Majella Geopark.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Regione-Abruzzo-Stemma.svg/373px-Regione-Abruzzo-Stemma.svg.png', 'regioni2/abruzzo.jpg', 'ABRUZZO'),
(2, 'La Basilicata si presenta come una Regione dai forti contrasti orografici. La superficie ricoperta dal territorio regionale è di 9.992,24 Km2, di cui il 46,8% è montano, il 45,2% è collinare e solo l\'8% è rappresentato da una morfologia pianeggiante. I principali Siti nominati Patrimonio dell\'Umanità UNESCO presenti in Basilicata sono 2: I Sassi di Matera e la Foresta di Cozzo Ferriero.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Regione-Basilicata-Stemma.svg/800px-Regione-Basilicata-Stemma.svg.png', 'regioni2/basilicata.jpg', 'BASILICATA'),
(3, 'La Calabria è una penisola lunga e stretta. È bagnata dal Mar Ionio a sud e a est, dal Mar Tirreno a ovest. Il terreno è prevalentemente montuoso e collinare. I principali Siti nominati Patrimonio dell\'Umanità UNESCO presenti in Calabria sono 9: Il Duomo di Cosenza, La Varia di Palmi, Il Parco Nazionale della Sila, del Pollino e dell\'Aspromonte, Le Faggete Vetuste del Pollinello e della Valle Infernale, Il Greco di Calabria, La Cattolica di Stilo e i Complessi Basiliani, Il Codex Purpureus Rossanensis.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Coat_of_arms_of_Calabria.svg/800px-Coat_of_arms_of_Calabria.svg.png', 'regioni2/calabria.jpg', 'CALABRIA'),
(4, 'La Campania è una delle nostre regione di media estensione: la nona fra tutte. Confina con il Lazio, con il Molise, la Puglia e la Basilicata; a occidente è bagnata dal Mar Tirreno. Buona parte del territorio è occupata dai rilievi dell\'Appennino Campano, compreso tra la Bocca di Forlì e la Sella di Conza. I principali Siti nominati Patrimonio dell\'Umanità UNESCO presenti in Campania sono 2: la Costiera Amalfitana e il sito archeologico del Cilento, che comprende il Parco Nazionale del Cilento, le antiche città di Paestum e Velia, la Certosa di Padula e i monti Alburni.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Regione-Campania-Stemma.svg/800px-Regione-Campania-Stemma.svg.png', 'regioni2/campania.jpg', 'CAMPANIA'),
(5, 'Il territorio dell\'Emilia-Romagna è formato da due parti pressoché equivalenti, una montuosa e collinare e l\'altra pianeggiante, divise dal tracciato rettilineo della via Emilia. I principali Siti nominati Patrimonio dell\'Umanità UNESCO presenti in Emilia Romagna sono 8: il Delta del Po\' e le Delizie Estensi di Ferrara, i Monumenti Paleocristiani di Ravenna, la Piazza Grande, la Cattedrale e la Ghirlanda e Città Creativa Media ARTS di Modena, la Musica e i Portici di Bologna, le Ceramiche di Faenza, la Biblioteca Malatestiana di Cesena, la Gastronomia di Parma e i Parchi Naturali.', 'https://upload.wikimedia.org/wikipedia/it/thumb/5/56/Logo_testo_Emilia-Romagna.svg/800px-Logo_testo_Emilia-Romagna.svg.png', 'regioni2/emiliaromagna.jpg', 'EMILIA ROMAGNA'),
(6, 'Il Friuli Venezia Giulia è un territorio prevalentemente montuoso con il 43%. La parte settentrionale della regione è suddivisa in Alpi e Prealpi Carniche. La vetta più alta è il Monte Coglians con i suoi 2780 m.s.l.m. I principali Siti nominati Patrimonio dell\'Umanità UNESCO presenti in Friuli Venezia Giulia sono 5: Aquileia, Palmanova, Cividale del Friuli, Palù di Livenza e le Dolomiti Friuliane.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/CoA_of_Friuli-Venezia_Giulia.svg/800px-CoA_of_Friuli-Venezia_Giulia.svg.png', 'regioni2/friuli.jpg', 'FRIULI VENEZIA GIULIA'),
(7, 'Il Lazio una regione prevalentemente collinare: il 54% del suo territorio è occupato da zone collinari, il 26% da zone montuose ed il restante 20% da pianure. Partendo dal nord ovest della regione, troviamo tre distinti gruppi montuosi di modeste dimensioni: i Monti Volsini, i Monti Cimini e i Monti Sabatini. I principali Siti nominati Patrimonio dell\'Umanità UNESCO presenti nel Lazio sono 5: il Centro storico di Roma, le proprietà extraterritoriali della Santa Sede nella città e la Basilica di San Paolo fuori dalle mura, la Villa Adriana e la Villa d’Este di Tivoli, la Necropoli della Banditaccia di Cerveteri, la necropoli di Monterozzi di Tarquinia, la Macchina di Santa Rosa di Viterbo e La Faggeta Vetusta del Monte Cimino', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Lazio_Coat_of_Arms.svg/1024px-Lazio_Coat_of_Arms.svg.png', 'regioni2/lazio.jpg', 'LAZIO'),
(8, 'La Liguria è una sottile fascia di terra montuosa e collinare che si affaccia sul Mar Ligure. I modesti rilievi delle Alpi marittime e dell\'Appennino Ligure scendono a picco fino al mare e rendendo la costa più alta e frastagliata. I principali Siti nominati Patrimonio dell\'Umanità UNESCO presenti in Liguria sono 4: le Cinque Terre, Portovenere e le Isole, il Palazzo dei Rolli, il Parco del Beigua e i muretti a Secco.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Coat_of_arms_of_Liguria.svg/800px-Coat_of_arms_of_Liguria.svg.png', 'regioni2/liguria.jpg', 'LIGURIA'),
(9, 'La Lombardia è una regione naturalmente bella e varia, con alte montagne, incantevoli laghi, colline dai paesaggi riposanti, verdi e fertili pianure ornate di alberi e solcate da acque correnti. I principali Siti nominati Patrimonio dell\'Umanità UNESCO presenti in Lombardia sono 10: il Monte San Giorgio, i Sacri Monti di Ossuccio e di Varese, le Mura di difesa veneziane di Bergamo, Santa Maria delle Grazie e il Cenacolo di Leonardo da Vinci, Crespi d\'Adda, Liuteria a Cremona, la Ferrovia Retica nel paesaggio dell\'Albula e del Bernina, le Aree monumentali longobarde a Brescia e Varese, le Incisioni Rupestri della Valle Camonica e Mantova e Sabbioneta.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Flag_of_Lombardy_square.svg/1024px-Flag_of_Lombardy_square.svg.png', 'regioni2/lombardia.jpg', 'LOMBARDIA'),
(10, 'Le Marche si trovano nella zona centro-orientale della nostra penisola; ad est sono bagnate dal Mar Adriatico. I principali Siti nominati Patrimonio dell\'Umanità UNESCO presenti nelle Marche sono 4: il Palazzo Ducale e la Panoramica del Belvedere di Urbino e la Basilica di San Francesco (con anche i suoi interni) e di Santa Chiara di Assisi.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Coat_of_arms_of_Marche.svg/800px-Coat_of_arms_of_Marche.svg.png', 'regioni2/marche.jpg', 'MARCHE'),
(11, 'Il Molise è una regione ricca di boschi di latifoglie e sempreverdi soprattutto nella parte montuosa, a Occidente del Molise. La piccola regione ha inoltre una grande biodiversità poiché ha diversi tipi di ambienti come l\'alta montagna, le colline, le coste, i fiumi, i laghi. Il principale Sito nominato Patrimonio dell\'Umanità UNESCO presente in Molise è 1: la Riserva Naturale Collemeluccio-Montedimezzo.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Regione-Molise-Stemma.svg/800px-Regione-Molise-Stemma.svg.png', 'regioni2/molise.jpg', 'MOLISE'),
(12, 'Piemonte significa ai piedi dei monti (pedemontium), così definito perché circondato su tre lati dalle montagne delle Alpi Occidentali e dell\'Appennino ligure. La montagna piemontese ha un aspetto imponente e aspro: infatti le sommità al di sopra dei tremila metri scendono rapidamente verso la pianura. I principali Siti nominati Patrimonio dell\'Umanità UNESCO presenti in Piemonte sono 5: le Residenze Sabaude, i Sacri Monti del Piemonte e della Lombardia, i Siti palafitticoli preistorici dell’arco alpino, i Paesaggi Vitivinicoli del Piemonte: Langhe-Roero e Monferrato e Ivrea Città Industriale del XX Secolo.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Regione-Piemonte-Stemma.svg/1024px-Regione-Piemonte-Stemma.svg.png', 'regioni2/piemonte.jpg', 'PIEMONTE'),
(13, 'La Puglia è la regione più orientale di tutta l\'Italia e si trova nel Sud del nostro Stato, è bagnata dal Mare Adriatico a nord-est e dal Mar Ionio a sud. I principali Siti nominati Patrimonio dell\'Umanità UNESCO presenti in Puglia sono 5: Castel del Monte, i Trulli di Alberobello, il Santuario di San Michele Arcangelo, la Riserva naturale Foresta Umbra e Castel Fiorentino a Torremaggiore.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Coat_of_Arms_of_Apulia.svg/800px-Coat_of_Arms_of_Apulia.svg.png', 'regioni2/puglia.jpg', 'PUGLIA'),
(14, 'La regione Sardegna è caratterizzata da un territorio prevalentemente montuoso, ricco di pianori e gruppi collinari contraddistinti da una disposizione irregolare. I principali Siti nominati Patrimonio dell\'Umanità UNESCO presenti in Sardegna sono 2: il Villaggio Nuragico di Barumini e il parco Tepilora, Rio Posada e Montalbo.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Sardegna-Stemma.svg/800px-Sardegna-Stemma.svg.png', 'regioni2/sardegna.jpg', 'SARDEGNA'),
(15, 'La Sicilia è la più grande isola d\'Italia e del Mediterraneo. Di forma triangolare, è bagnata a nord dal Mar Tirreno, a ovest dal Canale di Sicilia, a sud dal Mar di Sicilia, a est dal Mar Ionio e a nord-est dallo stretto di Messina che la separa dalla Calabria. I principali Siti nominati Patrimonio dell\'Umanità UNESCO presenti in Sicilia sono 7: Palermo Arabo-normanna e le cattedrali di Cefalù e Monreale, l\'Area Archeologica di Agrigento (Valle dei Templi), il Monte Etna, la Villa Romana del Casale, le Città tardo barocche del Val di Noto, le Isole Eolie e Siracusa e le Necropoli rupestri di Pantalica.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Coat_of_arms_of_Sicily.svg/800px-Coat_of_arms_of_Sicily.svg.png', 'regioni2/sicilia.jpg', 'SICILIA'),
(16, 'Il territorio della Toscana risulta prevalentemente collinare, soprattutto nella parte centro-meridionale. I vari sistemi collinari sono separati dalle vallate dei vari corsi d\'acqua e degradano ad ovest verso le aree pianeggianti costiere. Queste zone sono la forma più tipica del paesaggio toscano. I principali Siti nominati Patrimonio dell\'Umanità UNESCO presenti in Toscana sono 7: il Centro Storico di Firenze, Siena e San Gimignano, la Piazza del Duomo di Pisa, Val d\'Orcia e le Ville e i Giardini Medicei.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Coat_of_arms_of_Tuscany.svg/800px-Coat_of_arms_of_Tuscany.svg.png', 'regioni2/toscana.jpg', 'TOSCANA'),
(17, 'Il Trentino-Alto Adige è la regione italiana più settentrionale ed è considerata quasi interamente montuosa ad eccezione della Valle dell\'Adige e della Valle dei Laghi sotto i 200 m e considerati dunque pianura. I principali Siti nominati Patrimonio dell\'Umanità UNESCO presenti in Trentino Alto Adige sono 4: le Dolomiti di Brenta, il Latemar-Catenaccio. la Marmolada e le Pale di San Martino.', 'https://upload.wikimedia.org/wikipedia/it/thumb/1/14/Stemma_Trentino_-_S%C3%BCdtirol.svg/800px-Stemma_Trentino_-_S%C3%BCdtirol.svg.png', 'regioni2/trentino.jpg', 'TRENTINO ALTO ADIGE'),
(18, 'L\'Umbria, piccola Regione dell\'Italia centrale, rappresenta il cuore della Penisola. È l\'unica regione dell\'Italia peninsulare non bagnata dal mare. È attraversata dal fiume Tevere e comprende il lago Trasimeno, il lago di Piediluco, i fiumi Chiascio, Nera, Corno, Nestòre e Topino, le Cascate delle Marmore. I principali Siti nominati Patrimonio dell\'Umanità UNESCO presenti in Umbria sono 2: Assisi e i luoghi legati a San Francesco.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Regione-Umbria-Stemma.svg/800px-Regione-Umbria-Stemma.svg.png', 'regioni2/umbria.jpg', 'UMBRIA'),
(19, 'La Valle d\'Aosta è la regione più piccola, meno popolata e con minore densità abitativa di tutta l\'Italia. I principali Siti nominati Patrimonio dell\'Umanità UNESCO presenti in Val d\'Aosta sono 5: la Piazza émile Chanoux, il Criptoportico Forense, il Teatro romano e il Museo del Tesoro della Cattedrale di Aosta e il Monte Bianco.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Valle_d%27Aosta-Stemma.svg/800px-Valle_d%27Aosta-Stemma.svg.png', 'regioni2/valledaosta.jpg', 'VAL D\'AOSTA'),
(20, 'Il Veneto confina a Nord con l\'Austria, a Est con il Friuli-Venezia Giulia e con il Mare Adriatico , a Ovest con la Lombardia e il Trentino -Alto Adige. Nel territorio della regione si distinguono quattro paesaggi geografici: alpino, prealpino, pianura e costiero. La fascia alpina comprende le Dolomiti orientali. I principali Siti nominati Patrimonio dell\'Umanità UNESCO presenti in Veneto sono 9: le Dolomiti, l\'Orto Botanico di Padova, Venezia e la sua Laguna, la Città di Verona, Vicenza e le Ville del Palladio nel Veneto, i Siti Palafitticoli, le Colline del Prosecco di Conegliano Valdobbiadene, le Opere di difesa veneziane tra XVI e XVII secolo e Padova.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Coat_of_Arms_of_Veneto.png/800px-Coat_of_Arms_of_Veneto.png', 'regioni2/veneto.jpg', 'VENETO');

-- --------------------------------------------------------

--
-- Struttura della tabella `region_seq`
--

CREATE TABLE `region_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `region_seq`
--

INSERT INTO `region_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Struttura della tabella `servizio`
--

CREATE TABLE `servizio` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `servizio`
--

INSERT INTO `servizio` (`id`, `icon`, `name`, `description`) VALUES
(1, 'perm_identity', 'Visita Guidata', 'E\' possibile prenotare visite guidate.'),
(2, 'done', 'Servizi Igenici', 'Sono presenti i servizi igienici per i visitatori.'),
(3, 'store', 'Shop', 'È presente il bookshop per gli acquisti dei visitatori.'),
(4, 'accessible', 'Disabilità Fisiche', 'Accessibile ai soggetti con invalidità e persone portatrici di handicap.'),
(5, 'restaurant', 'Punto Ristoro', 'È presente l\'area ristoro per i visitatori.'),
(6, 'info', 'Info Point', 'E’ presente il Desk informazioni, sempre aperto al pubblico in orario di visite.'),
(7, 'child_friendly', 'Baby Area', 'Sono presenti i servizi per la cura dei bambini'),
(8, 'hearing', 'Audio Guide', 'Sono a disposizione le audioguide per i visitatori.'),
(9, 'business_center', 'Deposito Bagagli', 'A disposizione dei visitatori il deposito bagagli.');

-- --------------------------------------------------------

--
-- Struttura della tabella `servizio_seq`
--

CREATE TABLE `servizio_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `servizio_seq`
--

INSERT INTO `servizio_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Struttura della tabella `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `type`
--

INSERT INTO `type` (`id`, `cover`, `description`, `profile`, `title`) VALUES
(1, 'immagini/CoverPaesaggioCulturale.jpg', 'Il paesaggio è parte integrante del patrimonio culturale, cioè dell\'eredità storica della collettività, e come tale è considerato dalla Costituzione italiana, che lo associa nella tutela al “patrimonio storico e artistico della Nazione”. Per essere nominati Patrimonio Mondiale culturale UNESCO, i monumenti, i siti o gli agglomerati devono essere prodotti dall’uomo o dall’uomo e dalla natura e devono avere	 un valore universale eccezionale dal punto di vista storico, artistico, estetico, \r\nscientifico o antropologico. Dei 58 siti UNESCO in Italia, ben 45 sono stati riconosciuti come parte del Patrimonio Mondiale culturale. Curiosità: i primi siti italiani inseriti nel patrimonio culturale UNESCO furono l’arte rupestre della valle Camonica nel 1979 e il centro storico di Roma nel 1980; gli ultimi, inseriti nel 2021, sono stati la città termale di Montecatini Terme, i cicli affrescati del XIV secolo di Padova e i Portici di Bologna.', 'immagini/ProfilePaesaggioCulturale.jpg', 'Paesaggio Culturale'),
(2, '/immagini/CoverPatrimonioCulturale.jpg\r\n', 'Dal 1992 l’UNESCO considera anche i paesaggi che rappresentano “creazioni congiunte dell\'uomo e della natura”. Queste opere devono dimostrare l’evoluzione di una società e del suo insediamento nel corso del tempo, sotto l’influenza delle costrizioni e/o delle opportunità presentate dall’ambiente naturale e dalle spinte culturali, economiche e sociali. In Italia contiamo 8 imperdibili paesaggi culturali riconosciuti patrimonio UNESCO: la Costiera Amalfitana, Portovenere, le Cinque Terre e le Isole di Palmaria Tino e Tinetto, il Parco Nazionale del Cilento e il Vallo di Diano (con i siti archeologici di Paestum, Velia e la Certosa di Padula), i Sacri Monti del Piemonte e della Lombardia, la Val d’Orcia, le 12 Ville e i 2 Giardini Medicei della Toscana, i Paesaggi Vitivinicoli del Piemonte: Langhe-Roero e Monferrato, e Le Colline del Prosecco di Conegliano e Valdobbiadene.', 'immagini/ProfilePatrimonioCulturale.jpg', 'Patrimonio Culturale'),
(3, 'immagini/CoverPatrimonioNaturale.jpg', 'Il patrimonio costituisce una risorsa per l\'identità e la coesione di comunità. Nella lista del patrimonio naturale ritroviamo monumenti non artificiali, formazioni geologiche o aree naturali dall’alto valore universale estetico, conservativo o scientifico. In Italia sono 5 i siti naturali riconosciuti: le Isole Eolie, il Monte San Giorgio, le Dolomiti, il Monte Etna e le antiche faggete primordiali dei Carpazi. Ogni sito è unico e prezioso a modo suo, ma tutti meritano di essere visitati almeno una volta: uno spettacolo per gli occhi tutto italiano, garantito UNESCO.', 'immagini/ProfilePatrimonioNaturale.jpg', 'Patrimonio Naturale'),
(4, 'immagini/CoverPatrimonioOraleEImmateriale.jpg', 'Quasi venti anni fa, è nata una nuova lista, che va oltre gli aspetti fisici e territoriali descritti finora. Dal 2003, infatti, l’UNESCO ha approvato la Convenzione per la Salvaguardia del Patrimonio Culturale Immateriale, per tutelare la cultura tradizionale e il folclore di tutto il mondo. A oggi, sono 15 le tradizioni da salvaguardare in Italia, dall’avvincente Opera dei Pupi siciliani, passando per l’espressivo Canto a Tenore sardo o le sentite processioni con Macchine dei Santi, fino alla variegata Dieta Mediterranea o l’eccezionale Arte dei Pizzaiuoli Napoletani.', 'immagini/ProfilePatrimonioOraleEImmateriale.jpg', 'Patrimonio Orale e Immateriale');

-- --------------------------------------------------------

--
-- Struttura della tabella `type_seq`
--

CREATE TABLE `type_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `type_seq`
--

INSERT INTO `type_seq` (`next_val`) VALUES
(1);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `immagine`
--
ALTER TABLE `immagine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK87njr18bs86j64qwbfssul6tb` (`patrimonio_id`);

--
-- Indici per le tabelle `patrimonio`
--
ALTER TABLE `patrimonio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKqdw9slkv7rjgparfo15mf80c3` (`region_id`),
  ADD KEY `FK7kd53dm5isworgbg3w0564uu0` (`type_id`);

--
-- Indici per le tabelle `patrimonio_servizio`
--
ALTER TABLE `patrimonio_servizio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpaasyfn68op3srxc9vw04j26h` (`patrimonio_id`),
  ADD KEY `FKg3qmpv5aqih9mqqgauuvb1uj6` (`servizio_id`);

--
-- Indici per le tabelle `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `servizio`
--
ALTER TABLE `servizio`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `immagine`
--
ALTER TABLE `immagine`
  ADD CONSTRAINT `FK87njr18bs86j64qwbfssul6tb` FOREIGN KEY (`patrimonio_id`) REFERENCES `patrimonio` (`id`);

--
-- Limiti per la tabella `patrimonio`
--
ALTER TABLE `patrimonio`
  ADD CONSTRAINT `FK7kd53dm5isworgbg3w0564uu0` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`),
  ADD CONSTRAINT `FKqdw9slkv7rjgparfo15mf80c3` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`);

--
-- Limiti per la tabella `patrimonio_servizio`
--
ALTER TABLE `patrimonio_servizio`
  ADD CONSTRAINT `FKg3qmpv5aqih9mqqgauuvb1uj6` FOREIGN KEY (`servizio_id`) REFERENCES `servizio` (`id`),
  ADD CONSTRAINT `FKpaasyfn68op3srxc9vw04j26h` FOREIGN KEY (`patrimonio_id`) REFERENCES `patrimonio` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
