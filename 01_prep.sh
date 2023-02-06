#!/bin/bash 
set -eu 

receptor=$1
ligand=$2
prepare_receptor -r $receptor -o receptor.pdbqt
prepare_ligand -l $ligand -o ligand.pdbqt
