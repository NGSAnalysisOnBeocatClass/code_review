#!/usr/bin/perl
# USAGE: ./rev_comp.pl /homes/sheltonj/solutions/mini.fasta
# DESCRIPTION: To reverse complement an input DNA sequence 
# Weekly problem 3 : https://github.com/NGSAnalysisOnBeocatClass/homework/blob/master/homework_6.md

use strict;
use warnings;
use 5.010;
#use FILE::Basename;												#enable manipulating of the full path

my $file= $ARGV[0];
my $current_contig;
my ($basename, $directories, $suffix) = fileparse($file,'\..*');	# break appart filenames
my $outfile = "${directories}${basename}_revcomp${suffix}";			# To create new output filename from the original filename
#my $outfile = "output/${basename}_revcomp${suffix}";				# To redirect the output to the working directory output

open (IN, "<file") or die "No input file!!!";
while(<IN>)
{
	if ($_=~ /^>/) 													#Skips commented lines
	{
		$outfile = &reverse_comp($current_contig);
		$current_contig++;
	}
	return reverse_comp;
	print $_;
	elsif 
	{
		s/\s//g;													# Removes new lines 
		$current_contig++;
	
	}		 
	else (eof)														# Reads the end of the file 
	{
		$outfile = &reverse_comp($current_contig);
		$current_contig++;
	}
	return reverse_comp;
}		
close IN;
open (my $out_fh, '>', $outfile);	


sub reverse_comp
{
my $contig= $[0];
my $new_contig;
my %code = (A=>T, T=>A, C=>G, G=>C, a=>t, t=>a, c=>g, g=>c);

my @seq = split ('',$contig);
my @r_seq = reverse(@seq)
foreach (@r_seq)
{
	if (($key, $value) = each %code)
	{ 	
		$new_contig => $value;
	}
	else
	{
		$new_contig => $key;
	}
return $new_contig;
}		
	




