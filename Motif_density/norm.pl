use warnings;
use strict;

open(IN,"<P_count.txt");
open(OUT,">norm_P_count.txt");

<IN>;
while(<IN>) {
    my $curr_line = $_;
    my @names = split(/\s/,$curr_line);
    my $val =$names[2]/571;
    print OUT "$names[1]\t$val\n";
}
close(IN);
close(OUT);

open(IN,"<OA_count.txt");
open(OUT,">norm_OA_count.txt");

<IN>;
while(<IN>) {
    my $curr_line = $_;
    my @names = split(/\s/,$curr_line);
    my $val =$names[2]/5771;
    print OUT "$names[1]\t$val\n";
}
close(IN);
close(OUT);

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

open(IN,"<C_count.txt");
open(OUT,">norm_C_count.txt");

<IN>;
while(<IN>) {
    my $curr_line = $_;
    my @names = split(/\s/,$curr_line);
    my $val =$names[2]/20250;
    print OUT "$names[1]\t$val\n";
}
close(IN);
close(OUT);

open(IN,"<CA_count.txt");
open(OUT,">norm_CA_count.txt");

<IN>;
while(<IN>) {
    my $curr_line = $_;
    my @names = split(/\s/,$curr_line);
    my $val =$names[2]/2663;
    print OUT "$names[1]\t$val\n";
}
close(IN);
close(OUT);

