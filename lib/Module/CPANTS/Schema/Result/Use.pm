use utf8;
package Module::CPANTS::Schema::Result::Use;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Module::CPANTS::Schema::Result::Use

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

=head1 TABLE: C<uses>

=cut

__PACKAGE__->table("uses");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'uses_id_seq'

=head2 dist

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 module

  data_type: 'text'
  is_nullable: 1

=head2 in_dist

  data_type: 'integer'
  is_nullable: 1

=head2 in_code

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 in_tests

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "uses_id_seq",
  },
  "dist",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "module",
  { data_type => "text", is_nullable => 1 },
  "in_dist",
  { data_type => "integer", is_nullable => 1 },
  "in_code",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "in_tests",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07019 @ 2012-03-30 23:17:09
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:C6P9a2Z4epDY/lo1bPhLtw

__PACKAGE__->belongs_to("dist", "Module::CPANTS::Schema::Result::Dist", { id => "dist" });
__PACKAGE__->belongs_to("in_dist", "Module::CPANTS::Schema::Result::Dist", { id => "in_dist" });


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
