#!/bin/bash -x

# CONSTANT FOR THE PROGRAM
PART_TIME=1
FULL_TIME=2
MAXIMUM_HOURS_IN_MONTH=10
EMPLOYEE_RATE_PER_HOURS=20
NUM_WORKING_DAYS=20

#VARIABLES
totalWorkHours=0
totalWorkingDays=0

#FUNCTION
function getWorkingHours()
{
	case $1 in
		$FULL_TIME)
			workHours=8
			;;
		$PART_TIME)
			workHours=4
			;;
		*)
			workHours=0
			;;
	esac
	echo $workHours
}

function calculateDailyWage()
{
	local workHours=$1
	wage=$(($workHours*$EMPLOYEE_RATE_PER_HOURS))
	echo $wage
}

while [[ $totalWorkHours -lt $MAXIMUM_HOURS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	workHours="$( getWorkingHours $((RANDOM%3)) )"
	totalWorkHours=$(($totalWorkHours+$workHours))
	employeeDailyWage[$totalWorkingDays]="$( calculateDailyWage $workHours )"
done
totalSalary=$(($totalWorkHours*$EMPLOYEE_RATE_PER_HOURS))
echo "Daily Wage " ${employeeDailyWage[@]}
