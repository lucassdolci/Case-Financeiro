-- Variação percentual da receita mês a mês
-- Objetivo: identificar crescimento ou queda de receita entre os meses
-- Função LAG: busca o valor do mês anterior para comparação

SELECT 
    mes_referencia,
    receita_total,
    receita_mes_anterior,
    ROUND(((receita_total - receita_mes_anterior) / receita_mes_anterior) * 100, 2) AS variacao_percentual
FROM (
    SELECT 
        DATE_FORMAT(mes_referencia, '%Y-%m') AS mes_referencia,
        SUM(valor_pago) AS receita_total,
        LAG(SUM(valor_pago)) OVER (ORDER BY mes_referencia) AS receita_mes_anterior
    FROM pagamentos
    GROUP BY DATE_FORMAT(mes_referencia, '%Y-%m')
) AS base
ORDER BY mes_referencia;