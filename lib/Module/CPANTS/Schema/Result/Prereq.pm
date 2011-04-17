package Module::CPANTS::Schema::Result::Prereq;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use namespace::autoclean;
extends 'DBIx::Class::Core';


=head1 NAME

Module::CPANTS::Schema::Result::Prereq

=cut

__PACKAGE__->table("prereq");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'prereq_id_seq'

=head2 dist

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 requires

  data_type: 'text'
  is_nullable: 1

=head2 version

  data_type: 'text'
  is_nullable: 1

=head2 in_dist

  data_type: 'integer'
  is_nullable: 1

=head2 is_prereq

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 is_build_prereq

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 is_optional_prereq

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
    sequence          => "prereq_id_seq",
  },
  "dist",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "requires",
  { data_type => "text", is_nullable => 1 },
  "version",
  { data_type => "text", is_nullable => 1 },
  "in_dist",
  { data_type => "integer", is_nullable => 1 },
  "is_prereq",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "is_build_prereq",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "is_optional_prereq",
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:o/PBoO/pjhG+TakpxUHIsg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->belongs_to("in_dist", "Module::CPANTS::Schema::Dist", { id => "in_dist" });
__PACKAGE__->belongs_to("dist", "Module::CPANTS::Schema::Dist", { id => "dist" });

sub as_hashref {
    my $self=shift;
    return { requires => $self->requires, version=>$self->version };
}


__PACKAGE__->meta->make_immutable;
1;
