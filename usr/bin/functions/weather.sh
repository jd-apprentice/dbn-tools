#!/bin/bash

# Get current weather for the location you are, repo -> https://github.com/chubin/wttr.in
function GetWeather() {
    curl wttr.in
}

export -f GetWeather
