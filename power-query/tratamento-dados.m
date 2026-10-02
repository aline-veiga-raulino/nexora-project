let
    // Substitua pelo caminho do arquivo no seu ambiente.
    CaminhoArquivo = "SEU_CAMINHO/Vendas Equipe.xlsx",

    Fonte = Excel.Workbook(File.Contents(CaminhoArquivo), null, true),
    Base_Sheet = Fonte{[Item="Base",Kind="Sheet"]}[Data],
    #"Cabeçalhos Promovidos" = Table.PromoteHeaders(Base_Sheet, [PromoteAllScalars=true]),
    #"Tipo Alterado" = Table.TransformColumnTypes(
        #"Cabeçalhos Promovidos",
        {
            {"Data", type date},
            {"Vendedor", type text},
            {"Produto", type text},
            {"ValorProd", Int64.Type},
            {"QuantVend", Int64.Type},
            {"TotalVend", Int64.Type}
        }
    ),
    #"Mês Inserido" = Table.AddColumn(
        #"Tipo Alterado",
        "Mês.1",
        each Date.Month([Data]),
        Int64.Type
    ),
    #"Colunas Renomeadas" = Table.RenameColumns(
        #"Mês Inserido",
        {{"Mês.1", "Numero Mes"}}
    ),
    #"Linhas em Branco Removidas" = Table.SelectRows(
        #"Colunas Renomeadas",
        each not List.IsEmpty(
            List.RemoveMatchingItems(
                Record.FieldValues(_),
                {"", null}
            )
        )
    ),
    #"Tipo Alterado1" = Table.TransformColumnTypes(
        #"Linhas em Branco Removidas",
        {
            {"Forma de Pagamento", type text},
            {"Imagem Vendedor", type text},
            {"Lucro", type number}
        }
    ),
    #"Texto extraído antes do delimitador" = Table.TransformColumns(
        #"Tipo Alterado1",
        {{"Vendedor", each Text.BeforeDelimiter(_, "-", 0), type text}}
    )
in
    #"Texto extraído antes do delimitador"
