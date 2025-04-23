#!/bin/bash 
set -eu 

INPUTS='inputs'
target_dirs=`ls $INPUTS`
for target_dir in $target_dirs; do
    echo "Target dir: $target_dir"
    
    recepter=`basename $INPUTS/${target_dir}/*.pdb`
    ligand=`basename $INPUTS/${target_dir}/*.mol2`

    prepare_receptor -r $INPUTS/$target_dir/$recepter -o pdbqt/${target_dir}_receptor.pdbqt

    # NOTE: 
    #    The script preapre_ligand does recognise only files in the same working directory.
    #    So, I make a link to an input and put it on the same directory where the script is executed.
    ln -s $INPUTS/$target_dir/$ligand $ligand 
    prepare_ligand -l $INPUTS/$target_dir/$ligand -o pdbqt/${target_dir}_ligand.pdbqt

    rm $ligand # Remove the symbolic link.
done
