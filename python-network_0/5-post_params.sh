#!/bin/bash
# This script sends a POST request to a URL with email and subject parameters and displays the response body
curl -X POST -d "email=test@gmail.com&subject=I will always be here for PLD" "$1"

