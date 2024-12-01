-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/12/2024 às 00:55
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
-- Banco de dados: `clinica`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `adm`
--

CREATE TABLE `adm` (
  `id_adm` int(11) NOT NULL,
  `id_avaliacao_fisica` int(11) DEFAULT NULL,
  `articulacao` varchar(255) DEFAULT NULL,
  `movimento` varchar(255) DEFAULT NULL,
  `graus_movimento_direito` decimal(10,2) DEFAULT NULL,
  `graus_movimento_esquerdo` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `anamnese`
--

CREATE TABLE `anamnese` (
  `id` int(11) NOT NULL,
  `data_avaliacao` date DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `endereco` text DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(5,2) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `genero` varchar(10) DEFAULT NULL,
  `estado_civil` varchar(20) DEFAULT NULL,
  `numero_gestacoes` int(11) DEFAULT NULL,
  `numero_filhos` int(11) DEFAULT NULL,
  `tipos_partos` text DEFAULT NULL,
  `nivel_escolaridade` varchar(100) DEFAULT NULL,
  `profissao` varchar(100) DEFAULT NULL,
  `ocupacao` varchar(100) DEFAULT NULL,
  `condicao_fisica` varchar(255) DEFAULT NULL,
  `tabagista` varchar(10) DEFAULT NULL,
  `tempo_tabagismo` varchar(50) DEFAULT NULL,
  `etilista` varchar(10) DEFAULT NULL,
  `tempo_etilismo` varchar(50) DEFAULT NULL,
  `comorbidades` text DEFAULT NULL,
  `medicamentos_uso_continuo` text DEFAULT NULL,
  `medicamentos_atuais` text DEFAULT NULL,
  `tratamentos_complementares` text DEFAULT NULL,
  `diagnostico_clinico` text DEFAULT NULL,
  `cid` varchar(20) DEFAULT NULL,
  `queixa_principal` text DEFAULT NULL,
  `outras_queixas` text DEFAULT NULL,
  `historia_doenca_atual` text DEFAULT NULL,
  `historia_doenca_pregressa` text DEFAULT NULL,
  `antecedentes_cirurgicos` text DEFAULT NULL,
  `atividades_afetadas_fatores_ambientais` text DEFAULT NULL,
  `avaliacao_postural` text DEFAULT NULL,
  `inspecao_palpacoa` text DEFAULT NULL,
  `avaliacao_amplitude_movimento` text DEFAULT NULL,
  `informacoes_complementares_amd` text DEFAULT NULL,
  `graduacao_forca_muscular` text DEFAULT NULL,
  `avaliacao_perimetria` text DEFAULT NULL,
  `avaliacao_sensibilidade` text DEFAULT NULL,
  `testes_especiais` text DEFAULT NULL,
  `exames_complementares` text DEFAULT NULL,
  `outras_informacoes` text DEFAULT NULL,
  `diagnostico_cinesiologico_funcional` text DEFAULT NULL,
  `objetivos_terapeuticos` text DEFAULT NULL,
  `conduta_fisioterapeutica` text DEFAULT NULL,
  `objetivos_paciente` text DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `cabeca` varchar(50) DEFAULT NULL,
  `ombro` varchar(50) DEFAULT NULL,
  `clavicula` varchar(50) DEFAULT NULL,
  `cotovelo` varchar(50) DEFAULT NULL,
  `antebraco` varchar(50) DEFAULT NULL,
  `eias` varchar(50) DEFAULT NULL,
  `eips` varchar(50) DEFAULT NULL,
  `joelhos` varchar(50) DEFAULT NULL,
  `patela` varchar(50) DEFAULT NULL,
  `tornozelos` varchar(50) DEFAULT NULL,
  `pes` varchar(50) DEFAULT NULL,
  `coluna_cervical` varchar(50) DEFAULT NULL,
  `coluna_toracica` varchar(50) DEFAULT NULL,
  `coluna_lombar` varchar(50) DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `inspecao_palpacao` text DEFAULT NULL,
  `ombro_flexao` int(11) DEFAULT NULL,
  `ombro_extensao` int(11) DEFAULT NULL,
  `cotovelo_flexao` int(11) DEFAULT NULL,
  `cotovelo_extensao` int(11) DEFAULT NULL,
  `radioulnar_pronacao` int(11) DEFAULT NULL,
  `radioulnar_supinacao` int(11) DEFAULT NULL,
  `punho_flexao` int(11) DEFAULT NULL,
  `punho_extensao` int(11) DEFAULT NULL,
  `punho_aducao` int(11) DEFAULT NULL,
  `punho_abducao` int(11) DEFAULT NULL,
  `quadril_flexao` int(11) DEFAULT NULL,
  `quadril_extensao` int(11) DEFAULT NULL,
  `quadril_aducao` int(11) DEFAULT NULL,
  `quadril_abducao` int(11) DEFAULT NULL,
  `quadril_rotacao_medial` int(11) DEFAULT NULL,
  `quadril_rotacao_lateral` int(11) DEFAULT NULL,
  `joelho_flexao` int(11) DEFAULT NULL,
  `joelho_extensao` int(11) DEFAULT NULL,
  `tornozelo_flexao_dorsal` int(11) DEFAULT NULL,
  `tornozelo_flexao_plantar` int(11) DEFAULT NULL,
  `tornozelo_aducao` int(11) DEFAULT NULL,
  `tornozelo_abducao` int(11) DEFAULT NULL,
  `coluna_cervical_flexao` int(11) DEFAULT NULL,
  `coluna_cervical_extensao` int(11) DEFAULT NULL,
  `coluna_cervical_inclinacao_lateral` int(11) DEFAULT NULL,
  `coluna_cervical_rotacao` int(11) DEFAULT NULL,
  `coluna_lombar_flexao` int(11) DEFAULT NULL,
  `coluna_lombar_extensao` int(11) DEFAULT NULL,
  `coluna_lombar_inclinacao_lateral` int(11) DEFAULT NULL,
  `coluna_lombar_rotacao` int(11) DEFAULT NULL,
  `informacoes_adm` text DEFAULT NULL,
  `forca_muscular` text DEFAULT NULL,
  `perimetria` text DEFAULT NULL,
  `sensibilidade` text DEFAULT NULL,
  `diagnostico_cinesiologico` text DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacao`
--

CREATE TABLE `avaliacao` (
  `id_avaliacao` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `data_avaliacao` date DEFAULT NULL,
  `queixa_principal` text DEFAULT NULL,
  `outras_queixas` text DEFAULT NULL,
  `comorbidades` text DEFAULT NULL,
  `medicamentos_uso_continuo` text DEFAULT NULL,
  `medicamentos_atuais` text DEFAULT NULL,
  `tratamentos_complementares` text DEFAULT NULL,
  `diagnostico_clinico` text DEFAULT NULL,
  `cid` text DEFAULT NULL,
  `historia_doenca_atual` text DEFAULT NULL,
  `historia_doenca_pregressa` text DEFAULT NULL,
  `antecedentes_cirurgicos` text DEFAULT NULL,
  `atividades_afetadas` text DEFAULT NULL,
  `fatores_ambientais` text DEFAULT NULL,
  `observacoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `avaliacao`
--

INSERT INTO `avaliacao` (`id_avaliacao`, `id_paciente`, `data_avaliacao`, `queixa_principal`, `outras_queixas`, `comorbidades`, `medicamentos_uso_continuo`, `medicamentos_atuais`, `tratamentos_complementares`, `diagnostico_clinico`, `cid`, `historia_doenca_atual`, `historia_doenca_pregressa`, `antecedentes_cirurgicos`, `atividades_afetadas`, `fatores_ambientais`, `observacoes`) VALUES
(1, 3, '2024-03-03', '3', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 3, '2123-04-23', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacao_fisica`
--

CREATE TABLE `avaliacao_fisica` (
  `id_avaliacao_fisica` int(11) NOT NULL,
  `id_avaliacao` int(11) DEFAULT NULL,
  `postura_cabeca` varchar(255) DEFAULT NULL,
  `postura_ombro` varchar(255) DEFAULT NULL,
  `postura_clavicula` varchar(255) DEFAULT NULL,
  `postura_cotovelo` varchar(255) DEFAULT NULL,
  `postura_antebraco` varchar(255) DEFAULT NULL,
  `postura_maos` varchar(255) DEFAULT NULL,
  `postura_eias` varchar(255) DEFAULT NULL,
  `postura_joelhos` varchar(255) DEFAULT NULL,
  `postura_patelas` varchar(255) DEFAULT NULL,
  `postura_tornozelos` varchar(255) DEFAULT NULL,
  `postura_coluna_cervical` varchar(255) DEFAULT NULL,
  `postura_coluna_toracica` varchar(255) DEFAULT NULL,
  `postura_coluna_lombar` varchar(255) DEFAULT NULL,
  `inspecao_palapacao` text DEFAULT NULL,
  `informacoes_adm` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `avaliacao_fisica`
--

INSERT INTO `avaliacao_fisica` (`id_avaliacao_fisica`, `id_avaliacao`, `postura_cabeca`, `postura_ombro`, `postura_clavicula`, `postura_cotovelo`, `postura_antebraco`, `postura_maos`, `postura_eias`, `postura_joelhos`, `postura_patelas`, `postura_tornozelos`, `postura_coluna_cervical`, `postura_coluna_toracica`, `postura_coluna_lombar`, `inspecao_palapacao`, `informacoes_adm`) VALUES
(1, 1, '3', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, '3', NULL, NULL),
(2, 2, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `forca_muscular`
--

CREATE TABLE `forca_muscular` (
  `id_forca_muscular` int(11) NOT NULL,
  `id_avaliacao_fisica` int(11) DEFAULT NULL,
  `grau_forca` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `forca_muscular`
--

INSERT INTO `forca_muscular` (`id_forca_muscular`, `id_avaliacao_fisica`, `grau_forca`) VALUES
(1, 1, '3'),
(2, 2, '12');

-- --------------------------------------------------------

--
-- Estrutura para tabela `notificacoes`
--

CREATE TABLE `notificacoes` (
  `id_notificacao` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `mensagem` text DEFAULT NULL,
  `lida` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `paciente`
--

CREATE TABLE `paciente` (
  `id_paciente` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `endereco` text DEFAULT NULL,
  `peso` decimal(10,2) DEFAULT NULL,
  `altura` decimal(10,2) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `estado_civil` varchar(50) DEFAULT NULL,
  `numero_gestacoes` int(11) DEFAULT NULL,
  `numero_filhos` int(11) DEFAULT NULL,
  `tipo_parto` varchar(50) DEFAULT NULL,
  `nivel_escolaridade` varchar(255) DEFAULT NULL,
  `profissao` varchar(255) DEFAULT NULL,
  `ocupacao` varchar(255) DEFAULT NULL,
  `condicao_fisica` varchar(255) DEFAULT NULL,
  `tabagista` varchar(50) DEFAULT NULL,
  `etilista` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `paciente`
--

INSERT INTO `paciente` (`id_paciente`, `nome`, `endereco`, `peso`, `altura`, `data_nascimento`, `idade`, `genero`, `estado_civil`, `numero_gestacoes`, `numero_filhos`, `tipo_parto`, `nivel_escolaridade`, `profissao`, `ocupacao`, `condicao_fisica`, `tabagista`, `etilista`) VALUES
(3, 'eduardo e', 'rua norte da america 1234', 65.00, 1.70, '2005-05-06', 19, 'Masculino', 'Solteiro', 2, 2, 'Cesárea', 'Médio', 'advogado', 'n sei', 'Normal', 'Sim', 'Sim');

-- --------------------------------------------------------

--
-- Estrutura para tabela `perimetria`
--

CREATE TABLE `perimetria` (
  `id_perimetria` int(11) NOT NULL,
  `id_avaliacao_fisica` int(11) DEFAULT NULL,
  `regiao` varchar(255) DEFAULT NULL,
  `medida_1` decimal(10,2) DEFAULT NULL,
  `medida_2` decimal(10,2) DEFAULT NULL,
  `medida_3` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `perimetria`
--

INSERT INTO `perimetria` (`id_perimetria`, `id_avaliacao_fisica`, `regiao`, `medida_1`, `medida_2`, `medida_3`) VALUES
(1, 1, '3', 3.00, 3.00, 3.00),
(2, 2, '1', 1.00, 1.00, 1.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `plano_terapeutico`
--

CREATE TABLE `plano_terapeutico` (
  `id_plano_terapeutico` int(11) NOT NULL,
  `id_avaliacao` int(11) DEFAULT NULL,
  `diagnostico_cinesiologico` text DEFAULT NULL,
  `objetivos_terapeuticos` text DEFAULT NULL,
  `conduta_fisioterapeutica` text DEFAULT NULL,
  `objetivos_paciente` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `plano_terapeutico`
--

INSERT INTO `plano_terapeutico` (`id_plano_terapeutico`, `id_avaliacao`, `diagnostico_cinesiologico`, `objetivos_terapeuticos`, `conduta_fisioterapeutica`, `objetivos_paciente`) VALUES
(1, 1, '3', '3', NULL, NULL),
(2, 2, '1', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `prontuarios_psico`
--

CREATE TABLE `prontuarios_psico` (
  `id_prontuario` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `data_prontuario` date DEFAULT NULL,
  `queixa_principal` text DEFAULT NULL,
  `outras_queixas` text DEFAULT NULL,
  `comorbidades` text DEFAULT NULL,
  `medicamentos_uso_continuo` text DEFAULT NULL,
  `medicamentos_atuais` text DEFAULT NULL,
  `tratamentos_complementares` text DEFAULT NULL,
  `diagnostico_clinico` text DEFAULT NULL,
  `cid` text DEFAULT NULL,
  `historia_doenca` text DEFAULT NULL,
  `resultados_testes_psicologicos` text DEFAULT NULL,
  `plano_terapeutico` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `prontuarios_psico`
--

INSERT INTO `prontuarios_psico` (`id_prontuario`, `id_paciente`, `data_prontuario`, `queixa_principal`, `outras_queixas`, `comorbidades`, `medicamentos_uso_continuo`, `medicamentos_atuais`, `tratamentos_complementares`, `diagnostico_clinico`, `cid`, `historia_doenca`, `resultados_testes_psicologicos`, `plano_terapeutico`) VALUES
(4, 3, '0003-03-03', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sensibilidade`
--

CREATE TABLE `sensibilidade` (
  `id_sensibilidade` int(11) NOT NULL,
  `id_avaliacao_fisica` int(11) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `sensibilidade_tatil_direito` tinyint(1) DEFAULT NULL,
  `sensibilidade_tatil_esquerdo` tinyint(1) DEFAULT NULL,
  `sensibilidade_dolorosa_direito` tinyint(1) DEFAULT NULL,
  `sensibilidade_dolorosa_esquerdo` tinyint(1) DEFAULT NULL,
  `sensibilidade_termica_direito` tinyint(1) DEFAULT NULL,
  `sensibilidade_termica_esquerdo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sensibilidade`
--

INSERT INTO `sensibilidade` (`id_sensibilidade`, `id_avaliacao_fisica`, `local`, `sensibilidade_tatil_direito`, `sensibilidade_tatil_esquerdo`, `sensibilidade_dolorosa_direito`, `sensibilidade_dolorosa_esquerdo`, `sensibilidade_termica_direito`, `sensibilidade_termica_esquerdo`) VALUES
(1, 1, '3', 1, 1, NULL, NULL, NULL, NULL),
(2, 2, '1', 1, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sessao`
--

CREATE TABLE `sessao` (
  `id_sessao` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `id_aluno` int(11) DEFAULT NULL,
  `data_horario` datetime DEFAULT NULL,
  `anotacoes` text DEFAULT NULL,
  `arquivo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `testes_especiais`
--

CREATE TABLE `testes_especiais` (
  `id_teste_especial` int(11) NOT NULL,
  `id_avaliacao_fisica` int(11) DEFAULT NULL,
  `descricao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `testes_especiais`
--

INSERT INTO `testes_especiais` (`id_teste_especial`, `id_avaliacao_fisica`, `descricao`) VALUES
(1, 1, '3'),
(2, 2, '1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha_hash` varchar(255) DEFAULT NULL,
  `nivel_acesso` enum('Aluno','Professor','Administrador') NOT NULL,
  `id_professor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nome`, `email`, `senha_hash`, `nivel_acesso`, `id_professor`) VALUES
(12, 'admin', 'admin@admin.com', '$2y$10$lb4RQeTUoNEPZ9mRxp3QUOxXVu5LNdihOUVbGMhloRLQ05vYnAtVC', 'Administrador', NULL),
(13, 'henrique', 'henrique@gmail.com', '$2y$10$.cV.qSnu5aPYmkK9iuW30uTQ58WWnZPGNpBXvDI1y8tS/zmLA.o3G', 'Aluno', NULL),
(18, 'prof', 'prof@gmail.com', '$2y$10$yhzeYM7l71.GZa7iHc7GBeWkSAv2/qvmbF1k3xvtyyPGaJvwnDyhO', 'Professor', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `adm`
--
ALTER TABLE `adm`
  ADD PRIMARY KEY (`id_adm`),
  ADD KEY `id_avaliacao_fisica` (`id_avaliacao_fisica`);

--
-- Índices de tabela `anamnese`
--
ALTER TABLE `anamnese`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD PRIMARY KEY (`id_avaliacao`),
  ADD KEY `id_paciente` (`id_paciente`);

--
-- Índices de tabela `avaliacao_fisica`
--
ALTER TABLE `avaliacao_fisica`
  ADD PRIMARY KEY (`id_avaliacao_fisica`),
  ADD KEY `id_avaliacao` (`id_avaliacao`);

--
-- Índices de tabela `forca_muscular`
--
ALTER TABLE `forca_muscular`
  ADD PRIMARY KEY (`id_forca_muscular`),
  ADD KEY `id_avaliacao_fisica` (`id_avaliacao_fisica`);

--
-- Índices de tabela `notificacoes`
--
ALTER TABLE `notificacoes`
  ADD PRIMARY KEY (`id_notificacao`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices de tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Índices de tabela `perimetria`
--
ALTER TABLE `perimetria`
  ADD PRIMARY KEY (`id_perimetria`),
  ADD KEY `id_avaliacao_fisica` (`id_avaliacao_fisica`);

--
-- Índices de tabela `plano_terapeutico`
--
ALTER TABLE `plano_terapeutico`
  ADD PRIMARY KEY (`id_plano_terapeutico`),
  ADD KEY `id_avaliacao` (`id_avaliacao`);

--
-- Índices de tabela `prontuarios_psico`
--
ALTER TABLE `prontuarios_psico`
  ADD PRIMARY KEY (`id_prontuario`),
  ADD KEY `id_paciente` (`id_paciente`);

--
-- Índices de tabela `sensibilidade`
--
ALTER TABLE `sensibilidade`
  ADD PRIMARY KEY (`id_sensibilidade`),
  ADD KEY `id_avaliacao_fisica` (`id_avaliacao_fisica`);

--
-- Índices de tabela `sessao`
--
ALTER TABLE `sessao`
  ADD PRIMARY KEY (`id_sessao`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_aluno` (`id_aluno`);

--
-- Índices de tabela `testes_especiais`
--
ALTER TABLE `testes_especiais`
  ADD PRIMARY KEY (`id_teste_especial`),
  ADD KEY `id_avaliacao_fisica` (`id_avaliacao_fisica`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_professor` (`id_professor`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `adm`
--
ALTER TABLE `adm`
  MODIFY `id_adm` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `anamnese`
--
ALTER TABLE `anamnese`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  MODIFY `id_avaliacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `avaliacao_fisica`
--
ALTER TABLE `avaliacao_fisica`
  MODIFY `id_avaliacao_fisica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `forca_muscular`
--
ALTER TABLE `forca_muscular`
  MODIFY `id_forca_muscular` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `notificacoes`
--
ALTER TABLE `notificacoes`
  MODIFY `id_notificacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `perimetria`
--
ALTER TABLE `perimetria`
  MODIFY `id_perimetria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `plano_terapeutico`
--
ALTER TABLE `plano_terapeutico`
  MODIFY `id_plano_terapeutico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `prontuarios_psico`
--
ALTER TABLE `prontuarios_psico`
  MODIFY `id_prontuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `sensibilidade`
--
ALTER TABLE `sensibilidade`
  MODIFY `id_sensibilidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `sessao`
--
ALTER TABLE `sessao`
  MODIFY `id_sessao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `testes_especiais`
--
ALTER TABLE `testes_especiais`
  MODIFY `id_teste_especial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `adm`
--
ALTER TABLE `adm`
  ADD CONSTRAINT `adm_ibfk_1` FOREIGN KEY (`id_avaliacao_fisica`) REFERENCES `avaliacao_fisica` (`id_avaliacao_fisica`);

--
-- Restrições para tabelas `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD CONSTRAINT `avaliacao_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`);

--
-- Restrições para tabelas `avaliacao_fisica`
--
ALTER TABLE `avaliacao_fisica`
  ADD CONSTRAINT `avaliacao_fisica_ibfk_1` FOREIGN KEY (`id_avaliacao`) REFERENCES `avaliacao` (`id_avaliacao`);

--
-- Restrições para tabelas `forca_muscular`
--
ALTER TABLE `forca_muscular`
  ADD CONSTRAINT `forca_muscular_ibfk_1` FOREIGN KEY (`id_avaliacao_fisica`) REFERENCES `avaliacao_fisica` (`id_avaliacao_fisica`);

--
-- Restrições para tabelas `notificacoes`
--
ALTER TABLE `notificacoes`
  ADD CONSTRAINT `notificacoes_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Restrições para tabelas `perimetria`
--
ALTER TABLE `perimetria`
  ADD CONSTRAINT `perimetria_ibfk_1` FOREIGN KEY (`id_avaliacao_fisica`) REFERENCES `avaliacao_fisica` (`id_avaliacao_fisica`);

--
-- Restrições para tabelas `plano_terapeutico`
--
ALTER TABLE `plano_terapeutico`
  ADD CONSTRAINT `plano_terapeutico_ibfk_1` FOREIGN KEY (`id_avaliacao`) REFERENCES `avaliacao` (`id_avaliacao`);

--
-- Restrições para tabelas `prontuarios_psico`
--
ALTER TABLE `prontuarios_psico`
  ADD CONSTRAINT `prontuarios_psico_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`) ON DELETE CASCADE;

--
-- Restrições para tabelas `sensibilidade`
--
ALTER TABLE `sensibilidade`
  ADD CONSTRAINT `sensibilidade_ibfk_1` FOREIGN KEY (`id_avaliacao_fisica`) REFERENCES `avaliacao_fisica` (`id_avaliacao_fisica`);

--
-- Restrições para tabelas `sessao`
--
ALTER TABLE `sessao`
  ADD CONSTRAINT `sessao_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`),
  ADD CONSTRAINT `sessao_ibfk_2` FOREIGN KEY (`id_aluno`) REFERENCES `usuarios` (`id_usuario`);

--
-- Restrições para tabelas `testes_especiais`
--
ALTER TABLE `testes_especiais`
  ADD CONSTRAINT `testes_especiais_ibfk_1` FOREIGN KEY (`id_avaliacao_fisica`) REFERENCES `avaliacao_fisica` (`id_avaliacao_fisica`);

--
-- Restrições para tabelas `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_professor`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
