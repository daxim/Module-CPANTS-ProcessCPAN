use utf8;
package Module::CPANTS::Schema::Result::HistoryDist;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Module::CPANTS::Schema::Result::HistoryDist

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

=head1 TABLE: C<history_dist>

=cut

__PACKAGE__->table("history_dist");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'history_dist_id_seq'

=head2 run

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 distname

  data_type: 'text'
  is_nullable: 1

=head2 version

  data_type: 'text'
  is_nullable: 1

=head2 kwalitee

  data_type: 'numeric'
  default_value: 0
  is_nullable: 0
  size: [6,3]

=head2 dist

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "history_dist_id_seq",
  },
  "run",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "distname",
  { data_type => "text", is_nullable => 1 },
  "version",
  { data_type => "text", is_nullable => 1 },
  "kwalitee",
  {
    data_type => "numeric",
    default_value => 0,
    is_nullable => 0,
    size => [6, 3],
  },
  "dist",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07019 @ 2012-03-30 23:17:09
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zXj0elhyWcxtNbkcejXWYQ

__PACKAGE__->belongs_to("run", "Module::CPANTS::Schema::Result::Run", { id => "run" });


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
