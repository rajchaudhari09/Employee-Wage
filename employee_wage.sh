#!/bin/bash -x

partTime=1
fullTime=2
totalSalary=0
employeeRatePerHours=20
numWorkingDays=20

for (( day=1; day<=$numWorkingDays; day++ ))
do
	empCheck=$((RANDOM%3))
		case $empCheck in
			$fullTime)
				employeeHours=8
				;;
			$partTime)
				employeeHours=4
				;;
			*)
				employeeHours=0
				;;
		esac

		salary=$(($employeeHours*$employeeRatePerHours))
		totalSalary=$(($totalSalary+$salary))
done
