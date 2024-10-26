
#!/bin/bash

hora=$(date +%H)

case $hora in
	08|09|10|11|12|13|14)
	echo "Buenos días"
	;;
	15|16|17|18|19)
	echo "Buenas tardes"
	;;
	*)
	echo "Buenas noches"
	;;
esac
