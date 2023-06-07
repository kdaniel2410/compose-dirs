#!/bin/bash

# Loop over all directories in the current directory
for dir in */; do
  # Print the directory name
  docker compose --env-file .env -f "$dir/docker-compose.yml" "$@"
done
