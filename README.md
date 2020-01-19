# a-wtdbg2
accelerated wtdbg2, which is based on the *de novo* assembler wtdbg2 on  https://github.com/ruanjue/wtdbg2 

## Experiment Setup

**CPU**: 2 Intel Xeon E5-2680v4 CPUs,each with 14 hyper-threaded cores.

**Memory**: 256GB

**Operation System**: Red Hat 7.2

**Compiler**: gcc 4.8.3

## Datasets

All the different command lines of various datasets have already been integrated in run.sh, here only the download links  are presented.

**E.coli**: http://www.cbcb.umd.edu/software/PBcR/data/selfSampleData.tar.gz

**C.elegans**: https://github.com/PacificBiosciences/DevNet/wiki/C.-elegans-data-set

**D. melanogaster ISO1**: https://www.ebi.ac.uk/ena/data/view/SRR6702603

**Human NA24385**: https://ftp-trace.ncbi.nlm.nih.gov/giab/ftp/data/AshkenazimTrio/HG002_NA24385_son/PacBio_CCS_15kb/

**Human HG00733**: https://www.ebi.ac.uk/ena/data/view/SRR7615963

## Installation of a-wtdbg2

To compile and install the a-wtdbg2, please use `make` and `make install`.

``````shell
cd a-wtdbg2
make
make install
``````

## Running a-wtdbg2

The command lines for assembly and subsequent consensus which is used for assessment by Quast is in run.sh, thus to run a-wtdbg2, please directly run *run.sh*.

``````shell
./run.sh
``````



