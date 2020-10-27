#!/bin/bash
read -p "Enter no of times to flip a coin: " no_of_flips
no_of_heads=0
no_of_tails=0
for(( i = 1; i <= no_of_flips; i++ ))
do
    coin_flip_result=$(( RANDOM % 2 ))
    if(( coin_flip_result == 0 ))
    then
        echo "Flip-$i Heads"
        (( no_of_heads++ ))
    else
        echo "Flip-$i Tails"
        (( no_of_tails++ ))
    fi 
done
echo "The no of Heads are is $no_of_heads and no of Tails are is $no_of_tails"
if(( no_of_heads > no_of_tails ))
then
echo "Heads Won"
elif(( no_of_tails > no_of_heads ))
then
    echo "Tails Won"
else    
    echo "game is a tie"
fi