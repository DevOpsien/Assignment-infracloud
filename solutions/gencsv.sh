#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <start_index> <end_index>"
  exit 1
fi

start_index=$1
end_index=$2

if ! [[ "$start_index" =~ ^[0-9]+$ && "$end_index" =~ ^[0-9]+$ && "$start_index" -le "$end_index" ]]; then
  echo "Invalid arguments. Please provide two positive integers, where the first one is less than or equal to the second one."
  exit 1
fi

output_file="inputFile.csv"

# Generate the CSV file
for ((i=start_index; i<=end_index; i++)); do
  random_number=$((RANDOM % 1000))
  echo "$i, $random_number" >> "$output_file"
done

echo "CSV file '$output_file' has been created with entries from $start_index to $end_index."

