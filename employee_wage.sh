#!/bin/bash -x

partTime=1
fullTime=2
employeeRatePerHours=20
randomCheck=$((RANDOM%3))
if [[ $fullTime -eq $randomCheck ]]
then
	employeeHours=8
elif [[ $partTime -eq $randomCheck ]]
then
	employeeHours=4
else
	employeeHours=0
fi
salary=$(($employeeHours*$employeeRatePerHours))
