#!/bin/bash

######## Input: GWAS summary statistics files for both SC-FC coupling & Complex traits; LD Scores files (eur_w_ld_chr_HCP) in our example; 

######## Instructions on how to install ldsc in the conda environment can be found at https://github.com/bulik/ldsc.

module load miniconda;  
conda activate ldsc; 

#### Step 1: Convert GWAS summary statistics to .sumstats file format required by ldsc
ldsc/munge_sumstats.py --sumstats example_gwas.fastGWA  --N 10 --chunksize 500000 --merge-alleles example_snp_lists --out example_ldsc_input;
###### --merge-alleles is to check that the alleles listed in two summary statistics files match the alleles listed in the data used to estimate LD Scores 

#### Step 2: Calculate genetic correlations

ldsc/ldsc.py --rg example_ldsc_input.sumstats.gz, example_complex_trait.sumstats.gz --ref-ld-chr eur_w_ld_chr_HCP/ --w-ld-chr eur_w_ld_chr_HCP/ --out example_complex_traits_gc.sumstats.gz;

conda deactivate;

