#!/bin/bash

###### Input: a sparse genetic relatedness matrix (details on how to generate it can be found at https://yanglab.westlake.edu.cn/software/gcta/#fastGWA); a genotype data file; three separate files containing phenotype data, categorical covariates and continous covariates respectively.
###### Output: *.fastGWA file, including details on SNPs including SNP name, chromosome, position, MAF, BETA, SE, P. 

gcta64 --bfile example_geno --grm-sparse example_grm --fastGWA-mlm --pheno example_pheno --mpheno 1 --qcovar example qcovar_file.txt --covar example covar_file.txt  --threads 5 --out example_gwas

