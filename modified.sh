#!/bin/bash

Player1Score=""
Player2Score=""
x=""
L=1
dice_roll=1
dice_roll2=1
dice_num=1
dice_num2=1

#The Following Block of code is the introduction information when running the file to start the game. This gives the user background on the game.
echo "This is a Game of dice rolling."
echo -e "\nIn this game the objective is to roll a higher than your oponent."
echo -e "\nEach Player will roll once."
echo -e "\nThe player with the highest end total will be renounced the winner!"

while [ $L -ne 3 ]; do
  #The Following Block of code is a boolean true of false. This asks the user if they would like to play or not.
  echo -e "\nWould you like to begin the game? (Y/N):"
  read begin
  if [ $begin = "y" -o $begin = "Y" ]; then
    echo -e "\nLet the games begin"
  elif [ $begin = "n" -o $begin = "N" ]; then
    echo -e "\nThat is your loss... Goodbye"
    exit
  else
    echo -e "\nWhat the hell is even that"
    exit
  fi

  #The following block of code will begin the logic for rolling the dice.

  echo "How many times do you want to roll? (always input 1 Roll)"
  read dice_roll

  echo -e "\nHow many dice do you want me to roll? (Always input 1)"
  read dice_num

  #The next block of code will be more logic for the dice rolling, the array dice
  # will be taken to "roll" a random number. It will then take that random number and display
  # the players roll. The code will then allow the game to tell the player their score.
  dice=( 1 2 3 4 5 6 )

  for i in $(seq 1 $dice_rolls); do

    for y in $(seq 1 $dice_num); do
      x="${x}${dice[$(($RANDOM%6))]}"
    done
    echo -e "\nYou Rolled a $x"

    if [ " [ $x= "1" ] || [ $x= "2" ] || [ $x= "3" ] || [ $x= "4" ] || [ $x= "5" ] || [ $x= "6" ] " ]; then
      Player1Score="$(($x))"
      echo -e "\nPlayer 1 your score is $Player1Score"
    fi
  done

  x=""

  #The following block of code will ask the second player if they would like to roll.
  echo -e "\nPlayer2 would you like to roll? (Y/N):"
  read would
  if [ $would = "y" -o $would = "Y" ]; then
    echo -e "\nLets do this thang"
  elif [ $would = "n" -o $would = "N" ]; then
    echo -e "\nUgh why not!"
    exit
  else
    echo -e "\nWhat the hell is even that"
    exit
  fi

  #The following block of code will begin the logic for rolling the dice.
  #If there are not two arguments echo "How many times do you want to roll? (always input 1 Roll)" (The reason to always input 1 is because you are only suppose to roll once)
  #It will read "dice_roll and assign it a value.
  #Then it will echo "How many dice do you want me to roll?" (The reason always input 1 is there is you only want to roll 1 die).
  #else the statements both must equal

  echo -e "\nHow many times do you want to roll? (always input 1 Roll)"
  read dice_roll2

  echo -e "\nHow many dice do you want me to roll? (Always input 1)"
  read dice_num2

  #The next block of code will be more logic for the dice rolling, the array dice will be taken to
  # "roll" a random number. It will then take that random number and display the players roll.
  # The code will then allow the game to tell the player their score.

  dice=( 1 2 3 4 5 6 )

  for i in $(seq 1 $dice_roll2); do

    for y in $(seq 1 $dice_num2); do
       x="${x}${dice[$(($RANDOM%6))]}"
    done

    echo -e "\nYou Rolled a $x"

    if [ " [ $x= "1" ] || [ $x= "2" ] || [ $x= "3" ] || [ $x= "4" ] || [ $x= "5" ] || [ $x= "6" ] " ]; then
      Player2Score="$(($x))"
      echo -e "\nPlayer 2 your score is $Player2Score"
    fi
  done
  x=""

  #The following block of code will compare the Player1's score and Player2's score and declare the winner.
  if [ "$Player1Score" -gt "$Player2Score" ]; then
    echo -e "\nPlayer1 Wins!!!!!!!"
  elif [ "$Player1Score" -eq "$Player2Score" ]; then
    echo -e "\nit is a tie :("
  else
    echo -e "\nPlayer2 Wins!!!!!"
  fi
done
