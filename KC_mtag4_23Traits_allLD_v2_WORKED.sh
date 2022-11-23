#!/bin/bash
#PBS -l ncpus=8
#PBS -l mem=200000mb
#PBS -l walltime=240:00:00
#PBS -N 23T_v2_allLD_KC_MTAG.fixedN
#PBS -e /working/dirS/MTAG_KC/scripts/logs/23T_allLD_KC_MTAG.v2.fixedN.e
#PBS -o /working/dirS/MTAG_KC/scripts/logs/23T_allLD_KC_MTAG.v2.fixedN.o

#set -eu 



cd /working/dirS/MTAG_KC/out_mtag4_v2_23Traits_allLD

echo "MTAG started"

dir1=/working/dirS/MTAG_KC/out_mtag4_v2_23Traits_allLD
#dir_out=${dir1}/out_mtag1
#mkdir -p ${dir_out}
#cd ${dir_out}

dir=/working/dirS/MTAG_KC/data
#traits
T1=${dir}/Trait1_BCC_UKB_307684_b   
T2=${dir}/Trait2_SCC_UKB_294294_b   
T3=${dir}/Trait3b_Melanoma_Phase2_111549_b  
T4=${dir}/Trait4c_KC_QSKIN_13735_b           
T5=${dir}/Trait5_KC_Dbgap_10321_b          
T6=${dir}/Trait6b_Cancer_Kaiser_61662_b    
T7=${dir}/Trait7_EducYears_Okbay_2016_293723  
T8=${dir}/Trait8_SkinBurn_QSKIN_16169
T9=${dir}/Trait9_RedHair_QSKIN_16175_b
T10=${dir}/Trait10_Smoking_CigsPerDay_263954
T11=${dir}/Trait11_HairColour_UKB_300k
T12=${dir}/Trait12_MoleCountNoCM_QSKIN_12930
T13=${dir}/Trait13_SkinColour_UKB_300k
T14=${dir}/Trait14_Vitiligo_JinY_2016_44266_b   
T15=${dir}/Trait15_Hypothyroidism_UKB_SAIGE_2016_406300_b  
T16=${dir}/Trait16_T1D_UKB_SAIGE_2016_391416_b
T17=${dir}/Trait17_RA_UKB_SAIGE_2016_369497_b
T18=${dir}/Trait18b_VitD_UKB_401529   
T19=${dir}/Trait19b_Glucose_UKB_384721
T20=${dir}/Trait20b_AAT_UKB_418029
T21=${dir}/Trait21b_Albumin_UKB_385159
T22=${dir}/Trait22b_CRP_UKB_418642
T23=${dir}/Trait23b_GGT_UKB_419300



module load python/2.7.13
#module load python/3.6.1
#module load python/+3.7.7
#module load mtag/20190826
python /software/mtag/mtag-20190826/mtag.py --sumstats ${T1},${T2},${T3},${T4},${T5},${T6},${T7},${T8},${T9},${T10},${T11},${T12},${T13},${T14},${T15},${T16},${T17},${T18},${T19},${T20},${T21},${T22},${T23} --out ${dir1}/mtag_23Traits_allLD --n_min 0.0 
#--use_beta_se\
#--beta_name beta\
#--se_name se\
#--out ${dir1}/mtag3 \
#--n_min 0.0 
#--fdr \
#--cores 32 

echo "MTAG Finished"


