package LTSV;
use strict;
use warnings;
use utf8;

use constant TEST => {
     'foo' => 'hoge'
};

sub new {
    my ($class) = @_;
    my $self = bless {}, $class;

    return $self;
}

sub get {
    return 'hoge';
}
1;
