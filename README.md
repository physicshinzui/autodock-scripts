# Scripts for Autodock 
Written by Shinji Iida

## Installation
## 1. Get a binary file of vina
```
wget https://github.com/ccsb-scripps/AutoDock-Vina/releases/download/v1.2.3/vina_1.2.3_linux_x86_64
chmod +x vina_1.2.3_linux_x86_64
mv vina_1.2.3_linux_x86_64 vina # for simplicity
```

## 2. Install ADFRsuite 
- This software is necessary for 
  - `prepare_receptor` and `prepare_ligand`
- Download it from https://ccsb.scripps.edu/adfr/downloads/ for the latest Linux version (ADFRsuit 1.0)
- Put it on a working directory.
- Execute the following lines:
```
chmod +x ADFRsuite_Linux-x86_64_1.0_install
./ADFRsuite_Linux-x86_64_1.0_install
cd ADFRsuite-1.0
tar xvf ADFRsuite_x86_64Linux_1.0.tar.gz
./install.sh
```
- Add the following line in `bashrc`: 
  - `export PATH=/home/siida/ADFRsuite-1.0/ADFRsuite_x86_64Linux_1.0/bin:$PATH`
- Now, all the script given by ADFRsuite are available!
  - To check it, type `prepare_ligand`.

After this installation, you can use the script in this repo.

## Specifications
- `01_prep.sh` generates pdbqt format inputs are generated for Autodock vina. 
- `02_dock.sh` executes Autodock vina for each target in the directory `pdbqt`.
- `inputs` includes receptor pdb and a ligand mol2 files 
- `pdbqt` includes the pdbqt files of the receptor and the ligand (obtained from the `01_prep.sh`)
- `receptor_vina_box.txt`  specifies the centre of the receptor and the box size where autodock explores.
- `ligand_vina_out.pdbqt` is an output file from Autodock vina, which stores ligand poses. 
