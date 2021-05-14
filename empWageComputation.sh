#!/bin/bash -x

empCheck=$((RANDOM%3))
empRatePerHr=20 

if [ $empCheck -eq 1 ]
then
	empHrs=8
else
	empHrs=0
fi 

wage=$(($empRatePerHr*$empHrs))
echo "Employee wage : $wage "
