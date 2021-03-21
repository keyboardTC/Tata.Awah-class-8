#! /usr/bin/env bash

# When the program is first loaded, display a greeting to the user.
echo "
<==== WELCOME TO HUMBER CALCULATOR ====>
	"
# Then, display a menu that outlines the possible operations:
  # Add
  # Subtract
  # Exit
echo "Please select Operation below (* It's Case Sensitive ) ?
    Add 
    Subtract
    Exit"  
# Then, capture the user selection.
while true; do
# If the selection matches a supported operation, execute the operation
    read command
    if [[ $command == "exit" || $command == "Exit" ]]; then
    	break
    fi
.    
# If the selection does not match a support operation, display an error message.
    while [[ "$command" != "Add" ]] && [[ "$command" != "Subtract" ]] && [[ "$command" != "Exit" ]]; do
    	echo "PLease select a valid operation below (* It's Case Sensitive )
    	 Add
    	 Subtract
    	 Exit"
    	 read command
    done

# Capture user iteger inout     
	echo "Enter first number?  "
    read n1
        while  [[ -z $n1 ]] || ! [[ "$n1" =~ ^-?[0-9]+$ ]]; do
	       echo "Please Enter valid first integer ?  "
           read n1
        done
	echo "Enter second number ?  "
    read n2
    	while [[ -z $n2 ]] || ! [[ "$n2" =~ ^-?[0-9]+$ ]]; do
	       echo "Please Enter valid second integer ?  "
           read n2
        done
# Do the calculation with user's input
        case "$command" in 
            "add"|"Add"|"ADD")
            	let "op=$n1 + $n2" 
				#op = expr $n1 + $n2
				echo "$n1 + $n2 = $op"  ;;
            "subtract"|"Subtract"|"SUBTRACTION") 
            	let "op=$n1 - $n2" 
				echo "$n1 - $n2 = $op"  ;;
            "multiply"|"Multiply"|"MULTIPLY") 
            	let "op=$n1 * $n2" 
				echo "$n1 * $n2 = $op"  ;;
            "divide"|"Divide"|"DIVIDE") 
            	let "op=$n1 / $n2" 
				echo "$n1 / $n2 = $op" ;;
            *) 
			echo "invalid Operation" ;;
        esac

done