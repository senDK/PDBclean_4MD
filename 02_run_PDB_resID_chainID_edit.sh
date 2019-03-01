#! /bin/bash

## uses sponge command and MayaChemTools commands
# commnaline options
if [ $# -ne 4 ]
  then
  echo "Usage: sh $(basename $0) INPUTPDB ATOMSTART_NUM RESIDUESTART_NUM TO_CHAINID"
  echo "       Make sure Mayachemtools, sponge and csplit are installed"
  exit 1
fi
cp $1 temp.pdb
#cleaning
grep -v -e "^TER" -e "^END" temp.pdb| sponge temp.pdb


ModifyPDBFiles.pl -m RenumberAtoms   --AtomNumberStart $2   -o temp.pdb
ModifyPDBFiles.pl --ResidueNumberMode Sequential --ResidueNumberStart $3 -o tempRenumberAtoms.pdb
ModifyPDBFiles.pl -m RenameChainIDs -c $4 --ChainIDRenameEmpty Yes  -o tempRenumberAtomsRenumberResidues.pdb 

mv  tempRenumberAtomsRenumberResiduesRenameChainIDs.pdb $1_01 

# clear temp files
rm -f tempRenumberAtoms.pdb tempRenumberAtomsRenumberResidues.pdb 
