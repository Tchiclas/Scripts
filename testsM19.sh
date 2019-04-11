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

prepare_xml(){
	cd  /home/tchiclas/Desktop/3ano/2semestre/Compiladores/m19 || exit
	
	for f in ../apoio_projeto/tests-201903052202/*.m19
	do
		echo ""
		echo ""
		echo "TEST: $f "
		echo ""
		echo ""
		./m19 --tree $f
		
	
	done
}

prepare_rmv(){
	cd  /home/tchiclas/Desktop/3ano/2semestre/Compiladores/m19 || exit
	rm /home/tchiclas/Desktop/3ano/2semestre/Compiladores/apoio_projeto/tests-201903052202/*.asm
}


#Opens m19 directory
cd  /home/tchiclas/Desktop/3ano/2semestre/Compiladores/m19 || exit


argument="$1"

case $argument in
	-n)
		prepare
		;;
	-xml)
		prepare_xml
		;;
	-rm)
		prepare_rmv
		;;
	*)
		echo "Unknown argument"
esac

