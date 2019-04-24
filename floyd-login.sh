#! /bin/sh
# This shell script will perform a Floydhub login with your API key.
# The key should not be exposed in this script. Floydhub has a mechanism to make the API key available through
# an environment variable.
floyd login -k $MY_FLOYD_API_KEY
