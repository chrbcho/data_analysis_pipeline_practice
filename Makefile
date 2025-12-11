# Makefile
# Tiffany Timbers, Nov 2018

# This driver script completes the textual analysis of
# 3 novels and creates figures on the 10 most frequently
# occuring words from each of the 3 novels. This script
# takes no arguments.

# example usage:
# make all

.PHONY: all dats figs clean-dats clean-figs clean-all

# run entire analysis
all: report/count_report.html

# count words
dats: results/isles.dat \
results/abyss.dat \
results/last.dat \
results/sierra.dat

results/isles.dat : scripts/wordcount.py data/isles.txt
	python scripts/wordcount.py \
		--input_file=data/isles.txt \
		--output_file=results/isles.dat
results/abyss.dat : scripts/wordcount.py data/abyss.txt
	python scripts/wordcount.py \
		--input_file=data/abyss.txt \
		--output_file=results/abyss.dat
results/last.dat : scripts/wordcount.py data/last.txt
	python scripts/wordcount.py \
		--input_file=data/last.txt \
		--output_file=results/last.dat
results/sierra.dat : scripts/wordcount.py data/sierra.txt
	python scripts/wordcount.py \
		--input_file=data/sierra.txt \
		--output_file=results/sierra.dat

