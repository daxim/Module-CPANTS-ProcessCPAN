package Module::CPANTS::Schema::ResultSet::Dist;
use Moose;
extends 'DBIx::Class::ResultSet';

sub get_dist {
    my ($self,$distname) = @_;
    if ( $distname =~ /^\d+$/ ) {
        return $self->find( $distname );
    } else {
        return $self->find( { dist => $distname } );
    }
}

1;
