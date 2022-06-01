#!/usr/bin/perl
#Open tsv job file of EggNOG, creates a coun table of each file
#to run:
# awk -F"\t" '{print $21}'  cog_file.tsv |perl count_cogs.pl > count_COGS.tsv ##Old eggNOG results format
# awk -F"\t" '{print $7}'  cog_file.tsv |perl count_cogs.pl > count_COGS.tsv ##New eggNog results format
# To extract all genes of a specific category:
# perl -F'\t' -ane 'print if ($F[20] =~ /O/);' cog_file.tsv

use strict;
use warnings;
my $category=();
my ($countJ,$countA,$countK,$countL,$countB,$countD,$countY,$countV,$countT,$countM,$countN,$countZ,$countW,$countU,$countO,$countX,$countC,$countG,$countE,$countF,$cou
ntH,$countI,$countP,$countQ,$countR,$countS)=(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

while(<>){
        chomp;
        my @array=split('',$_);
        foreach $category (@array) {
                if ($category eq 'J') {
                        $countJ++;
                } elsif ($category eq 'A') {
                        $countA++;
                } elsif ($category eq 'K') {
                        $countK++;
                } elsif ($category eq 'L') {
                        $countL++;
                } elsif ($category eq 'B') {
                        $countL++;
                } elsif ($category eq 'D') {
                        $countD++;
                } elsif ($category eq 'Y') {
                        $countY++;
                } elsif ($category eq 'V') {
                        $countV++;
                } elsif ($category eq 'T') {
                        $countT++;
                } elsif ($category eq 'M') {
                        $countM++;
                } elsif ($category eq 'N') {
                        $countN++;
                } elsif ($category eq 'Z') {
                        $countZ++;
                } elsif ($category eq 'W') {
                        $countW++;
                } elsif ($category eq 'U') {
                        $countU++;
                } elsif ($category eq 'O') {
                        $countO++;
                } elsif ($category eq 'X') {
                        $countX++;
                } elsif ($category eq 'C') {
                        $countC++;
                } elsif ($category eq 'G') {
                        $countG++;
                } elsif ($category eq 'E') {
                        $countE++;
                } elsif ($category eq 'F') {
                        $countF++;
                } elsif ($category eq 'H') {
                        $countH++;
                } elsif ($category eq 'I') {
                        $countI++;
                } elsif ($category eq 'P') {
                        $countP++;
                } elsif ($category eq 'Q') {
                        $countQ++;
                } elsif ($category eq 'R') {
                        $countR++;
                } elsif ($category eq 'S') {
                        $countS++;
                }
        }
}

print "J\t$countJ\nA\t$countA\nK\t$countK\nL\t$countL\nB\t$countB\nD\t$countD\nY\t$countY\nV\t$countV\nT\t$countT\nM\t$countM\nN\t$countN\nZ\t$countZ\nW\t$countW\nU\t$c
ountU\nO\t$countO\nX\t$countX\nC\t$countC\nG\t$countG\nE\t$countE\nF\t$countF\nH\t$countH\nI\t$countI\nP\t$countP\nQ\t$countQ\nR\t$countR\nS\t$countS\n";

exit;
