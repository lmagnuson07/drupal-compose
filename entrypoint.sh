#!/bin/bash

# Attempt to start cron
service cron start || cron || echo "Failed to start cron."

# Log an error if cron fails to start
# if ! pgrep cron > /dev/null; then
#     echo "Cron is not running ... failed!"
# else
#     echo "Cron is running."
# fi

# Execute the default Docker entrypoint (Apache in the foreground)
exec apache2-foreground