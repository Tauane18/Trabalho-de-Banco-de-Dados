-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09/09/2025 às 14:46
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `associacao_tauane`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `associados`
--

CREATE TABLE `associados` (
  `id_associado` int(11) NOT NULL,
  `nome_completo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `cidade` varchar(11) NOT NULL,
  `comunidade` varchar(255) NOT NULL,
  `cep` varchar(8) NOT NULL,
  `data_associado` date NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `profissao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `associados`
--

INSERT INTO `associados` (`id_associado`, `nome_completo`, `email`, `cpf`, `cidade`, `comunidade`, `cep`, `data_associado`, `telefone`, `profissao`) VALUES
(1, 'Tauane', 'tauane@gmail.com', '00000000000', 'São Francis', 'Agua nova', '39300000', '2025-09-09', '38999999999', 'Trabalhadora Rural'),
(2, 'eloa', 'eloa@gmail.com', '00000000000', 'São Francis', 'Agua nova', '39300000', '2025-09-09', '38999999999', 'Trabalhadora Rural'),
(3, 'joao', 'joao@gmail.com', '00000000000', 'São Francis', 'Agua nova', '39300000', '2025-09-09', '38999999999', 'Trabalhadora Rural'),
(4, 'maria', 'maria@gmail.com', '00000000000', 'São Francis', 'Agua nova', '39300000', '2025-09-09', '38999999999', 'Trabalhadora Rural'),
(5, 'vitoria', 'vitoria@gmail.com', '00000000000', 'São Francis', 'Agua nova', '39300000', '2025-09-09', '38999999999', 'Trabalhadora Rural');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contribuicao`
--

CREATE TABLE `contribuicao` (
  `id_contribuicao` int(11) NOT NULL,
  `data_vencimento` date NOT NULL,
  `valor_pago` float NOT NULL,
  `mes_referencia` varchar(58) NOT NULL,
  `pedencia` varchar(255) NOT NULL,
  `data_pagamento` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `id_associado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contribuicao`
--

INSERT INTO `contribuicao` (`id_contribuicao`, `data_vencimento`, `valor_pago`, `mes_referencia`, `pedencia`, `data_pagamento`, `status`, `id_associado`) VALUES
(1, '2025-09-09', 100, 'Setembro de 2025', 'Não há', '2025-09-09', 'Pago', 1),
(2, '2025-09-09', 100, 'Setembro de 2025', 'Não há', '2025-09-09', 'Pago', 2),
(3, '2025-09-09', 100, 'Setembro de 2025', 'Não há', '2025-09-09', 'Pago', 3),
(4, '2025-09-09', 100, 'Setembro de 2025', 'Não há', '2025-09-09', 'Pago', 4),
(5, '2025-09-09', 100, 'Setembro de 2025', 'Não há', '2025-09-09', 'Pago', 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `associados`
--
ALTER TABLE `associados`
  ADD PRIMARY KEY (`id_associado`);

--
-- Índices de tabela `contribuicao`
--
ALTER TABLE `contribuicao`
  ADD PRIMARY KEY (`id_contribuicao`),
  ADD KEY `id_associado` (`id_associado`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `contribuicao`
--
ALTER TABLE `contribuicao`
  ADD CONSTRAINT `contribuicao_ibfk_1` FOREIGN KEY (`id_associado`) REFERENCES `associados` (`id_associado`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
