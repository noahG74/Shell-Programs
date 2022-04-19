#!/bin/bash
sumOfPrime(){
  len=${#prime[@]}
  for (( i=0; i<$len; i++ ));
  do
     let sum+=$((prime[i]))
  done
  echo "Sum of all prime numbers:"
  echo $sum
} 
findPrime(){
  for var in $(seq 50)
  do
    count=0
    for ((i=2; i<=$1[var]/2; i++))
    do
       if [ $(($1[var]%i)) -eq 0 ]
       then 
         let count++;
       fi
    done
    if [[ $count -eq 0 && $1[var] -ne 1 ]] 
    then
      let prime[count2]=$(($1[var]))
      let count2++
    fi
   done 
   sumOfPrime prime
}

RANDOM=$$
for n in $(seq 0 20)
do
    let high[n]=RANDOM%10
done
echo "Unsorted array: "
echo ${high[@]}

for i in $(seq 0 20)
do  
   for ((j = 0; j<20-i; j++))
   do
      if [ ${high[j]} -gt ${high[$((j+1))]} ]
      then
         temp=${high[j]}
         high[$j]=${high[$((j+1))]}  
         high[$((j+1))]=$temp
        fi
    done
done
echo "Sorted list (low to high):"
echo ${high[@]}

for n in $(seq 0 20)
do
   let low[n]=RANDOM%10
done

echo " "
echo "Unsorted array: "
echo ${low[@]}

for i in $(seq 0 20)
do  
   for ((j = 0; j<20-i; j++))
   do
      if [ ${low[j]} -lt ${low[$((j+1))]} ]
      then
         temp=${low[j]}
         low[$j]=${low[$((j+1))]}  
         low[$((j+1))]=$temp
        fi
    done
done
echo "Sorted list (high to low):"
echo ${low[@]}

for i in $(seq 1 50)
do
   let arr[i]=i
done
echo " "
findPrime arr

count=0
count2=0
for i in $(seq 1 50)
do
   if [[ i%2 -eq 0 ]]
   then  
      let even[count]=i
      let count++
    elif [[ i%2 -eq 1 ]]
    then    
      let odd[count2]=i
      let count2++
   fi
done

echo " "
echo ${even[@]}
echo " "
echo ${odd[@]}

sum=0
len=${#even[@]}
for i in $(seq 0 $len)
do
  let sum+=$((even[i]))
done
echo " "
echo "Sum of all even numbers:"
echo $sum

sum=0
len=${#odd[@]}
for i in $(seq 0 $len)
do
  let sum+=$((odd[i]))
done
echo " "
echo "Sum of all even numbers:"
echo $sum

