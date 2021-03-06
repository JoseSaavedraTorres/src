#!./perl

use strict;
use warnings;
no warnings 'once';

BEGIN {
    chdir 't' if -d 't';
    require './test.pl';
    require './loc_tools.pl';
    set_up_inc('../lib');
}

$::TEST_CHUNK = 'd';

do './re/fold_grind.pl';
print STDERR "$@\n" if $@;
print STDERR "$!\n" if $!;

1;

#
# ex: set ts=8 sts=4 sw=4 et:
#
