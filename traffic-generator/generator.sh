#!/bin/bash

# Base URL for requests
base_url="https://alishazaee.ir"

# Array of endpoints (valid and invalid)
declare -a endpoints=(
    "/"               # Valid endpoint
    "/invalidpage"    # Invalid endpoint example
    "/anotherinvalid" # Another invalid endpoint example
)

# Continuously send requests
while true; do
    # Randomly select an index for endpoints
    index=$(($RANDOM % ${#endpoints[@]}))
    endpoint=${endpoints[$index]}
    url="${base_url}${endpoint}"

    # Send GET request using curl
    echo "Sending request to $url"
    curl  --insecure "$url"

    # Random sleep between 1 and 5 seconds
    sleep $((RANDOM % 5 + 1))
done
