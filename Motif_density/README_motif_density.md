## motif density scripts in Motif_density folder

## Figures 2d and 3d. Density plots showing the fraction of RELA peaks harbouring the canonical RELA motif (JASPAR - MA0107.1) as a function of distance from the RELA peak summit for each binding mode

## preprocessing of RSAT motif output: start by submitting MACS2 peak regions for each mode to RSAT matrix-scan (Markov order: 1, Weight score ≥1) (http://rsat.sb-roscoff.fr/matrix-scan_form.cgi) with the matrix profiles of RELA (MA0107.1) from the JASPAR database (http://jaspar.genereg.net)

## Run the codes for RELA motif density plots in motif_density_script.sh which has four scripts (the mode O is given as an example for descriptions below):

# Step 1: Get the range of RELA motif positions relative to peaks summit (transcend.pl)

use warnings;
use strict;

open(IN,"<intersect_O.bed");
open(OUT,">range_O.bed");

while(<IN>) {
    my $curr_line = $_;
    my @names = split(/\t/,$curr_line);
    my $start =$names[1]-$names[10];
    my $end =$names[2]-$names[10];
    chomp($start);
      chomp($end);
    print OUT "$start\t$end\n";
}
close(IN);
close(OUT);
open(IN,"<range_OA.bed");
open(OUT,">allpositions_OA_relative_to_summit.txt");

while(<IN>) {
    my $curr_line = $_;
    my @names = split(/\t/,$curr_line);
    my @array = ($names[0]..$names[1]);
    foreach (@array) { 
	print OUT "$_\n"; 
    }
}
close(IN);
close(OUT);

# Step 2: Count the number of occurrences (peaks) of each motif position relative to peak summit (count.R):

x <- read.table("allpositions_O_relative_to_summit.txt")
a <- table(x$V1)
d <- as.data.frame(table(x$V1))
write.table(d, "O_count.txt", sep="\t",quote=FALSE)

# Step 3: Normalize the number peaks to the total number of peaks for each mode to get the fraction of RELA peaks harbouring the motif at specific position relative to peak summit (norm.pl):

open(IN,"<O_count.txt");
open(OUT,">norm_O_count.txt");

<IN>;
while(<IN>) {
    my $curr_line = $_;
    my @names = split(/\s/,$curr_line);
    my $val =$names[2]/38126;
    print OUT "$names[1]\t$val\n";
}
close(IN);
close(OUT);

# Step 4: Plot:

a <-read.table("norm_P_count.txt")
b <-read.table("norm_O_count.txt")
c <-read.table("norm_OA_count.txt")
d <-read.table("norm_C_count.txt")
e <-read.table("norm_CA_count.txt")
plot(smooth.spline(a),type="l",col='red')
lines(smooth.spline(b),type="l",col='black')
lines(smooth.spline(c),type="l",col='blue')
lines(smooth.spline(d),type="l",col='green')
lines(smooth.spline(e),type="l",col='orange')