#!/bin/bash

echo "Welcome to IP Tools for UNIX ADMINISTRATION course at AGH!"
echo "Please, select an option to do:\n"
echo

# Main Menu:
function main_menu {
	options=("Check your current local IP adress" "Check your public IP adress" "Get information about DNS adress (nslookup)" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Check your current local IP adress")
            echo "you chose choice 1"
            clear
            ifconfig
            ;;
        "Option 2")
            echo "you chose choice 2"
            ;;
        "Option 3")
            echo "you chose choice 3"
            ;;
        "Quit")
			echo "bye!"
            break
            ;;
        *) echo invalid option;;
    esac
done
}

main_menu