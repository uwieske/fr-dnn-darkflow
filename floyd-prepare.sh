#!/bin/sh
# This shell script accepts only one argument which is your Floydhub project name namespaced by your Floydhub username.
# Example: "jdoe/my-first-project"
# It assumed that your script is run in the root of the project so that initialization is done at the toplevel (root) of
# this project directory.
FLOYD_PROJECT=$1
floyd init $FLOYD_PROJECT

