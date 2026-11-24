#!/bin/bash

EMPTY_STRING="";

if [[ -z $1 ]]; then
    echo "Please enter the path of a file to read out as your first argument.";
else
    FILE_CONTENT=$(cat $1);
    echo "$FILE_CONTENT";
fi

$SHELL;