use strict;
use warnings;

open my $fr, '<', 'vocabulary/index.html' or die "$@";

open my $fw, '>', 'omegat/source/vocabulary/index.html' or die "$@";

my $f = 0;

while(<$fr>){
    s@<em class="rfc2119" title="[A-Z ]+">([A-Z ]+)</em>@$1@g;
    print $fw $_;
    if(/<body/){
        print $fw <<EOF
<aside>
This is a Japanese translation of <a href="https://www.w3.org/TR/2017/REC-activitystreams-vocabulary-20170523/">Activity Vocabulary</a>.
The official document is an English version.
This document may contain errors due to translations.
Please contact the <a href = "https://github.com/argrath/activitystream"> GitHub repository </a> regarding this document.
</aside>
<hr>
EOF
;
    }
}

close $fr;
close $fw;
