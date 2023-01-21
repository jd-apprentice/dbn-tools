#!/usr/bin/env python3

# Imports
import requests

# Constants
arrData = []
dolarAPI = "https://api.bluelytics.com.ar/v2/latest"
sackEmoji = "💰 "
arsLabel = " ARS"

# Get data from the api
def getData(url):
    response = requests.get(url)
    data = response.json()
    arrData.append(data["oficial"])
    arrData.append(data["blue"])
    arrData.append(data["oficial_euro"])
    arrData.append(data["blue_euro"])

# Function to print the table
def print_table(data):
    col_widths = [max(len(str(item)) for item in col) for col in zip(*data)]
    for row in data:
        print("  ".join(str(item).ljust(col_widths[i]) for i, item in enumerate(row)))

# Main function
def main():
    getData(dolarAPI)
    table_data = [["💱 Currency", "💸 Value"],
                  ["💵 Official", sackEmoji + str(arrData[0]["value_avg"]) + arsLabel],
                  ["💵 Blue", sackEmoji + str(arrData[1]["value_avg"]) + arsLabel],
                  ["💶 Official_Euro", sackEmoji + str(arrData[2]["value_avg"]) + arsLabel],
                  ["💶 Blue_Euro", sackEmoji + str(arrData[3]["value_avg"]) + arsLabel]]
    print_table(table_data)

# Init application
main()