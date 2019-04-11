#!/bin/bash

prepare(){
	cd  /home/tchiclas/Desktop/3ano/2semestre/Compiladores/m19 || exit
	
	for f in ../apoio_projeto/tests-201903052202/*.m19
	do
		echo ""
		echo ""
		echo "TEST: $f "
		echo ""
		echo ""
		./m19 $f
		
	
	done
}
#Opens m19 directory
cd  /home/tchiclas/Desktop/3ano/2semestre/Compiladores/m19 || exit
prepare
