#!/bin/bash

pwd="VSCODE!" 

echo "I'm in ${pwd}" 

echo 'First line'; echo 'Second line' # Printing multi-line statement in one line

name="SAMIR"       # Defining a variable
echo $name         # Printing a variable
echo "$name"       # Printing a variable
echo ${name/SAM/A} # ${variable/matches/changes} matches will be replaced with the changes in that variable.

Length=3
echo ${name:0:-1} # Defining the length of a variable
echo ${#name}     # Finding the length of a variable

Foo="Bar"
echo ${Foo:-"DefaultValueIfFooIsMissingOrEmpty"} # Defining a default value
echo ${Foo}

array0=(one two three four five six) # Declaring Array
echo ${array0[2]}
echo ${array0[@]:3:2}
for i in "${array0[@]}"; do
    echo "$i"
done

array=(1 2 3 4 5)
echo ${array[@]}
for i in ${array[@]}; do
    echo "$i"
done

echo {1..10}
echo {b..z}

echo "Last program's return value: $?"
echo "Script's PID: $$"
echo "Number of arguments passed to script: $#"
echo "All arguments passed to script: $@"
echo "Script's arguments separated into different variables: $1 $2..."

echo $LINENO # Output's line number
echo $MACHTYPE # Identifies the system hardware.
echo $OSTYPE # Identifies operating system type


PS3='Choose your favorite vegetable: ' # Sets the prompt string.Ask a question.
select vegetable in "beans" "carrots" "potatoes" "onions" "rutabagas"
do
  echo "Your favorite veggie is $vegetable."
  echo "Yuck!"
  break 
done

arr=(1 2 3)
for i in ${arr[@]:0:1}; do 
    echo $i
done

# Checking if user is root user
ROOT_UID=0   # Root has $UID 0.

if [ "$UID" -eq "$ROOT_UID" ]  # Will the real "root" please stand up?
then
  echo "You are root."
else
  echo "You are just an ordinary user (but mom loves you just the same)."
fi

exit 0

# To log in as super user - sudo -i


