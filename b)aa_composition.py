from Bio import SeqIO
from Bio.SeqUtils import ProtParam

#Programa para calcular estatisticas de proteinas numa sequencia
#atraves do modulo ProtParam/Expasy
#Estamaos apenas calculando a porcentagem de cada aminoacido
#Aceita arquivo multifasta

#Alterar o input contido no handle
handle = open("input") 
for record in SeqIO.parse(handle, "fasta"): 
    seq = str(record.seq)
    X = ProtParam.ProteinAnalysis(seq)
    print X.get_amino_acids_percent()
