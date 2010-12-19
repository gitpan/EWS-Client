package EWS::Calendar::Role::Reader;
BEGIN {
  $EWS::Calendar::Role::Reader::VERSION = '1.103531';
}
use Moose::Role;

with 'EWS::Calendar::Role::RetrieveWithinWindow';
use EWS::Calendar::Window;

sub retrieve {
    my $self = shift;
    my $window = EWS::Calendar::Window->new(@_);
    return $self->retrieve_within_window($window);
}

no Moose::Role;
1;
