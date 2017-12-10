#!/bin/bash
find . -type f -links 1 -exec ls -l {} \;| awk '{s=s+$5} END {print s/(1024*1024) "MB"}'