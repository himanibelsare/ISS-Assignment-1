#!/bin/bash


awk ' BEGIN { FS=" ~"; RS="\n" } { print $2, "once said,", "\"" $1 "\"" } ' quotes.txt > speech.txt

