-- Receita mensal por plano
-- Objetivo: identificar qual plano gera mais receita por mês
-- Causa raiz da queda de julho: ausência de contratos Enterprise
-- Tabelas: pagamentos + assinaturas

SELECT 
    DATE_FORMAT(mes_referencia, '%Y-%m') AS mes,
    a.plano,
    SUM(p.valor_pago) AS receita_total
FROM pagamentos p
JOIN assinaturas a ON p.cliente_id = a.cliente_id
GROUP BY DATE_FORMAT(mes_referencia, '%Y-%m'), a.plano
ORDER BY mes, a.plano;