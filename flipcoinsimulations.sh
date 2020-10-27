#!/bin/bash
no_of_heads=0
no_of_tails=0
flips_count=0
count_to_be_reached=21
minimum_difference=2
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
	
    diff_bt_hc_tc=$(( no_of_heads - no_of_tails ))
    if(( no_of_heads == count_to_be_reached && diff_bt_hc_tc >= minimum_difference ))
    then
        echo "Heads won by $diff_bt_hc_tc points"
        break
		 elif(( no_of_tails == count_to_be_reached && ${diff_bt_hc_tc#-} >= minimum_difference ))
    then
         echo "Tails won by ${diff_bt_hc_tc#-} points"
         break
    fi
done
echo "The Heads count is $no_of_heads and Tails Count is $no_of_tails"