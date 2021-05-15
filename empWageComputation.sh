#!/bin/bash -x

empCheck=$((RANDOM%3))
empRatePerHr=20 
isFullTime=1
isPartTime=2
numOfWorkingDays=5
totalEmpHrs=0

for ((day=1; day<=$numOfWorkingDays; day++))
do
empCheck=$((RANDOM%3))
	case $empCheck in
		$isFullTime)
		empHrs=8 
		;;
		$isPartTime)
		empHrs=4
		;;
		*)
		empHrs=0
		;;
	esac
totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
wage=$(($empRatePerHr*$totalEmpHrs))
echo "Wages is : $wage"
