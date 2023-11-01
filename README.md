# Performance Monitoring Script

This repository contains a Bash script for monitoring system performance, including CPU and memory usage, and logging the results. The script generates JSON log entries with timestamps for tracking system performance over time.

## Usage

To use this script, follow these steps:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/loydle/performance-monitoring-script.git
   ```
2. Make the script executable:

   ```bash
   chmod +x monitor-performances.sh
   ```

3. Set up a Cron Job:

   The script will start monitoring and logging performance data with timestamps. You can modify the script as needed to customize the log format or data collected.

   ```bash
   crontab -e
   ```
   Add an entry to run the script at your desired intervals. For example, to run the script every 15 minutes:

   ```bash
   */15 * * * * /path/to/monitor-performances.sh
   ```

   Save the crontab file. The script will now be executed automatically at the specified intervals.

## Example Logs

The script logs data in JSON format. Here's an example of a log entry:



## Example Logs

```json
{
  "timestamp": "2023-11-02T09:30:00Z",
  "cpu_usage": {
    "User": "1.0",
    "System": "3.0",
    "Idle": "96.0"
  },
  "memory_usage": {
    "Total": "7.8Gi",
    "Used": "1.1Gi",
    "Free": "5.2Gi",
    "Available": "6.3Gi"
  }
}
```
