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
 free -h

# Display the current date and time
 date

# Display the history of commands entered
 history

# Clear the terminal screen
 clear

#################################
# Package Management (Debian/Ubuntu)
#################################

# Update package lists
 sudo apt update

# Upgrade installed packages
 sudo apt upgrade

#################################
# Package Management (Red Hat/CentOS/Fedora)
#################################

# Update packages using dnf
 sudo dnf update

# Alternatively, update packages using yum
 sudo yum update

#################################
# Networking
#################################

# Connect securely to a remote machine via SSH
 ssh user@remote_host

# Download a file using wget
 wget http://example.com/file.zip

# Download a file using curl
 curl -O http://example.com/file.zip

#################################
# Sudo and Administration
#################################

# Execute a command with administrative (root) privileges
 sudo command

#################################
# Customizing Your Environment
#################################

# Create a shortcut (alias) for a longer command (e.g., alias for a detailed file listing)
 alias ll='ls -alF'

#################################
# Working with Directories
#################################

# Print the current directory
 pwd

# Change directory using an absolute path
 cd /usr/local/bin

# Change directory using a relative path
 cd ../Documents

# Change directory to your home directory
 cd ~

# Change to the previous directory
 cd -

# List files (basic listing)
 ls

# List files with detailed information
 ls -l

# List all files including hidden ones
 ls -a

# If installed, display directories and their contents in a tree-like format
 tree

# Create nested directories (parent and child)
 mkdir -p parent_directory/child_directory

# Remove a directory and all its contents recursively
 rm -r directory_to_delete

# Copy directories recursively
 cp -r source_directory/ destination_directory/

# Move or rename a directory
 mv old_directory_name new_directory_name

# Move a directory to a new location
 mv directory_to_move /path/to/new/location/
# This script contains commented examples and explanations 
# for various Linux commands and topics including:
# - File Viewing and Editing (Nano, vi, Emacs)
# - Graphical Editors
# - File Management (delete, copy, move, rename)
# - Wildcards (basic and advanced)
# - I/O Redirection and Pipes
# - Comparing Files
# - Searching within Files
# - Transferring Files over a Network
# - Customizing the Shell Prompt (PS1)
# - Shell Aliases
# - Environment Variables
# - Processes and Job Control
# - Scheduling with Cron
# - Switching Users and Running Commands as Others
# - Shell History and Tab Completion
# -----------------------------------------------------

########################################
# Viewing Files
########################################
# Display the entire file content (good for small files)
# cat filename.txt

# View files one page at a time
# less filename.txt    # Use arrow keys to scroll; press q to quit.
# more filename.txt    # Press spacebar for next page; q to exit.

# Quickly view beginning or end of file
# head filename.txt
# tail filename.txt
# tail -n 20 filename.txt   # View the last 20 lines.

########################################
# Editing Files with Nano
########################################
# Open or create a file with Nano:
# nano filename.txt
#   - Ctrl + O to save changes (Write Out) and then Enter.
#   - Ctrl + X to exit Nano.
#   - Ctrl + K to cut a line; Ctrl + U to paste.
#   - Ctrl + W to search for text.

########################################
# Editing Files with vi
########################################
# Open a file with vi:
# vi filename.txt
# vi starts in Command Mode.
#   - Press i or a to enter Insert Mode.
#   - Press Esc to return to Command Mode.
#   - Type :w to save; :q to quit; or :wq to save and quit.
#   - Use h, j, k, l to navigate (or arrow keys).

########################################
# Editing Files with Emacs
########################################
# Open or create a file:
# emacs filename.txt
# Within Emacs:
#   - C-x C-s saves the file.
#   - C-x C-c exits Emacs.
#   - C-k cuts (kills) text; C-y pastes (yanks) text.
#   - C-SPC sets a mark for selecting text.

########################################
# Graphical Editors
########################################
# Some popular graphical editors include:
#   - Gedit:       gedit filename.txt
#   - Kate:        kate filename.txt
#   - Visual Studio Code (VS Code): Open the file via the editor.
#   - Sublime Text: Sublime Text offers fast, multi-cursor editing.
#   - Atom:        atom filename.txt

########################################
# File Management: Delete, Copy, Move, Rename
########################################
# Delete a file:
# rm filename.txt
# Delete an empty directory:
# rmdir directory_name
# Remove a directory recursively (with its contents):
# rm -r directory_name
# Force deletion without prompt:
# rm -rf directory_name

# Copy files and directories:
# Copy a file:
# cp source.txt destination.txt
# Copy a directory recursively:
# cp -r source_directory/ destination_directory/

# Move or rename files and directories:
# Rename a file:
# mv oldname.txt newname.txt
# Move a file to a directory:
# mv file.txt /path/to/directory/

########################################
# Wildcards - Basic and Advanced
########################################
# Basic Wildcards:
# Asterisk (*) matches zero or more characters:
# ls *.txt       # Lists all files ending with .txt
# Question mark (?) matches exactly one character:
# ls file?.txt   # Matches file1.txt, fileA.txt, etc.
# Square brackets ([ ]) match one character from a set:
# ls file[123].txt  # Matches file1.txt, file2.txt, file3.txt

# Advanced Wildcards:
# Enable recursive globbing (Bash 4+):
# shopt -s globstar
# ls **/*.txt    # Lists all .txt files in current and subdirectories.
# Brace expansion to generate strings:
# echo file{1,2,3}.txt   # Expands to: file1.txt file2.txt file3.txt
# Enable extended globbing:
# shopt -s extglob
# ls !(*.bak)    # Lists files that do not end with .bak

########################################
# I/O Redirection and Pipes
########################################
# Redirecting Standard Output:
# Overwrite a file:
# echo "Hello, Linux!" > greeting.txt
# Append to a file:
# echo "Welcome back!" >> greeting.txt

# Redirecting Standard Input:
# sort < unsorted.txt

# Redirecting Standard Error:
# ls non_existent_file 2> error.log
# Append errors:
# ls another_missing_file 2>> error.log

# Redirect both stdout and stderr:
# command &> output.log
# Separate redirection:
# command > output.log 2> error.log

# Using Pipes to chain commands:
# cat file.txt | grep "pattern" | less

########################################
# Comparing Files
########################################
# Line-by-line comparison:
# diff file1.txt file2.txt
# Use unified format:
# diff -u file1.txt file2.txt
# Byte-by-byte comparison:
# cmp file1.txt file2.txt
# Compare sorted files:
# comm file1.txt file2.txt
# (Ensure files are sorted: sort file1.txt -o file1.txt)

########################################
# Searching in Files
########################################
# Using grep to search for a pattern:
# grep "pattern" filename.txt
# Recursive search in a directory:
# grep -r "pattern" /path/to/directory
# Case-insensitive search:
# grep -i "pattern" filename.txt
# Show line numbers:
# grep -n "pattern" filename.txt
# Using regular expressions with extended grep:
# grep -E "pattern1|pattern2" filename.txt

########################################
# Transferring Files Over the Network
########################################
# Using Secure Copy (scp):
# Copy from local to remote:
# scp /path/to/localfile username@remote_host:/path/to/destination
# Copy from remote to local:
# scp username@remote_host:/path/to/remotefile /path/to/local_destination
# Recursive copy of directories:
# scp -r /path/to/local_directory username@remote_host:/path/to/destination

# Using rsync for efficient syncing:
# rsync -avz /path/to/local_directory/ username@remote_host:/path/to/destination/

# Using SFTP for interactive file transfer:
# sftp username@remote_host
#   In the SFTP shell: ls, cd, get, put, exit

########################################
# Customizing the Shell Prompt (PS1)
########################################
# Example: Username and hostname in green; working directory in blue.
# PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
# export PS1
# To make it permanent, add the export command to ~/.bashrc or ~/.zshrc and run:
# source ~/.bashrc

########################################
# Shell Aliases
########################################
# Create a shortcut for detailed file listing:
# alias ll='ls -l'
# Make file removal interactive to avoid mistakes:
# alias rm='rm -i'
# List all aliases:
# alias
# To remove an alias temporarily:
# unalias ll

########################################
# Environment Variables
########################################
# View all environment variables:
# env
# Or for a specific one:
# printenv PATH
# Display a specific variable:
# echo $HOME

# Define a new variable (only for current session):
# VARIABLE_NAME="SomeValue"
# Export it for child processes:
# export VARIABLE_NAME="SomeValue"

# Example: Prepend a new directory to PATH:
# export PATH="/new/path:$PATH"

########################################
# Processes and Job Control
########################################
# View running processes:
# ps aux
# For a dynamic view:
# top
# Or use htop (if installed)

# Run a command in the background:
# long_running_command &
# List current jobs:
# jobs
# Bring a background job to foreground (if job number is 1):
# fg %1
# Suspend a foreground process: Press Ctrl+Z, then resume in background:
# bg %1

# Kill a process by PID:
# kill PID
# Force kill:
# kill -9 PID
# Find process IDs by name:
# pgrep firefox
# Kill by name:
# pkill firefox

########################################
# Scheduling Repeated Jobs with Cron
########################################
# Edit your personal crontab:
# crontab -e
# List your cron jobs:
# crontab -l
# Crontab syntax: minute hour day month day-of-week command
# Example: Run a backup script every day at 2:30 AM:
# 30 2 * * * /home/username/scripts/backup.sh
# Special strings (e.g., @daily, @reboot) are also supported.

########################################
# Switching Users and Running Commands as Others
########################################
# Switch to another user (enter password when prompted):
# su username
# To switch to the root user and load their environment:
# su -
# Run a single command as root without switching session:
# sudo command
# For running a command as a specific user:
# sudo -u username command
# In scripts, runuser can be used:
# runuser -l username -c 'command'

########################################
# Shell History and Tab Completion
########################################
# Display command history:
# history
# Re-run the last command:
 !!
# Run a specific command from history (e.g., command number 42):
 !42
# Use reverse search (press Ctrl+R) to find previous commands.

# Tab Completion:
# Type part of a command or filename and press Tab to auto-complete.
# If multiple options exist, pressing Tab twice will list possibilities.
# Many shells support context-aware completion (e.g., completing SSH hostnames).