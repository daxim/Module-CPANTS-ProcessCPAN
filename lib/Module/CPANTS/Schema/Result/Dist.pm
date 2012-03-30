use utf8;
package Module::CPANTS::Schema::Result::Dist;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Module::CPANTS::Schema::Result::Dist

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

=head1 TABLE: C<dist>

=cut

__PACKAGE__->table("dist");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'dist_id_seq'

=head2 run

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 dist

  data_type: 'text'
  is_nullable: 1

=head2 package

  data_type: 'text'
  is_nullable: 1

=head2 vname

  data_type: 'text'
  is_nullable: 1

=head2 author

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 version

  data_type: 'text'
  is_nullable: 1

=head2 version_major

  data_type: 'text'
  is_nullable: 1

=head2 version_minor

  data_type: 'text'
  is_nullable: 1

=head2 extension

  data_type: 'text'
  is_nullable: 1

=head2 extractable

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 extracts_nicely

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 size_packed

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 size_unpacked

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 released

  data_type: 'timestamp'
  is_nullable: 1

=head2 files

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 files_list

  data_type: 'text'
  is_nullable: 1

=head2 dirs

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 dirs_list

  data_type: 'text'
  is_nullable: 1

=head2 symlinks

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 symlinks_list

  data_type: 'text'
  is_nullable: 1

=head2 bad_permissions

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 bad_permissions_list

  data_type: 'text'
  is_nullable: 1

=head2 file_makefile_pl

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 file_build_pl

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 file_readme

  data_type: 'text'
  is_nullable: 1

=head2 file_manifest

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 file_meta_yml

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 file_signature

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 file_ninja

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 file_test_pl

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 file_changelog

  data_type: 'text'
  is_nullable: 1

=head2 dir_lib

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 dir_t

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 dir_xt

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 broken_module_install

  data_type: 'text'
  default_value: 0
  is_nullable: 0

=head2 mi_auto_install_used

  data_type: 'text'
  default_value: 0
  is_nullable: 0

=head2 manifest_matches_dist

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 buildfile_executable

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 license

  data_type: 'text'
  is_nullable: 1

=head2 metayml_is_parsable

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 file_license

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 needs_compiler

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 got_prereq_from

  data_type: 'text'
  is_nullable: 1

=head2 is_core

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 file__build

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 file_build

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 file_makefile

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 file_blib

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 file_pm_to_blib

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 stdin_in_makefile_pl

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 stdin_in_build_pl

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 external_license_file

  data_type: 'text'
  is_nullable: 1

=head2 file_licence

  data_type: 'text'
  is_nullable: 1

=head2 licence_file

  data_type: 'text'
  is_nullable: 1

=head2 license_file

  data_type: 'text'
  is_nullable: 1

=head2 license_type

  data_type: 'text'
  is_nullable: 1

=head2 no_index

  data_type: 'text'
  is_nullable: 1

=head2 ignored_files_list

  data_type: 'text'
  is_nullable: 1

=head2 license_in_pod

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 license_from_yaml

  data_type: 'text'
  is_nullable: 1

=head2 license_from_external_license_file

  data_type: 'text'
  is_nullable: 1

=head2 test_files_list

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "dist_id_seq",
  },
  "run",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "dist",
  { data_type => "text", is_nullable => 1 },
  "package",
  { data_type => "text", is_nullable => 1 },
  "vname",
  { data_type => "text", is_nullable => 1 },
  "author",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "version",
  { data_type => "text", is_nullable => 1 },
  "version_major",
  { data_type => "text", is_nullable => 1 },
  "version_minor",
  { data_type => "text", is_nullable => 1 },
  "extension",
  { data_type => "text", is_nullable => 1 },
  "extractable",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "extracts_nicely",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "size_packed",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "size_unpacked",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "released",
  { data_type => "timestamp", is_nullable => 1 },
  "files",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "files_list",
  { data_type => "text", is_nullable => 1 },
  "dirs",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "dirs_list",
  { data_type => "text", is_nullable => 1 },
  "symlinks",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "symlinks_list",
  { data_type => "text", is_nullable => 1 },
  "bad_permissions",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "bad_permissions_list",
  { data_type => "text", is_nullable => 1 },
  "file_makefile_pl",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "file_build_pl",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "file_readme",
  { data_type => "text", is_nullable => 1 },
  "file_manifest",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "file_meta_yml",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "file_signature",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "file_ninja",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "file_test_pl",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "file_changelog",
  { data_type => "text", is_nullable => 1 },
  "dir_lib",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "dir_t",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "dir_xt",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "broken_module_install",
  { data_type => "text", default_value => 0, is_nullable => 0 },
  "mi_auto_install_used",
  { data_type => "text", default_value => 0, is_nullable => 0 },
  "manifest_matches_dist",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "buildfile_executable",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "license",
  { data_type => "text", is_nullable => 1 },
  "metayml_is_parsable",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "file_license",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "needs_compiler",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "got_prereq_from",
  { data_type => "text", is_nullable => 1 },
  "is_core",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "file__build",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "file_build",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "file_makefile",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "file_blib",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "file_pm_to_blib",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "stdin_in_makefile_pl",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "stdin_in_build_pl",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "external_license_file",
  { data_type => "text", is_nullable => 1 },
  "file_licence",
  { data_type => "text", is_nullable => 1 },
  "licence_file",
  { data_type => "text", is_nullable => 1 },
  "license_file",
  { data_type => "text", is_nullable => 1 },
  "license_type",
  { data_type => "text", is_nullable => 1 },
  "no_index",
  { data_type => "text", is_nullable => 1 },
  "ignored_files_list",
  { data_type => "text", is_nullable => 1 },
  "license_in_pod",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "license_from_yaml",
  { data_type => "text", is_nullable => 1 },
  "license_from_external_license_file",
  { data_type => "text", is_nullable => 1 },
  "test_files_list",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<dist_dist_key>

=over 4

=item * L</dist>

=back

=cut

__PACKAGE__->add_unique_constraint("dist_dist_key", ["dist"]);

=head2 C<dist_package_key>

=over 4

=item * L</package>

=back

=cut

__PACKAGE__->add_unique_constraint("dist_package_key", ["package"]);

=head2 C<dist_vname_key>

=over 4

=item * L</vname>

=back

=cut

__PACKAGE__->add_unique_constraint("dist_vname_key", ["vname"]);


# Created by DBIx::Class::Schema::Loader v0.07019 @ 2012-03-30 23:17:09
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lCUwZX8j0QnSJw6JfsIETw

__PACKAGE__->belongs_to("run", "Module::CPANTS::Schema::Result::Run", { id => "run" });
__PACKAGE__->belongs_to("author", "Module::CPANTS::Schema::Result::Author", { id => "author" });
__PACKAGE__->has_one(
  "error",
  "Module::CPANTS::Schema::Result::Error",
  #{ "foreign.dist" => "self.id" },
);
__PACKAGE__->has_many(
  "history_dist",
  "Module::CPANTS::Schema::Result::HistoryDist",
  { "foreign.dist" => "self.id" },
);
__PACKAGE__->has_one(
  "kwalitee",
  "Module::CPANTS::Schema::Result::Kwalitee",
  { "foreign.dist" => "self.id" },
);
__PACKAGE__->has_many(
  "modules",
  "Module::CPANTS::Schema::Result::Module",
  { "foreign.dist" => "self.id" },
);
__PACKAGE__->has_many(
  "requiring",
  "Module::CPANTS::Schema::Result::Prereq",
  { "foreign.in_dist" => "self.id" },
);
__PACKAGE__->has_many(
  "prereq",
  "Module::CPANTS::Schema::Result::Prereq",
  { "foreign.dist" => "self.id" },
);
__PACKAGE__->has_many(
  "uses",
  "Module::CPANTS::Schema::Result::Use",
  { "foreign.dist" => "self.id" },
);
__PACKAGE__->has_many(
  "uses_in_dist",
  "Module::CPANTS::Schema::Result::Use",
  { "foreign.in_dist" => "self.id" },
);


sub get_prereqs {
    my $self=shift;
    return $self->search_related(
        'prereq',
        { is_prereq => 1},
        {
            order_by => 'me.in_dist,me.requires',
            prefetch => [ qw( dist ) ],
        }
    );
}

sub get_build_prereqs {
    my $self=shift;
    return $self->search_related(
        'prereq',
        { is_build_prereq => 1},
        {
            order_by => 'me.in_dist,me.requires',
            prefetch => [ qw( dist ) ],
        }
    );
}

sub get_optional_prereqs {
    my $self=shift;
    $self->search_related(
        'prereq',
        { is_optional_prereq => 1},
        {
            order_by => 'me.in_dist,me.requires',
            prefetch => [ qw( dist ) ],
        }
    );
}

sub used_by {
    my $self=shift;
    return $self->search_related(
        'requiring',
        { },
        {
            order_by => 'dist.dist',
            prefetch => [ qw( dist ) ],
        }
    );
}

sub as_hashref {
    my $self=shift;
    return {
        dist=>$self->dist,
        author=>$self->author->pauseid,
    };
}

sub uses_in_code {
    return shift->search_related('uses',{in_code=>{'>=',1}},{order_by=>'module'});
}
sub uses_in_tests {
    return shift->search_related('uses',{in_tests=>{'>=',1}},{order_by=>'module'});
}


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
