#!/bin/bash
#check if adding -e after bash exits if return != 0

#Updates config files 
#only bash for now

#no names with spaces => no need to worry about that
restore(){
	cd ~/Config_files/ || exit
	#to get the lastest version
	git pull
	echo "Pull successful"
	#overwrites the current config files
	cp .*rc ../ || exit
}

update(){
	cd ~/ || exit
	cp .*rc Config_files/
	cd ~/Config_files || exit
	#updates the repository 
	git add .*rc
	git commit -m"Automated"
	git push
}

argument="$1"

case $argument in
	-h | --help)
		display_usage
		;;
	-r | --restore)
		restore
		echo "Done!"
		;;
	-u | --update)
		 update
		
		echo "Done!"
		;;
	*)
		echo "Unknown argument"
esac



