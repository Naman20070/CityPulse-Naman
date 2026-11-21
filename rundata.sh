#!/bin/bash

echo $"RollNo and Score DB"

if [ ! -d "data" ]; then 
    mkdir data
fi

cd data

if [ ! -f "data.txt" ]; then
    touch data.txt
fi


while true; do
    echo "Press 1 to enter new data"
    echo "Press 2 to view all data"
    echo "Press 3 to search by RollNo"
    echo "Press 4 to search by Name"
    echo "Press 5 to exit"
    read -p "Input:" input

    if [ "$input" == "1" ]; then
        read -p "Enter Name:"  name
        echo "You entered $name"

        
        read -p "Enter RollNo.:" rollno
        echo "You entered: $rollno"

        while true; do
            read -p "enter score" score

            if [[ "$score" -lt 0 || "$score" -gt 100 ]]; then
                echo "Score has to be beteween 0 to 100"
            else
                echo "You entered $score"
                break
            fi
        done

        echo "Name: ${name} , Rollno: ${rollno} , Score: ${score}" >> data.txt

    elif [ "$input" == "2" ]; then
        cat data.txt
    elif [ "$input" == "3" ]; then
        read -p "Enter the RollNo" therollno
        grep -i ${therollno} data.txt
    elif [ "$input" == "4" ]; then
        read -p "Enter the Name" thename
        grep -i ${thename} data.txt
    elif [ "$input" == "5" ]; then
        break
    else
        echo "Invalid Input"
    fi
done



