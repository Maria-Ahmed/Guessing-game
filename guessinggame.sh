#!/usr/bin/env bash

function guessNumber(){

    correct_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "pleas enter your guess number:"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "your guess number is less then the true number"
        elif [ $number -gt $true_ans ]
        then
            echo "your guess number is greater then the true number"
        else
            echo "Congrats! Your guess is right!"
        break;
        fi
    done
}
echo "guess the files number in the current directory!"
guessNumber
