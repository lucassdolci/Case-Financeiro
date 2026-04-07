-- Churn por plano
-- Objetivo: identificar qual plano perde mais clientes
-- Insight: Pro tem maior volume de cancelamentos
-- Recomendação: pesquisa de cancelamento para entender motivo
-- Tabela: assinaturas

SELECT 
    plano,
    COUNT(*) AS cancelamentos
FROM assinaturas
WHERE status = 'cancelado'
GROUP BY plano
ORDER BY cancelamentos DESC;