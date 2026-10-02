# Nexora | Sales Analytics

> Projeto de Data Analytics e Business Intelligence aplicado à operação comercial da Nexora.

## 📌 Visão geral

Este projeto apresenta uma análise da operação comercial da Nexora ao longo de 2020, transformando dados de vendas em uma visão executiva sobre faturamento, lucro, volume vendido, produtos, vendedores, formas de pagamento e evolução mensal.

O objetivo é demonstrar um processo de análise de dados, desde o tratamento da base até a comunicação dos principais resultados em um dashboard no Power BI.

## 🏢 Contexto

A Nexora atua no segmento de tecnologia e eletrônicos de consumo, com vendas de Celular, Tablet e Notebook.

A operação analisada conta com quatro vendedores e duas formas de pagamento: cartão de crédito e boleto.

## 🎯 Desafio de negócio

A gestão comercial precisa acompanhar o desempenho da operação e entender como o faturamento se distribui ao longo do tempo, entre produtos, vendedores e formas de pagamento.

## ❓ Perguntas que orientaram a análise

1. Como faturamento e volume de vendas evoluíram ao longo de 2020?
2. Quais períodos apresentaram maior e menor faturamento?
3. Qual produto apresentou o maior volume de unidades vendidas?
4. O produto mais vendido em quantidade também foi o que gerou maior faturamento?
5. Como o faturamento está distribuído entre os vendedores?
6. Qual forma de pagamento concentra a maior parcela do faturamento?
7. Quais pontos merecem atenção em uma análise comercial mais aprofundada?

## 📊 Principais resultados

- 💰 **Faturamento:** R$ 20.137.900
- 📈 **Lucro:** R$ 8.596.100
- 📦 **Quantidade vendida:** 40.317 unidades
- 🏆 **Maior volume:** Tablet — 13.488 unidades
- 💵 **Maior faturamento por produto:** Notebook — R$ 9.354.100
- 📅 **Maior faturamento mensal:** novembro — R$ 2.427.000
- 📉 **Menor faturamento mensal:** junho — R$ 1.022.900
- 👤 **Maior faturamento por vendedor:** João Lira — R$ 5.938.500
- 💳 **Principal forma de pagamento:** cartão de crédito — R$ 15.194.800

Um dos principais achados é a diferença entre volume e receita: o Tablet lidera em unidades vendidas, enquanto o Notebook lidera em faturamento.

## 🧹 Tratamento dos dados

O tratamento foi realizado no Power Query, incluindo:

- importação da base Excel;
- definição dos tipos de dados;
- criação do número do mês;
- remoção de linhas vazias;
- padronização do campo de vendedor.

O código está disponível em [power-query/tratamento-dados.m](power-query/tratamento-dados.m).

## 🔎 Metodologia

**📥 Dados → 🧹 Tratamento → 📊 Análise → 📈 Visualização → 💡 Insights**

## 📊 Dashboard

[Dashboard Nexora no Power BI](https://app.powerbi.com/view?r=eyJrIjoiZjVkZDQ5ZGItY2YzOS00MWRiLWFkM2UtNjk2NDExNzA2MGVlIiwidCI6IjYxOTIxZGExLTBkNDUtNDk5OS04MDQzLWYxZWM3MzIwYTYxNCJ9)

<img width="1111" height="617" alt="dashboard-nexora" src="https://github.com/user-attachments/assets/613bfc7f-c3ea-4f04-a966-895ffa98c00f" />


## 📁 Estrutura

```text
nexora-project/
├── README.md
├── data/
│   └── README.md
│   └── Vendas Equipe.xlsx
├── documentation/
│   ├── analises.md
│   ├── case.md
│   ├── insights.md
│   └── limitacoes.md
│   ├── metodologia.md
├── images/
│   └── .gitkeep
│   └── dashboard-nexora.png
└── power-query/
    └── tratamento-dados.m
```

## 🛠️ Ferramentas

- Power BI
- Power Query
- Excel
- Figma
