#!/bin/bash

# Question 1
# Noah Gonzales

Q1()
{ 
  if read line
  then
    let sum+=line
    Q1
  else
    return $sum
  fi
}

variableName="numbers.txt"   
if read line
then
  let sum+=line
  Q1
fi < $variableName

temp=$?
echo $temp
echo $temp >> results.txt

# Question 2
Q2()
{
  val=$1
  if [[ val -eq 0 || val -eq 1 ]]
    then  
      return $val
  else
      temp=val-1
      temp2=val-2
      return $(( temp+temp2 ))
      Q2
  fi    
}
read -p "Enter a number: " num
for i in $(seq 0 $num)
  do
    Q2 $i
    temp=$? 
    echo $temp
    echo $temp >> results.txt
  done

# Question 4

sorted()
{
  let count+=1
     for ((j = 1; j<12-count; j++))
     do
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
           temp=${arr[j]}
           arr[$j]=${arr[$((j+1))]}  
           arr[$((j+1))]=$temp
          fi
      done

  if [[ $count -le 11 ]]
  then  
    sorted
  else  
    return 
  fi
}

RANDOM=$$
for n in $(seq 1 11)
do
    let arr[n]=RANDOM%10
done
echo "Unsorted array: "
echo ${arr[@]}

echo "Sorted list (low to high):"
sorted arr 
echo ${arr[@]}
echo ${arr[@]} >> results.txt




