# Scripts for Autodock 
Written by Shinji Iida

## Installation
```
conda create -n vina python=3.7
conda activate vina
conda install -c conda-forge numpy swig boost-cpp sphinx sphinx_rtd_theme scipy rdkit openbabel jupyter
pip install meeko
pip install vina
```

## 1. Binary file of vina
```
wget https://github.com/ccsb-scripps/AutoDock-Vina/releases/download/v1.2.3/vina_1.2.3_linux_x86_64
chmod +x vina_1.2.3_linux_x86_64
mv vina_1.2.3_linux_x86_64 vina # for simplicity
```

## 2. Installation of ADFRsuite 
- This software is necessary for 
  - `prepare_receptor.py` and 
  - `prepare_ligand.py`
  - I struggled to find and install them... The two script seems important to create pdbqt files at the beginning.
- Download it from https://ccsb.scripps.edu/adfr/downloads/ for the latest Linux version (ADFRsuit 1.0)
- Put it on a directory, say, Downloads.
```
chmod +x ADFRsuite_Linux-x86_64_1.0_install
./ADFRsuite_Linux-x86_64_1.0_install
cd ADFRsuite-1.0
tar xvf ADFRsuite_x86_64Linux_1.0.tar.gz
```
- Add a line in `bashrc`: 
  - `export PATH=/home/siida/ADFRsuite-1.0/ADFRsuite_x86_64Linux_1.0/bin:$PATH`
- Now, all the script given by ADFRsuite are available!
  - say, type `prepare_ligand`.

## Specifications
- 01_prep.sh : Do this first 
- 02_dock.sh : Do this second
- inputs : include receptor pdb and a ligand mol2 files 
- pdbqt : include the pdbqt files given by the `01_prep.sh` for the receptor and the ligand.
- receptor_vina_box.txt : specify the centre of the receptor and the box size where autodock explores.
- ligand_vina_out.pdbqt : an output file from autodock, which stores ligand poses. 
