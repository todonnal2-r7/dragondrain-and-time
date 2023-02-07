if [ $1 == "" ]
then
  echo "You must specify a wireless adapter. i.e.: ./preflight.sh wlan0/n"
else
  service NetworkManager stop
  rfkill unblock wifi
  ifconfig $1 down
  iw $1 set type monitor
  ifconfig $1 up
fi
