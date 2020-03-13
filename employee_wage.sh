#!/bin/bash -x

# CONSTANT FOR THE PROGRAM
PART_TIME=1
FULL_TIME=2
MAXIMUM_HOURS_IN_MONTH=10
EMPLOYEE_RATE_PER_HOURS=20
NUM_WORKING_DAYS=20

#VARIABLES
totalEmployeeHours=0
totalWorkingDays=0


while [[ $totalEmployeeHours -lt $MAXIMUM_HOURS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
		case $empCheck in
			$FULL_TIME)
				employeeHours=8
				;;
			$PART_TIME)
				employeeHours=4
				;;
			*)
				employeeHours=0
				;;
		esac
		totalEmployeeHours=$(($totalEmployeeHours*$employeeHours))
done
totalSalary=$(($totalEmployeeHours+$EMPLOYEE_RATE_PER_HOURS))

