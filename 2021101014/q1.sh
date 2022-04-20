#!/bin/bash

# awk 'NF' quotes.txt > newfile.txt && mv newfile.txt quotes.txt 
# awk '!seen[$0]++' quotes.txt > newfile.txt && mv newfile.txt quotes.txt


awk 'NF' quotes.txt
awk '!seen[$0]++' quotes.txt