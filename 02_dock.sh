#!/bin/bash
vina --receptor pdbqt/receptor.pdbqt \
     --ligand   pdbqt/ligand.pdbqt \
     --config receptor_vina_box.txt \
     --exhaustiveness=32 \
     --out vina_out_ligand.pdbqt
