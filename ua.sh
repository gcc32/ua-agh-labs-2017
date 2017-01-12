#!/bin/bash

PROGRAM_TITLE="IP Tools for UNIX ADMINISTRATION course at AGH"


# Function to get my current IP adress
function public_ip {
    clear
    curl -s 'https://ipinfo.io' 
    echo $TITLE
}

function check_domain {
    echo "Enter the domain or ip and press enter..."
    read SERVER
    nslookup SERVER
}

function about {
    RIGHT_NOW=$(date +"%x %r %Z")
    TIME_STAMP="Updated on $RIGHT_NOW by $USER"

    echo "System:" $HOSTNAME
    echo "Date:" $RIGHT_NOW
    echo $TIME_STAMP
    echo ""
    echo $PROGRAM_TITLE
    echo "Version: v1.0"
}

# Main Menu:
function main_menu {
    clear

    echo "Welcome to "$PROGRAM_TITLE
    echo "Please, select an option to continue:"
    echo ""

    options=(
             "Check your current local IP address"
             "Check your public IP address"
             "Get information about any domain (nslookup) A record" 
             "About" 
             "Exit"
             )

    function exit_message {
        echo ""
        echo -e "\033[33;33mPress any key to continue..."
        echo "Press "${#options[@]}" to EXIT..."
        echo -e "\033[33;37m"
    }

	
select opt in "${options[@]}"
do
    case $opt in
        "Check your current local IP address")
            clear
            echo
            ifconfig
            exit_message
            ;;

        "Check your public IP address")
            clear
            echo
            public_ip
            exit_message
            ;;

        "Get information about any domain (nslookup) A record")
            clear
            echo
            check_domain
            exit_message
            ;;

        "About")
            clear
            about
            exit_message
            ;;

        "Exit")
            clear
			echo "bye!"
            break
            ;;
        *) echo Invalid option, please try again...;;
    esac
done
}




###############################################################################
##################################################### MAIN PROGRAM ############
main_menu