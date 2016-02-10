#!/bin/bash 

sleep 2

echo "Copying code from volume"
cp -r /pushbit/code /code

echo "Running behavior"
$*