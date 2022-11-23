#!/bin/bash
#PBS -l ncpus=4
#PBS -l mem=20000mb
#PBS -l walltime=24:00:00
#PBS -N LDSC_KC_MTAG
#PBS -e /working/dirS/MTAG_KC/scripts/logs/23T_LDSC_KC_MTAG.e
#PBS -o /working/dirS/MTAG_KC/scripts/logs/23T_LDSC_KC_MTAG.o

#set -eu 


#mem=20000mb
#thread=2

#echo "MTAG started"

out1=/working/dirS/MTAG_KC/LDSC
#dir_out=${dir1}/out_mtag1
#mkdir -p ${dir_out}
#cd ${dir_out}

dir=//working/dirS/MTAG_KC/data
#traits
T1=${dir}/Trait1_BCC_UKB_307684_b   
T2=${dir}/Trait2_SCC_UKB_294294_b    
T3=${dir}/Trait3b_Melanoma_Phase2_111549_b  
T4=${dir}/Trait4b_KC_QSKIN_12942_b          
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


#step 1: munge the results
#Trait 1 BCC BCC_UKB_307684
#module load python/2.7.10
#module load ldsc/1.0.0  # others ldsc/20190301 ldsc/20190815
#module load python/3.6.1

#Trait 2 SCC_UKB_294294
module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T2} \
--out ${out1}/Trait2.hm3.noMHC \
--ignore n,beta \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 294294 
#
cp ${out1}/Trait2.hm3.noMHC.sumstats.gz ${out1}/Trait2_SCC_UKB_294294.hm3.noMHC.sumstats.gz 

#Trait 3 Melanoma_Phase2_111549
module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T3} \
--out ${out1}/Trait3.hm3.noMHC \
--ignore n,beta \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 111549 
#
cp ${out1}/Trait3.hm3.noMHC.sumstats.gz ${out1}/Trait3_Melanoma_Phase2_111549.hm3.noMHC.sumstats.gz 


#Trait 4 Trait4b_KC_QSKIN_12942_b
module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T4} \
--out ${out1}/Trait25.hm3.noMHC \
--ignore n,beta \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 12942 
#
cp ${out1}/Trait4.hm3.noMHC.sumstats.gz ${out1}/Trait4_KC_QSKIN_12942.hm3.noMHC.sumstats.gz 




#Trait 5 KC_Dbgap_10321
module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T5} \
--out ${out1}/Trait5.hm3.noMHC \
--ignore n,beta \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 10321 
#
cp ${out1}/Trait5.hm3.noMHC.sumstats.gz ${out1}/Trait5_KC_Dbgap_10321.hm3.noMHC.sumstats.gz 



#Trait 6 Cancer_Kaiser_61662
module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T6} \
--out ${out1}/Trait6.hm3.noMHC \
--ignore n,beta \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 61662 
#
cp ${out1}/Trait6.hm3.noMHC.sumstats.gz ${out1}/Trait6_Cancer_Kaiser_61662.hm3.noMHC.sumstats.gz 


#Trait 7 EducYears_Okbay_2016_293723
module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T7} \
--out ${out1}/Trait7.hm3.noMHC \
--ignore n,beta \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 293723
#
cp ${out1}/Trait7.hm3.noMHC.sumstats.gz ${out1}/Trait7_EducYears_Okbay_2016_293723.hm3.noMHC.sumstats.gz 

#Trait 8 SkinBurn_QSKIN_16169
module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T8} \
--out ${out1}/Trait8.hm3.noMHC \
--ignore n,beta \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 16169
#
cp ${out1}/Trait8.hm3.noMHC.sumstats.gz ${out1}/Trait8_SkinBurn_QSKIN_16169.hm3.noMHC.sumstats.gz 

#Trait 9  RedHair_QSKIN_16175
module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T9} \
--out ${out1}/Trait9.hm3.noMHC \
--ignore n,beta \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 16175
#
cp ${out1}/Trait9.hm3.noMHC.sumstats.gz ${out1}/Trait9_RedHair_QSKIN_16175.hm3.noMHC.sumstats.gz 


#Trait 10 Smoking_CigsPerDay_263954
module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T10} \
--out ${out1}/Trait10.hm3.noMHC \
--ignore n,beta \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 263954
#
cp ${out1}/Trait10.hm3.noMHC.sumstats.gz ${out1}/Trait10_Smoking_CigsPerDay_263954.hm3.noMHC.sumstats.gz 


#Trait 11 hair colour ukb RN
module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T11} \
--out ${out1}/Trait11.hm3.noMHC \
--ignore n,beta \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 337631
#
cp ${out1}/Trait11.hm3.noMHC.sumstats.gz ${out1}/Trait11_HairColour_UKB_337631.hm3.noMHC.sumstats.gz 


#Trait 12 Mole Count no CM Qskin RN
module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T12} \
--out ${out1}/Trait12.hm3.noMHC \
--ignore n,beta \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 12930
#
cp ${out1}/Trait12.hm3.noMHC.sumstats.gz ${out1}/Trait12_MoleCountNoCM_QSKIN_12930.hm3.noMHC.sumstats.gz 


#Trait 13 Skin Colour UKB RN
module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T13} \
--out ${out1}/Trait13.hm3.noMHC \
--ignore n,beta \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 397931
#
cp ${out1}/Trait13.hm3.noMHC.sumstats.gz ${out1}/Trait13_SkinColour_UKB_397931.hm3.noMHC.sumstats.gz 


#Trait 14 Vitiligo_JinY_2016_44266
#module load python/+3.7.7
#module load ldsc/20190815
#munge_sumstats.py \
#--sumstats ${T14} \
#--out ${out1}/Trait14.hm3.noMHC \
#--ignore n,beta \
#--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
#--N 44266
#
#cp ${out1}/Trait14.hm3.noMHC.sumstats.gz ${out1}/Trait14_Vitiligo_JinY_2016_44266.hm3.noMHC.sumstats.gz 

module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T14} \
--out ${out1}/Trait14.hm3.noMHC \
--ignore n,z \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 44266


#
cp ${out1}/Trait14.hm3.noMHC.sumstats.gz ${out1}/Trait14_Vitiligo_JinY_2016_44266.hm3.noMHC.sumstats.gz 

#Trait 15 Hypothyroidism_UKB_SAIGE_2016_406300
module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T15} \
--out ${out1}/Trait15.hm3.noMHC \
--ignore n,beta \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 406300
#
cp ${out1}/Trait15.hm3.noMHC.sumstats.gz ${out1}/Trait15_Hypothyroidism_UKB_SAIGE_2016_406300.hm3.noMHC.sumstats.gz 

#Trait 16 T1D_UKB_SAIGE_2016_391416
module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T16} \
--out ${out1}/Trait16.hm3.noMHC \
--ignore n,beta \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 391416
#
cp ${out1}/Trait16.hm3.noMHC.sumstats.gz ${out1}/Trait16_T1D_UKB_SAIGE_2016_391416.hm3.noMHC.sumstats.gz 

#Trait 17 RA_UKB_SAIGE_2016_369497
module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T17} \
--out ${out1}/Trait17.hm3.noMHC \
--ignore n,beta \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 369497
#
cp ${out1}/Trait17.hm3.noMHC.sumstats.gz ${out1}/Trait17_RA_UKB_SAIGE_2016_369497.hm3.noMHC.sumstats.gz 


#Trait 18 VitD_UKB_401529
module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T18} \
--out ${out1}/Trait18.hm3.noMHC \
--ignore n,beta \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 401529
#
cp ${out1}/Trait18.hm3.noMHC.sumstats.gz ${out1}/Trait18_VitD_UKB_401529.hm3.noMHC.sumstats.gz 

#Trait 19 Glucose_UKB_384721
module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T19} \
--out ${out1}/Trait19.hm3.noMHC \
--ignore n,beta \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 384721
#
cp ${out1}/Trait19.hm3.noMHC.sumstats.gz ${out1}/Trait19_Glucose_UKB_384721.hm3.noMHC.sumstats.gz 


#Trait 20 AAT_UKB_418029
module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T20} \
--out ${out1}/Trait20.hm3.noMHC \
--ignore n,beta \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 418029
#
cp ${out1}/Trait20.hm3.noMHC.sumstats.gz ${out1}/Trait20_AAT_UKB_418029.hm3.noMHC.sumstats.gz 



#Trait 21 Albumin_UKB_385159
module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T21} \
--out ${out1}/Trait21.hm3.noMHC \
--ignore n,beta \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 385159
#
cp ${out1}/Trait21.hm3.noMHC.sumstats.gz ${out1}/Trait21_Albumin_UKB_385159.hm3.noMHC.sumstats.gz 

#Trait 22 CRP_UKB_418642
module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T22} \
--out ${out1}/Trait22.hm3.noMHC \
--ignore n,beta \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 418642
#
cp ${out1}/Trait22.hm3.noMHC.sumstats.gz ${out1}/Trait22_CRP_UKB_418642.hm3.noMHC.sumstats.gz 

#Trait 23 GGT_UKB_419300
module load python/+3.7.7
module load ldsc/20190815
munge_sumstats.py \
--sumstats ${T23} \
--out ${out1}/Trait23.hm3.noMHC \
--ignore n,beta \
--merge-alleles /working/dirS/MTAG_KC/LDSC/eur_w_ld_chr/w_hm3.noMHC.snplist \
--N 419300
#
cp ${out1}/Trait23.hm3.noMHC.sumstats.gz ${out1}/Trait23_GGT_UKB_419300.hm3.noMHC.sumstats.gz 




