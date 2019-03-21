#!/bin/bash

display_usage(){
	echo
	echo "======USAGE========"
	echo
	echo
	echo "-es     Engenharia de Software"
	echo
	echo "-sd     Sistemas Distribuidos"
}

prepare_es(){
	#Opens ES directory
	cd /home/tchiclas/Desktop/3ano/2semestre/ES/es19al_14-project || exit

	code .
	echo "Success !"
	#These are used to fiz ERROR 2002 which can lead to build fail
	#Stops mysql server daemon
	sudo /etc/init.d/mysql stop

	#Starts mysql server daemon
	sudo mysqld_safe --skip-grant-tables &
	#starts another terminal to work on
	gnome-terminal
}

prepare_sd(){
		
	cd ~/eclipse/java-2018-12/SD/Aula2/SD/ || exit
	gnome-terminal
	code .
	clear
	echo "Success!"
	echo "Now get to work !"
}

prepare_co(){
		
	cd /home/tchiclas/Desktop/3ano/2semestre/Compiladores/ || exit
	subl
	gnome-terminal
	clear
	echo "Success!"
	echo "Now get to work !"
}

prepare_ams(){
	cd /home/tchiclas/Desktop/3ano/2semestre/AMS || exit
	gnome-terminal
	./camunda-modeler-2.2.4-linux-x64/camunda-modeler &
	clear
	echo "Success!"
	echo "Now get to work !"
}


argument="$1"

case $argument in
	-h | --help)
		display_usage
		;;
	-es)
		prepare_es
		;;
	-sd)
		prepare_sd
		;;
	-co)
		prepare_co
		;;
	-ams)
		prepare_ams
		;;
	*)
		echo "Unknown argument"
esac

