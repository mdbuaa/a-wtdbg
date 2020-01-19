#!/bin/bash

datatype="dmelanoiso"

if [ $datatype == "ecoli" ]
then 
   data_folder="YOURPATH/ecoli/selfSampleData/"
   suffix="fastq"
   xtype="rs"
   gamount="4.6m"
elif [ $datatype == "elegan" ]
then
   data_folder="YOURPATH/elegan/rawdata/"
   suffix="fastq"
   xtype="rs"
   gamount="100m"
elif [ $datatype == "dmelanoiso" ]
then 
   data_folder="YOURPATH/dmelanoiso/"
   suffix="fastq.gz"
   xtype="ont"
   gamount="144m"
elif [ $datatype == "na24385" ]
then
   data_folder="YOURPATH/na24385/"
   suffix="fastq"
   xtype="ccs"
   gamount="3g"
else
   data_folder="YOURPATH/hg00733/"
   suffix="fastq.gz"
   xtype="sq"
   gamount="3g"
fi 

w_folder="YOURPATH/a-wtdbg/bin"

r_folder="datatest_result"

r_folder=${r_folder}${datatype}

rm -rf ${r_folder}

mkdir ${r_folder}

cd ${r_folder}

${w_folder}/wtdbg2 -x ${xtype} -g ${gamount} -t 28 -i ${data_folder}*.${suffix} -fo result_${datatype} --no-chainning-clip > ${datatype}.out 2>&1 

${w_folder}/wtpoa-cns -t 28 -i result_${datatype}.ctg.lay.gz -fo result_${datatype}.raw.fa


