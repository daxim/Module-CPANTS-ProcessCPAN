package Module::CPANTS::Schema::Result::Kwalitee;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use namespace::autoclean;
extends 'DBIx::Class::Core';


=head1 NAME

Module::CPANTS::Schema::Result::Kwalitee

=cut

__PACKAGE__->table("kwalitee");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'kwalitee_id_seq'

=head2 dist

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 abs_kw

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 abs_core_kw

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 kwalitee

  data_type: 'numeric'
  default_value: 0
  is_nullable: 0
  size: [6,3]

=head2 rel_core_kw

  data_type: 'numeric'
  default_value: 0
  is_nullable: 0
  size: [6,3]

=head2 extractable

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 extracts_nicely

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 has_version

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 has_proper_version

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 no_cpants_errors

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 has_readme

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 has_manifest

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 has_meta_yml

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 has_buildtool

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 has_changelog

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 no_symlinks

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 has_tests

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 proper_libs

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 is_prereq

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 use_strict

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 use_warnings

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 has_test_pod

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 has_test_pod_coverage

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 no_pod_errors

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 has_working_buildtool

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 manifest_matches_dist

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 has_example

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 buildtool_not_executable

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 has_humanreadable_license

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 metayml_is_parsable

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 metayml_conforms_spec_current

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 metayml_has_license

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 metayml_conforms_to_known_spec

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 has_license

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 prereq_matches_use

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 build_prereq_matches_use

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 no_generated_files

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 run

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 has_version_in_each_file

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 has_tests_in_t_dir

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 no_stdin_for_prompting

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 easily_repackageable_by_fedora

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 easily_repackageable_by_debian

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 easily_repackageable

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 fits_fedora_license

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 metayml_declares_perl_version

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 no_large_files

  data_type: 'integer'
  is_nullable: 1

=head2 has_separate_license_file

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 has_license_in_source_file

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 metayml_has_provides

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 uses_test_nowarnings

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 latest_version_distributed_by_debian

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 has_no_bugs_reported_in_debian

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 has_no_patches_in_debian

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 distributed_by_debian

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
    sequence          => "kwalitee_id_seq",
  },
  "dist",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "abs_kw",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "abs_core_kw",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "kwalitee",
  {
    data_type => "numeric",
    default_value => 0,
    is_nullable => 0,
    size => [6, 3],
  },
  "rel_core_kw",
  {
    data_type => "numeric",
    default_value => 0,
    is_nullable => 0,
    size => [6, 3],
  },
  "extractable",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "extracts_nicely",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "has_version",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "has_proper_version",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "no_cpants_errors",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "has_readme",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "has_manifest",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "has_meta_yml",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "has_buildtool",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "has_changelog",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "no_symlinks",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "has_tests",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "proper_libs",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "is_prereq",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "use_strict",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "use_warnings",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "has_test_pod",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "has_test_pod_coverage",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "no_pod_errors",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "has_working_buildtool",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "manifest_matches_dist",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "has_example",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "buildtool_not_executable",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "has_humanreadable_license",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "metayml_is_parsable",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "metayml_conforms_spec_current",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "metayml_has_license",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "metayml_conforms_to_known_spec",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "has_license",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "prereq_matches_use",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "build_prereq_matches_use",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "no_generated_files",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "run",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "has_version_in_each_file",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "has_tests_in_t_dir",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "no_stdin_for_prompting",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "easily_repackageable_by_fedora",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "easily_repackageable_by_debian",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "easily_repackageable",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "fits_fedora_license",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "metayml_declares_perl_version",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "no_large_files",
  { data_type => "integer", is_nullable => 1 },
  "has_separate_license_file",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "has_license_in_source_file",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "metayml_has_provides",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "uses_test_nowarnings",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "latest_version_distributed_by_debian",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "has_no_bugs_reported_in_debian",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "has_no_patches_in_debian",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "distributed_by_debian",
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

=head2 run

Type: belongs_to

Related object: L<Module::CPANTS::Schema::Result::Run>

=cut

__PACKAGE__->belongs_to(
  "run",
  "Module::CPANTS::Schema::Result::Run",
  { id => "run" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-04-18 14:06:47
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vsM/a1NHyelPRd32JQm7Cg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
