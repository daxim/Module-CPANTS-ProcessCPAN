package Module::CPANTS::Schema::Result::Author;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use namespace::autoclean;
extends 'DBIx::Class::Core';


=head1 NAME

Module::CPANTS::Schema::Result::Author

=cut

__PACKAGE__->table("author");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'author_id_seq'

=head2 pauseid

  data_type: 'text'
  is_nullable: 1

=head2 name

  data_type: 'text'
  is_nullable: 1

=head2 email

  data_type: 'text'
  is_nullable: 1

=head2 average_kwalitee

  data_type: 'numeric'
  is_nullable: 1
  size: [6,3]

=head2 num_dists

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 rank

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 prev_av_kw

  data_type: 'numeric'
  is_nullable: 1
  size: [6,3]

=head2 prev_rank

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 average_total_kwalitee

  data_type: 'numeric'
  default_value: 0
  is_nullable: 1
  size: [6,3]

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "author_id_seq",
  },
  "pauseid",
  { data_type => "text", is_nullable => 1 },
  "name",
  { data_type => "text", is_nullable => 1 },
  "email",
  { data_type => "text", is_nullable => 1 },
  "average_kwalitee",
  { data_type => "numeric", is_nullable => 1, size => [6, 3] },
  "num_dists",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "rank",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "prev_av_kw",
  { data_type => "numeric", is_nullable => 1, size => [6, 3] },
  "prev_rank",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "average_total_kwalitee",
  {
    data_type => "numeric",
    default_value => 0,
    is_nullable => 1,
    size => [6, 3],
  },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("author_pauseid_key", ["pauseid"]);

=head1 RELATIONS

=head2 dist

Type: has_many

Related object: L<Module::CPANTS::Schema::Result::Dist>

=cut

__PACKAGE__->has_many(
  "dist",
  "Module::CPANTS::Schema::Result::Dist",
  { "foreign.author" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 history_author

Type: has_many

Related object: L<Module::CPANTS::Schema::Result::HistoryAuthor>

=cut

__PACKAGE__->has_many(
  "history_author",
  "Module::CPANTS::Schema::Result::HistoryAuthor",
  { "foreign.author" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-04-18 14:06:47
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wveRQnV8zgGJdPXsRCz77w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
