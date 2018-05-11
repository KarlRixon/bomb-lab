#!/bin/bash
for a in `seq 1 6`; do
	for b in `seq 1 6`; do
		for c in `seq 1 6`; do
			for d in `seq 1 6`; do
				for e in `seq 1 6`; do
					for f in `seq 1 6`; do
						echo "$a $b $c $d $e $f" >> solution.txt
						./bomb solution.txt
						sed -i '6d' solution.txt
						echo "$a $b $c $d $e $f">>out2.txt
					done
				done
			done
		done
	done
done
