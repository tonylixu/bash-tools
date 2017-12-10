#!/bin/bash
# From "find" man page
# -links n
#     File has n links
# For explanation of hardlinks, checkout the "images/hard-links.png"
find . -type f -links 1 -exec ls -l {} \;| awk '{s=s+$5} END {print s/(1024*1024) "MB"}'
