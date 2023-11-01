#!/bin/bash

# Function to get CPU core usage percentages
get_cpu_usage() {
    cpu_info=$(top -bn 1 | grep '%Cpu' | awk -F ' ' '{print "User: " $2, "System: " $4, "Idle: " $10}')
    echo '{"cpu_usage": {'"$cpu_info"'}'
}

# Function to get memory information
get_memory_usage() {
    memory_info=$(free -h | grep 'Mem' | awk -F ' ' '{print "Total: " $2, "Used: " $3, "Free: " $4, "Available: " $7}')
    echo '{"memory_usage": {'"$memory_info"'}'
}

# Set the log file path
log_file="/path/to/monitor-performances.log"

# Create a JSON log entry
log_entry='{"timestamp": "'$(date -u +"%Y-%m-%dT%H:%M:%SZ")'", "cpu_usage": "'$(get_cpu_usage)'", "memory_usage": "'$(get_memory_usage)'"}'

# Append the log entry to the log file
echo $log_entry >> "$log_file" 2>&1
