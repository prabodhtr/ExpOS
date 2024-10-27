# run the code with stage number whose spl/expl files needs to be compiled
cur_dir=$(pwd);
stage=$1
if [ -z "$stage" ]
  then
    echo "Please provide the stage whose spl files needs to get compiled!"
    exit 1
fi

dir_name=$(ls /home/expos/myexpos/workdir | grep "$stage.*")

# Scan and compile spl files
cd "$HOME/myexpos/spl" || return
echo -e "\nScanning for .spl files in directory /home/expos/myexpos/workdir/$dir_name"
for f in "/home/expos/myexpos/workdir/$dir_name"/*.spl; do
    [ -f "$f" ] || break
    echo "Found $(basename "$f")! Compiling..."
    ./spl "$f"
done

# Scan and compile expl files
cd "$HOME/myexpos/expl" || return
echo -e "\nScanning for .expl files in directory /home/expos/myexpos/workdir/$dir_name"
for f in "/home/expos/myexpos/workdir/$dir_name"/*.expl; do
    [ -f "$f" ] || break
    echo "Found $(basename "$f")! Compiling..."
    ./expl "$f"
done

cd "$cur_dir" || exit