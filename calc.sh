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

done