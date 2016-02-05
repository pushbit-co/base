#!/bin/bash 

sleep 2

echo "Copying code from volume"
cp /pushbit/code /code

$1
