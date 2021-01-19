-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 19 jan. 2021 à 01:37
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.0

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
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `content`) VALUES
(1, 17, 3, 'dd'),
(2, 17, 2, 'ff'),
(3, 17, 1, 'ff'),
(4, 17, 1, 'vvv'),
(5, 17, 1, 'gg'),
(6, 3, 1, 'merci');

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`) VALUES
(6, 3, 3),
(7, 3, 2),
(10, 17, 1);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `comments` int(11) NOT NULL DEFAULT 0,
  `likes` int(11) NOT NULL DEFAULT 0,
  `like_nbr` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `create_at`, `comments`, `likes`, `like_nbr`) VALUES
(1, 18, 'me and my gf', 'https://i.ytimg.com/vi/45e2AoSMYeI/maxresdefault.jpg', '2020-12-24 14:11:22', 0, 0, 1),
(2, 16, 'tree', 'https://www.outside.fr/wp-content/uploads/2019/04/selfie-stick_h.jpg', '2021-01-03 03:35:22', 0, 0, 2),
(3, 17, 'shall we', 'https://pbs.twimg.com/profile_images/909322827395883008/zXKiGbej_400x400.jpg', '2021-01-03 03:35:46', 0, 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'https://www.washingtonfirechiefs.com/Portals/20/EasyDNNnews/3584/img-blank-profile-picture-973460_1280.png',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `verified` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `username`, `profile_img`, `password`, `token`, `create_date`, `verified`) VALUES
(3, 'test1', 'test@gmail.com', 'test1', 'https://i.pinimg.com/474x/bc/d4/ac/bcd4ac32cc7d3f98b5e54bde37d6b09e.jpg', '$2y$10$pW0B/Xrgz2iIyeDXO84A5eByIkEBSbkWlMVk0Fk6PkRiDJxbhRA3e', '6b889e0b32e63cca347395bdb4321ede', '2021-01-02 02:34:34', 1),
(16, 'jef', 'izweansh@effobe.com', 'ta wahed', 'https://lh3.googleusercontent.com/proxy/MmBxiyDBNyAM61EQe6a8-OviUUE2iobbrkDv3P04sZX8gf7-h2de9XpvA5gCLCWV_aH9NWWRIhWpgKwNXm_eXYFYk-IBInpjiW5W-sRqnZYv6_Ub5D9ir_AHv1Z5hDk', '$2y$10$ZJHSTqBgNELj.alKEbKnr.J3T2RJ2T8/qQnSxP3oav6e8/2.6pBaK', 'd2bec12ee3396b65852f66a6022ee691', '2021-01-03 03:33:13', 1),
(17, 'raymond reddington', 'petexa9190@majorsww.com', 'red', 'https://i.pinimg.com/originals/94/e9/0e/94e90e60f058b6fd8bc9f0d541f2d60e.png', '$2y$10$NtSN1D1en0395lmjFbULyut7LBMWUfpDm0rjaOozePn.WHU7TJQFi', '7f65ea8750e2b380dab4e662898b0ee7', '2021-01-17 14:19:06', 1),
(18, 'coach steve', 'salah@gmail.com', 'steve', 'https://i.redd.it/c9whv13ybb721.jpg', '$2y$10$pR2MwcodecDh3tD.69qWCe6DQXmcwJg2xBCdz8LQyDvEsrjcG1XHe', 'dcc5d3a1d00adc516682c0d3128d8447', '2021-01-19 00:29:32', 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
