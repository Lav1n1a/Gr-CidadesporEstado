-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 14-Ago-2023 às 13:28
-- Versão do servidor: 5.7.32
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lucasdorioverde_novo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `uf`
--

CREATE TABLE IF NOT EXISTS `uf` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `sigla` varchar(2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `uf`
--

INSERT INTO `uf` (`id`, `nome`, `sigla`, `status`) VALUES
(11, 'Rondônia', 'RO', 1),
(12, 'Acre', 'AC', 1),
(13, 'Amazonas', 'AM', 1),
(14, 'Roraima', 'RR', 1),
(15, 'Pará', 'PA', 1),
(16, 'Amapá', 'AP', 1),
(17, 'Tocantins', 'TO', 1),
(21, 'Maranhão', 'MA', 1),
(22, 'Piauí', 'PI', 1),
(23, 'Ceará', 'CE', 1),
(24, 'Rio Grande do Norte', 'RN', 1),
(25, 'Paraíba', 'PB', 1),
(26, 'Pernambuco', 'PE', 1),
(27, 'Alagoas', 'AL', 1),
(28, 'Sergipe', 'SE', 1),
(29, 'Bahia', 'BA', 1),
(31, 'Minas Gerais', 'MG', 1),
(32, 'Espirito Santo', 'ES', 1),
(33, 'Rio de Janeiro', 'RJ', 1),
(35, 'São Paulo', 'SP', 1),
(41, 'Paraná', 'PR', 1),
(42, 'Santa Catarina', 'SC', 1),
(43, 'Rio Grande do Sul', 'RS', 1),
(50, 'Mato Grosso do Sul', 'MS', 1),
(51, 'Mato Grosso', 'MT', 1),
(52, 'Goiás', 'GO', 1),
(53, 'Distrito Federal', 'DF', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `uf`
--
ALTER TABLE `uf`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
