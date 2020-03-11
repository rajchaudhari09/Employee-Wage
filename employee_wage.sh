#!/bin/bash -x

isPresent=1
randomCheck=$((RANDOM%2))
if [[ $isPresent -eq $randomCheck ]]
then
	employeeRatePerHours=20
	employeeHours=8
	salary=$(($employeeHours*$employeeRatePerHours))
else
	salary=0
fi
