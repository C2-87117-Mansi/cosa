read -p "Enter the name: " name
if [ -e "$name" ];
then
	if [ -f "$name" ];then
		echo "$name is a file."
		echo "Size: `ls -sh $name` "
	elif [ -d "$name" ]; then
		echo "$name is a directory."
		echo "Contents:"
		ls "$name"
	else
		echo "$name is not a regular file or directory."
	fi
else
	echo "$name dose not exist."
fi
