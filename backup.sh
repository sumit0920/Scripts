#!/bin/bash

#Set the source and destination directories
source_dir="~/sumit-devops/projects/Linux"
destination_dir="~/sumit-devops/projects"

#Create a timestamp for the backup file
timestamp=$(date +%Y%m%d%H%M%S)

#Create the backup archive
tar -czf "$destination_dir/backup_$timestamp.tar.gz" "$source_dir"
