# Program to run batch load script present in a stage using xfs-interface
cur_dir=$(pwd);
cd /home/expos/myexpos/xfs-interface || exit
stage=$1
relative_dir=$2

if [ -z "$stage" ]
  then
    echo "Please provide the stage whose xfs-loader-script needs to get executed!"
    exit 1
fi

dir_name=$(ls /home/expos/myexpos/workdir | grep "$stage.*")

if [ -z "$relative_dir" ]
  then
    xfs_loader_script_dir="/home/expos/myexpos/workdir/${dir_name}";
  else
    xfs_loader_script_dir="/home/expos/myexpos/workdir/${dir_name}/$relative_dir";
fi

echo -e "\nEnriching xfs-loader-script of $xfs_loader_script_dir"
perl -pe "s|__CURR_DIR__|/home/expos/myexpos/workdir/${dir_name}|g" "$xfs_loader_script_dir/xfs-loader-script" > enriched_loader

cat enriched_loader

echo -e "\n\nRunning enriched_loader...\n"
printf "run ./enriched_loader\nexit" | ./xfs-interface
cd "$cur_dir" || exit
