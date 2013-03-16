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
    my $tsv = LTSV->new();
    is($tsv->get('name'),'laouji');
};

done_testing;


1;
