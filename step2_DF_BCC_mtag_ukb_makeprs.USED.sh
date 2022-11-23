
set -eu


${plink2} --bgen ${bgen_file} ref-first \
          --sample ${sample_file} \
          --rm-dup force-first \
          --score ${score_file}  1 2 3 cols=+scoresums ignore-dup-ids\
          --q-score-range ${pranges} ${q_score_file} 1 2 \
          --out ${output_file} \
          --memory ${memory} \
          --threads ${ncpus} 



#OR use plink format Dosage files
#module load plink/1.90b6.8
#plink --dosage ${chunk} format=1 skip0=0 skip1=0 skip2=0\
#      --fam  ${fam_file} \
#      --keep ${keep_file} \
#      --score ${score_file} 1 2 3 sum double-dosage include-cnt \
#      --q-score-range ${pranges} ${q_score_file} 1 2 \
#      --out ${output_file} \
 #     --pheno ${pheno_file} \
#      --memory 8000 \
#      --threads ${ncpus} 
