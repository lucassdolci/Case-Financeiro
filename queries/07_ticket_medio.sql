-- Ticket médio por plano
-- Objetivo: identificar o valor médio gerado por cliente em cada plano
-- Tabelas: pagamentos + assinaturas

SELECT 
    a.plano,
    COUNT(p.cliente_id) AS total_pagamentos,
    ROUND(AVG(p.valor_pago), 2) AS ticket_medio
FROM pagamentos p
JOIN assinaturas a ON p.cliente_id = a.cliente_id
GROUP BY a.plano
ORDER BY ticket_medio DESC;