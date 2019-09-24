#!/usr/bin/perl

use 5.026;
use strict;
use warnings;

package Animal;{

    # создание объекта
    sub new {
        my($class) = @_;
        my $self = {
            name      =>      'MyClass',
            version   =>      '1.0',
            weight    =>      50,
            height    =>      40,
        };
        bless $self, $class;
    }

    sub sound {
        "Открываю рот и издаю неопределенный звук."
    }
    sub speak {
        my $self = shift;
        say "$self: ", $self->sound, "\n";
    }

    sub eat {
        my $self = shift;
        my $food = shift;
        say $self->{name}, " ест ", $food;
    }
}
1;