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

## Links
- 📊 [Portfólio no Notion](LINK_DO_NOTION_AQUI)
- 💻 [Repositório GitHub](https://github.com/lucassdolci/Case-Financeiro)

## Estrutura do Projeto
- `data/` — script de criação e população do banco de dados
- `queries/` — análises em SQL organizadas por tema
- `dashboard/` — arquivo Power BI
- `insights/` — conclusões e recomendações

## Dashboard

### Visão Geral — Receita Mensal
![Visão Geral](assets/01_visao_geral.png)
A receita cresceu de janeiro a junho e caiu 85% em julho, totalizando R$2.892 de queda em valor bruto.

### Churn — Cancelamentos por Plano
![Churn](assets/02_churn.png)
O Pro lidera cancelamentos com 3 ocorrências, mas o churn não foi o responsável pela queda de julho, o problema é sistêmico entre os planos.

### Clientes — LTV e Ticket Médio
![Clientes](assets/03_clientes.png)
Empresa Delta é o cliente mais valioso, com LTV 33% acima do segundo colocado. O plano Enterprise gera 6x mais receita por cliente que o Basic.

### Causa Raiz — Receita por Plano
![Causa Raiz](assets/04_causa_raiz.png)
A queda de julho se dá pela falta de novos contratos Enterprise. Sem novos contratos entrando, o impacto na receita foi imediato e considerável.

## Análises Realizadas
| Arquivo | Descrição |
|---|---|
| 02_receita_mensal | Receita total por mês |
| 03_variacao_percentual | Variação# Case Financeiro — Análise de Receita, Churn e LTV

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

## Links
- 📊 [Portfólio no Notion](LINK_DO_NOTION_AQUI)
- 💻 [Repositório GitHub](https://github.com/lucassdolci/Case-Financeiro)

## Estrutura do Projeto
- `data/` — script de criação e população do banco de dados
- `queries/` — análises em SQL organizadas por tema
- `dashboard/` — arquivo Power BI
- `insights/` — conclusões e recomendações

## Dashboard

### Visão Geral — Receita Mensal
![Visão Geral](assets/01_visao_geral.png)
A receita cresceu de janeiro a junho e caiu 85% em julho, totalizando R$2.892 de queda em valor bruto.

### Churn — Cancelamentos por Plano
![Churn](assets/02_churn.png)
O Pro lidera cancelamentos com 3 ocorrências, mas o churn não foi o responsável pela queda de julho, o problema é sistêmico entre os planos.

### Clientes — LTV e Ticket Médio
![Clientes](assets/03_clientes.png)
Empresa Delta é o cliente mais valioso, com LTV 33% acima do segundo colocado. O plano Enterprise gera 6x mais receita por cliente que o Basic.

### Causa Raiz — Receita por Plano
![Causa Raiz](assets/04_causa_raiz.png)
A queda de julho se dá pela falta de novos contratos Enterprise. Sem novos contratos entrando, o impacto na receita foi imediato e considerável.

## Análises Realizadas
| Arquivo | Descrição |
|---|---|
| 02_receita_mensal | Receita total por mês |
| 03_variacao_percentual | Variação