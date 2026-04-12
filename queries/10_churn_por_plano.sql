-- Churn por plano e por mês
-- Objetivo: identificar qual plano perde mais clientes e em quais meses
-- Insight: Pro tem maior volume de cancelamentos — distribuído ao longo dos meses
-- Recomendação: pesquisa de cancelamento para entender motivo por plano
-- Tabela: assinaturas

SELECT
    DATE_FORMAT(data_cancelamento, '%Y-%m') AS mes,
    plano,
    COUNT(*) AS cancelamentos
FROM assinaturas
WHERE status = 'cancelado'
GROUP BY mes, plano
ORDER BY mes, cancelamentos DESC;