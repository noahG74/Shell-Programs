#!/bin/bash

clear

for var in $(seq 15)
do
    echo $var
done


var_1=1
while [ $var_1 -le 15 ] 
do
    echo $var_1
    let var_1++
done


var_2=1
until [ $var_2 -eq 16 ] 
do
    echo $var_2
    let var_2++
done


sum=0
for var in $(seq 20 40)
do
    let sum+=var
done
echo $sum

var_1=20
sum=0
while [ $var_1 -le 40 ] 
do
    let sum+=var_1
    let var_1++
done
echo $sum


var_2=20
sum=0
until [ $var_2 -eq 41 ] 
do
    let sum+=var_2
    let var_2++
done
echo $sum


for var in $(seq 50)
do
    count=0

    for ((i=2; i<=var/2; i++))
    do
       if [ $((var%i)) -eq 0 ]
       then 
         let count++;
       fi
    done

    if [[ $count -eq 0 && $var -ne 1 ]] 
    then
      echo $var
    fi
done


var_1=2
while [ $var_1 -le 50 ] 
do
    count=0

    for ((i=2; i<=var_1/2; i++))
    do
       if [ $((var_1%i)) -eq 0 ]
       then 
         let count++;
       fi
    done

    if [ $count -eq 0 ] 
    then
      echo $var_1
    fi
   
    let var_1++
done


var_2=2
until [ $var_2 -eq 51 ] 
do
   count=0

    for ((i=2; i<=var_2/2; i++))
    do
       if [ $((var_2%i)) -eq 0 ]
       then 
         let count++;
       fi
    done

    if [[ $count -eq 0 && $var_2 -ne 1 ]] 
    then
      echo $var_2
    fi
   
    let var_2++
done


select var in "Corpus" "Kingsville" "Commerce" "Exit"
do
	case $var
	in
	"Corpus")
		echo "Texas A&M University Corpus Christi"
	;;
       "Kingsville")
                echo "Texas A&M University Kingsville"
        ;;
       "Commerce")
                echo "Texas A&M University Commerce"
        ;;
	"Exit")
                echo "Bye Bye"
		break
	;;
        *)
                echo "Texas A&M University"
        ;;
	esac
done

