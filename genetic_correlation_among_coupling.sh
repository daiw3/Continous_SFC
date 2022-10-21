#!/bin/bash

###### Input: a genetic relatedness matrix; three separate files containing phenotype data, categorical covariates and continous covariates respectively.
###### Output: *.hsq file. More details about how to read *.hsq file to get genetic correlation can be found at https://yanglab.westlake.edu.cn/software/gcta/#BivariateGREMLanalysis

gcta64 --grm example_grm --pheno example_pheno.txt --reml-bivar 1 2 -reml-bivar-lrt-rg 0 --qcovar qcovar_file.txt  --covar covar_file.txt --out coupling_gc_trait_1_trait_2;
