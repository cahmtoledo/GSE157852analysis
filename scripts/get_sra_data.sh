mkdir fastq
while read i
  do
      prefetch ${i}
      echo "(o) Done downloading ${i}"
      if [ -f ${i}".fastq.gz" ]
      then
	  echo "(o) File alread converted"
      else
	  echo "(o) Converting SRA to Fastq"
	  fastq-dump -Z --defline-qual '+' ${i}/${i}.sra | gzip -c > fastq/${i}".fastq.gz"
	  #maybe use fastq-dump --gzip --defiline-qual '+' ${i}/${i}.sra
      fi
done < $1
