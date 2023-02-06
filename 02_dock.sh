#!/bin/bash

target_numbers=`ls inputs`
echo "Target No: " $target_numbers
for n in $target_numbers; do
     
    vina --receptor pdbqt/${n}_receptor.pdbqt \
         --ligand   pdbqt/${n}_ligand.pdbqt \
         --config   receptor_vina_box.txt \
         --exhaustiveness=32 \
         --out results/${n}_vina_out_ligand.pdbqt
 done
