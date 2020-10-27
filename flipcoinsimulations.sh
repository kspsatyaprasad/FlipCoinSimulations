#!/bin/bash
count_to_be_reached=21

while(( 1 ))
do
    (( flips_count++ ))
    echo -n "Flip-$flips_count is "
    coin_flip_result=$(( RANDOM % 2 ))
    if(( coin_flip_result == 0 ))
    then
        echo "Heads"
        (( no_of_heads++ ))
    else
        echo "Tails"
        (( no_of_tails++ ))
    fi
    if(( no_of_heads == count_to_be_reached || no_of_tails == count_to_be_reached ))
    then
        break
    fi 
done
echo "The no of Heads  are  $no_of_heads and no of Tails are $no_of_tails"
if(( no_of_heads > no_of_tails ))
then
    echo "Heads won by $(( no_of_heads - no_of_tails ))"
elif(( no_of_tails > no_of_heads ))
then
    echo "Tails won by $(( no_of_tails - no_of_heads ))"
else    
    echo "game is a tie"
fi
