# Case Financeiro — Análise de Receita, Churn e LTV

## Contexto
Análise financeira de uma empresa SaaS de gestão para pequenos negócios.
O objetivo foi investigar a queda de receita identificada em julho/2023,
entender suas causas e propor recomendações baseadas em dados.

## Pergunta de Negócio
> "Nossa receita caiu em julho. Por quê? Quais clientes estamos perdendo
> e quanto isso custa?"

## Ferramentas
- MySQL — extração e análise dos dados
- Power BI — visualização e dashboard

## Estrutura do Projeto
- `data/` — script de criação e população do banco de dados
- `queries/` — análises em SQL organizadas por tema
- `dashboard/` — arquivo Power BI
- `insights/` — conclusões e recomendações

## Dashboard

### Visão Geral — Receita Mensal
![Visão Geral](assets/01_visao_geral.png)

### Causa Raiz — Receita por Plano
![Causa Raiz](assets/02_causa_raiz.png)

### Churn — Cancelamentos por Plano
![Churn](assets/03_churn.png)

### Clientes — LTV e Ticket Médio
![Clientes](assets/04_clientes.png)

## Análises Realizadas
| Arquivo | Descrição |
|---|---|
| 02_receita_mensal | Receita total por mês |
| 03_variacao_percentual | Variação % mês a mês com LAG |
| 04_cancelamentos_mes | Volume de churn mensal |
| 05_receita_por_plano | Receita por plano — causa raiz da queda |
| 06_ltv_clientes | Lifetime Value por cliente |
| 07_ticket_medio | Ticket médio por plano |
| 08_mrr | Receita recorrente mensal |
| 09_churn_rate | Taxa de churn mensal |
| 10_churn_por_plano | Plano com maior volume de cancelamentos |

## Principais Insights
- A queda de 85% em julho não foi causada por churn
- A causa foi a ausência de novos contratos Enterprise naquele mês
- O plano Enterprise gera 6x mais receita por cliente que o Basic
- O churn está distribuído entre os planos — problema sistêmico
- Empresa Delta é o cliente mais valioso — LTV 33% acima do segundo

## Recomendações
- **Basic:** campanha de awareness para fortalecer topo de funil
- **Pro:** pesquisa de cancelamento para entender e reduzir churn
- **Enterprise:** ação conjunta de marketing e vendas para novos contratos

## Como Reproduzir
1. Rode o script `data/01_dataset_criacao.sql` no MySQL
2. Execute as queries da pasta `queries/` na ordem numérica
3. Abra o arquivo `dashboard/case_financeiro.pbix` no Power BI Desktop