-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8889
-- Généré le :  Jeu 24 Novembre 2016 à 20:19
-- Version du serveur :  5.6.33
-- Version de PHP :  7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `ProjetWeb`
--

-- --------------------------------------------------------

--
-- Structure de la table `Articles`
--

CREATE TABLE `Articles` (
  `id` int(11) NOT NULL,
  `Nom` text NOT NULL,
  `Contenu` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Articles`
--

INSERT INTO `Articles` (`id`, `Nom`, `Contenu`, `createdAt`, `updatedAt`) VALUES
(1, 'La Nuit de la Désintégration', 'La 50ème édition de cette grande soirée étudiante ! Pour se détendre après les partiels, et surtout dire au revoir aux étudiants de dernière année qui partent en stage, rien de mieux que des centaines de participants regroupés dans une boite de nuit parisienne. C’est aussi l’occasion pour vous de consolider les liens entre ESIEArques ainsi que de faire de nouvelles rencontres.', '2016-11-24 18:52:22', '2016-11-24 20:16:57'),
(2, 'Rallye Ski', 'Ce séjour au ski se déroulera à Risoul, une grande station de ski, du 10 au 19 février. Que vous soyez ski ou snow, l’ambiance est garantie entre amis. C’est un séjour tout compris de l’hébergement à la nourriture en passant par le transport et même le forfait et les skis.', '2016-11-24 19:12:10', '2016-11-24 20:16:14'),
(3, 'Troph\' ESIEA', 'Cet événement aura lieu dans un gymnase parisien courant avril. Ce tournoi multisports, qui regroupe foot – basket - volley - hand, vous permettra de faire vivre l’esprit de votre équipe de 10 personnes et la défendre pendant une journée sportive inoubliable et riche en émotions.', '2016-11-24 19:12:37', '2016-11-24 20:14:42'),
(4, 'EPO', '« L’ESIEA Paris – Ouest », une randonnée cycliste dans les beaux jours de mai, qui en est à sa deuxième édition. Nous comptons sur vous pour monter en selle et pédaler de Paris en direction de Laval pendant un week-end mêlant sport et bivouac pour souder des liens impérissables !', '2016-11-24 19:13:13', '2016-11-24 20:15:22'),
(5, 'CDMGE', 'Rendez-vous au stade Charléty pour le « Challenge Du Monde Des Grandes Ecoles » début juin où tout le monde sera réuni pour défendre les couleurs de l’ESIEA face à beaucoup d’autres écoles et universités françaises. Au programme, des compétitions sportives, un forum entreprises et du fun grâce à des activités, des chorégraphies et des fanfares représentant les écoles participantes. Sans oublier les pompoms girls de l’ESIEA qui nous réservent des surprises cette année.', '2016-11-24 19:14:08', '2016-11-24 20:14:59');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Articles`
--
ALTER TABLE `Articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Articles`
--
ALTER TABLE `Articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;