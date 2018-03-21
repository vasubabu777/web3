#!/usr/bin/perl

use Carp;
use Getopt::Std;

getopts('L:F:'); #Programming with perl: O'Reilly Page: 452-453

# the hash containing all of the replacements
# the key is the string to be searched for and the
# value is the string which will replace it

my $replHash = undef;


if($opt_F)
{
	if(! -f $opt_F)
	{
		print "File does not exist: $opt_F\n";
		exit;
	}
	else
	{
		print "Config file is: $opt_F\n";
		$replHash = do $opt_F;
	}
}
else
{
	if(-f 'CustomizeInit.pl')
	{
	print "Config file is: CustomizeInit.pl\n";
	$replHash = do 'CustomizeInit.pl';
	}
	else
	{
		print "File does not exist: CustomizeInit.pl\n";
		exit;
	}
}

if ( $@ ) {
    croak ( 
        "\nError in Customize.pl\n" .
        "failed to read 'Customize.pl' because \"$@\"\n "
        );
}


if($opt_L)
{
	if(! -f $opt_L)
	{
		print "File does not exist: $opt_L\n";
		exit;
	}
	else
	{
		print "List file is: $opt_L\n";
	}


}
else
{
	if(! -f 'Customize.lst')
	{
	print "\n\nno Customize.lst exists so creating it\n\n";
    	createCustomizeList ( 'Customize.lst' );
	}
	else
	{
	print "\n\nCustomize.lst exists: Customizing\n\n";
	}

}    

# read in 'Customize.lst'
# this array contains all of the files
# in which the replacements specified in $replHash 
# will be made

if($opt_L)
{
$fileArray = do $opt_L;
}
else
{
$fileArray = do 'Customize.lst';
}


$file = '';


print "\n\nstarting to customize files\n\n";

foreach $file ( @$fileArray ) {

	replaceInFileUsingHash ( $file, $replHash );


}

print "\n\nfinished customizing files\n\n";


sub replaceInFileUsingHash {

	my ( $targetFile, $replacementHash ) = @_;


	# only do something if $targetFile is a file
	
	if ( !  -f $targetFile || ! -w $targetFile ) {
		print STDERR "Error writing to file $targetFile\n";
		return;
	}
	
	my ( $searchString, $replacementString );

	my $size = -s $targetFile;

	if ( $size > 1024 * 1024 ) {
	    
	    print STDERR "Ignoring file \"$targetFile\" because its size\n" .
		"$size exceeds 1 Meg\n";
	    return;

	}
	    
	print STDERR "Considering file \"$targetFile\"\n";

	my $fileContents = read_file ( $targetFile );

	foreach $searchString ( keys ( %$replacementHash ) ) {
		
		$replacementString = $replacementHash-> { $searchString };

	        if  ( ( $fileContents =~  /$searchString/ ) )
		{
			print "makeing replacements in file \"$targetFile\"\n";
			print "replacing $searchString" .
				" with $replacementString\n";
			$fileContents =~ 
				s/$searchString/$replacementString/gm;

		}


	}

	write_file ( $targetFile, $fileContents );



}


sub createCustomizeList {

    my ( $fileName ) = @_;

    print "creating customization list \"$fileName\"\n";
    
    open ( CUSTOMIZEFILE, ">$fileName" ) ||
	croak (
	       "\nError in Customize.pl::createCustomizeList\n" .
	       "failed to open file \"$fileName\" because\n" .
	       "$!\n "
	       );

    print CUSTOMIZEFILE "\$fileArray = [qw (\n";

    my $command = q ( find . -follow -type f | egrep -v -i "\.pdf|\.gif|~|\.exe|\.lib|\.pinlog|\.lst|\.tar|\.gz|\.zip|\.so" | grep -v "Init.pl" );

    print "executing command: \"$command\"\n";
  
    my $fileList = `$command`;

    print CUSTOMIZEFILE $fileList;
    
    print CUSTOMIZEFILE ")];\n";

    close CUSTOMIZEFILE;
    
}

sub read_file
{
	my ($file) = @_;

	local(*F);
	my $r;
	my (@r);

	open(F, "<$file") || croak "open $file: $!";
	@r = <F>;
	close(F);

	return @r if wantarray;
	return join("",@r);
}

sub write_file
{
	my ($f, @data) = @_;

	local(*F);

	open(F, ">$f") || croak "open >$f: $!";
	(print F @data) || croak "write $f: $!";
	close(F) || croak "close $f: $!";
	return 1;
}
