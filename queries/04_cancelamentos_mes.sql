-- Cancelamentos por mês
-- Objetivo: identificar volume de churn ao longo do tempo
-- Tabela: assinaturas

SELECT 
    DATE_FORMAT(data_cancelamento, '%Y-%m') AS mes_cancelamento,
    COUNT(*) AS cancelamentos
FROM assinaturas
WHERE status = 'cancelado'
GROUP BY DATE_FORMAT(data_cancelamento, '%Y-%m')
ORDER BY mes_cancelamento;