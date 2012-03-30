use utf8;
package Module::CPANTS::Schema::Result::Prereq;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Module::CPANTS::Schema::Result::Prereq

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

=head1 TABLE: C<prereq>

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

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07019 @ 2012-03-30 23:17:09
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6mXQ91yDINhCEvOaX0bFoA

__PACKAGE__->belongs_to("in_dist", "Module::CPANTS::Schema::Result::Dist", { id => "in_dist" });
__PACKAGE__->belongs_to("dist", "Module::CPANTS::Schema::Result::Dist", { id => "dist" });

sub as_hashref {
    my $self=shift;
    return { requires => $self->requires, version=>$self->version };
}

# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
