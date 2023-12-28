#!/usr/bin/env bash
# copies files from the remote server to the local machine
# use it for local backup of your server
# pre-requisite:
#   1. modify 'pkey' variable and put the location of your private key
#   2. modify the 'remote_host' variable to point to the IP address of the remote server
#   3. destination path is the directory on your local machine to store backups
#   4. make sure to make it executable
#   5. pass the IP address of your remote server as the argv[1]
# Variable for private key location (modify as needed)
# How to run './magneto_script remote_server_ip'
pkey="/home/was/.ssh/school"

# Destination path for backups (modify as needed)
dstn_path="/home/was/"

# Array of source paths on the remote server
source_paths=("/etc/nginx" "/etc/haproxy/" "/etc/mysql/")

# Loop through each source path
for source_path in "${source_paths[@]}"; do
    # Construct the remote host string from the first argument
    remote_host="$1"

    # Pull files using SCP
    scp -r -i "$pkey" "ubuntu@$remote_host:$source_path" "$dstn_path"
done

