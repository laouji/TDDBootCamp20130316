package LTSV;
use strict;
use warnings;
use utf8;


sub new {
    my ($class) = @_;
    my $self = bless { data => {} }, $class; 

    return $self;
}

sub get {
    my ($self, $key) = @_;
    # fix later
#    my @entries = split('\t',$data);

#    my %content; foreach my $pair (@entries) { 
         #rename later
#        my @array = split(':', $pair);
#        $content{$array[0]} = $array[1];
#    }
    
#    return $content{$key};
     return $self->{data}->{$key};
}

sub set {
    my ($self,$key,$value) = @_;
   
    return 'key and value required' unless $key && $value;
    my $current = $self->get($key);
    return "couldn't set data" unless $self->{data}->{$key} = $value;

    return $current;
}

sub dump {
    my $self = shift;

    my $data = $self->{data};
    
    my $output;
    for my $key (keys %$data) {
        $output .= "$key:$data->{$key}\t";
    }
    
    return $output;
}

1;
