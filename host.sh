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
	read -p "B/Regresar o E/Cerrar : " be
if [ $be = "B" ]
	then
		menu
elif [ $be = "E" ]
	then
		echo "Gracias por usar este repositorio :) "
		exit
else
	echo "Bye :)"
	exit
fi
}

hostfinder() {
	echo " [Ejemplo : google.com]"		
		read -p " ╰─>~#  "  target
			command=$(wget http://api.hackertarget.com/hostsearch/?q=$target -q -O .-)
			echo $yellow"\a["$red"+"$yellow"]"$white Host Finder
			echo $green
				cat .-
				reas
}

restartprogram() {
	sleep 1
	echo "\a Permission Denied"
	sleep 2
	menu
}
menu() {
echo "  "
echo "Buscar host disponibles: "

echo '''
	1--Buscar host
	00-Salir
	99-Acerca de autor
'''

echo "╭─" " ~/host"
read -p " ╰─>~#  "  select

if [ $select -eq 00 ];
	then
		echo " Gracias por usar este repositorio :)"
		exit
elif [ $select -eq 99 ];
	then
		echo '''
	Autor           : Termuxbyte
        version         : 0.1
    
'''
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
