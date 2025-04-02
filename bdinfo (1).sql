-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18-Fev-2020 às 15:30
-- Versão do servidor: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdinfo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblbanner`
--

CREATE TABLE `tblbanner` (
  `id` int(11) NOT NULL,
  `caminho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblcarrinho`
--

CREATE TABLE `tblcarrinho` (
  `id` int(11) NOT NULL,
  `carrinho` int(11) NOT NULL,
  `prod` int(11) NOT NULL,
  `acao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tblcarrinho`
--

INSERT INTO `tblcarrinho` (`id`, `carrinho`, `prod`, `acao`) VALUES
(1, 123, 1233, 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblcliente`
--

CREATE TABLE `tblcliente` (
  `idcliente` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `email` varchar(200) NOT NULL,
  `senha` varchar(10) NOT NULL,
  `telefone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tblcliente`
--

INSERT INTO `tblcliente` (`idcliente`, `nome`, `cpf`, `email`, `senha`, `telefone`) VALUES
(1, 'Leo', '185.452.658-06', 'leo@gmail.com', '123', '22531177'),
(2, 'Lucas', '122.588.658-06', 'lucas@gmail.com', '123', '21 35566548'),
(3, 'Leonardo Rodrigues', '03342176503', 'leonardorodrigues@gmail.com', 'leonardo', '21969662313');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblexibeprod`
--

CREATE TABLE `tblexibeprod` (
  `idproduto` int(11) NOT NULL,
  `produto` varchar(5555) NOT NULL,
  `preco` float(10,2) NOT NULL,
  `descricao` varchar(10000) NOT NULL,
  `foto` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tblexibeprod`
--

INSERT INTO `tblexibeprod` (`idproduto`, `produto`, `preco`, `descricao`, `foto`) VALUES
(1, 'Placa de video GeForce 700 Series 1GB', 300.00, '', 'geforce700.jpg'),
(3, 'HyperX 8GB 2666MHZ', 199.00, '', '8gb.jpg'),
(4, 'Mouse RGB xeio de funfun', 99.00, '', 'mouse.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblfunc`
--

CREATE TABLE `tblfunc` (
  `idfunc` int(15) NOT NULL,
  `func` varchar(100) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `data` date NOT NULL,
  `funcao` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblniveldeacesso`
--

CREATE TABLE `tblniveldeacesso` (
  `idnivelacesso` int(11) NOT NULL,
  `acesso` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tblniveldeacesso`
--

INSERT INTO `tblniveldeacesso` (`idnivelacesso`, `acesso`) VALUES
(1, 'Administrador'),
(2, 'Colaborador'),
(3, 'Cliente'),
(4, 'Fornecedor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblproduto`
--

CREATE TABLE `tblproduto` (
  `idprod` int(11) NOT NULL,
  `prod` varchar(50) NOT NULL,
  `precvenda` decimal(10,2) NOT NULL,
  `estoque` varchar(50) NOT NULL,
  `estmax` varchar(50) NOT NULL,
  `estmin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblsituacao`
--

CREATE TABLE `tblsituacao` (
  `idsituacao` int(11) NOT NULL,
  `situacao` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tblsituacao`
--

INSERT INTO `tblsituacao` (`idsituacao`, `situacao`) VALUES
(1, 'ativo'),
(2, 'inativo'),
(3, 'pendente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblsitubanner`
--

CREATE TABLE `tblsitubanner` (
  `id` int(11) NOT NULL,
  `acao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblusuarios`
--

CREATE TABLE `tblusuarios` (
  `idusuario` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(1001) NOT NULL,
  `idsituacao` int(50) NOT NULL,
  `idnivelacesso` int(11) NOT NULL,
  `criado` date NOT NULL,
  `modificado` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tblusuarios`
--

INSERT INTO `tblusuarios` (`idusuario`, `nome`, `email`, `senha`, `idsituacao`, `idnivelacesso`, `criado`, `modificado`) VALUES
(6, 'Lucas', 'lucas@gmail.com', '202cb962ac59075b964b07152d234b70', 1, 1, '2020-02-11', '2020-02-11'),
(7, 'Leonardo', 'leo@gmail.com', '202cb962ac59075b964b07152d234b70', 1, 2, '2020-02-10', '2020-02-11'),
(8, 'Wiclem', 'wiclem@gmail.com', '202cb962ac59075b964b07152d234b70', 1, 3, '2020-02-10', '2020-02-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblbanner`
--
ALTER TABLE `tblbanner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcliente`
--
ALTER TABLE `tblcliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indexes for table `tblexibeprod`
--
ALTER TABLE `tblexibeprod`
  ADD PRIMARY KEY (`idproduto`);

--
-- Indexes for table `tblfunc`
--
ALTER TABLE `tblfunc`
  ADD PRIMARY KEY (`idfunc`);

--
-- Indexes for table `tblniveldeacesso`
--
ALTER TABLE `tblniveldeacesso`
  ADD PRIMARY KEY (`idnivelacesso`);

--
-- Indexes for table `tblproduto`
--
ALTER TABLE `tblproduto`
  ADD PRIMARY KEY (`idprod`);

--
-- Indexes for table `tblsituacao`
--
ALTER TABLE `tblsituacao`
  ADD PRIMARY KEY (`idsituacao`);

--
-- Indexes for table `tblsitubanner`
--
ALTER TABLE `tblsitubanner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusuarios`
--
ALTER TABLE `tblusuarios`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblbanner`
--
ALTER TABLE `tblbanner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcliente`
--
ALTER TABLE `tblcliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblexibeprod`
--
ALTER TABLE `tblexibeprod`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblfunc`
--
ALTER TABLE `tblfunc`
  MODIFY `idfunc` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblniveldeacesso`
--
ALTER TABLE `tblniveldeacesso`
  MODIFY `idnivelacesso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblproduto`
--
ALTER TABLE `tblproduto`
  MODIFY `idprod` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblsituacao`
--
ALTER TABLE `tblsituacao`
  MODIFY `idsituacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblsitubanner`
--
ALTER TABLE `tblsitubanner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblusuarios`
--
ALTER TABLE `tblusuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
