#!/usr/bin/env bash

echo "Install packer?"

select yn in "Yes" "No"
do
    case $yn in
        Yes )
            echo "Installing packer..."
            if [ -e ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]
            then
                echo "Error: Packer already exists. Installation cancelled." 1>&2
            else
                git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
            fi
            break;;
        No )
            echo "Ok, moving on..."
            break;;
    esac
done

echo "Install dictionaries?"

select dict in "Dwyl Dictionary" "Moby Thesaurus" "Both" "None"
do
    case $dict in
        "Dwyl Dictionary" )
            if [ -e ~/.config/nvim/spell/dwyl-dict.txt ]
            then
                echo "Error: Dwyl Dictionary already exists. Installation cancelled." 1>&2
            else
                echo "Installing the dwyl english words dictionary..."
                curl -s https://raw.githubusercontent.com/dwyl/english-words/master/words.txt > ~/.config/nvim/spell/dwyl-dict.txt
            fi
            break;;
        "Moby Thesaurus" )
            if [ -e ~/.config/nvim/spell/moby-thesaurus.txt ]
            then
                echo "Error: Moby Thesaurus already exist. Installation cancelled." 1>&2
            else
                echo "Installing the moby words thesaurus..."
                curl -s https://raw.githubusercontent.com/words/moby/master/words.txt > ~/.config/nvim/spell/moby-thesaurus.txt
            fi
            break;;
        "Both" )
            if [ -e ~/.config/nvim/spell/dwyl-dict.txt ]
            then
                echo "Error: Dwyl Dictionary already exist. Installation cancelled." 1>&2
            else
                echo "Installing the dwyl english words dictionary..."
                curl -s https://raw.githubusercontent.com/dwyl/english-words/master/words.txt > ~/.config/nvim/spell/dwyl-dict.txt
            fi
            if [ -e ~/.config/nvim/spell/moby-thesaurus.txt ]
            then
                echo "Error: Moby Thesaurus already exist. Installation cancelled." 1>&2
            else
                echo "Installing the moby words thesaurus..."
                curl -s https://raw.githubusercontent.com/words/moby/master/words.txt > ~/.config/nvim/spell/moby-thesaurus.txt
            fi
            break;;
        "None" )
            echo "Ok, moving on..."
            break;;
    esac
done

echo "All done, nvim is now set up"
