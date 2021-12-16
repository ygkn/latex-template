#!/usr/bin/env perl

$pdf_mode         = 3;
$latex            = 'uplatex --kanji=utf8 -synctex=1 -file-line-error -halt-on-error -interaction=nonstopmode -shell-escape %O %S';
$bibtex           = 'upbibtex';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';
