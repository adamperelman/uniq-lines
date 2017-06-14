#!/bin/bash
> all-lines.txt
for f in input/*
do
  echo "Processing $f..."
  head -n 1 $f > header.txt
  tail -n +2 $f >> all-lines.txt
done

echo "Writing output file..."
cat header.txt > output.csv
sort all-lines.txt | uniq >> output.csv

echo "Done!"
