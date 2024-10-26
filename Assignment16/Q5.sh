read -p "Enter no1 :" num1
read -p "Enter no2 :" num2
read -p "Enter no3 :" num3

if [ $num1 -gt $num2 ];then
	if [ $num1 -gt $num3 ] 
	then
		echo " $num1 is greatest of all 3 number" 
	else 

		echo " $num3 is greatest of all 3 number" 
	fi
elif [ $num2 -gt $num3 ];then
	echo " $num2 is greatest of all 3 number" 
else 
	echo " $num3 is greater."
fi
