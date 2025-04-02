#!/bin/bash
# Practice Script for Linux Commands

echo "Starting Linux command practice for mamellolelaka@LAPTOP-4KISL5TR..."


# Navigation Commands

echo "1. Navigation Commands"
# Step 1: Print current working directory
echo "Current directory is:"
/bin/pwd  # Outputs /home/mamellolelaka

# Step 2: List files in the current directory
echo "Listing files:"
ls  # Basic listing (assuming dir is empty or has some files)
ls -l  # Detailed listing
ls -a  # Show hidden files (e.g., .bashrc)


# Changing Directories

echo "2. Changing Directories"
# Step 1: Create a temp directory to navigate
mkdir temp_dir
# Step 2: Change to temp_dir
cd temp_dir
echo "Moved to: $(/bin/pwd)"  # Outputs /home/mamellolelaka/temp_dir
# Step 3: Go back to home directory
cd ~
echo "Back to: $(/bin/pwd)"  # Outputs /home/mamellolelaka
# Step 4: Move up one directory (to /home)
cd ..
echo "Moved up to: $(/bin/pwd)"  # Outputs /home
cd ~/temp_dir  # Return to temp_dir for next steps


# Directory Creation and Removal

echo "3. Directory Creation and Removal"
# Step 1: Create a new directory
mkdir practice_dir
echo "Created practice_dir"
# Step 2: Remove it (since it’s empty)
rmdir practice_dir
echo "Removed practice_dir"


# File Management Commands

echo "4. File Management Commands"
# Step 1: Create a file
touch myfile.txt
echo "Created myfile.txt"
# Step 2: Copy the file
cp myfile.txt myfile_copy.txt
echo "Copied to myfile_copy.txt"
# Step 3: Move/rename the copy
mv myfile_copy.txt renamed_file.txt
echo "Renamed to renamed_file.txt"
# Step 4: Add content and display it
echo "Hello, mamellolelaka!" > renamed_file.txt
cat renamed_file.txt  # Displays "Hello, mamellolelaka!"
# Step 5: Remove the original file
rm myfile.txt
echo "Removed myfile.txt"


# File Permissions and Ownership

echo "5. File Permissions and Ownership"
# Step 1: Make renamed_file.txt executable
chmod 755 renamed_file.txt
echo "Made renamed_file.txt executable (permissions: 755)"
ls -l renamed_file.txt  # Shows -rwxr-xr-x
# Step 2: Change ownership (assuming user mamellolelaka exists)
chown mamellolelaka:mamellolelaka renamed_file.txt
echo "Ownership set to mamellolelaka:mamellolelaka"


# Searching and Filtering

echo "6. Searching and Filtering"
# Step 1: Search for "mamellolelaka" in renamed_file.txt
grep "mamellolelaka" renamed_file.txt  # Outputs the line
# Step 2: Find files named renamed_file.txt
find . -name "renamed_file.txt"  # Outputs ./renamed_file.txt


# Process Management

echo "7. Process Management"
# Step 1: Show running processes
ps aux | head -n 5  # Show first 5 lines for brevity
# Step 2: Run a background process (sleep for demo)
sleep 60 &
SLEEP_PID=$!
echo "Started sleep process with PID: $SLEEP_PID"
# Step 3: Kill the process
kill $SLEEP_PID
echo "Killed sleep process"

# System Information and Utilities

echo "8. System Information"
# Step 1: Show disk usage
df -h | head -n 2  # Show first 2 lines
# Step 2: Show directory size
du -sh ~/temp_dir
# Step 3: Show memory usage
free -h
# Step 4: Show current date
date


# Networking (Simulated)

echo "9. Networking (Simulated)"
# Step 1: Simulate downloading a file
echo "Simulating wget http://example.com/test.txt"
# wget http://example.com/test.txt  # Uncomment if internet available
# Step 2: Simulate SSH (won’t connect, just syntax)
echo "SSH syntax: ssh mamellolelaka@LAPTOP-4KISL5TR"


# Customizing Your Environment


# Step 1: Create an alias
alias ll='ls -l'
echo "Alias 'll' created for 'ls -l'"
ll  # Uses the alias


# Working with Directories (More Examples)

echo "11. More Directory Work"
# Step 1: Create nested directories
mkdir -p parent/child
echo "Created parent/child directories"
# Step 2: Move renamed_file.txt to child
mv renamed_file.txt parent/child/
echo "Moved renamed_file.txt to parent/child"


# Viewing Files

echo "12. Viewing Files"
# Step 1: View the file content
cat parent/child/renamed_file.txt
# Step 2: View with less (simulated, press q to exit if interactive)
echo "Content via less (simulated):"
echo "Hello, mamellolelaka!"


# Editing Files (Simulated)

echo "13. Editing Files (Simulated)"
# Step 1: Simulate nano edit
echo "nano parent/child/renamed_file.txt"
echo "Imagine adding 'Welcome!' and saving with Ctrl+O, then Ctrl+X"


# Cleanup

echo "Cleaning up..."
cd ~
rm -rf temp_dir
echo "Removed temp_dir and all contents"

echo "Practice complete for mamellolelaka@LAPTOP-4KISL5TR!"