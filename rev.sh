#! /bin/bash

if [ -z $1 ]; then

	# reads from stdin if no arguments provided
	
	while read -r line; do
		reverse_string=''
		for ((i=${#line} - 1;i>=0;i--))
		do
			reverse_string=${reverse_string}${line:i:1}
		done
		echo $reverse_string
	done
else
	if [ -f $1 ]; then

		# reads from specified file if it exists
		
		while read -r line; do
			reverse_string=''
			for ((i=${#line} - 1;i>=0;i--))
			do
				reverse_string=${reverse_string}${line:i:1}
			done
			echo "$reverse_string"
		done < "$1"
	else

		# reverses the provided argument
		
		reverse_string=''
		for ((i=${#1} - 1;i>=0;i--))
		do
			reverse_string=${reverse_string}${1:i:1}
		done
		echo $reverse_string
	fi
fi
