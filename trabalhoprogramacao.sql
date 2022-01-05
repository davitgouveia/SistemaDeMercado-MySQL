-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13-Dez-2021 às 22:01
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `trabalhoprogramacao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL,
  `nomeCliente` varchar(100) NOT NULL,
  `cpfCliente` bigint(12) NOT NULL,
  `cidadeCliente` varchar(100) NOT NULL,
  `estadoCliente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`idCliente`, `nomeCliente`, `cpfCliente`, `cidadeCliente`, `estadoCliente`) VALUES
(9, 'Mateus Viotto', 12234566789, 'Santa Rita do Passa Quatro', 'SP'),
(10, 'Davi Gouveia', 11123456789, 'Piracicaba', 'SP'),
(11, 'Mario Masias', 22134567899, 'Porto Alegre', 'MT'),
(12, 'Leandro Oliveira', 12345556789, 'Porto Ferreira', 'SP'),
(13, 'Caio Vinicius', 12345654552, 'Lavras', 'MG'),
(14, 'Isadora Maia', 55612212154, 'Piracicaba', 'SP'),
(15, 'Lucas Souza', 65661211545, 'Piracicaba', 'SP'),
(16, 'Bruna da Silva', 16166266526, 'Porto Alegre', 'MT'),
(17, 'Joana Amora', 15162162626, 'Santos', 'GO'),
(18, 'Marcos Camara', 15456651215, 'Riberão Preto', 'SP'),
(19, 'Lucas Paulo', 12512545621, 'Santa Rita Passa Quatro', 'SP'),
(20, 'Pedro Barriviera', 15151515151, 'Jundiai', 'ES');

-- --------------------------------------------------------

--
-- Estrutura da tabela `entrada`
--

CREATE TABLE `entrada` (
  `entradaid` int(11) NOT NULL,
  `entradadata` date NOT NULL,
  `entradaquantidade` int(11) NOT NULL,
  `entradaitemid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `entrada`
--

INSERT INTO `entrada` (`entradaid`, `entradadata`, `entradaquantidade`, `entradaitemid`) VALUES
(29, '1999-12-13', 18, 3),
(30, '2021-01-15', 56, 10),
(31, '2021-01-15', 10, 11),
(32, '2021-01-15', 60, 12),
(33, '2021-01-15', 102, 13),
(34, '2021-01-15', 23, 15),
(35, '2021-01-15', 89, 19),
(36, '2021-01-15', 15, 21),
(37, '2021-01-15', 5, 29),
(38, '2021-01-16', 47, 20),
(39, '2021-01-16', 25, 26),
(40, '2021-01-26', 152, 10),
(41, '2021-02-28', 79, 17),
(42, '2021-02-28', 50, 24),
(43, '2021-01-29', 89, 25),
(44, '2021-03-15', 90, 23),
(45, '2021-03-16', 21, 20),
(46, '2021-03-29', 89, 16),
(47, '2021-04-05', 5, 22),
(48, '2021-09-02', 60, 18),
(49, '2021-09-02', 79, 15),
(50, '2012-12-12', 50, 31),
(51, '2021-11-19', 10, 31),
(52, '2021-12-13', 170, 32),
(54, '1999-12-11', 1, 13),
(55, '1999-12-12', 50, 35),
(56, '1999-12-12', 100, 36),
(57, '1999-12-12', 100, 37),
(58, '1999-12-12', 20, 22),
(59, '1999-12-12', 15, 38),
(60, '1999-12-12', 2, 39),
(61, '1999-12-12', 10, 40),
(62, '2021-12-13', 0, 45),
(63, '2021-12-13', 0, 46),
(64, '1999-12-12', 15, 46),
(65, '2021-12-13', 0, 47),
(66, '2021-12-13', 0, 48),
(67, '2021-12-13', 0, 49),
(68, '2021-12-13', 0, 50);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `estoqueid` int(11) NOT NULL,
  `estoquequantidade` bigint(20) NOT NULL,
  `estoqueitemid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `idFunc` int(11) NOT NULL,
  `nomeFunc` varchar(100) NOT NULL,
  `cpfFunc` bigint(12) NOT NULL,
  `cidadeFunc` varchar(100) NOT NULL,
  `estadoFunc` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`idFunc`, `nomeFunc`, `cpfFunc`, `cidadeFunc`, `estadoFunc`) VALUES
(6, 'Antonio Carlos', 12345678990, 'Santos', 'DF'),
(7, 'José da Silva', 12345567899, 'Santos', 'DF'),
(8, 'Bianca Amaral', 11234567899, 'Santos', 'DF'),
(9, 'Bruna da Silva', 12345677897, 'Santos', 'DF'),
(10, 'Mario Amaral', 11233456789, 'Porto Alegre', 'PR'),
(11, 'João Ricardo', 15454984515, 'Santa Rita do Passa Quatro', 'SP'),
(12, 'Nadia', 15646665985, 'Santos', 'CE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itempedido`
--

CREATE TABLE `itempedido` (
  `itempedidoid` int(11) NOT NULL,
  `pedidoid` int(100) NOT NULL,
  `itempedidoquantidade` int(11) NOT NULL,
  `produtoid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `itempedido`
--

INSERT INTO `itempedido` (`itempedidoid`, `pedidoid`, `itempedidoquantidade`, `produtoid`) VALUES
(76, 35, 2, 3),
(77, 35, 3, 5),
(80, 38, 15, 3),
(81, 39, 5, 5),
(82, 39, 10, 3),
(83, 39, 15, 2),
(84, 40, 4, 3),
(90, 36, 5, 3),
(91, 36, 10, 5),
(94, 44, 15, 5),
(95, 41, 96, 2),
(96, 41, 59, 3),
(97, 45, 18, 3),
(99, 46, 15, 3),
(100, 47, 15, 2),
(101, 47, 10, 5),
(102, 47, 17, 3),
(105, 48, 9, 2),
(106, 49, 69, 5),
(107, 50, 69, 3),
(108, 51, 18, 3),
(109, 51, 8, 2),
(110, 52, 2, 26),
(111, 52, 2, 29),
(112, 52, 1, 20),
(113, 52, 15, 16),
(114, 52, 1, 16),
(115, 52, 2, 17),
(116, 53, 50, 24),
(117, 53, 200, 12),
(123, 55, 10, 21),
(124, 55, 10, 15),
(128, 56, 15, 20),
(129, 56, 8, 19),
(130, 56, 6, 28),
(131, 57, 3, 31),
(132, 57, 6, 12),
(133, 57, 2, 19),
(134, 54, 2, 25),
(135, 54, 2, 18),
(136, 54, 2, 15),
(137, 54, 5, 28),
(138, 54, 6, 19),
(139, 58, 12, 16),
(140, 58, 18, 22),
(142, 59, 17, 32),
(143, 60, 3, 22),
(144, 61, 1, 10),
(145, 62, 3, 23),
(146, 62, 3, 22),
(147, 63, 4, 34),
(148, 64, 9, 34),
(149, 65, 2, 34),
(150, 66, 2, 34),
(151, 67, 2, 34),
(152, 68, 2, 34),
(153, 69, 2, 34),
(154, 70, 1, 10),
(155, 71, 1, 35),
(156, 72, 6, 35),
(160, 73, 10, 36),
(161, 73, 10, 36),
(162, 0, 1, 39),
(163, 0, 0, 40),
(164, 0, 0, 41),
(165, 0, 0, 42),
(166, 0, 0, 43),
(167, 0, 0, 44),
(168, 0, 0, 45),
(169, 0, 0, 46),
(170, 74, 16, 46),
(171, 0, 0, 47),
(172, 0, 0, 48),
(173, 0, 0, 49),
(174, 0, 0, 50);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `pedidoid` int(11) NOT NULL,
  `pedidodata` date NOT NULL,
  `clienteid` int(11) NOT NULL,
  `funcionarioid` int(11) NOT NULL,
  `pedidovalor` double NOT NULL,
  `pedidodesconto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`pedidoid`, `pedidodata`, `clienteid`, `funcionarioid`, `pedidovalor`, `pedidodesconto`) VALUES
(52, '2021-01-05', 9, 9, 181, 15),
(53, '2021-01-05', 13, 6, 1250, 25),
(54, '2021-12-12', 14, 8, 166, 5),
(55, '2021-12-16', 16, 8, 230, 60),
(56, '2021-12-05', 15, 10, 157, 89),
(57, '2012-12-12', 18, 11, 100, 20),
(59, '2021-12-13', 20, 12, 85, 25),
(60, '1999-12-12', 12, 10, 55, 1),
(61, '1999-12-12', 14, 9, 21, 1),
(62, '2021-12-13', 19, 6, 85, 6),
(63, '2021-12-13', 16, 7, 14, 1),
(64, '1999-12-13', 15, 9, 31, 18),
(65, '1999-12-12', 19, 9, 7, 5),
(66, '1999-12-12', 12, 9, 7, 0),
(67, '1999-12-12', 15, 7, 7, 0),
(68, '1999-12-12', 13, 9, 7, 0),
(69, '1999-12-12', 17, 9, 6.8, 0),
(70, '1999-12-12', 13, 9, 20.5, 0),
(72, '1999-12-12', 20, 9, 30, 6),
(73, '1999-12-12', 19, 9, 800, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idProd` int(11) NOT NULL,
  `nomeProd` varchar(100) NOT NULL,
  `descProd` text NOT NULL,
  `valorProd` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idProd`, `nomeProd`, `descProd`, `valorProd`) VALUES
(10, 'Arroz', 'Arroz branco', 20.5),
(11, 'Feijão', 'Feijão preto', 156),
(12, 'Cerveja', '', 5),
(13, 'Coca-Cola', 'Refrigerante gaseificado 2L', 5),
(15, 'Açucar', 'Açucar cristal', 20),
(16, 'Nescau', 'Achocolatado em pó 800g', 8),
(17, 'Café', 'Café preto 500g', 15),
(18, 'Gelatina', '', 4),
(19, 'Guaraná', 'Refrigerante 1L', 5),
(20, 'Água', '1 litro', 3),
(21, 'Biscoito de maizena', '', 3),
(22, 'Gelo', 'Gelo 5L', 18.2),
(23, 'Macarrão', '', 10),
(24, 'Miojo', 'Miojo sabor carne', 5),
(25, 'Frango', '500g filé de frango', 14.4),
(26, 'Suco sabor abacaxi', '', 5),
(27, 'Sal', '500g sal grosso', 12),
(28, 'Farinha', 'Farinha de trigo 1kg', 12),
(29, 'Fermento em pó', '', 5),
(30, 'Cereal', '', 9),
(31, 'Açai', 'Açai', 20),
(32, 'Danone', 'Sabor morango', 5),
(33, 'Farofa', '', 7.3),
(34, 'Ameixa', '', 3.4),
(35, 'Teste', '4', 5),
(36, 'CU', 'aaa', 10),
(37, 'ccccc', '', 1),
(38, 'mmmmmmmmm', '5', 15),
(39, 'ASP', '', 15),
(40, 'DAVIIII', '15', 15),
(41, 'PADRE', '', 15),
(42, '15', '15', 15),
(43, '15', '15', 15),
(44, '16', '16', 16),
(46, 'Produtao', '', 15),
(47, 'joaoa', '', 8),
(48, 'joao', '', 8.5),
(49, 'Gelinho', '', 15.4),
(50, 'Mateus', '121212', 112.2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `entrada`
--
ALTER TABLE `entrada`
  ADD PRIMARY KEY (`entradaid`);

--
-- Índices para tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`estoqueid`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`idFunc`);

--
-- Índices para tabela `itempedido`
--
ALTER TABLE `itempedido`
  ADD PRIMARY KEY (`itempedidoid`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`pedidoid`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idProd`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `entrada`
--
ALTER TABLE `entrada`
  MODIFY `entradaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de tabela `estoque`
--
ALTER TABLE `estoque`
  MODIFY `estoqueid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `idFunc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `itempedido`
--
ALTER TABLE `itempedido`
  MODIFY `itempedidoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `pedidoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idProd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
