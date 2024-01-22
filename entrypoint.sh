#!/bin/sh -l

git config --global --add safe.directory "$GITHUB_WORKSPACE"

command="eb $1"
$command
