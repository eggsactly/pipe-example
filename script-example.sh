#!/bin/bash
rm -f int-values.txt
make
cat hex-values.txt | ./pipe-example > int-values.txt

