-- MRR - Receita Recorrente Mensal
-- Objetivo: identificar receita considerando apenas clientes ativos
-- Diferença da receita mensal: exclui clientes cancelados
-- Tabelas: pagamentos + assinaturas + clientes

SELECT 
    c.nome,
    a.status,
    a.plano,
    SUM(p.valor_pago) AS total_pago
FROM pagamentos p
JOIN assinaturas a ON p.cliente_id = a.cliente_id
JOIN clientes c ON a.cliente_id = c.cliente_id
WHERE a.status = 'ativo'
GROUP BY c.nome, a.status, a.plano
ORDER BY total_pago DESC;