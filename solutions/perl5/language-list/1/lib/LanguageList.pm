package LanguageList;

use v5.38;

our @Languages;

sub add_language ($language) {
    push @Languages, $language;
}

sub remove_language () {
    pop @Languages;
}

sub first_language () {
    return @Languages[0];
}

sub last_language () {
    return  @Languages[$#Languages];
}

sub get_languages (@elements) {
my @Result;
foreach $a(@elements){
    push(@Result, @Languages[$a-1]);
}

return @Result;

}

sub has_language ($language) {
my $val = $language;
if (grep(/^$val$/, @Languages)) {
        return 1;
    } else {
    
        return 0;
    }
}
