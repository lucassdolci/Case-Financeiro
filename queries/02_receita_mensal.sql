-- Receita total por mês
-- Objetivo: identificar evolução do faturamento mensal

SELECT 
    DATE_FORMAT(mes_referencia, '%Y-%m') AS mes,
    SUM(valor_pago) AS receita_total
FROM pagamentos
WHERE status_pagamento = 'pago'
GROUP BY DATE_FORMAT(mes_referencia, '%Y-%m')
ORDER BY mes;