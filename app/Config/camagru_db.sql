-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : ven. 29 jan. 2021 à 16:09
-- Version du serveur :  8.0.23
-- Version de PHP : 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `camagru_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `content`) VALUES
(27, 23, 72, 'tbarkelah 3la si red'),
(28, 23, 72, 'ta 7at lferdi'),
(31, 24, 72, 'fghdfghdfghdfghfdghahdfhsdghdfhdsghdsghdshdshdshdshdshdshdghsdfghdfghdfghfgdhdfghfghfgh');

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

CREATE TABLE `likes` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`) VALUES
(72, 24, 71),
(73, 23, 72);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'camagru',
  `content` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comments` int NOT NULL DEFAULT '0',
  `likes` int NOT NULL DEFAULT '0',
  `like_nbr` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `create_at`, `comments`, `likes`, `like_nbr`) VALUES
(70, 23, 'camagru', '../public/img/1611929046.png', '2021-01-29 14:04:06', 0, 0, 0),
(71, 23, 'camagru', '../public/img/1611929056.png', '2021-01-29 14:04:16', 0, 0, 1),
(72, 24, 'camagru', '../public/img/1611929157.png', '2021-01-29 14:05:57', 0, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `profile_img` varchar(255) NOT NULL DEFAULT 'https://www.washingtonfirechiefs.com/Portals/20/EasyDNNnews/3584/img-blank-profile-picture-973460_1280.png',
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `verified` int NOT NULL DEFAULT '0',
  `notification` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `username`, `profile_img`, `password`, `token`, `create_date`, `verified`, `notification`) VALUES
(22, 'ss', 'jobabey475@200cai.com', 'das', 'https://www.washingtonfirechiefs.com/Portals/20/EasyDNNnews/3584/img-blank-profile-picture-973460_1280.png', '$2y$10$fxLKaNTanVBnNsm7dw1UoOjJaJDmchKlEcMI8DscGXr8suyOfNa9m', '4a0bbf36c3625ffeaec34be54b1d33be', '2021-01-29 13:58:59', 1, 1),
(23, 'harry kane', 'jnbgmbwvzmd@baybabes.com', 'kane10', 'https://www.washingtonfirechiefs.com/Portals/20/EasyDNNnews/3584/img-blank-profile-picture-973460_1280.png', '$2y$10$FJX/sBwDPEKSTsr4a3/mM.1kYN71W.hd7W86XskHOGJ/NmlVM0bbK', '1f4493eb3d45d7d781416efb1120a4d7', '2021-01-29 14:03:37', 1, 1),
(24, 'raymond reddington', 'rllmqrtfjiudp@baybabes.com', 'red', 'https://www.washingtonfirechiefs.com/Portals/20/EasyDNNnews/3584/img-blank-profile-picture-973460_1280.png', '$2y$10$nBoHTeCMCtG/CxNlYRmrjOAxBrD9JC89oZn9pWBvngA.KSiipxLEO', '649d1defddd4e4fc4618ef33d40322da', '2021-01-29 14:05:14', 1, 1),
(25, 'salah eddine moudene', 'dtmbhcujyuys@baybabes.com', 'tajriba', 'https://www.washingtonfirechiefs.com/Portals/20/EasyDNNnews/3584/img-blank-profile-picture-973460_1280.png', '$2y$10$9Hvjp4BDPNTYLP3eKy5ZWOAgMGpHfKvybSOueKDStyB5pP5lsWuVm', 'a0bd7ed35683609f2123e971537d6727', '2021-01-29 15:24:25', 1, 1),
(26, 'abdennacer', 'fynvvl@baybabes.com', 'paayk', 'https://www.washingtonfirechiefs.com/Portals/20/EasyDNNnews/3584/img-blank-profile-picture-973460_1280.png', '$2y$10$3qPdH5a8hCBRqmYU4B4Suer47QyWVDY.4enesfIrJuVmxXb.7/t1G', 'c0791d9b319e7277ea1297be1250ab45', '2021-01-29 16:01:31', 1, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
