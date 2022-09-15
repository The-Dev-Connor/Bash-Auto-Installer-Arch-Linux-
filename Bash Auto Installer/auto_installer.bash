#!/bin/bash

export installer
export prefix_varuable
export package

echo
echo "========================================="
echo 'Welcome, to the Package Auto Installer.'
echo 'Make sure you are in Super User before '
echo '         running any commands          '
echo "========================================="
echo

if [[ -z "$package" ]]; then
    read -p 'What installer will you use: ' installer
    read -p 'What is the prefix varuable (exe: -S for pacman or install for snap): ' prefix_varuable
    read -p 'What is the package name: ' package

    echo
    echo "========================================="
    echo "Installer : " $installer
    echo "Prefix Varuable : " $prefix_varuable
    echo "Package  : " $package
    echo "========================================="
    echo
fi

# Make Sure they want to continue
echo "Do you wish to install this program?"
echo "Input 1 for yes and 2 for no"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) $installer $prefix_varuable $package; break ;;
        No  ) exit;;
    esac
done
