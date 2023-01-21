#!/bin/bash

# Get current weather for the location you are
function GetWeather() {
    curl wttr.in
}

export -f GetWeather
