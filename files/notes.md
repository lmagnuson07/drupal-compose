# Notes

- Drupal doesn't have a preview mode (but it is designed to look exactly the same from the admin previews as it does in the site, minus all the admin buttons it adds to content pages). Need a different browser or ingognito to view the frontend as the user would see.
- There are no blocks for content like WP. Everything is done in a WYSIWYG editor, or by adding in custom fields to your content types (post types to wp). - The layout builder core module is similar to wp blocks, but not enabled by default. (allows you to add new content blocks (doesn't always require a custom block type). Can add multiple basic blocks to get the Wordpress block functionality. Adding a basic block doesn't add it to the list of blocks, which would be problematic for basic content requiring advance layout)
- Adding an image field to a custom content (exhb type for example) would help free up clutter in the media manager since, when configured properly, those images don't get stored in the media manger. Lets you defined where the images get stored on your server.
- Adding custom fields is built in (no need for a plugin like WP)
- Can easily set up cron tasks. There is an interface to set how often they run, and a button to run them right away (I used cron for the scheduler module).
- Drupal doesn't have a way to link to pages in the WYSIWYG editor. Need the linkit module. Need the extlink module if you want the links to open in a new tab.
- Drupal doesn't have a build in setting to set user-friendly permalinks like wordpress. Requires 3 modules (chaos tools, pathauto, and token). Theres a lot more work involved setting them up then WP. You have to set up a pattern for each content type then bulk generate them, and flush your cache.
- Any page on your site can be your front page. You just need to go to basic site settings and specify what page you want to use. It uses the front page by default.
- Its very easy to flush your caches (theres a button under the drupal logo in the admin area). Lets you select what exactly you want to flush, or just click the flush all button.
- Drupal is build on Symfony 6.
- Has a very smart draft system for pretty much everything. For example, when I was editing an admin view when setting up a custom digital asset system, I forgot to click save before visiting another admin page. I came back, and everything was there in draft form (even the preview).

## Media

- Drupal lets you add fields to your media types. This is a great way to organize your media library. You can add fields like "alt text" or "caption" to your media types.
- Can add taxonomies/tage to media types. Once you add them, you can adjust the admin view for the media manager to add a filter for the taxonomies you added.
- Gives you a wide range of customization options for what to display and what to hide in the media manager.

## Users

- Drupal seems to have a more robust system for user control and permissions. You can set what your different users have access to in almost everything you can edit.
- The root user is known as super user #1. Can't be modified or deleted. Has full privileges.
- Users are entities, meaning you can add as many fields as you want to them, allowing you to create very robust community-based systems (when adding fields, set them to required so they show up on the profile creation form)
- There are existing email templates (just a textarea to edit them) for things like user registration, password reset, and account activation.
- The workflow module can be handy even if you don't need content to be approved by an admin. It lets you store the revision in draft mode until you want to publish it.

## Modules (basically = to WP Plugins)

- All modules are free.
- There is no backwards compatibility with modules between major releases. The module only works with one version (although some modules say - Required Drupal ^8 || ^9).
- Not all sites report the modules that they use (so the "sites report using this module" on drupal.org is not always accurate)
- Drupal discourages contributed modules that are almost identical (unlike other CMS systems).
- There is a good level of security about drupal modules
- There's no interface build into drupal for browsing new contributed modules. You have to browse for it on drupal.org then you either upload it as a zip, or use composer. Since drupal 9, composer installs are the preferred way to install modules.
- The Devel Module is a great way to add test data to your site.

## Themes

- Themes provide you with block layouts (where the sidebars/headers/menus/content/breadcrumbs/ets get placed). You can view this layout from structure/block layout
- Uses twig template files in themes.
- A lot less themes available than WP (wp has around 30000 while drupal has around 2200 (without filtering for your specific drupal version))
- Uses blocks and block layouts (blocks are more like sidebars, headers, footers, not columns, dividers, etc).
- Blocks are an entity that can contain just about anything.

## Views

- You can add your own rewrite rules for html output for fields like the title.
- You can add your own custom image styles. Allows you to set the effect (convert, crop,desaturate, resize, etc). Can add any number of effects, plus add modules to get more effects. Allows you to set the anchoring of the image. They can also be added to media types.
- You can set an image style to convert images to webp, then add this image style to other image styles (thumbnail, medium, etc) since you can't apply more than one style to an image.
- You can create blocks directly from views, then place them in the block layout.

## CSS & JS Injector

- Great popular module used to inject css and js to a theme. Lets you filter by theme, and select which pages you would like the code to show up on. Lets you label the entity (the code is kinda treated like an entity, with fields and option to select from). You can set it to require all of your conditions (which pages to show on, etc) or any # of them.
- Has a media type option, allowing you to target print or screen.
- Gives you an admin interfaces to browser all of your injected css and js easily, and easily edit them.
- Main downfall is there is no preview, so you have to open a second tab, save changes, then preview in new tab.
