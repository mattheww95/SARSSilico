#! /usr/bin/env sh

# requires autoconf automake libtool

#Samtools for file manipulation
wget https://github.com/samtools/samtools/releases/download/1.16.1/samtools-1.16.1.tar.bz2 -P bin/samtools && \
bzip2 -d bin/samtools/samtools-1.16.1.tar.bz2 && tar -xvf bin/samtools/samtools-1.16.1.tar -C bin/samtools/

#art_illumina to make reads
wget https://www.niehs.nih.gov/research/resources/assets/docs/artbinmountrainier2016.06.05linux64.tgz -P bin/art_illumina && \
tar -xvzf bin/art_illumina/artbinmountrainier2016.06.05linux64.tgz -C bin/art_illumina/

# bowtie2 to map
wget https://github.com/BenLangmead/bowtie2/releases/download/v2.4.5/bowtie2-2.4.5-linux-x86_64.zip -P bin/bowtie2 && \
unzip bin/bowtie2/bowtie2-2.4.5-linux-x86_64.zip

#htslib to compile ivar
wget https://github.com/samtools/htslib/releases/download/1.16/htslib-1.16.tar.bz2 -P libraries/htslib && \
bzip2 -d libraries/htslib/htslib-1.16.tar.bz2 && tar -xvf libraries/htslib/htslib-1.16.tar -C libraries/htslib/

#ivar source
wget https://github.com/andersen-lab/ivar/archive/refs/tags/v1.3.1.tar.gz -P bin/ivar && \
gunzip bin/ivar/v1.3.1.tar.gz && tar -xvf bin/ivar/v1.3.1.tar -C bin/ivar/
