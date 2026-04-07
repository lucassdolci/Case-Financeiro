-- Churn Rate mensal
-- Objetivo: calcular percentual de cancelamentos em relação à base ativa
-- Fórmula: cancelamentos no mês / total clientes ativos * 100
-- Tabela: assinaturas

SELECT 
    mes,
    cancelamentos,
    8 AS total_ativos,
    ROUND(cancelamentos / 8 * 100, 2) AS churn_rate
FROM (
    SELECT 
        DATE_FORMAT(data_cancelamento, '%Y-%m') AS mes,
        COUNT(*) AS cancelamentos
    FROM assinaturas
    WHERE status = 'cancelado'
    GROUP BY DATE_FORMAT(data_cancelamento, '%Y-%m')
) AS base
ORDER BY mes;