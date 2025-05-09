#!/bin/bash

echo -ne "\033[93;1m\n  Enter commit message: "
read commit_message
command="git add . && git commit -m \"$commit_message\" && git push && git status"
echo -e "\033[33;1m  Command to execute: \033[36;1m$command\033[0m"
echo -ne "\033[93;1m  Execute this command? (y/n): "
read execute
if [[ $execute == "y" ]]; then 
    echo -e "\033[32m"
    eval "$command"
else
    echo -e "\033[31;1m  Command execution aborted.\033[0m"
fi
echo -ne "\n\033[0m"
