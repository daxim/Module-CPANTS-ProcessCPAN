package Module::CPANTS::Schema::Result::Module;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use namespace::autoclean;
extends 'DBIx::Class::Core';


=head1 NAME

Module::CPANTS::Schema::Result::Module

=cut

__PACKAGE__->table("modules");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'modules_id_seq'

=head2 dist

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 module

  data_type: 'text'
  is_nullable: 1

=head2 file

  data_type: 'text'
  is_nullable: 1

=head2 in_lib

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 in_basedir

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 is_core

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
    sequence          => "modules_id_seq",
  },
  "dist",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "module",
  { data_type => "text", is_nullable => 1 },
  "file",
  { data_type => "text", is_nullable => 1 },
  "in_lib",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "in_basedir",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "is_core",
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:i5iVMI0XbtyQCo2QwA8KNQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
