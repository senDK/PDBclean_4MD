# input: 5kkq_CpG2_Aconf_amberd.pdb
#output: XX??
csplit 5kkq_CpG2_Aconf_amberd.pdb -f out -b "%03d.pdb" '/^TER/' {*}
