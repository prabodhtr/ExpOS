cd "$HOME/myexpos/spl" || return
dir=$1
for f in "$dir"/*.spl; do
    [ -f "$f" ] || break
    ./spl "$f"
done