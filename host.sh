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
echo '''

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
		echo '''
	Author by       : AMRiezz
        version         : 0.1
        made on a date  : 26 - May - 2018
        Blog            : http://anrwiki.blogspot.com
        Github          : https://github.com/Amriez
        Youtube         : AMRiezz z
        Whatsapp        : +6281809019693
                        + THANKS TO +
        + RYUKI-KUN && MR.RSA && M3e.X && MR.5!P!T && M.Y.A.A +
'''
elif [ $select -eq 1 ];
	then
		dnslook
elif [ $select -eq 2 ];
	then
		revdnslook
elif [ $select -eq 3 ];
	then
		whois
elif [ $select -eq 4 ];
	then
		geoip
elif [ $select -eq 5 ];
	then
		hostfinder
elif [ $select -eq 6 ];
	then
		httpheader
elif [ $select -eq 7 ];
	then
		hostdns
elif [ $select -eq 8 ];
	then
		portscan
elif [ $select -eq 9 ];
	then
		subnet
elif [ $select -eq 10 ];
	then
		zonetransfer
elif [ $select -eq 11 ];
	then
		extraclink
else
	restartprogram
fi
}


menu
