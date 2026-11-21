#!/bin/bash

while true; do
    echo "Press 1 for tables"
    echo "Press 2 to exit"
    read -p "Enter input" input

    if [ "$input" == "1" ]; then
        read -p "Enter number" num
        for i in {1..10..1}; do
            echo "$num x $i = $((num * i))"
        done
    elif [ "$input" == "3" ]; then
        echo "Exiting..."
        break
    else 
        echo "Invalid option. Please enter 1 or  2"
    fi
done


