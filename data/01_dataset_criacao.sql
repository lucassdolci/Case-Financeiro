-- Dataset simulado: empresa SaaS de gestão para pequenos negócios
-- Tabelas: clientes, assinaturas, pagamentos
-- Período: Jan/2023 - Ago/2023
-- Objetivo: simular cenário real para análise financeira

USE case_financeiro;

CREATE TABLE clientes (
  cliente_id INT PRIMARY KEY,
  nome VARCHAR(100),
  segmento VARCHAR(50),
  cidade VARCHAR(50),
  data_cadastro DATE
);

INSERT INTO clientes VALUES
(1, 'Empresa Alpha', 'Varejo', 'São Paulo', '2023-01-15'),
(2, 'Empresa Beta', 'Serviços', 'Rio de Janeiro', '2023-02-01'),
(3, 'Empresa Gamma', 'Varejo', 'Curitiba', '2023-02-10'),
(4, 'Empresa Delta', 'Indústria', 'São Paulo', '2023-03-05'),
(5, 'Empresa Epsilon', 'Serviços', 'Belo Horizonte', '2023-03-20'),
(6, 'Empresa Zeta', 'Varejo', 'São Paulo', '2023-04-01'),
(7, 'Empresa Eta', 'Indústria', 'Porto Alegre', '2023-04-15'),
(8, 'Empresa Theta', 'Serviços', 'Rio de Janeiro', '2023-05-01'),
(9, 'Empresa Iota', 'Varejo', 'Curitiba', '2023-05-20'),
(10, 'Empresa Kappa', 'Indústria', 'São Paulo', '2023-06-01'),
(11, 'Empresa Lambda', 'Serviços', 'São Paulo', '2023-06-15'),
(12, 'Empresa Mu', 'Varejo', 'Belo Horizonte', '2023-07-01'),
(13, 'Empresa Nu', 'Indústria', 'Rio de Janeiro', '2023-07-10'),
(14, 'Empresa Xi', 'Serviços', 'São Paulo', '2023-08-01'),
(15, 'Empresa Omicron', 'Varejo', 'Porto Alegre', '2023-08-15');


CREATE TABLE assinaturas (
  assinatura_id INT PRIMARY KEY,
  cliente_id INT,
  plano VARCHAR(20),
  valor_mensal DECIMAL(10,2),
  data_inicio DATE,
  data_cancelamento DATE,
  status VARCHAR(20),
  FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

INSERT INTO assinaturas VALUES
(1,  1,  'Pro',   299.00, '2023-01-15', NULL,         'ativo'),
(2,  2,  'Basic', 99.00,  '2023-02-01', '2023-08-01', 'cancelado'),
(3,  3,  'Pro',   299.00, '2023-02-10', '2023-07-10', 'cancelado'),
(4,  4,  'Enterprise', 599.00, '2023-03-05', NULL,    'ativo'),
(5,  5,  'Basic', 99.00,  '2023-03-20', '2023-09-20', 'cancelado'),
(6,  6,  'Pro',   299.00, '2023-04-01', NULL,         'ativo'),
(7,  7,  'Enterprise', 599.00, '2023-04-15', '2023-10-15', 'cancelado'),
(8,  8,  'Basic', 99.00,  '2023-05-01', NULL,         'ativo'),
(9,  9,  'Pro',   299.00, '2023-05-20', '2023-10-20', 'cancelado'),
(10, 10, 'Enterprise', 599.00, '2023-06-01', NULL,    'ativo'),
(11, 11, 'Basic', 99.00,  '2023-06-15', NULL,         'ativo'),
(12, 12, 'Pro',   299.00, '2023-07-01', '2023-11-01', 'cancelado'),
(13, 13, 'Basic', 99.00,  '2023-07-10', NULL,         'ativo'),
(14, 14, 'Pro',   299.00, '2023-08-01', NULL,         'ativo'),
(15, 15, 'Enterprise', 599.00, '2023-08-15', '2023-12-15', 'cancelado');

CREATE TABLE pagamentos (
  pagamento_id INT PRIMARY KEY,
  cliente_id INT,
  mes_referencia DATE,
  valor_pago DECIMAL(10,2),
  status_pagamento VARCHAR(20),
  FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

INSERT INTO pagamentos VALUES
(1,  1, '2023-01-01', 299.00, 'pago'),
(2,  1, '2023-02-01', 299.00, 'pago'),
(3,  1, '2023-03-01', 299.00, 'pago'),
(4,  1, '2023-04-01', 299.00, 'pago'),
(5,  1, '2023-05-01', 299.00, 'pago'),
(6,  1, '2023-06-01', 299.00, 'pago'),
(7,  2, '2023-02-01', 99.00,  'pago'),
(8,  2, '2023-03-01', 99.00,  'pago'),
(9,  2, '2023-04-01', 99.00,  'pago'),
(10, 2, '2023-05-01', 99.00,  'pago'),
(11, 2, '2023-06-01', 99.00,  'pago'),
(12, 2, '2023-07-01', 99.00,  'pago'),
(13, 3, '2023-02-01', 299.00, 'pago'),
(14, 3, '2023-03-01', 299.00, 'pago'),
(15, 3, '2023-04-01', 299.00, 'pago'),
(16, 3, '2023-05-01', 299.00, 'pago'),
(17, 3, '2023-06-01', 299.00, 'pago'),
(18, 4, '2023-03-01', 599.00, 'pago'),
(19, 4, '2023-04-01', 599.00, 'pago'),
(20, 4, '2023-05-01', 599.00, 'pago'),
(21, 4, '2023-06-01', 599.00, 'pago'),
(22, 5, '2023-03-01', 99.00,  'pago'),
(23, 5, '2023-04-01', 99.00,  'pago'),
(24, 5, '2023-05-01', 99.00,  'pago'),
(25, 5, '2023-06-01', 99.00,  'pago'),
(26, 6, '2023-04-01', 299.00, 'pago'),
(27, 6, '2023-05-01', 299.00, 'pago'),
(28, 6, '2023-06-01', 299.00, 'pago'),
(29, 7, '2023-04-01', 599.00, 'pago'),
(30, 7, '2023-05-01', 599.00, 'pago'),
(31, 7, '2023-06-01', 599.00, 'pago'),
(32, 8, '2023-05-01', 99.00,  'pago'),
(33, 8, '2023-06-01', 99.00,  'pago'),
(34, 9, '2023-05-01', 299.00, 'pago'),
(35, 9, '2023-06-01', 299.00, 'pago'),
(36, 10,'2023-06-01', 599.00, 'pago'),
(37, 11,'2023-06-01', 99.00,  'pago'),
(38, 12,'2023-07-01', 299.00, 'pago'),
(39, 13,'2023-07-01', 99.00,  'pago'),
(40, 14,'2023-08-01', 299.00, 'pago'),
(41, 15,'2023-08-01', 599.00, 'pago');