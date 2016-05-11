#Watch spaces for all commands
lines=`wc -l file.txt | cut -d ' ' -f1`;
output=`sed -n '10{p;q;}' file.txt`
if [ "$lines" -lt "9" ]
	then
		echo Line 10 does not exist
		echo $lines
elif [ -z "$output" ]
	then
		echo Line 10 is blank
else
	echo `sed -n '10{p;q;}' file.txt`
fi

read -p "Press [Enter] to continue..."