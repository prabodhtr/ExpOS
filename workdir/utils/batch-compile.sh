# run the code with stage number whose spl/expl files needs to be compiled
cur_dir=$(pwd);
stage=$1
compilation_status="SUCCESS";
if [ -z "$stage" ]
  then
    echo "Please provide the stage whose spl files needs to get compiled!"
    exit 1
fi

dir_name=$(ls /home/expos/myexpos/workdir | grep "$stage.*")

# Scan and compile spl files
cd "$HOME/myexpos/spl" || return
echo -e "\nScanning for .spl files in directory /home/expos/myexpos/workdir/$dir_name"
for f in $(find "/home/expos/myexpos/workdir/$dir_name" -name "*.spl"); do
    [ -f "$f" ] || break
    echo "Found $(echo $f | cut -d"/" -f7,8 )! Compiling..."
    temp=$(./spl "$f" 2>&1)
    if [ -n "$temp" ]; then
      echo "$temp"
      compilation_status="FAILED";
    fi

done

# Scan and compile expl files
cd "$HOME/myexpos/expl" || return
echo -e "\nScanning for .expl files in directory /home/expos/myexpos/workdir/$dir_name"
for f in $(find "/home/expos/myexpos/workdir/$dir_name" -name "*.expl"); do
    [ -f "$f" ] || break
    echo "Found $(echo $f | cut -d"/" -f7,8 )! Compiling..."
    temp=$(./expl "$f" 2>&1)
    if [ -n "$temp" ]; then
      echo "$temp"
      compilation_status="FAILED";
    fi
done

TARGET="/home/expos/myexpos/workdir/$dir_name/target"
echo -e "\nPreparing target directory $TARGET"
if [ -d "$TARGET" ]; then
  rm -rd "$TARGET"
fi
mkdir -p "$TARGET"

echo -e "\nMoving compiled .xsm files to target folder..."
for f in $(find "/home/expos/myexpos/workdir/$dir_name" -name "*.xsm"); do
    mv "$f" "/home/expos/myexpos/workdir/$dir_name/target"
done
echo -e "\nCompilation complete. Status: $compilation_status \nGenerated files can be found in '/home/expos/myexpos/workdir/$dir_name/target'\n"
cd "$cur_dir" || exit