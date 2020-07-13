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