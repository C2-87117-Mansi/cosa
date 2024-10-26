#!/usr/bin/python3


read -p "Enter a number: " number

if [ "$number" -lt 2 ];then 
	echo "$number is not a prime number."
	exit 0
fi
is_prime=1

for (( i=2; i*i<=number; i++ ));do
	if (( number%i ==0));then
		is_prime=0
		break
	fi
done

if ((is_prime ==1));then
	echo "$number is a prime number."

else 
	echo "$number is not a prime number"
fi


















#num=int(input("Enter the number: "))
#def is_prime(num):
#   if num <=1:
#	   return False
#   for i in range(2,int(num ** 0.5)+1):
#	   if num%i==0:
#		   return False
#   return True


#if is_prime(num):
#	print(f"{num} is a prime number.")
#else:
#	print(f"{num} is not a prime number.")
