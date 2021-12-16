for fastq in fastq/*.fastq.gz 
do
  trimmomatic SE -phred33 *.fastq.gz fastq/*.trimmed.fastq.gz \
    LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
  done
  
