# start xsm machine with debug or timer
cd /home/expos/myexpos/xsm || exit 1

if [ -z "$1" ]; then
    ./xsm
elif [ "$1" == "debug" ]; then
    if [ "$2" == "timer" ]; then
      ./xsm --debug --timer $3
    else
      ./xsm --debug --timer 0
    fi
elif [ "$1" == "timer" ]; then
    if [ "$3" == "debug" ]; then
      ./xsm --debug --timer $2
    else
      ./xsm --timer $2
    fi
fi 

