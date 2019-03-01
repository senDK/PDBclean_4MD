# PDBclean_4MD
Scripts used to prepare PDB  structure coordinate files for MD simulation. 

The following steps help patch PDB coordinates from individual PDBs. Following *pymol* view and using "drag coordinates" option to obtain the desired. The composite PDB file has fragments with different Chain ID, residue number and atom number. The following steps will help to correct these discrepancies and prepare a AMBER ready PDB file.

#### Additional Package Requirements

    * csplit
    * MayachemTools
    * pdb4amber (AmberTools17)


The steps vary based on the starting structure or structures and the extend of the patch needed.

* ** 01_split_the_combined_pdb.sh **
    * The  scripts helps in splitting PDB files  based on TER card
* ** 02_run_PDB_resID_chainID_edit.sh **
    * This script helps in renumbering the PDb coordinates.
