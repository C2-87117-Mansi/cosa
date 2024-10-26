read -p "Enter the number: " numb

if ((numb >1));then
	echo "$numb is a positive number"
elif ((numb==0));then
	echo "$numb it is neither positive nor negative"
else
	echo "$numb is negative number"
fi	
