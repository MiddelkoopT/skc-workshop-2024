#!/bin/bash
# Setup shell with:
# . ./env.sh

if [ -z "$USER" ] ; then
    export USER=$NB_USER
fi

export SSH_AUTH_SOCK=/run/lock/agent.$USER
if [ ! -S $SSH_AUTH_SOCK ] ; then
    eval `ssh-agent -a $SSH_AUTH_SOCK` | grep -v "^Agent pid"
    ssh-add ~/work/.ssh/id_rsa
fi
