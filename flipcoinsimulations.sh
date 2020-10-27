#!/bin/bash
coin_flip_result=$(( RANDOM % 2 ))
if(( coin_flip_result == 0 ))
then
    echo "Heads"
else
    echo "Tails"
fi