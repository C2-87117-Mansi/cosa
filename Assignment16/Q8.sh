read -p "Enter a number: " tb

for i in {1..10};do
	result=$((i * tb))
	echo " $i * $tb = $result" 
done
