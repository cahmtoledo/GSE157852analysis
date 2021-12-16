#Multiqc
mkdir fastqc_output

fastqc -o fastqc_output *.fastq.gz

multiqc fastqc_output
