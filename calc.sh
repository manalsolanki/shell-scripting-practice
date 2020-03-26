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
echo "5.Exit"

# Then, capture the user selection.

while true; do

  read option
  echo "**********************************"
  echo "Enter Two numbers "
  read num_1
  read num_2
  # If the selection matches a supported operation, execute the operation.


  case $option in 
      1 )
        echo "------------------------"
        echo "Addition of $num_1 and $num_2 is"
        expr $num_1 + $num_2
      ;;

      2 )
        echo "------------------------"
        echo "Subtraction of $num_1 and $num_2 is"
        expr $num_1 - $num_2
      ;;

      3 )
        echo "------------------------"
        echo "Multiplication of $num_1 and $num_2 is"
        expr $num_1 \* $num_2
      ;;

      4 )
        echo "------------------------"
        if [[ $num_2 -eq 0 ]]; then
        echo  "Division not possible because denominator is 0"
        else
        echo "Division of $num_1 and $num_2 is"
        expr $num_1 / $num_2
      fi
      ;;

      5 )
        echo "------------------------"
        echo "Thanks for using this operations"
        exit 0
        ;;

      * )
        echo "------------------------"
        echo "Please select a appropriate choice"
      ;;
  esac
done
# When the operation is complete, redisplay the menu.