#! /usr/bin/env bash

# When the program is first loaded, display a greeting to the user.

hour=$(date +"%H")
if [ $hour -ge 0 -a $hour -lt 12 ]
  then
    greeting="Good Morning , Welcome to the calculator program."
elif [ $hour -ge 12 -a $hour -lt 18 ] 
  then
    greeting="Good Afternoon, Welcome to the calculator program."
else 
    greeting="Good evening,Welcome to the calculator program."
fi

echo $greeting

# Then, display a menu that outlines the possible operations:
  # Add
  # Subtract
  # Exit

echo "Please select the following number for appropriate operation."
echo "1.Add"
echo "2.Subtract"
echo "3.Multiply"
echo "4.Divide"
echo "5.Expotential"

# Then, capture the user selection.

read $option

# If the selection matches a supported operation, execute the operation.
# If the selection does not match a support operation, display an error message.
# When the operation is complete, redisplay the menu.
