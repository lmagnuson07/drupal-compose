FROM drupal:latest

# Expose ports 3000 and 3001
EXPOSE 3000 3001

# Install dependencies
RUN apt-get update && apt-get install -y \
    git \
    npm \
    cron \
    curl \
    && rm -rf /var/lib/apt/lists/* \
    && composer require drush/drush \
  # Install nvm with node and npm
    && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash \
    && . $HOME/.nvm/nvm.sh \
    && nvm install 14 \
    && nvm use 14 \
    && nvm alias default 14

# Copy custom entrypoint script
COPY entrypoint.sh /usr/local/bin/

# Copy and enable custom Apache ServerName configuration (clears a warning from drupal)
COPY apache-servername.conf /etc/apache2/conf-available/

# Make the custom entrypoint script executable
RUN chmod +x /usr/local/bin/entrypoint.sh \
    && a2enconf apache-servername.conf

# Set the custom entrypoint script
ENTRYPOINT ["entrypoint.sh"]

# CMD here is an argument for the ENTRYPOINT
CMD ["apache2-foreground"]