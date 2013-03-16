#!perl
use strict;
use warnings;
use LTSV;
use Test::More;

require_ok( 'LTSV' );

my $ltsv = LTSV->new();
subtest 'can make object' => sub {
    isa_ok ($ltsv, 'LTSV');
};

subtest 'set key and value' => sub {
    is($ltsv->set('name','laouji'),undef);
};

subtest 'get key value from key' => sub {
    is($ltsv->get('name'),'laouji');
};


subtest 'fails when no key or value' => sub {
    isnt($ltsv->set('laouji'),undef);
    isnt($ltsv->set(),undef);
};

subtest 'return overwritten value' => sub {
    is($ltsv->set('name','umeyuki'),'laouji');    
};

subtest 'dumps in tsv format' => sub {
    is($ltsv->dump(), "name:umeyuki\t");
};

done_testing;


1;
