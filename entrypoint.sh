#!/bin/sh

set -ex

# Print the env for debug purpose
env

# Migrate the database
./manage.py migrate

# Run the command
exec $@