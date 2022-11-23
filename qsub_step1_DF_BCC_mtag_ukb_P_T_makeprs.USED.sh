#!/bin/bash
#PBS -l ncpus=2
#PBS -l mem=5000mb
#PBS -l walltime=4:00:00
#PBS -N 1_22_bcc_prs.005.USED
#PBS -e /working/dirS/MTAG_KC/scripts/logs/1_22_bcc_prs.USED.e
#PBS -o /working/dirS/MTAG_KC/scripts/logs/1_22_bcc_prs.USED.o

#cd /working/dirS/MTAG_KC/data



#module load plink/1.90b6.8

mem=10000mb
ncpus=4
walltime=48:00:00



#thread=4
memory=10000
plink2=/working/dirS/software/PLINK2/10_May_2021/plink2
#module load plink/1.90b4.1


for trait in mtag ukb
do 
output_folder=/working/dirS/MTAG_KC/PRS/${trait}_USED
mkdir -p ${output_folder}


dataplace0=/working/dirS/MTAG_KC/data
dataplace1=${dataplace0}/genotype
#keep_file=${dataplace0}/DF_FID_ID_v2
#pheno_file=${dataplace0}/DF_pheno1
score_file=${dataplace0}/score_v_DF_${trait}_bcc_r2.005_5mb.clumped.v1_SNP_A1_Beta 
q_score_file=${dataplace0}/q_score_v_DF_${trait}_bcc_r2.005_5mb.clumped.v1_SNP_P
pranges=${dataplace0}/p2.ranges 


for chr in {1..22} 
do



#if you are using dosage files
#fam_file=${dataplace1}/DF_imp_v3.plink.fam
#dosage_file=${dataplace1}/DF_imp_v3.plink.dosage.gz
output_file=${output_folder}/${trait}_CLSA_bcc_chr${chr}.prs #ckeck
bgen_file=${dataplace1}/DF_imp_${chr}_v3.bgen
sample_file=${dataplace1}/DF_imp_v3.sample



qsub_name=${trait:0:6}
qsub -N "`echo ${qsub_name}_prs_${chr}|rev`" -v trait=${trait},chr=${chr},plink2=${plink2},dataplace0=${dataplace0},dataplace1=${dataplace1},bgen_file=${bgen_file},sample_file=${sample_file},score_file=${score_file},q_score_file=${q_score_file},pranges=${pranges},output_folder=${output_folder},output_file=${output_file},memory=${memory},ncpus=${ncpus} -e ${output_folder}/prs.pbs.err -o ${output_folder}/prs.pbs.out -l ncpus=${ncpus},mem=${mem},walltime=${walltime} /working/dirS/MTAG_KC/scripts/step2_DF_BCC_mtag_ukb_makeprs.USED.sh;


done
done