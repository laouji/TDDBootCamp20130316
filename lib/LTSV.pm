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
    my ($self, $key) = @_;
    my $data = "name:laouji\tage:26\tsex:male";
    my @entries = split('\t',$data);

    my %content;
    foreach my $pair (@entries) {
        #rename later
        my @array = split(':', $pair);
        $content{$array[0]} = $array[1];
    }
    
    return $content{$key};
}

sub set {
    my ($self,$key,$value) = @_;
    
    return 'key and value required' unless $key && $value;

    return;
}
1;
