#!/bin/bash
#PBS -l ncpus=4
#PBS -l mem=10000mb
#PBS -l walltime=24:00:00
#PBS -N hm3.noMHC.ldsc
#PBS -e /working/dirS/MTAG_KC/scripts/logs/hm3.noMHC.ldsc.e
#PBS -o /working/dirS/MTAG_KC/scripts/logs/hm3.noMHC.ldsc.o

#set -eu 


#mem=20000mb
#ncpus=4

for i in {1..25}
do
dir=/working/dirS/MTAG_KC/LDSC/data
Trait=${dir}/Trait${i}.hm3.noMHC.sumstats.gz 
out=/working/dirS/MTAG_KC/LDSC/out/Trait${i}.hm3.noMHC.ldsc
ldsc_software=/working/dirS/MTAG_KC/LDSC/LDSC_Mats/ldsc-master
dir_ldsc=/working/dirS/MTAG_KC/LDSC
#Traits
T1=${dir}/Trait1_BCC_UKB_307684.hm3.noMHC.sumstats.gz
T2=${dir}/Trait2_SCC_UKB_294294.hm3.noMHC.sumstats.gz
T3=${dir}/Trait3_Melanoma_Phase2_111549.hm3.noMHC.sumstats.gz 
T4=${dir}/Trait4_KC_QSKIN_12942.hm3.noMHC.sumstats.gz     
T5=${dir}/Trait5_KC_Dbgap_10321.hm3.noMHC.sumstats.gz         
T6=${dir}/Trait6_Cancer_Kaiser_61662.hm3.noMHC.sumstats.gz
T7=${dir}/Trait7_EducYears_Okbay_2016_293723.hm3.noMHC.sumstats.gz  
T8=${dir}/Trait8_SkinBurn_QSKIN_16169.hm3.noMHC.sumstats.gz
T9=${dir}/Trait9_RedHair_QSKIN_16175.hm3.noMHC.sumstats.gz
T10=${dir}/Trait10_Smoking_CigsPerDay_263954.hm3.noMHC.sumstats.gz
T11=${dir}/Trait11_HairColour_UKB_337631.hm3.noMHC.sumstats.gz
T12=${dir}/Trait12_MoleCountNoCM_QSKIN_12930.hm3.noMHC.sumstats.gz
T13=${dir}/Trait13_SkinColour_UKB_397931.hm3.noMHC.sumstats.gz
T14=${dir}/Trait14_Vitiligo_JinY_2016_44266.hm3.sumstats.gz  
T15=${dir}/Trait15_Hypothyroidism_UKB_SAIGE_2016_406300.hm3.noMHC.sumstats.gz 
T16=${dir}/Trait16_T1D_UKB_SAIGE_2016_391416.hm3.noMHC.sumstats.gz
T17=${dir}/Trait17_RA_UKB_SAIGE_2016_369497.hm3.noMHC.sumstats.gz
T18=${dir}/Trait18_VitD_UKB_401529.hm3.noMHC.sumstats.gz
T19=${dir}/Trait19_Glucose_UKB_384721.hm3.noMHC.sumstats.gz
T20=${dir}/Trait20_AAT_UKB_418029.hm3.noMHC.sumstats.gz
T21=${dir}/Trait21_Albumin_UKB_385159.hm3.noMHC.sumstats.gz
T22=${dir}/Trait22_CRP_UKB_418642.hm3.noMHC.sumstats.gz
T23=${dir}/Trait23_GGT_UKB_419300.hm3.noMHC.sumstats.gz


#sample_prev_BCC_UKB_2020=0.069
#pop_prev_BCC_UKB_2015=0.01
#sample_prev_SCC_UKB_2020=0.03
#pop_prev_SCC_UKB_2015=0.01

#module load python/2.7.13
module load python/+3.7.7
module load ldsc/20190815
ldsc.py \
--rg ${Trait},${T1},${T2},${T3},${T4},${T5},${T6},${T7},${T8},${T9},${T10},${T11},${T12},${T13},${T14},${T15},${T16},${T17},${T18},${T19},${T20},${T21},${T22},${T23} \
--ref-ld-chr ${dir_ldsc}/eur_w_ld_chr/ \
--w-ld-chr ${dir_ldsc}/eur_w_ld_chr/ \
--out ${out} 


#--samp-prev ${samp_prev_2015GWAS},${samp_prev_kaiser},${samp_prev_2012GWAS} --pop-prev ${pop_prev},${pop_prev},${pop_prev}

done