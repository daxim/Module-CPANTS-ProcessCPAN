#!/usr/bin/env perl
use strict;
use warnings;
use Module::CPANTS::ProcessCPAN;
use Getopt::Long;
use File::Spec::Functions qw(rel2abs);
use File::Which;

my %opts;
GetOptions(\%opts,qw(cpan=s lint=s force));

$opts{lint} ||= which('cpants_lint.pl');

die "Usage: analyse_cpan.pl --cpan path/to/minicpan --lint path/to/cpants_lint.pl" unless $opts{cpan} && $opts{lint};
die "Cannot find cpants_lint.pl (in ".$opts{lint}.")" unless -e $opts{lint};

my $p=Module::CPANTS::ProcessCPAN->new($opts{cpan},$opts{lint});
$p->force(1) if $opts{force};
$p->start_run;
$p->process_cpan;


