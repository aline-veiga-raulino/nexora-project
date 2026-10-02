# ⚙️ Metodologia

## 🔄 Fluxo analítico

**📥 Dados → 🧹 Tratamento → 🔎 Análise → 📊 Dashboard → 💡 Insights**

## 📥 Fonte

Arquivo Excel: `Vendas Equipe.xlsx`

- Base: `Base`
- Registros: 13.060
- Período: janeiro a dezembro de 2020
- Produtos: 3
- Vendedores: 4
- Formas de pagamento: 2

## 🧹 Tratamento no Power Query

O processo incluiu:

1. Importação da planilha Excel;
2. Seleção da tabela de dados;
3. Promoção dos cabeçalhos;
4. Definição dos tipos de dados;
5. Criação do número do mês;
6. Remoção de linhas completamente vazias;
7. Tipagem dos campos de pagamento, imagem e lucro;
8. Padronização do nome do vendedor a partir do delimitador existente na origem.

O código M utilizado está em [power-query/tratamento-dados.m](../power-query/tratamento-dados.m).

## 📊 Modelagem e visualização

O Power BI foi utilizado para consolidar os indicadores e construir a visão executiva da operação.

Não foram criadas medidas DAX neste case. Os indicadores apresentados utilizam os campos da base e agregações nativas do Power BI.

## 🔎 Abordagem analítica

A análise é predominantemente descritiva, com foco em:

- evolução mensal;
- faturamento;
- lucro;
- volume vendido;
- produtos;
- vendedores;
- formas de pagamento.

As conclusões são baseadas no comportamento observado nos dados, sem atribuir causas que não estejam disponíveis na base.
