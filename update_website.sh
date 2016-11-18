#!/bin/sh
# This script  is used to update my ghost blog (hosted on github) everytime I add something new

# Generates static pages from locally running Ghost instance.
buster generate						

# Git workflow
git add -A 							
echo "Enter commit message: "
read input_var
date_var = date
git commit -m "$input_var (`date`)" # Current date is added 
git push origin master