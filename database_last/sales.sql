-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 27 juin 2022 à 16:04
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sales`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `middlename` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `firstname`, `middlename`, `lastname`) VALUES
(1, 'admin', 'admin', 'Administrator', '', ''),
(4, 'Torrahclef', 'ay.clef', 'Faith', '', 'Awolu');

-- --------------------------------------------------------

--
-- Structure de la table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_title` varchar(50) NOT NULL,
  `book_description` varchar(200) DEFAULT NULL,
  `book_category` varchar(50) DEFAULT NULL,
  `book_author` varchar(60) DEFAULT NULL,
  `date_publish` varchar(25) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `book`
--

INSERT INTO `book` (`book_id`, `book_title`, `book_description`, `book_category`, `book_author`, `date_publish`, `qty`) VALUES
(1, 'English 1', 'Learning English', 'History', 'San Juan', '1999-10-18', 25),
(2, 'Romeo and Juliet', 'A true life love story', 'Novel', 'Ramsy Noah', '2001-12-15', 34);

-- --------------------------------------------------------

--
-- Structure de la table `borrowing`
--

CREATE TABLE `borrowing` (
  `borrow_id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `student_no` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `borrowing`
--

INSERT INTO `borrowing` (`borrow_id`, `book_id`, `student_no`, `qty`, `date`, `status`) VALUES
(3, 1, 101054, 1, '2017-10-26', 'Returned'),
(4, 1, 2012, 1, '2017-12-14', 'Returned'),
(5, 1, 2012, 1, '2017-12-14', 'Returned'),
(6, 1, 101054, 1, '2017-12-14', 'Returned'),
(7, 1, 24323, 1, '2017-12-14', 'Returned'),
(8, 1, 24323, 1, '2017-12-14', 'Borrowed'),
(9, 2, 24323, 1, '2018-01-20', 'Returned'),
(10, 1, 101054, 1, '2018-01-20', 'Returned');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Drinks'),
(6, 'product1');

-- --------------------------------------------------------

--
-- Structure de la table `collection`
--

CREATE TABLE `collection` (
  `transaction_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `invoice` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `membership_number` varchar(100) DEFAULT NULL,
  `prod_name` varchar(550) DEFAULT NULL,
  `expected_date` varchar(500) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `sexe` varchar(100) NOT NULL,
  `datepr` date DEFAULT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `membership_number`, `prod_name`, `expected_date`, `note`, `type`, `sexe`, `datepr`, `email`) VALUES
(1, 'MBAREK', 'TN', '23999000', '1000', 'Coke and others', '2022-05-05', 'He will pay later ', '', '', NULL, ''),
(2, 'product1', 'tn', 'mbarek', '1212122', 'aymen', '2000-12-12', '2', '', '', NULL, ''),
(5, 'az', 'az', 'az', 'az', 'az', '2022-06-17', 'az', '', '', NULL, '');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `o_price` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `profit` varchar(100) DEFAULT NULL,
  `supplier` varchar(100) DEFAULT NULL,
  `onhand_qty` int(10) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `qty_sold` int(10) DEFAULT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`) VALUES
(4, 'RBH-4cff', 'Fo', 'prodtw', NULL, '10', '13', '3', 'aymen mbarek', NULL, 66, 70, '2030-03-12', '2020-12-13'),
(9, 'RBH-30d5', 'test gat', 'tshirt', NULL, '10000', '12000', '2000', 'aymen mbarek', NULL, -7, 100, '2002-12-12', '2000-12-12');

-- --------------------------------------------------------

--
-- Structure de la table `purchases`
--

CREATE TABLE `purchases` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `suplier` varchar(100) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `purchases_item`
--

CREATE TABLE `purchases_item` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `invoice` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sales`
--

CREATE TABLE `sales` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) DEFAULT NULL,
  `cashier` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `profit` varchar(100) DEFAULT NULL,
  `due_date` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `balance` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `date`, `type`, `amount`, `profit`, `due_date`, `name`, `balance`) VALUES
(1, 'RS-0262328', 'Admin', '2002-08-18', 'cash', '150', '85', '200', '', ''),
(2, 'RS-233323', 'Admin', '2002-08-18', 'cash', '13650', '7735', '14000', '', ''),
(3, 'RS-0233302', 'Cashier Pharmacy', '2002-12-18', 'cash', '150', '85', '100', '', ''),
(5, 'RS-2822033', 'Administrator', '0000-00-00', 'cash', '120', '20', '2200', 'kk', NULL),
(6, 'RS-0245333', 'Administrator', '0000-00-00', 'cash', '240', '40', '110', 'kk', NULL),
(7, 'RS-5200060', 'Administrator', '0000-00-00', 'cash', '130', '30', '12', 'aymen', NULL),
(8, 'RS-9375730', 'Administrator', '0000-00-00', 'cash', '1200000', '200000', '10000', 'aymen mbarek', NULL),
(9, 'RS-526303', 'Administrator', '0000-00-00', 'cash', '13', '3', '10000', 'aymen', NULL),
(10, 'RS-2309653', 'Administrator', '0000-00-00', 'cash', '12000', '2000', '2', '', NULL),
(11, 'RS-2309653', 'Administrator', '0000-00-00', 'cash', '24000', '4000', '2', 'product1', NULL),
(12, 'RS-2258', 'Administrator', '2026-06-22', 'cash', '13', '3', '2', 'MBAREK', NULL),
(13, 'RS-2258', 'Administrator', '2026-06-22', 'cash', '13', '3', '1', 'MBAREK', NULL),
(14, 'RS-85030333', 'Administrator', '2026-06-22', 'cash', '', '', '12', 'MBAREK', NULL),
(15, 'RS-005230', 'Administrator', '2027-06-22', 'cash', '12000', '2000', '2', 'MBAREK', NULL),
(16, 'RS-4833300', 'Administrator', '2027-06-22', 'cash', '12000', '2000', '2', 'MBAREK', NULL),
(17, 'RS-4235533', 'Administrator', '2027-06-22', 'cash', '12000', '2000', '2', 'MBAREK', NULL),
(18, 'RS-2223342', 'Administrator', '2027-06-22', 'cash', '12000', '2000', '1', 'product1', NULL),
(19, 'RS-7452009', 'Administrator', '2027-06-22', 'cash', '12000', '2000', '1', 'MBAREK', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sales_order`
--

CREATE TABLE `sales_order` (
  `transaction_id` int(11) NOT NULL,
  `invoice` varchar(100) DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `profit` varchar(100) DEFAULT NULL,
  `product_code` varchar(150) DEFAULT NULL,
  `gen_name` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `date` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sales_order`
--

INSERT INTO `sales_order` (`transaction_id`, `invoice`, `product`, `qty`, `amount`, `profit`, `product_code`, `gen_name`, `name`, `price`, `discount`, `date`) VALUES
(1, 'RS-0262328', '1', '1', '150', '85', 'RBH-f881', 'Drinks', 'Coke', '150', '', '02/08/18'),
(2, 'RS-233323', '1', '91', '13650', '7735', 'RBH-f881', 'Drinks', 'Coke ', '150', '', '02/08/18'),
(3, 'RS-0233302', '1', '1', '150', '85', 'RBH-f881', 'Drinks', 'Coke ', '150', '', '02/12/18'),
(4, 'RS-86033', '1', '1', '150', '85', 'RBH-f881', 'Drinks', 'Coke ', '150', '', '02/13/18'),
(5, 'RS-86033', '1', '1', '150', '85', 'RBH-f881', 'Drinks', 'Coke ', '150', '', '02/13/18'),
(6, 'RS-23332024', '1', '1', '150', '85', 'RBH-f881', 'Drinks', 'Coke ', '150', '', '02/25/18'),
(7, 'RS-0339232', '2', '1', '123', '111', 'RBH-c63e', 'Drinks', 'product1', '123', NULL, '06/14/22'),
(8, 'RS-0339232', '1', '12', '1800', '1020', 'RBH-f881', 'Drinks', 'Coke  ', '150', NULL, '06/14/22'),
(9, 'RS-322333', '2', '1', '123', '111', 'RBH-c63e', 'Drinks', 'product1', '123', NULL, '06/14/22'),
(11, 'RS-2822033', '8', '1', '120', '20', 'RBH-0190', 'Drinks', 'product1 ', '120', NULL, '06/14/22'),
(12, 'RS-0245333', '8', '1', '120', '20', 'RBH-0190', 'Drinks', 'product1 ', '120', NULL, '06/14/22'),
(13, 'RS-0245333', '8', '1', '120', '20', 'RBH-0190', 'Drinks', 'product1 ', '120', NULL, '06/14/22'),
(15, 'RS-83663', '8', '1', '120', '20', 'RBH-0190', 'Drinks', 'product1 ', '120', NULL, '06/14/22'),
(16, 'RS-83663', '8', '1', '120', '20', 'RBH-0190', 'Drinks', 'product1 ', '120', NULL, '06/14/22'),
(17, 'RS-83663', '4', '1', '130', '30', 'RBH-4cff', 'Food', 'prodtwo', '130', NULL, '06/14/22'),
(18, 'RS-5200060', '4', '1', '130', '30', 'RBH-4cff', 'Food', 'prodtwo', '130', NULL, '06/14/22'),
(19, 'RS-9375730', '9', '100', '1200000', '200000', 'RBH-30d5', 'test gat', 'tshirt', '12000', NULL, '06/15/22'),
(20, 'RS-526303', '4', '1', '13', '3', 'RBH-4cff', 'Fo', 'prodtw', '13', NULL, '06/15/22');

-- --------------------------------------------------------

--
-- Structure de la table `sales_order2`
--

CREATE TABLE `sales_order2` (
  `transaction_id` int(11) DEFAULT NULL,
  `invoice` varchar(100) DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `profit` varchar(100) DEFAULT NULL,
  `product_code` varchar(150) DEFAULT NULL,
  `gen_name` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `date` varchar(500) DEFAULT NULL,
  `vendeur` varchar(100) NOT NULL,
  `acheteur` varchar(100) NOT NULL,
  `idtva` int(100) NOT NULL,
  `tauxtva` int(100) NOT NULL,
  `totalsansht` int(100) NOT NULL,
  `adrfact` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sales_order2`
--

INSERT INTO `sales_order2` (`transaction_id`, `invoice`, `product`, `qty`, `amount`, `profit`, `product_code`, `gen_name`, `name`, `price`, `discount`, `date`, `vendeur`, `acheteur`, `idtva`, `tauxtva`, `totalsansht`, `adrfact`) VALUES
(NULL, 'RS-373593', '9', '1', '12000', '2000', 'RBH-30d5', 'test gat', 'tshirt', '12000', NULL, '06/16/22', '', '', 0, 0, 0, ''),
(NULL, 'RS-20023779', '9', '1', '12000', '2000', 'RBH-30d5', 'test gat', 'tshirt', '12000', NULL, '06/16/22', '', '', 0, 0, 0, ''),
(NULL, 'RS-72293', '9', '1', '12000', '2000', 'RBH-30d5', 'test gat', 'tshirt', '12000', NULL, '06/16/22', '', '', 0, 0, 0, ''),
(NULL, 'RS-0303323', '9', '1', '12000', '2000', 'RBH-30d5', 'test gat', 'tshirt', '12000', NULL, '06/16/22', '', '', 0, 0, 0, ''),
(NULL, 'RS-2309653', '9', '1', '12000', '2000', 'RBH-30d5', 'test gat', 'tshirt', '12000', NULL, '06/26/22', '', '', 0, 0, 0, ''),
(NULL, 'RS-2309653', '9', '1', '12000', '2000', 'RBH-30d5', 'test gat', 'tshirt', '12000', NULL, '06/26/22', '', '', 0, 0, 0, ''),
(NULL, 'RS-2258', '4', '1', '13', '3', 'RBH-4cff', 'Fo', 'prodtw', '13', NULL, '06/26/22', '', '', 0, 0, 0, ''),
(NULL, 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 12, 12, 12, 'aa'),
(NULL, 'RS-005230', '9', '1', '12000', '2000', 'RBH-30d5', 'test gat', 'tshirt', '12000', NULL, '06/27/22', '', '', 0, 0, 0, ''),
(NULL, 'RS-4833300', '9', '1', '12000', '2000', 'RBH-30d5', 'test gat', 'tshirt', '12000', NULL, '06/27/22', '', '', 0, 0, 0, ''),
(NULL, 'RS-4235533', '9', '1', '12000', '2000', 'RBH-30d5', 'test gat', 'tshirt', '12000', NULL, '06/27/22', '', '', 0, 0, 0, ''),
(NULL, 'RS-2223342', '9', '1', '12000', '2000', 'RBH-30d5', 'test gat', 'tshirt', '12000', NULL, '06/27/22', '', '', 0, 0, 0, ''),
(NULL, 'RS-7452009', '9', '1', '12000', '2000', 'RBH-30d5', 'test gat', 'tshirt', '12000', NULL, '06/27/22', '', '', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_no` varchar(8) DEFAULT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `middlename` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `course` varchar(8) DEFAULT NULL,
  `section` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`student_id`, `student_no`, `firstname`, `middlename`, `lastname`, `course`, `section`) VALUES
(1, '101054', 'Ruby', '', 'Diamon', 'BSIT', '2B'),
(2, '2012df', 'Dapo', '', 'Adisa ', 'Computer', '2'),
(3, '24323', 'Asese', '', 'Temi', 'Computer', '2A');

-- --------------------------------------------------------

--
-- Structure de la table `supliers`
--

CREATE TABLE `supliers` (
  `suplier_id` int(11) NOT NULL,
  `suplier_name` varchar(100) DEFAULT NULL,
  `suplier_address` varchar(100) DEFAULT NULL,
  `suplier_contact` varchar(100) DEFAULT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `siret` varchar(100) NOT NULL,
  `tva` int(255) NOT NULL,
  `idsociete` varchar(100) NOT NULL,
  `infobancaire` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `supliers`
--

INSERT INTO `supliers` (`suplier_id`, `suplier_name`, `suplier_address`, `suplier_contact`, `contact_person`, `note`, `siret`, `tva`, `idsociete`, `infobancaire`) VALUES
(1, 'aymen mbarek', 'tunisia', 'Mr. aymen', '11223322', 'africa', '', 0, '', ''),
(2, 'MBAREK', 'TN', 'TN', '12121212', 'N', '', 0, '', ''),
(4, 'supplierqfff', 'ss', '44444', '2', 'cc', '', 0, '', ''),
(6, 'azaz', 'azaz', 'azaz', 'azaz', 'azaz', '1212', 2, 'azaz', 'azaz');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`) VALUES
(2, 'ahmed', '0000', 'Cashier Pharmacy', 'Cashier'),
(3, 'admin', 'admin123', 'Administrator', 'admin'),
(6, 'darks', '0000', 'dark', 'Cashier');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Index pour la table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Index pour la table `borrowing`
--
ALTER TABLE `borrowing`
  ADD PRIMARY KEY (`borrow_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Index pour la table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Index pour la table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Index pour la table `purchases_item`
--
ALTER TABLE `purchases_item`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Index pour la table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Index pour la table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Index pour la table `supliers`
--
ALTER TABLE `supliers`
  ADD PRIMARY KEY (`suplier_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `borrowing`
--
ALTER TABLE `borrowing`
  MODIFY `borrow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `collection`
--
ALTER TABLE `collection`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `purchases_item`
--
ALTER TABLE `purchases_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `supliers`
--
ALTER TABLE `supliers`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
