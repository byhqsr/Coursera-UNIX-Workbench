#!/bin/bash

control=1

function guess {
 echo "Guess how many files are in the current directory:"
 read guess
}

while [[ $control -eq 1 ]]
do
 guess
 if [[ $guess -eq $(ls | wc -l) ]]
  then
   echo 'Congratulations!'
   printf '\n'
   control=0
 elif [[ $guess -lt $(ls | wc -l) ]]
  then
   echo 'Your guess is too low... Please try again!'
   printf '\n'
 elif [[ $guess -gt $(ls | wc -l) ]]
  then 
   echo 'Your guess is too high... Please try again!'
   printf '\n'
 fi
done

