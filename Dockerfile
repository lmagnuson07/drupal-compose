FROM drupal:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    git \
    npm \
    cron \
    && rm -rf /var/lib/apt/lists/*

# Copy custom entrypoint script
COPY entrypoint.sh /usr/local/bin/

# Make the custom entrypoint script executable
RUN chmod +x /usr/local/bin/entrypoint.sh

# Copy and enable custom Apache ServerName configuration (clears a warning from drupal)
COPY apache-servername.conf /etc/apache2/conf-available/
RUN a2enconf apache-servername.conf

# Set the custom entrypoint script
ENTRYPOINT ["entrypoint.sh"]

# CMD here is an argument for the ENTRYPOINT
CMD ["apache2-foreground"]