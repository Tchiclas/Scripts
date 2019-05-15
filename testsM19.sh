#!/bin/bash

prepare(){
	cd  /home/tchiclas/Desktop/3ano/2semestre/Compiladores/apoio_projeto/tests-201903052202/ || exit

	#./m19 --target asm A-01-1-N-ok.m19
	for f in *.m19
	do
		echo ""
		echo ""
		echo "run M19: $f "
		echo ""
		echo ""
		../../m19/m19 --target asm $f
		
	
	done


	#yasm -felf32 A-01-1-N-ok.asm
	for f in *.asm
	do
		echo ""
		echo ""
		echo "Yasm: $f "
		echo ""
		echo ""
		yasm -felf32 $f
		
	
	done

	#ld -melf_i386 -o main A-01-1-N-ok.o -L${HOME}/compiladores/root/usr/lib -lrts
	for f in *.o
	do
		echo ""
		echo ""
		echo "Running through the 90s: $f "
		echo ""
		echo ""
		ld -melf_i386 -o main $f -L${HOME}/compiladores/root/usr/lib -lrts
		./main
		
	
	done
}

prepare_rmv(){
	rm /home/tchiclas/Desktop/3ano/2semestre/Compiladores/apoio_projeto/tests-201903052202/*.asm
	rm /home/tchiclas/Desktop/3ano/2semestre/Compiladores/apoio_projeto/tests-201903052202/*.o
	rm /home/tchiclas/Desktop/3ano/2semestre/Compiladores/apoio_projeto/tests-201903052202/main
}


#Opens m19 directory
cd  /home/tchiclas/Desktop/3ano/2semestre/Compiladores/m19 || exit


argument="$1"

case $argument in
	-n)
		prepare
		;;
	-rm)
		prepare_rmv
		;;
	*)
		echo "Unknown argument"
esac

	#../../m19/m19 --target asm A-01-1-N-ok.m19 ;  yasm -felf32 A-01-1-N-ok.asm ;ld -melf_i386 -o main A-01-1-N-ok.o -L${HOME}/compiladores/root/usr/lib -lrts