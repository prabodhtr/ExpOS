# run the code with stage number whose spl files needs to be compiled
cur_dir=$(pwd);
cd "$HOME/myexpos/spl" || return

stage=$1
if [ -z "$stage" ]
  then
    echo "Please provide the stage whose spl files needs to get compiled!"
    exit 1
fi
dir_name=$(ls /home/expos/myexpos/workdir | grep "$stage.*")
echo -e "\nScanning for .spl files in directory /home/expos/myexpos/workdir/$dir_name"
for f in "/home/expos/myexpos/workdir/$dir_name"/*.spl; do
    [ -f "$f" ] || break
    echo "Found $f! Compiling..."
    ./spl "$f"
done
cd "$cur_dir" || exit