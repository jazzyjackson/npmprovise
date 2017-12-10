#!/bin/bash
# check that n is installed globally so we can jump around node versions
# check if argument looked like node=0.10.0 and store that, else use 'latest'
# readlines from node passed into this, parse require(.****) and if there's a dot there, consider it a local file, check for it in working directory
# from all those files, parse all the require statements, compare against a list of builtins, and have a list of modules to install
# then hash the node v + requirements
# create a new /usr/local/lib/npmrovise/$hash directory and inside that, npm init, npm i all the goods
# then launch n $nodev; NODE_PATH=/usr/local/lib/npmrovise/$hash node $scriptname