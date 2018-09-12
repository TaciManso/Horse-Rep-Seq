#!usr/bin/perl -w
use strict;

#Programa para separar sequencias por tamanho de CDR3

#abre o arquivo da linha de comando
my $file = $ARGV[0];#arquivo com as sequencias contendo tam de CDR3
open (FILE, "<$file") or die ("\nARQUIVO NÃO ENCONTRADO!\n");
my @linhas = <FILE>;#salva as linhas num @rray
close FILE;

my ($i);
my (@id);
for ($i=0; $i<=$#linhas; $i++){#percorre as linhas
	chomp $linhas[$i];
	@id = split (/\t/, $linhas[$i]);
	while ($id[7] == 1){
		open (OUT, ">>tam/1_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 2){
		open (OUT, ">>tam/2_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 3){
		open (OUT, ">>tam/3_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 4){
		open (OUT, ">>tam/4_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 5){
		open (OUT, ">>tam/5_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 6){
		open (OUT, ">>tam/6_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 7){
		open (OUT, ">>tam/7_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 8){
		open (OUT, ">>tam/8_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 9){
		open (OUT, ">>tam/9_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 10){
		open (OUT, ">>tam/10_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 11){
		open (OUT, ">>tam/11_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 12){
		open (OUT, ">>tam/12_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 13){
		open (OUT, ">>tam/13_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 14){
		open (OUT, ">>tam/14_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 15){
		open (OUT, ">>tam/15_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 16){
		open (OUT, ">>tam/16_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 17){
		open (OUT, ">>tam/17_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 18){
		open (OUT, ">>tam/18_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 19){
		open (OUT, ">>tam/19_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 20){
		open (OUT, ">>tam/20_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 21){
		open (OUT, ">>tam/21_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 22){
		open (OUT, ">>tam/22_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 23){
		open (OUT, ">>tam/23_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 24){
		open (OUT, ">>tam/24_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 25){
		open (OUT, ">>tam/25_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 26){
		open (OUT, ">>tam/26_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 27){
		open (OUT, ">>tam/27_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 28){
		open (OUT, ">>tam/28_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 29){
		open (OUT, ">>tam/29_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 30){
		open (OUT, ">>tam/30_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 31){
		open (OUT, ">>tam/31_$file");
		print OUT "@id\n";
		last;
	}
	while ($id[7] == 32){
		open (OUT, ">>tam/32_$file");
		print OUT "@id\n";
		last;
	}
}
