#!/usr/bin/env bash
#filename: guessinggame.sh

number_of_files=$(ls | wc -l)
echo "Guess the number of files in the current directory:"

read user_input

function checker {
    while [ $user_input -ne $number_of_files ]
    do
    if [ $user_input -gt $number_of_files ]
    then
        echo "Higher than the actual value! Please try again!"
        read user_input
    else
        echo "Lower than the actual value! Please try again!"
        read user_input
    fi
    done
}

checker

echo "Congratulations! You guessed the right number of files: $number_of_files !"

#End of the code - Thank you!!
