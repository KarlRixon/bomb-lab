#!/bin/bash
for j in `seq 0 5`; do
	for i in `seq 0 500`; do
		echo "$i $j" >> solution.txt
		./bomb solution.txt
		sed -i '4d' solution.txt
		echo "i=$i j=$j">>out.txt
	done
done
