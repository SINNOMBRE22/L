green="\033[32;1m"
yellow="\033[33;1m"
indigo="\033[34;1m"
red="\033[31;1m"
purple="\033[37;1m"
cyan="\033[36;1m"
white="\033[39;1m"
#echo $green
reas() {
	echo $white
	read -p "B/back or E/Exit : " be
if [ $be = "B" ]
	then
		menu
elif [ $be = "E" ]
	then
		echo "Byee :) "
		exit
else
	echo "Bye :)"
	exit
fi
}

hostfinder() {
	echo "\aInput Domain [ex : example.com]"
		echo $white "╭─"$green"AMR@localhost"$cyan" ~/INmux "$white
		read -p " ╰─>~#  "  target
			command=$(wget http://api.hackertarget.com/hostsearch/?q=$target -q -O .-)
			echo $yellow"\a["$red"+"$yellow"]"$white Host Finder
			echo $green
				cat .-
				reas

restartprogram() {
	sleep 1
	echo "\a Permission Denied"
	sleep 2
	menu
}
menu() {

	~{1}--Buscar Host
	~{99}-Salir
'''

echo $white "╭─"$green"AMR@localhost"$cyan" ~/INmux"$white
read -p " ╰─>~#  "  select

if [ $select -eq 00 ];
	then
		echo " Byee :)"
		exit
elif [ $select -eq 99 ];
	then
		
echo "Buscar Host"  

elif [ $select -eq 1 ];
	then
		hostfinder
elif [ $select -eq 11 ];
	then
		extraclink
else
	restartprogram
fi
}


menu
