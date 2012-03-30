use utf8;
package Module::CPANTS::Schema::Result::Run;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Module::CPANTS::Schema::Result::Run

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn>

=item * L<DBIx::Class::PK>

=back

=cut

__PACKAGE__->load_components("InflateColumn", "PK");

=head1 TABLE: C<run>

=cut

__PACKAGE__->table("run");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'run_id_seq'

=head2 mcanalyse_version

  data_type: 'text'
  is_nullable: 1

=head2 mcprocess_version

  data_type: 'text'
  is_nullable: 1

=head2 available_kwalitee

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 total_kwalitee

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 date

  data_type: 'timestamp'
  default_value: current_timestamp
  is_nullable: 1
  original: {default_value => \"now()"}

=head2 stop

  data_type: 'timestamp'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "run_id_seq",
  },
  "mcanalyse_version",
  { data_type => "text", is_nullable => 1 },
  "mcprocess_version",
  { data_type => "text", is_nullable => 1 },
  "available_kwalitee",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "total_kwalitee",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "date",
  {
    data_type     => "timestamp",
    default_value => \"current_timestamp",
    is_nullable   => 1,
    original      => { default_value => \"now()" },
  },
  "stop",
  { data_type => "timestamp", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07019 @ 2012-03-30 23:17:09
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MVOpXqTmRBf+KP8bA+m9Ig

__PACKAGE__->has_many(
  "dists",
  "Module::CPANTS::Schema::Result::Dist",
  { "foreign.run" => "self.id" },
);
__PACKAGE__->has_many(
  "history_authors",
  "Module::CPANTS::Schema::Result::HistoryAuthor",
  { "foreign.run" => "self.id" },
);
__PACKAGE__->has_many(
  "history_dists",
  "Module::CPANTS::Schema::Result::HistoryDist",
  { "foreign.run" => "self.id" },
);
__PACKAGE__->has_many(
  "kwalitees",
  "Module::CPANTS::Schema::Result::Kwalitee",
  { "foreign.run" => "self.id" },
);


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
