read -p "Enter a number to find factorial of a number: " fact
mul=1
for (( i=fact; i>=1; i-- ));do
	mul=$((mul * i))
done
echo "factorial of a number is $mul"
