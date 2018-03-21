#!/bin/bash
nb_total_commits=500;
nb_total_files=1000;
files_per_commit="20  40 21 41 51 50 31 11 12 13 34 44 23 45 50";
commit_steps=10
file_path_10KB="/var/GIT_WORK/GIT_REPOS/testfile";
commit_count=1


for files in $files_per_commit;
do echo $files;
c_step=1;
while [ $c_step -le $commit_steps ];
do mkdir cstep_$c_step"_f_"$files
cd cstep_$c_step"_f_"$files
nb_file=1
while [ $nb_file -le $files ];
do cp $file_path_10KB c_$c_step"_f_"$nb_file;
nb_file=$((nb_file+1))
done
git add .*
git commit -m "commiting "$c_step" to"cstep_$c_step"_f_"$files;
git push
cd -
c_step=$((c_step+1))
done 
done



