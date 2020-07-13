## This is Employee present or absent file ##

#!/bin/bash -x
isPresent=1
randomCheck=$((RANDOM%2))
if [ $randomCheck -eq $isPresent ]
then
	echo "Employee is present"
else
	echo "Employee is not present"
fi

## This is end of Employee present or absent file ##