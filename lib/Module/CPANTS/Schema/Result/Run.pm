package Module::CPANTS::Schema::Result::Run;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use namespace::autoclean;
extends 'DBIx::Class::Core';


=head1 NAME

Module::CPANTS::Schema::Result::Run

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
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 dist

Type: has_many

Related object: L<Module::CPANTS::Schema::Result::Dist>

=cut

__PACKAGE__->has_many(
  "dist",
  "Module::CPANTS::Schema::Result::Dist",
  { "foreign.run" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 history_author

Type: has_many

Related object: L<Module::CPANTS::Schema::Result::HistoryAuthor>

=cut

__PACKAGE__->has_many(
  "history_author",
  "Module::CPANTS::Schema::Result::HistoryAuthor",
  { "foreign.run" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 history_dist

Type: has_many

Related object: L<Module::CPANTS::Schema::Result::HistoryDist>

=cut

__PACKAGE__->has_many(
  "history_dist",
  "Module::CPANTS::Schema::Result::HistoryDist",
  { "foreign.run" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 kwalitee

Type: has_many

Related object: L<Module::CPANTS::Schema::Result::Kwalitee>

=cut

__PACKAGE__->has_many(
  "kwalitee",
  "Module::CPANTS::Schema::Result::Kwalitee",
  { "foreign.run" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-04-18 14:06:47
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MJxWiEqG1eunoQzDqvdZSg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
