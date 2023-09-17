#!/bin/bash

pdf2ps $1 /tmp/tmp.ps
psbook -s48 /tmp/tmp.ps /tmp/tmp_book.ps
psnup -2 -h11in -w8.5in -H8.5in -W5.5in /tmp/tmp_book.ps /tmp/tmp_book_2up.ps
ps2pdf -sPAPERSIZE=letter /tmp/tmp_book_2up.ps $2
