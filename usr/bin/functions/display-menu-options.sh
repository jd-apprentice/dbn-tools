#!bin/bash

# Display the menu options
function DisplayMenuOptions() {

    source usr/bin/constants/ascii.sh

    # Check if the language is Spanish
    if [[ $language == "esp" ]]; then
        prompt="Ingrese una opción: "
        menu_options=("${menu_options_spanish[@]}")
    fi

    echo "$menu_top"
    echo "$menu_separator"

    for i in "${!menu_options[@]}"; do
        echo -e "\033[3$((i + 1))m${menu_options[$i]}\033[0m"
    done

}

export -f DisplayMenuOptions
