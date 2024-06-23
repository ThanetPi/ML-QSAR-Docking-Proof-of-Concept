#!/bin/bash

for f in opt*.pdbqt; do
    b=`basename $f .pdbqt`
    echo Processing ligand $b
    vina125 --config redock.conf3 --ligand $f --out ${b}_out.pdbqt > ${b}_log.txt
done
