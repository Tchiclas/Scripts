#!/bin/bash

prepare(){
	cd  /home/tchiclas/Desktop/3ano/2semestre/Compiladores/m19 || exit
	gnome-terminal
	
	for f in ../apoio_projeto/tests-201903052202/*.m19
	do
		echo "\n\nTEST: $f \n\n"
		./m19 $f
		
	
	done
}
#Opens m19 directory
cd  /home/tchiclas/Desktop/3ano/2semestre/Compiladores/m19 || exit
prepare
