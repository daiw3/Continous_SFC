#!/bin/bash

###### Input: a genetic relatedness matrix; a file containing phenotype data
###### Output: *.hsq file. 
###### More details about how to read this file to get heritability can be found at https://yanglab.westlake.edu.cn/software/gcta/#GREMLanalysis.

gcta64 --reml --grm example_grm --pheno example_pheno.txt --mpheno 1 --out example_h2
