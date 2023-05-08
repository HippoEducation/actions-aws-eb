#!/bin/sh -l
 
command="eb $1"
git config --global --add safe.directory "$GITHUB_WORKSPACE" 
 
 
$command
