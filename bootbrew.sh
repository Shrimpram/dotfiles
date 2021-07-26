#!/usr/bin/env bash

echo "Initializing homebrew"

if [ ! -d /opt/homebrew ]
then
    echo "Homebrew does not exist! Please install homebrew:"
    echo "/bin/bash -c \"$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\""
else
    echo "Homebrew exists! Installing brew packages"
fi


echo "Install core?"
select core in "Yes" "No"

do
    case $core in
        "Yes" )
            echo "Installing homebrew core"
            (cd brew/core && brew bundle)
            break;;
        "No" )
            break;;
    esac
done

echo "Install optional extras?"
select opt in "Yes" "No"

do
    case $opt in
        "Yes" )
            echo "Installing homebrew opt"
            (cd brew/opt && brew bundle)
            break;;
        "No" )
            break;;
    esac
done


echo "Install language specific programs?"
select lang in "Yes" "No"

do
    case $lang in
        "Yes" )
            echo "Installing homebrew language specific programs"
            (cd brew/lang && brew bundle)
            break;;
        "No" )
            break;;
    esac
done

echo "Install casks?"
select cask in "Yes" "No"

do
    case $cask in
        "Yes" )
            echo "Installing homebrew casks"
            (cd brew/cask && brew bundle)
            break;;
        "No" )
            break;;
    esac
done
