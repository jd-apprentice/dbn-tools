#!bin/bash

# Generate random color
function random_color() {
    color=$((RANDOM % 6 + 1))
    case $color in
    1) echo -ne "\e[31m" ;; # red
    2) echo -ne "\e[32m" ;; # green
    3) echo -ne "\e[33m" ;; # yellow
    4) echo -ne "\e[34m" ;; # blue
    5) echo -ne "\e[35m" ;; # purple
    6) echo -ne "\e[36m" ;; # cyan
    esac
}

# Display the menu options
function DisplayMenuOptions() {

    source /usr/bin/constants/ascii.sh

    echo "$menu_top"
    echo "$menu_separator"

    for i in "${!menu_options[@]}"; do
        color=$(random_color)
        echo -e "$color ${menu_options[$i]} \e[0m"
    done

}

export -f DisplayMenuOptions
