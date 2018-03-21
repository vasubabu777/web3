perl -c aas1be-m1-ap/CustomizeInit.pl
perl -c aas2be-m1-ap/CustomizeInit.pl
perl -c aas3be-m1-ap/CustomizeInit.pl
perl -c aas4be-m2-ap/CustomizeInit.pl
cap -vT -f testlabs/capfile -Stestbed=aas4 -Sbuild_number=latest
