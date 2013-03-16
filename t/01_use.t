#!perl
use strict;
use warnings;
use LTSV;
use Test::More;

require_ok( 'LTSV' );

subtest 'can make object' => sub {
    my $ltsv = LTSV->new();
    isa_ok ($ltsv, 'LTSV');
};

subtest 'get key value from key' => sub {
    my $ltsv = LTSV->new();
    is($ltsv->get('name'),'laouji');
};

subtest 'set key and value' => sub {
    my $ltsv = LTSV->new();
    
    is($ltsv->set('name','laouji'),undef);
};

subtest 'fails when no key or value' => sub {
    my $ltsv = LTSV->new();

    isnt($ltsv->set('laouji'),undef);
    isnt($ltsv->set(),undef);
};

done_testing;


1;
