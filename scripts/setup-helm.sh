#!/bin/bash
program_name="brew"
program_exists () {
    type "$1" &> /dev/null ;
}

program_install () {
    echo "Installing the Program: $1";
    eval_command $1
}

if program_exists $program_name;
then
    echo "$program_name is installed"
else
    echo "$program_name is not installed"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    if [ $? -eq 0 ]
    then
        echo "Homebrew is installed successfully."
    else
        echo "Homebrew cannot be installed."
    fi
fi

program_name="helm"
if program_exists $program_name;
then
    echo "$program_name is installed"
else
    echo "$program_name is not installed"
    /usr/bin/ruby -e "brew install kubernetes-helm"
    if [ $? -eq 0 ]
    then
        echo "$program_name is installed successfully."
    else
        echo "$program_name cannot be installed."
    fi
fi

program_name="kubectl"
if program_exists $program_name;
then
    echo "$program_name is installed"
else
    echo "$program_name is not installed"
    /usr/bin/ruby -e "brew install kubernetes-cli"
    if [ $? -eq 0 ]
    then
        echo "$program_name is installed successfully."
    else
        echo "$program_name cannot be installed."
    fi
fi

program_name="kubectl get context"
if program_exists $program_name;
then
    echo "$program_name is configured"
else
    echo "$program_name is not configured"
fi

