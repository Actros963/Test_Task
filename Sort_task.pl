#!/usr/bin/perl
use 5.026;
use strict;
use warnings;
use Data::Printer;

my @unsorted = qw(7 1 3 4 2 4 6 5 5);
my @arr_sort;
# сортировка пузырьком
sub bubble_sort{
    @arr_sort = @_;
    for ( my $i = 1; $i < @arr_sort; $i++ ){
        for ( my $k = 0; $k < $i; $k++ ){
            if ( $arr_sort[$i] < $arr_sort[$k] ){
                @arr_sort[$k, $i] = @arr_sort[$i, $k];
            }
        } 
    };
}

bubble_sort( @unsorted );
p @arr_sort;

# двоичный поиск элемента сортированном массиве 
sub bin_search{
    my @arr = @_;
    my $min = 0;
    my $mid;
    my $max = $#arr;
    my $status = 0;
    print "Please enter found_key: ";
    chomp( my $found_key = <STDIN> );
    while (( $min <= $max ) && !$status ){
        $mid = int (( $min + $max)/2);
        if ( $found_key == $arr[$mid] ){
            $status = 1;
        }
        elsif ( $found_key < $arr[$mid] ){
            $max = ( $mid - 1 );
        }
        else {
            $min = ( $mid + 1 );
        }

    }
    if ( $status ){
        say "MATCH";
    }
    else {
        say "NOMATCH";
    }
};

bin_search( @arr_sort );
