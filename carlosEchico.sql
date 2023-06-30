create database carlos;
use carlos;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/06/2023 às 06:36
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `carlos`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_cadastros`
--

CREATE TABLE `tb_cadastros` (
  `id_cad` int(11) NOT NULL,
  `name_cad` varchar(255) DEFAULT NULL,
  `senha_cad` varchar(255) DEFAULT NULL,
  `categoria` varchar(225) DEFAULT NULL,
  `email_cad` varchar(255) DEFAULT NULL,
  `tel_cad` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_cadastros`
--

INSERT INTO `tb_cadastros` (`id_cad`, `name_cad`, `senha_cad`, `categoria`, `email_cad`, `tel_cad`) VALUES
(1, 'chico', '123', 'ADM', 'teste@gmail.com', '27545463'),
(2, 'carlos', '123', 'FUN', 'teste8@gmail.com', '27999568475'),
(3, 'b', '123', 'VIS', 'teste@gmail.com', '27545463');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_chaves`
--

CREATE TABLE `tb_chaves` (
  `id_chave` int(10) UNSIGNED NOT NULL,
  `nome_chave` varchar(80) DEFAULT NULL,
  `codigo_chave` varchar(80) DEFAULT NULL,
  `sala_chave` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_empr`
--

CREATE TABLE `tb_empr` (
  `id_empr` int(10) UNSIGNED NOT NULL,
  `nome_empr` varchar(255) DEFAULT NULL,
  `quantidade_empr` varchar(255) DEFAULT NULL,
  `solicitante_empr` varchar(255) DEFAULT NULL,
  `email_empr` varchar(255) DEFAULT NULL,
  `telefone_empr` varchar(255) DEFAULT NULL,
  `dataEHora_empr` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_empr`
--

INSERT INTO `tb_empr` (`id_empr`, `nome_empr`, `quantidade_empr`, `solicitante_empr`, `email_empr`, `telefone_empr`, `dataEHora_empr`) VALUES
(1, 'sabão  ', '300', 'chico', 'fdgdsg@gmail.com', '52524534', '2023-06-29'),
(2, 'sabão  ', '270', 'chico', 'fdgdsg@gmail.com', '52524534', '2023-06-30'),
(3, 'borracha ', '288', 'chico', 'fdgdsg@gmail.com', '52524534', '2023-06-28');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_emprestimosch`
--

CREATE TABLE `tb_emprestimosch` (
  `id_emprestimoChave` int(10) UNSIGNED NOT NULL,
  `nome_pessoa` varchar(255) DEFAULT NULL,
  `sala_chave` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_prod`
--

CREATE TABLE `tb_prod` (
  `id_prod` int(10) UNSIGNED NOT NULL,
  `nome_prod` varchar(255) DEFAULT NULL,
  `descricao_prod` varchar(255) DEFAULT NULL,
  `codigo_prod` varchar(30) DEFAULT NULL,
  `quantidade_prod` varchar(255) DEFAULT NULL,
  `fileira_prod` varchar(255) DEFAULT NULL,
  `setor_prod` varchar(255) DEFAULT NULL,
  `uso_prod` varchar(255) DEFAULT NULL,
  `unidade_prod` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_prod`
--

INSERT INTO `tb_prod` (`id_prod`, `nome_prod`, `descricao_prod`, `codigo_prod`, `quantidade_prod`, `fileira_prod`, `setor_prod`, `uso_prod`, `unidade_prod`) VALUES
(3, 'cortadora a laser', 'corta', '006060', '5', 'A', '1', 'Não', 'Caixa'),
(4, 'apagador', 'apaga', '008070', '100', 'A', '5', 'Sim', 'Caixa'),
(5, 'Fitas adesivas', 'gruda', '00708090', '60', 'A', '2', 'Sim', 'Caixa'),
(6, 'Disjuntor', 'N/A', '009050', '80', 'B', '3', 'Sim', 'Caixa'),
(7, 'borracha', 'apagar', '0805080', '12', 'B', '2', 'Sim', 'Caixa'),
(8, 'arduindo', 'para estudo', '020503', '120', 'A', '2', 'Sim', 'Caixa'),
(9, 'clipes', 'prender as folhas', '0520608', '100', 'A', '2', 'Sim', 'Caixa'),
(10, 'sabão ', 'limpa', '0506908', '260', 'A', '3', 'Sim', 'Caixa'),
(13, 'borracha', 'apaga', '000521', '255', 'A', '2', 'Sim', 'Caixa'),
(14, 'sabonete liquido', 'para banheiros', '008072', '20', 'B', '3', 'Sim', 'Litros');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_cadastros`
--
ALTER TABLE `tb_cadastros`
  ADD PRIMARY KEY (`id_cad`);

--
-- Índices de tabela `tb_chaves`
--
ALTER TABLE `tb_chaves`
  ADD PRIMARY KEY (`id_chave`);

--
-- Índices de tabela `tb_empr`
--
ALTER TABLE `tb_empr`
  ADD PRIMARY KEY (`id_empr`);

--
-- Índices de tabela `tb_emprestimosch`
--
ALTER TABLE `tb_emprestimosch`
  ADD PRIMARY KEY (`id_emprestimoChave`);

--
-- Índices de tabela `tb_prod`
--
ALTER TABLE `tb_prod`
  ADD PRIMARY KEY (`id_prod`),
  ADD UNIQUE KEY `codigo_prod` (`codigo_prod`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_cadastros`
--
ALTER TABLE `tb_cadastros`
  MODIFY `id_cad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_chaves`
--
ALTER TABLE `tb_chaves`
  MODIFY `id_chave` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_empr`
--
ALTER TABLE `tb_empr`
  MODIFY `id_empr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_emprestimosch`
--
ALTER TABLE `tb_emprestimosch`
  MODIFY `id_emprestimoChave` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_prod`
--
ALTER TABLE `tb_prod`
  MODIFY `id_prod` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;