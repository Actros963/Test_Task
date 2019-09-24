#!/usr/bin/perl

use 5.026;
use strict;
use warnings;
package Cat;{
    our @ISA = "Animal";

    sub new {
    my($class) = @_;
    my $self = {
        name => 'Cat',
        version => '1.0',
        color => 'black',
    };
    bless $self, $class;
}    

    sub sound {
        'Мяяяяу!!!Мяяяяу!!!'
    }

    sub eat {
        my $self = shift;
        say $self->{name}, " Говорит: 'Я всегда мечтал этим питаться! М-м-м вкуснотища!' ";
        $self->SUPER::eat(@_);
    }
}
1;