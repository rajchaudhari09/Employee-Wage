#!/bin/bash -x

# CONSTANT FOR THE PROGRAM
PART_TIME=1
FULL_TIME=2
MAXIMUM_HOURS_IN_MONTH=4
EMPLOYEE_RATE_PER_HOURS=20
NUM_WORKING_DAYS=20

#VARIABLES
totalEmployeeHours=0
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

while [[ $totalWorkHours -lt $MAXIMUM_HOURS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	workHours="$( getWorkingHours $((RANDOM%3)) )"
	totalWorkHours=$(($totalWorkHours+$workHours))
done
totalSalary=$(($totalWorkHours*$EMPLOYEE_RATE_PER_HOURS))

