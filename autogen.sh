#!/bin/sh
print_sites() {
  perl -pE 'chomp; s/^/ -site:/; END{say}' original.txt
}
(echo -n 'https://www.google.co.jp/search?q=%s'   ; print_sites) > google.co.jp.txt
(echo -n 'https://search.yahoo.co.jp/search?p=%s' ; print_sites) > search.yahoo.co.jp.txt

