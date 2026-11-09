-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21/06/2026 às 16:07
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
-- Banco de dados: `gerenciamento_academia`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno`
--

CREATE TABLE `aluno` (
  `id_aluno` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `data_nascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `aluno`
--

INSERT INTO `aluno` (`id_aluno`, `nome`, `cpf`, `telefone`, `email`, `data_nascimento`) VALUES
(1, 'Carlos Silva', '123.456.789-00', '(21) 99999-1111', 'carlos@email.com', '1995-05-10'),
(2, 'Ana Souza', '987.654.321-11', '(21) 99999-2222', 'ana@email.com', '2000-08-22'),
(3, 'Bruno Lima', '111.222.333-44', '(21) 99999-3333', 'bruno@email.com', '1988-12-05'),
(4, 'Mariana Oliveira', '444.555.666-77', '(21) 99999-4444', 'mariana@email.com', '1993-03-15'),
(5, 'Diego Santos', '777.888.999-00', '(21) 99999-5555', 'diego@email.com', '2002-07-19'),
(6, 'Amanda Costa', '222.333.444-55', '(21) 99999-6666', 'amanda@email.com', '1997-10-30'),
(7, 'Fernando Ribeiro', '555.666.777-88', '(21) 99999-7777', 'fernando@email.com', '1985-02-25'),
(8, 'Juliana Almeida', '888.999.000-11', '(21) 99999-8888', 'juliana@email.com', '2001-04-12'),
(9, 'Gabriel Martins', '333.444.555-66', '(21) 99999-9999', 'gabriel@email.com', '1990-09-08'),
(10, 'Camila Rocha', '666.777.888-99', '(21) 99999-0000', 'camila@email.com', '1999-11-14');

-- --------------------------------------------------------

--
-- Estrutura para tabela `exercicio`
--

CREATE TABLE `exercicio` (
  `id_exercicio` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `grupo_muscular` varchar(50) NOT NULL,
  `descricao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `exercicio`
--

INSERT INTO `exercicio` (`id_exercicio`, `nome`, `grupo_muscular`, `descricao`) VALUES
(1, 'Supino Reto', 'Peito', 'Deitado no banco horizontal, descer a barra até o peito e empurrar verticalmente.'),
(2, 'Agachamento Livre', 'Pernas', 'Com a barra nos ombros, agachar até formar um ângulo de 90 graus mantendo a postura.'),
(3, 'Puxada Alta', 'Costas', 'Sentado no aparelho, puxar a barra em direção ao peitoral superior, contraindo as costas.'),
(4, 'Desenvolvimento com Halteres', 'Ombros', 'Sentado, elevar os halteres acima da cabeça até estender os braços.'),
(5, 'Rosca Direta', 'Braços', 'Em pé, flexionar os cotovelos trazendo a barra em direção aos ombros (foco no bíceps).'),
(6, 'Tríceps Pulley', 'Braços', 'Na polia alta, empurrar a barra para baixo estendendo completamente os cotovelos.'),
(7, 'Leg Press 45', 'Pernas', 'Empurrar a plataforma inclinada utilizando a força das pernas, destravando o aparelho com segurança.'),
(8, 'Abdominal Supra', 'Abdomen', 'Deitado de costas, flexionar o tronco aproximando as costelas do quadril.'),
(9, 'Levantamento Terra', 'Costas/Pernas', 'Tirar a barra carregada do chão até a extensão total do quadril e tronco.'),
(10, 'Elevação Lateral', 'Ombros', 'Em pé, elevar os halteres lateralmente até a altura dos ombros.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `instrutor`
--

CREATE TABLE `instrutor` (
  `id_instrutor` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `especialidade` varchar(50) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `instrutor`
--

INSERT INTO `instrutor` (`id_instrutor`, `nome`, `especialidade`, `telefone`, `email`) VALUES
(1, 'Rodrigo Costa', 'Musculação / Hipertrofia', '(21) 98888-3333', 'rodrigo.instrutor@email.com'),
(2, 'Mariana Lima', 'Crossfit / Condicionamento', '(21) 98888-4444', 'mariana.instrutor@email.com'),
(3, 'Ricardo Alves', 'Pilates / Flexibilidade', '(21) 98888-5555', 'ricardo@email.com'),
(4, 'Patricia Gomes', 'Dança / Zumba', '(21) 98888-6666', 'patricia@email.com'),
(5, 'Lucas Torres', 'Artes Marciais / Muay Thai', '(21) 98888-7777', 'lucas@email.com'),
(6, 'Julio Cesar', 'Natação / Hidroginástica', '(21) 98888-8888', 'julio@email.com'),
(7, 'Beatriz Silva', 'Spinning / Cardio', '(21) 98888-9999', 'beatriz@email.com'),
(8, 'Thiago Santos', 'Funcional / Perda de Peso', '(21) 98888-1111', 'thiago@email.com'),
(9, 'Vanessa Ramos', 'Yoga / Meditação', '(21) 98888-2222', 'vanessa@email.com'),
(10, 'Andre Melo', 'Calistenia', '(21) 98888-0000', 'andre@email.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `matricula`
--

CREATE TABLE `matricula` (
  `id_matricula` int(11) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `id_plano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `matricula`
--

INSERT INTO `matricula` (`id_matricula`, `data_inicio`, `data_fim`, `status`, `id_aluno`, `id_plano`) VALUES
(1, '2026-01-10', '2026-02-10', 'Ativa', 1, 1),
(2, '2026-01-15', '2027-01-15', 'Ativa', 2, 4),
(3, '2026-02-01', '2026-05-01', 'Ativa', 3, 2),
(4, '2026-02-10', '2026-08-10', 'Ativa', 4, 3),
(5, '2026-03-01', '2026-04-01', 'Cancelada', 5, 7),
(6, '2026-03-15', '2027-03-15', 'Ativa', 6, 6),
(7, '2026-04-01', '2026-05-01', 'Pausada', 7, 1),
(8, '2026-04-10', '2026-05-10', 'Ativa', 8, 5),
(9, '2026-05-01', '2026-06-01', 'Ativa', 9, 9),
(10, '2026-05-12', '2026-06-12', 'Ativa', 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `id_pagamento` int(11) NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  `valor` decimal(10,2) NOT NULL,
  `forma_pagamento` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `id_aluno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pagamento`
--

INSERT INTO `pagamento` (`id_pagamento`, `data_pagamento`, `valor`, `forma_pagamento`, `status`, `id_aluno`) VALUES
(1, '2026-01-10', 120.00, 'Pix', 'Pago', 1),
(2, '2026-01-15', 999.00, 'Cartão de Crédito', 'Pago', 2),
(3, '2026-02-01', 330.00, 'Boleto', 'Pago', 3),
(4, '2026-02-10', 600.00, 'Cartão de Crédito', 'Pago', 4),
(5, NULL, 90.00, 'Pix', 'Pendente', 5),
(6, '2026-03-15', 1800.00, 'Cartão de Crédito', 'Pago', 6),
(7, '2026-04-01', 120.00, 'Dinheiro', 'Pago', 7),
(8, NULL, 200.00, 'Boleto', 'Atrasado', 8),
(9, '2026-05-01', 100.00, 'Pix', 'Pago', 9),
(10, '2026-05-12', 250.00, 'Pix', 'Pago', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `plano`
--

CREATE TABLE `plano` (
  `id_plano` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `duracao` int(11) NOT NULL,
  `descricao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `plano`
--

INSERT INTO `plano` (`id_plano`, `nome`, `valor`, `duracao`, `descricao`) VALUES
(1, 'Mensal Basico', 120.00, 1, 'Acesso livre à musculação.'),
(2, 'Trimestral Basico', 330.00, 3, 'Acesso à musculação com desconto proporcional.'),
(3, 'Semestral Basico', 600.00, 6, 'Plano de 6 meses para musculação.'),
(4, 'Anual Completo', 999.00, 12, 'Acesso livre a todas as áreas e aulas coletivas.'),
(5, 'Mensal VIP', 200.00, 1, 'Musculação + 2 avaliações físicas por mês.'),
(6, 'Anual VIP', 1800.00, 12, 'Livre acesso + avaliações + direito a levar 1 convidado.'),
(7, 'Plano Universitário', 90.00, 1, 'Desconto especial para estudantes (horário restrito).'),
(8, 'Plano Black Semanal', 45.00, 1, 'Acesso por apenas uma semana na unidade.'),
(9, 'Corporativo Mensal', 100.00, 1, 'Convênio especial para empresas parceiras.'),
(10, 'Plano Gold Familiar', 250.00, 1, 'Acesso para até 3 pessoas da mesma família.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `treino`
--

CREATE TABLE `treino` (
  `id_treino` int(11) NOT NULL,
  `objetivo` varchar(50) NOT NULL,
  `data_criacao` date NOT NULL,
  `observacoes` text DEFAULT NULL,
  `id_aluno` int(11) NOT NULL,
  `id_instrutor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `treino`
--

INSERT INTO `treino` (`id_treino`, `objetivo`, `data_criacao`, `observacoes`, `id_aluno`, `id_instrutor`) VALUES
(1, 'Hipertrofia', '2026-01-12', 'Foco em membros superiores.', 1, 1),
(2, 'Emagrecimento', '2026-01-16', 'Treino de alta intensidade (HIIT).', 2, 2),
(3, 'Fortalecimento', '2026-02-03', 'Foco em lombar e core.', 3, 3),
(4, 'Definição Muscular', '2026-02-12', 'Foco em membros inferiores.', 4, 8),
(5, 'Condicionamento', '2026-03-02', 'Treino leve de reabilitação.', 5, 2),
(6, 'Ganho de Força', '2026-03-17', 'Cargas altas e poucas repetições.', 6, 10),
(7, 'Postural', '2026-04-03', 'Exercícios focados em alongamento.', 7, 3),
(8, 'Cardiorespiratório', '2026-04-12', 'Aulas de ritmo intenso.', 8, 7),
(9, 'Resistência', '2026-05-03', 'Circuitos rápidos sem descanso.', 9, 8),
(10, 'Flexibilidade', '2026-05-15', 'Foco em amplitude de movimento.', 10, 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `treino_exercicio`
--

CREATE TABLE `treino_exercicio` (
  `id_treino_exercicio` int(11) NOT NULL,
  `series` int(11) NOT NULL,
  `repeticoes` int(11) NOT NULL,
  `carga` decimal(5,2) DEFAULT NULL,
  `descanso` int(11) DEFAULT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  `id_treino` int(11) NOT NULL,
  `id_exercicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `treino_exercicio`
--

INSERT INTO `treino_exercicio` (`id_treino_exercicio`, `series`, `repeticoes`, `carga`, `descanso`, `observacoes`, `id_treino`, `id_exercicio`) VALUES
(1, 4, 10, 20.00, 60, 'Manter cadência lenta na descida.', 1, 1),
(2, 3, 12, 15.00, 45, 'Até a falha.', 1, 3),
(3, 4, 15, 0.00, 45, 'Agachamento apenas com o peso corporal.', 2, 2),
(4, 3, 20, 40.00, 60, 'Foco em resistência.', 2, 7),
(5, 3, 10, 50.00, 90, 'Manter coluna ereta.', 3, 9),
(6, 4, 25, 0.00, 30, 'Execução concentrada.', 3, 8),
(7, 3, 12, 10.00, 45, 'Cuidado com a postura.', 4, 4),
(8, 4, 12, 7.50, 45, 'Sem pressa.', 4, 10),
(9, 3, 15, 12.00, 60, 'Puxada bem controlada.', 5, 3),
(10, 5, 5, 80.00, 120, 'Foco em força máxima pura.', 6, 9),
(11, 3, 15, 0.00, 30, 'Alongar o máximo possível.', 7, 8),
(12, 4, 12, 8.00, 45, 'Braços firmes.', 9, 5),
(13, 3, 15, 15.00, 45, 'Cotovelos fechados.', 9, 6);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id_aluno`),
  ADD UNIQUE KEY `uq_aluno_cpf` (`cpf`),
  ADD UNIQUE KEY `uq_aluno_email` (`email`);

--
-- Índices de tabela `exercicio`
--
ALTER TABLE `exercicio`
  ADD PRIMARY KEY (`id_exercicio`);

--
-- Índices de tabela `instrutor`
--
ALTER TABLE `instrutor`
  ADD PRIMARY KEY (`id_instrutor`),
  ADD UNIQUE KEY `uq_instrutor_email` (`email`);

--
-- Índices de tabela `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`id_matricula`),
  ADD KEY `fk_matricula_aluno` (`id_aluno`),
  ADD KEY `fk_matricula_plano` (`id_plano`);

--
-- Índices de tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`id_pagamento`),
  ADD KEY `fk_pagamento_aluno` (`id_aluno`);

--
-- Índices de tabela `plano`
--
ALTER TABLE `plano`
  ADD PRIMARY KEY (`id_plano`);

--
-- Índices de tabela `treino`
--
ALTER TABLE `treino`
  ADD PRIMARY KEY (`id_treino`),
  ADD KEY `fk_treino_aluno` (`id_aluno`),
  ADD KEY `fk_treino_instrutor` (`id_instrutor`);

--
-- Índices de tabela `treino_exercicio`
--
ALTER TABLE `treino_exercicio`
  ADD PRIMARY KEY (`id_treino_exercicio`),
  ADD KEY `fk_treinoex_treino` (`id_treino`),
  ADD KEY `fk_treinoex_exercicio` (`id_exercicio`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `exercicio`
--
ALTER TABLE `exercicio`
  MODIFY `id_exercicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `instrutor`
--
ALTER TABLE `instrutor`
  MODIFY `id_instrutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `matricula`
--
ALTER TABLE `matricula`
  MODIFY `id_matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `id_pagamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `plano`
--
ALTER TABLE `plano`
  MODIFY `id_plano` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `treino`
--
ALTER TABLE `treino`
  MODIFY `id_treino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `treino_exercicio`
--
ALTER TABLE `treino_exercicio`
  MODIFY `id_treino_exercicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `fk_matricula_aluno` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_matricula_plano` FOREIGN KEY (`id_plano`) REFERENCES `plano` (`id_plano`);

--
-- Restrições para tabelas `pagamento`
--
ALTER TABLE `pagamento`
  ADD CONSTRAINT `fk_pagamento_aluno` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`) ON DELETE CASCADE;

--
-- Restrições para tabelas `treino`
--
ALTER TABLE `treino`
  ADD CONSTRAINT `fk_treino_aluno` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_treino_instrutor` FOREIGN KEY (`id_instrutor`) REFERENCES `instrutor` (`id_instrutor`);

--
-- Restrições para tabelas `treino_exercicio`
--
ALTER TABLE `treino_exercicio`
  ADD CONSTRAINT `fk_treinoex_exercicio` FOREIGN KEY (`id_exercicio`) REFERENCES `exercicio` (`id_exercicio`),
  ADD CONSTRAINT `fk_treinoex_treino` FOREIGN KEY (`id_treino`) REFERENCES `treino` (`id_treino`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
