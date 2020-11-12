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

open(IN,"<intersect_P.bed");
open(OUT,">range_P.bed");

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

open(IN,"<intersect_OA.bed");
open(OUT,">range_OA.bed");

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

open(IN,"<intersect_CA.bed");
open(OUT,">range_CA.bed");

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

open(IN,"<intersect_C.bed");
open(OUT,">range_C.bed");

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

open(IN,"<range_O.bed");
open(OUT,">allpositions_O_relative_to_summit.txt");

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

open(IN,"<range_P.bed");
open(OUT,">allpositions_P_relative_to_summit.txt");

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

open(IN,"<range_C.bed");
open(OUT,">allpositions_C_relative_to_summit.txt");

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

open(IN,"<range_CA.bed");
open(OUT,">allpositions_CA_relative_to_summit.txt");

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