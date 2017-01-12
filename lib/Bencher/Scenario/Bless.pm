package Bencher::Scenario::Bless;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark bless() and unblessing',

    participants => [
        {name=>'bless-hashref-same'          , code_template=>'state $ref = {}; bless($ref, "Foo")'},
        {name=>'bless-hashref-different'     , code_template=>'bless({}, "Foo")'},
        {name=>'bless-damn-hashref-different', module => 'Acme::Damn', code_template=>'Acme::Damn::damn(bless({}, "Foo"))'},
    ],
};

1;
# ABSTRACT:
