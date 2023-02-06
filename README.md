# Scripts for Autodock 
Written by Shinji Iida

## Files
- 01_prep.sh : Do this first 
- 02_dock.sh : Do this second
- inputs : include receptor pdb and a ligand mol2 files 
- pdbqt : include the pdbqt files given by the `01_prep.sh` for the receptor and the ligand.
- receptor_vina_box.txt : specify the centre of the receptor and the box size where autodock explores.
- ligand_vina_out.pdbqt : an output file from autodock, which stores ligand poses. 
