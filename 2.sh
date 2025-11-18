# !/bin/bash
echo -n "Enter your firstname and lastname: "
read firstname lastname
echo "First Name: $firstname"
echo "Last Name: $lastname"


#!/bin/bash
# The '-n' flag in echo keeps the cursor on the same line.
echo -n "Please enter your name: "
# Read the user's input into a variable called 'name'
read name
echo "Hello, $name! Welcome to UNIX."