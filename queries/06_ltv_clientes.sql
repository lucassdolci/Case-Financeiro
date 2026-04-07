-- LTV por cliente
-- Objetivo: identificar quanto cada cliente gerou no total
-- e se ainda está ativo ou cancelou
-- Tabelas: pagamentos + assinaturas + clientes

SELECT 
    c.nome,
    a.plano,
    a.status,
    SUM(p.valor_pago) AS ltv_total
FROM pagamentos p
JOIN assinaturas a ON p.cliente_id = a.cliente_id
JOIN clientes c ON a.cliente_id = c.cliente_id
GROUP BY c.nome, a.plano, a.status
ORDER BY ltv_total DESC;