read -p "Enter the number to find fibonacci: " terms
a=0
b=1

for (( i=0; i<terms;i++ ));do
	echo -n "$a "

	fib=$((a+b))
	a=$b
	b=$fib
done
echo 
