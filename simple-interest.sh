#!/bin/bash

# Whimsical Simple Interest Calculator
# A tiny, friendly script that asks for the three values needed
# to calculate simple interest: principal, rate, and time.

clear

echo "✨ Welcome to the Whimsical Simple Interest Calculator ✨"
echo ""

read -p "Enter the principal amount: " principal
read -p "Enter the annual rate of interest (%): " rate
read -p "Enter the time period (in years): " time

# Basic validation: make sure no field is empty.
if [[ -z "$principal" || -z "$rate" || -z "$time" ]]; then
  echo ""
  echo "Please enter a value for principal, rate, and time."
  exit 1
fi

# Calculate simple interest using: (P × R × T) / 100
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo ""
echo "----------------------------------------"
echo "Principal amount : $principal"
echo "Rate of interest : $rate%"
echo "Time period      : $time year(s)"
echo "----------------------------------------"
echo "Simple Interest  : $simple_interest"
echo "----------------------------------------"
