#!/usr/bin/perl -w

use strict;

my ($command, $reps) = @ARGV;
my ($timeData, $instData) = ({}, {});

sub point {
    my ($data, $out, $key) = @_;
    my ($point) = $out =~ /$key *(\d+(?:\.\d+)?)/;
    $data->{sum} += $point;
    $data->{sum2} += $point ** 2;
}

for (my $i = 0; $i<$reps; $i++) {
    my $out = `$command`;
    point($timeData, $out, "(?:complete! \\(|Time:)");
    point($instData, $out, "Instructions:");
    print $out;
}

sub summ {
    my ($data, $fmt) = @_;
    return unless $data->{mean} = $data->{sum} / $reps;
    $data->{sdev} = sqrt($data->{sum2} / $reps - $data->{mean} ** 2);
    printf $fmt, $data->{mean}, $data->{sdev}, $data->{sdev} / $data->{mean} * 100;
}

summ $timeData, "Time:         %.3fms Δ%.3f %.2f%%\n";
summ $instData, "Instructions: %.3f Δ%.3f %.2f%%\n";
