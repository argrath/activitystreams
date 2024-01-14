use strict;
use warnings;
use utf8;

open my $fr, '<', 'omegat/target/vocabulary/index.html' or die "$@";

open my $fw, '>', 'docs/vocabulary/index.html' or die "$@";

my $f = 0;

while(<$fr>){
    s@&apos;@'@g;
    s@<link rel="canonical" href="https://www.w3.org/TR/activityvocabulary/">@<link rel="canonical" href="https://argrath.github.io/activitystreams/">@;
    s@^( +)<p>@$1<p>\n@g;
    s@</p>@\n</p>@g;
    print $fw $_;
}

close $fr;
close $fw;
