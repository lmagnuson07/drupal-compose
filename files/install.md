# Install Drupal

To install modules:
```
docker compose exec drupal composer require drupal/admin_toolbar
- to install stuff with composer in the container
```

Install Drush:
```
docker compose exec drupal composer require drush/drush
- Install drush (basically the wp-cli for drupal)
```

```
drush en components
- Enable the components module

drush then radix
- Enable the theme (then is short for theme-enable)

drush --include="web/themes/contrib/radix" radix:create SUBTHEME_NAME
- Create a subtheme for the radix theme

drush then SUBTHEME_NAME -y; drush config-set system.theme default SUBTHEME_NAME -y
- Set theme to default
```

To install Cron and fire it up without adding it to a dockerfile:
```
docker compose exec drupal bash

apt-get update

apt-get install -y cron

service cron start

service cron status
```

```dockerfile
docker-compose down # Stop and remove containers
docker-compose build --no-cache # Rebuild images without cache
docker-compose up --build # Start containers with the updated image
```

```

```