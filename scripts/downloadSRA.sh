cat SRR_Acc_List.txt | while read line
  do
  prefetch $line
  done
