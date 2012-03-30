#!/usr/bin/env perl

use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/../lib";
use DBIx::Class::Schema::Loader "make_schema_at";
use namespace::clean;
use Module::CPANTS::ProcessCPAN;
my $p=Module::CPANTS::ProcessCPAN->new();

my $dest = $ARGV[0] || "$FindBin::Bin/../lib/";

print("Creating Database schema in directory <$dest>\n");
make_schema_at(
    "Module::CPANTS::Schema",
    {
        dump_directory     => $dest,
		components         => [qw/InflateColumn PK/],
        use_moose          => 1,
#        skip_load_external => 1,
        skip_relationships => 1,
        overwrite_modifications => 1,
    },
    [$p->dsn],
);

=head1 NAME

generate_schema.pl -- create schema from current database

=head1 SYNOPSIS

  ./helper/generate_schema.pl --debug --dest=/tmp/lol

    Options: --dest chose the destination directory MUST be used
    if you use rels-- help this output-- debug be verbose
    -- rels analyze relationships between tables
    -- host db hostname( defaults to localhost )

    = cut

    1;

