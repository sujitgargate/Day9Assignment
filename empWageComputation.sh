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

## This is Employee daily wage find code##


#!/bin/bash -x 
isFullTime=2
maxHrsInMonth=10;
empRatePerHour=20;
totalEmpHrs=0;

numberOfWorkingDays=20;
totalWorkingDays=0;
function getEmpWage()
{
	local empWage=$1;
	empHours=$(( $empWage * $empRatePerHour ))
	echo $(($empHours))
}

function getWorkingHours()
{
	local empCheck=$1
	case $empCheck in
        $isFullTime)
                empHours=8
                ;;
        *)
                empHours=0
                ;;
esac
echo $empHours
}
while [[ $totalEmpHrs -lt $maxHrsInMonth && 
				$totalWorkingDays -lt $numberOfWorkingDays ]]
do
	((totalWorkingDays++))
	#empCheck=$((RANDOM%3))
	empCkeck=1
	empHours="$(getWorkingHours $empCheck)"
	totalEmpHrs=$(( $totalEmpHrs + $empHours ))
	dailyWage[$totalWorkingDays]=$(getEmpWage $empHours)
done
totalSalary=$(($totalEmpHrs * $empRatePerHour))
echo ${dailyWage[@]}

## This is end of Employee daily wage find code##

##This is Employee Part Time code ##

#!/bin/bash -x
isPartTime=1;
maxHrsInMonth=10
empRatePerHour=30;
totalEmpHrs=0;

numberOfWorkingDays=20;
totalWorkingDays=0;
function getEmpWage()
{
	local empWage=$1;
	empHours=$(( $empWage * $empRatePerHour ))
	echo $(($empHours))
}

function getWorkingHours()
{
	local empCheck=$1
	case $empCheck in
        $isPartTime)
                empHours=8
                ;;
        *)
                empHours=0
                ;;
esac
echo $empHours
}
while [[ $totalEmpHrs -lt $maxHrsInMonth && 
				$totalWorkingDays -lt $numberOfWorkingDays ]]
do
	((totalWorkingDays++))
	#empCheck=$((RANDOM%3))
	empCheck=1
	empHours="$(getWorkingHours $empCheck)"
	totalEmpHrs=$(( $totalEmpHrs + $empHours ))
	dailyWage[$totalWorkingDays]=$(getEmpWage $empHours)
done
totalSalary=$(($totalEmpHrs * $empRatePerHour))
echo ${dailyWage[@]}


##This is end of Employee Part Time code ##

## This is Employee Switch case code ##

#!/bin/bash -x
employeeCheck=$((RANDOM%3));
empRatePerHour=20;
isFullTime=2;
isPartTime=1;
for (counter)
case $employeeCheck in 
	$isFullTime)
		empHours=8
		;;
	$isPartTime)
		empHours=4
		;;
	*)
		empHours=0
		;;
esac
salary=$(($empHours*$empRatePerHour))
echo $salary


## This is end Employee Switch case code ##

## calculate Employee 20 days wage ##

#!/bin/bash -x
isPartTime=1;
isFullTime=2;
maxHrsInMonth=10;
empRatePerHour=30;

numberOfWorkingDays=20;
totalEmpHrs=0;
totalWorkingDays=20;

while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numberOfWorkingDays ]]
do
((totalWorkingDays++))
empCheck=$((RANDOM%3))
case $empCheck in
        $isFullTime)
                empHours=8
                ;;
        $isPartTime)
                empHours=4
                ;;
        *)
                empHours=0
                ;;
esac
totalEmpHrs=$(($totalEmpHrs*$empRatePerHour))
done
totalSalary=$(($totalEmpHrs * $empRatePerHour))



## End of calculate Employee 20 days wage ##


## Limiting to the Employee workings days and workign hours

#!/bin/bash -x
isPartTime=1;
isFullTime=2;
maxHrsInMonth=100;
empRatePerHour=20;

numberOfWorkingDays=20;
totalEmpHrs=0;
totalWorkingDays=20;

while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numberOfWorkingDays ]]
do
((totalWorkingDays++))
empCheck=$((RANDOM%3))
case $empCheck in
        $isFullTime)
                empHours=8
                ;;
        $isPartTime)
                empHours=4
                ;;
        *)
                empHours=0
                ;;
esac
totalEmpHrs=$(($totalEmpHrs*$empRatePerHour))
done
totalSalary=$(($totalEmpHrs * $empRatePerHour))

## End of Limiting to the Employee workings days and workign hours


## End of Refactor Code using Functions ##

#!/bin/bash -x
isPartTime=1;
isFullTime=2;
maxHrsInMonth=10;
empRatePerHour=30;
totalEmpHrs=0;

numberOfWorkingDays=20;
totalWorkingDays=0;

function getWorkingHours()
{
	#local $empCheck=$1
	case $empCheck in
        $isFullTime)
                empHours=8
                ;;
        $isPartTime)
                empHours=4
                ;;
        *)
                empHours=0
                ;;
esac
echo $empHours

}
while [[ $totalEmpHrs -lt $maxHrsInMonth && 
				$totalWorkingDays -lt $numberOfWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%2))
	empHours="$( getWorkingHours $empCheck )"
	totalEmpHrs=$(($totalEmpHrs + $empHours))
done
totalSalary=$(($totalEmpHrs * $empRatePerHour))


## End of Refactor Code using Functions ##

## Storing Daily Wage and total Wage of Employee ##

#!/bin/bash -x
isPartTime=1;
isFullTime=2;
maxHrsInMonth=10;
empRatePerHour=30;
totalEmpHrs=0;

numberOfWorkingDays=20;
totalWorkingDays=0;
function getEmpWage()
{
	local empWage=$1;
	empHours=$(( $empWage * $empRatePerHour ))
	echo $(($empHours))
}

function getWorkingHours()
{
	local empCheck=$1
	case $empCheck in
        $isFullTime)
                empHours=8
                ;;
        $isPartTime)
                empHours=4
                ;;
        *)
                empHours=0
                ;;
esac
echo $empHours
}
while [[ $totalEmpHrs -lt $maxHrsInMonth && 
				$totalWorkingDays -lt $numberOfWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	empHours="$(getWorkingHours $empCheck)"
	totalEmpHrs=$(( $totalEmpHrs + $empHours ))
	dailyWage[$totalWorkingDays]=$(getEmpWage $empHours)
done
totalSalary=$(($totalEmpHrs * $empRatePerHour))
echo ${dailyWage[@]}


## End of Storing Daily Wage and total Wage of Employee ##