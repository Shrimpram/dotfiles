#!/usr/bin/env bash

git-ssh-init (){
    eval $("ssh-agent")
    ssh-add
}
