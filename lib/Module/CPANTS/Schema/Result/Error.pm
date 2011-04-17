package Module::CPANTS::Schema::Result::Error;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use namespace::autoclean;
extends 'DBIx::Class::Core';


=head1 NAME

Module::CPANTS::Schema::Result::Error

=cut

__PACKAGE__->table("error");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'error_id_seq'

=head2 dist

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 prereq_matches_use

  data_type: 'text'
  is_nullable: 1

=head2 build_prereq_matches_use

  data_type: 'text'
  is_nullable: 1

=head2 manifest_matches_dist

  data_type: 'text'
  is_nullable: 1

=head2 metayml_conforms_to_known_spec

  data_type: 'text'
  is_nullable: 1

=head2 cpants

  data_type: 'text'
  is_nullable: 1

=head2 no_pod_errors

  data_type: 'text'
  is_nullable: 1

=head2 metayml_is_parsable

  data_type: 'text'
  is_nullable: 1

=head2 no_generated_files

  data_type: 'text'
  default_value: 0
  is_nullable: 0

=head2 has_version_in_each_file

  data_type: 'text'
  is_nullable: 1

=head2 no_stdin_for_prompting

  data_type: 'text'
  is_nullable: 1

=head2 easily_repackageable_by_fedora

  data_type: 'text'
  is_nullable: 1

=head2 easily_repackageable_by_debian

  data_type: 'text'
  is_nullable: 1

=head2 easily_repackageable

  data_type: 'text'
  is_nullable: 1

=head2 metayml_conforms_spec_current

  data_type: 'text'
  is_nullable: 1

=head2 no_large_files

  data_type: 'text'
  is_nullable: 1

=head2 has_license_in_source_file

  data_type: 'text'
  is_nullable: 1

=head2 has_no_patches_in_debian

  data_type: 'text'
  is_nullable: 1

=head2 latest_version_distributed_by_debian

  data_type: 'text'
  is_nullable: 1

=head2 has_no_bugs_reported_in_debian

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "error_id_seq",
  },
  "dist",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "prereq_matches_use",
  { data_type => "text", is_nullable => 1 },
  "build_prereq_matches_use",
  { data_type => "text", is_nullable => 1 },
  "manifest_matches_dist",
  { data_type => "text", is_nullable => 1 },
  "metayml_conforms_to_known_spec",
  { data_type => "text", is_nullable => 1 },
  "cpants",
  { data_type => "text", is_nullable => 1 },
  "no_pod_errors",
  { data_type => "text", is_nullable => 1 },
  "metayml_is_parsable",
  { data_type => "text", is_nullable => 1 },
  "no_generated_files",
  { data_type => "text", default_value => 0, is_nullable => 0 },
  "has_version_in_each_file",
  { data_type => "text", is_nullable => 1 },
  "no_stdin_for_prompting",
  { data_type => "text", is_nullable => 1 },
  "easily_repackageable_by_fedora",
  { data_type => "text", is_nullable => 1 },
  "easily_repackageable_by_debian",
  { data_type => "text", is_nullable => 1 },
  "easily_repackageable",
  { data_type => "text", is_nullable => 1 },
  "metayml_conforms_spec_current",
  { data_type => "text", is_nullable => 1 },
  "no_large_files",
  { data_type => "text", is_nullable => 1 },
  "has_license_in_source_file",
  { data_type => "text", is_nullable => 1 },
  "has_no_patches_in_debian",
  { data_type => "text", is_nullable => 1 },
  "latest_version_distributed_by_debian",
  { data_type => "text", is_nullable => 1 },
  "has_no_bugs_reported_in_debian",
  { data_type => "text", is_nullable => 1 },
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/DzrVnqjIBYK/vwl5YQhMA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
