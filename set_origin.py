import MDAnalysis as mda
from glob import glob
for pdb in glob("inputs/target*/*.pdb"):
    u = mda.Universe(pdb)
    atoms = u.select_atoms("protein")
    com = atoms.center_of_geometry()
    u.atoms.translate(-com)
    print(pdb)
    print(f"    COM: {com} -> {u.atoms.center_of_geometry()}")
    out = pdb.split('.')[0] + "_origin" + ".pdb"
    print(f"    Output: {out}")
    u.atoms.write(out)
