#!/bin/bash 

echo "This is assignment 7"

name="Noah"
course1="Discrete Mathematics"
course2="Intro to Scripting"
course3="Intro to Problem Solving"
course4="First-Year Seminar"
course5="Composition"
course6="Honors"

echo "My name is $name"
echo "My enrolled courses are: "
echo $course1 
echo $course2
echo $course3
echo $course4
echo $course5
echo $course6

echo "Process Number: $$"

echo $*

x=$$
x=$((x%100))

if [[ $x=>90 ]]
then
	echo "You passed with a $x A"
elif [[ $x=>80 && $x<90 ]]		
then
	echo "You passed with a $x B"
elif [[ $x=>70 && $x<80 ]]	
then 
	echo "You passed with a $x C"
elif [[ $x=>60 && $x<70 ]]		
then 
	echo "You passed with a $x D"
else	
	echo "You have failed the course"	
fi		


a=10
b=20
c=30
d=60
e=50
f=100

echo $((++a))
echo $((++b))
echo $((++c))
echo $((++d))
echo $((++e))
echo $((++f))

echo $((a+b))
echo $((c+d))
echo $((e+f))

echo $((b-a))
echo $((d-c))
echo $((f-e))

echo $((a*b))
echo $((c*d))
echo $((e*f))

echo $((b/a))
echo $((d/c))
echo $((f/e))


echo "Please enter your salary: ";
read basicSalary
if [[ $basicSalary<=10000 ]]
then
	da=$((basicSalary*4/5))
	hra=$((basicSalary*1/5))
	grossSalary=$((basicSalary+da+hra))
elif [[ $basicSalary>10000 && $basicSalary<=20000 ]]
then
	da=$((basicSalary*9/10))
	hra=$((basicSalary*1/4))
	grossSalary=$((basicSalary+da+hra))
else
	da=$((basicSalary*19/20))
	hra=$((basicSalary*3/10))
	grossSalary=$((basicSalary+da+hra))
fi
echo "Your gross salary is $grossSalary"



