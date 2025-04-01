#!/bin/bash
# Linux Commands Script - All commands are commented out for reference.

#################################
# Navigation Commands
#################################

# Print the current working directory
# pwd

# List files and directories in the current directory
# ls
# ls        # Basic listing
# ls -l     # Detailed listing (permissions, owner, size, etc.)
# ls -a     # Lists all files, including hidden files

#################################
# Changing Directories
#################################

# Change to a specific directory
# cd /path/to/directory

# Go to your home directory
# cd ~      # Goes to your home directory

# Move one directory up
# cd ..     # Moves one directory up

#################################
# Directory Creation and Removal
#################################

# Create a new directory called "new_directory"
# mkdir new_directory

# Remove an empty directory called "empty_directory"
# rmdir empty_directory

#################################
# File Management Commands
#################################

# Create a new, empty file or update the timestamp of an existing file
# touch filename.txt

# Copy a file from source.txt to destination.txt
# cp source.txt destination.txt

# Copy a directory recursively (for directories)
# cp -r source_directory/ destination_directory/

# Move or rename a file
# mv oldname.txt newname.txt

# Move a file to a specific directory
# mv file.txt /path/to/directory/

# Remove a file
# rm file.txt

# Remove a directory and all its contents recursively (use with caution)
# rm -r directory/   # Recursive removal for directories

# Force remove a file without prompt
# rm -f file.txt    # Force removal without prompt

# Display the content of a file
# cat file.txt

# View the content of a file one page at a time
# less file.txt

#################################
# File Permissions and Ownership
#################################

# Change file permissions (e.g., make script.sh executable)
# chmod 755 script.sh

# Change file ownership (e.g., change owner and group)
# chown user:group filename.txt

#################################
# Searching and Filtering
#################################

# Search for a pattern in a file
# grep "pattern" filename.txt

# Recursive search for a pattern in directories
# grep -r "pattern" /path/to/search/   # Recursive search in directories

# Search for files and directories based on criteria
# find /path/to/search -name "filename.txt"

#################################
# Process Management
#################################

# Display all running processes
# ps aux

# Provide a dynamic, real-time view of running processes
# top

# Terminate a process using its process ID (PID)
# kill PID

# Force kill a process using its PID
# kill -9 PID    # Force kill

#################################
# System Information and Utilities
#################################

# Show disk space usage for mounted filesystems in human-readable format
# df -h

# Estimate file or directory space usage (summarized)
# du -sh /path/to/directory

# Display memory usage in human-readable format
# free -h

# Display the current date and time
# date

# Display the history of commands entered
# history

# Clear the terminal screen
# clear

#################################
# Package Management (Debian/Ubuntu)
#################################

# Update package lists
# sudo apt update

# Upgrade installed packages
# sudo apt upgrade

#################################
# Package Management (Red Hat/CentOS/Fedora)
#################################

# Update packages using dnf
# sudo dnf update

# Alternatively, update packages using yum
# sudo yum update

#################################
# Networking
#################################

# Connect securely to a remote machine via SSH
# ssh user@remote_host

# Download a file using wget
# wget http://example.com/file.zip

# Download a file using curl
# curl -O http://example.com/file.zip

#################################
# Sudo and Administration
#################################

# Execute a command with administrative (root) privileges
# sudo command

#################################
# Customizing Your Environment
#################################

# Create a shortcut (alias) for a longer command (e.g., alias for a detailed file listing)
# alias ll='ls -alF'

#################################
# Working with Directories
#################################

# Print the current directory
# pwd

# Change directory using an absolute path
# cd /usr/local/bin

# Change directory using a relative path
# cd ../Documents

# Change directory to your home directory
# cd ~

# Change to the previous directory
# cd -

# List files (basic listing)
# ls

# List files with detailed information
# ls -l

# List all files including hidden ones
# ls -a

# If installed, display directories and their contents in a tree-like format
# tree

# Create nested directories (parent and child)
# mkdir -p parent_directory/child_directory

# Remove a directory and all its contents recursively
# rm -r directory_to_delete

# Copy directories recursively
# cp -r source_directory/ destination_directory/

# Move or rename a directory
# mv old_directory_name new_directory_name

# Move a directory to a new location
# mv directory_to_move /path/to/new/location/
