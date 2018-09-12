# Horse-Rep-Seq
Perl and python scripts for horse rep-seq analysis

Esta pasta contém arquivos utilizados na análise do repertório de anticorpos de cavalo. O pipeline utilizado está descrito abaixo:

pRESTO -> IgBLAST -> Análise de clones (script a CD-HIT) -> Análise do repertório (scripts b e c).

Os arquivos .bash contêm os parâmetros utilizados em cada programa.
O arquivo .aux foi criado para anotação dos segmentos gênicos pelo IgBLAST.
Os arquivos V_gene, D_gene e J_gene contém os segmentos gênicos de imunoglobulinas utilizados como banco de dados no IgBLAST.
