# Case Financeiro — Análise de Receita, Churn e LTV

## Contexto

Escolhi esse case porque queria trabalhar um problema real de negócio com dados financeiros, o tipo de análise que aparece no dia a dia de qualquer empresa SaaS.

A empresa tinha uma queda brusca de receita em julho e a hipótese inicial era churn. Fui direto nos dados pra confirmar e não confirmou. O churn estava dentro do normal. O problema era outro.

## Pergunta de Negócio

"Nossa receita caiu em julho. Por quê? Quais clientes estamos perdendo e quanto isso custa?"

## Ferramentas

MySQL: extração e análise dos dados

Power BI: visualização e dashboard

## O que os dados mostraram

A queda de 85% em julho não veio de cancelamentos, veio da ausência de novos contratos Enterprise. Quando parei de olhar só para o churn e comecei a olhar para o mix de planos, o problema ficou claro rápido.

O plano Enterprise gera 6x mais receita por cliente que o Basic. Um mês sem nenhum contrato Enterprise novo é suficiente para derrubar a receita total, independente de qualquer cancelamento.

## Estrutura do Projeto

data/ — script de criação e população do banco de dados
queries/ — análises em SQL organizadas por tema
dashboard/ — arquivo Power BI
insights/ — conclusões e recomendações

## Dashboard

### Visão Geral — Receita Mensal
![Visão Geral](assets/01_visao_geral.png)
Crescimento consistente de janeiro a junho. Queda de 85% em julho.

### Churn — Cancelamentos por Plano
![Churn](assets/02_churn.png)
Pro lidera em cancelamentos, mas o churn não explica julho. A causa estava em outro lugar.

### Clientes — LTV e Ticket Médio
![Clientes](assets/03_clientes.png)
Empresa Delta é o cliente mais valioso, LTV 33% acima do segundo. Enterprise gera 6x mais receita por cliente que Basic.

### Causa Raiz — Receita por Plano
![Causa Raiz](assets/04_causa_raiz.png)
Nenhum contrato Enterprise novo em julho. Esse foi o problema.

## Recomendações

Criar meta mensal mínima de contratos Enterprise, desenvolver estratégia de upsell de Basic/Pro para Enterprise e monitorar MRR por segmento de plano, não só receita total.

## Análises Realizadas

| Arquivo | Descrição |
|---|---|
| 02_receita_mensal | Receita total por mês |
| 03_variacao_percentual | Variação mês a mês |
| 04_churn_por_plano | Cancelamentos por plano |
| 05_ltv_por_cliente | LTV e ticket médio por cliente |
| 06_receita_por_plano | Receita segmentada por tipo de plano |
| 07_mrr | MRR consolidado |
| 08_novos_contratos | Entrada de novos contratos por mês |
| 09_causa_raiz | Cruzamento que revelou o problema real |
| 10_recomendacoes | Simulação de impacto das ações sugeridas |

## Links

📊 Portfólio no Notion: https://lean-sandpaper-fc5.notion.site/Case-Financeiro-3408f115aff58067983cee99404fe407
💻 Repositório GitHub: https://github.com/lucassdolci/Case-Financeiro
