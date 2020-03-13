#!/bin/bash -x

partTime=1
fullTime=2
employeeRatePerHours=20
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
