package Module::CPANTS::Schema::Result::Use;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use namespace::autoclean;
extends 'DBIx::Class::Core';


=head1 NAME

Module::CPANTS::Schema::Result::Use

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
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 dist

Type: belongs_to

Related object: L<Module::CPANTS::Schema::Result::Dist>

=cut

__PACKAGE__->belongs_to(
  "dist",
  "Module::CPANTS::Schema::Result::Dist",
  { id => "dist" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-04-18 14:06:47
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:We3WdOjTTJY65F9zPaMWbg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
