#!/bin/bash

# Simple Interest Calculator
# Formula: SI = (P * R * T) / 100

echo "Simple Interest Calculator"

read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (%): " rate
read -p "Enter the time period (years): " time

interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total=$(echo "scale=2; $principal + $interest" | bc)

echo "Simple Interest = $interest"
echo "Total Amount    = $total"
