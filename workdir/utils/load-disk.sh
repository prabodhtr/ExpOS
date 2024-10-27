# Program to run batch load script present in a stage using xfs-interface
cur_dir=$(pwd);
cd /home/expos/myexpos/xfs-interface || exit
stage=$1

if [ -z "$stage" ]
  then
    echo "Please provide the stage whose batch_loader needs to get executed!"
    exit 1
fi

dir_name=$(ls /home/expos/myexpos/workdir | grep "$stage.*")

echo -e "\nEnriching batch_loader of /home/expos/myexpos/workdir/$dir_name"
perl -pe "s|__CURR_DIR__|/home/expos/myexpos/workdir/$dir_name|g" "/home/expos/myexpos/workdir/$dir_name/batch_loader" > enriched_loader

cat enriched_loader

echo -e "\n\nRunning enriched_loader...\n"
printf "run ./enriched_loader\nexit" | ./xfs-interface
cd "$cur_dir" || exit
