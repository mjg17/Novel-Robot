#!/usr/bin/perl 
#  ABSTRACT: 下载小说，存成txt
=pod

=encoding utf8

=head1  DESC

    下载小说，存成txt

=head1 EXAMPLE

    novel_to_txt.pl "http://www.jjwxc.net/onebook.php?novelid=2456"

    novel_to_txt.pl "http://www.dddbbb.net/html/18451/index.html"

=head1 USAGE

    novel_to_txt.pl [index_url]

=cut

use strict;
use warnings;
use utf8;

use Novel::Robot;

$|=1;

my ($index_url) = @ARGV;

my $xs = Novel::Robot->new();
$xs->set_parser($index_url);
$xs->set_packer('TXT');
$xs->get_book($index_url);