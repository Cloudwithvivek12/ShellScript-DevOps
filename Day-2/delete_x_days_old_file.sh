#!/bin/bash

# Script Name: day-2-delete-old-files.sh
# Description: Deletes files older than a specified number of days from a given directory.
# Author: Vivek Rajak (cloudwithvivek)
# Date: 2025-07-26

#!/bin/bash
# 🔧 Set the target directory here
TARGET_DIR="/var/log/myapp"

# 🧹 Find and delete files older than 10 days
echo "Deleting files older than 10 days in: $TARGET_DIR"

# -type f : only files
# -mtime +10 : modified more than 10 days ago
# -exec rm -v {} \; : delete each found file and show it
find "$TARGET_DIR" -type f -mtime +10 -exec rm -v {} \;

# ✅ Completion message
echo "Old files cleanup completed!"
