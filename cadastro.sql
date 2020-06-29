-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Jun-2020 às 04:34
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(1) NOT NULL,
  `nome` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- inserindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nome`) VALUES
(1, 'Fabrica'),
(2, 'Concessionaria'),
(3, 'Revenda');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `categoria` set('Fabrica','Concessionaria','Revenda') NOT NULL,
  `telefone` int(10) NOT NULL,
  `endereço` varchar(100) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `uf` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- inserindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `categoria`, `telefone`, `endereço`, `cidade`, `uf`) VALUES
(1, 'gerulindo automoveis', 'Revenda', 40028922, 'rua dos bobos numero zero', 'curitiba', 'pr'),
(2, 'Reanult', 'Fabrica', 40028922, 'rua das carmelitas', 'são jose dos pinhas', 'pr'),
(3, 'Fiat barigui', 'Concessionaria', 40028922, 'alto da rua xv', 'curitiba', 'pr'),
(4, 'Rogério revenda de autos', 'Revenda', 40028922, 'avenida parana', 'curitiba', 'pr'),
(5, 'asnardo automoveis', 'Revenda', 40028922, 'rua das araucarias 26', 'curitiba', 'pr');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
