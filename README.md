## cacti-weathermap

Plugin for [cacti](cacti.net)

This is a port for use with tools, utilities, & libraries I see fit
- This currently includes: Panzoom

# There is no expectation that anyone cares

# No warranty expressed or otherwise to the functionality of the code presented here

Last merge of Cacti/plugin_weathermap develop into cacti-1.2.x_weathermap-develop_rigrace: **2025-12-07**

 - functionality not yet verified 

- [x] Shoe-horn of [Panzoom](https://www.jqueryscript.net/zoom/jQuery-Plugin-For-Panning-Zooming-Any-Elements-panzoom.html#google_vignette) project into map edit & display flows is functional


ADDING WEATHERMAP
#get code from source from:
- cloned git source
  - change to consumable branch using git
- downloaded zip file
  - extract to folder
- copy weathermap folder into .../vhost_folder/plugins folder
```bash
cp .../path_to_source/weathermap .../var/www/html/cacti/plugins/
``` 
- set vhost folder permissions
  - for var/www/html/cacti I use:
    ```bash
    sudo chown -R www-data:www-data /var/www/html
    sudo chmod -R 0770 /var/www/html
    ```
- enable weathermap plugin 
  http://localhost/cacti
  browse to console - configuration - plugins
  install the plugin
  enable the plugin
Input Validation Whitelist Protection

<h1>This is a claenup note</h1>
Cacti Data Input methods that call a script can be exploited in ways that a non-administrator can perform damage to either files owned by the poller account, and in cases where someone runs the Cacti poller as root, can compromise the operating system allowing attackers to exploit your infrastructure.

Therefore, several versions ago, Cacti was enhanced to provide Whitelist capabilities on the these types of Data Input Methods. Though this does secure Cacti more thoroughly, it does increase the amount of work required by the Cacti administrator to import and manage Templates and Packages.

The way that the Whitelisting works is that when you first import a Data Input Method, or you re-import a Data Input Method, and the script and or arguments change in any way, the Data Input Method, and all the corresponding Data Sources will be immediatly disabled until the administrator validates that the Data Input Method is valid.

To make identifying Data Input Methods in this state, we have provided a validation script in Cacti's CLI directory that can be run with the following options:

    php -q input_whitelist.php --audit - This script option will search for any Data Input Methods that are currently banned and provide details as to why.
    php -q input_whitelist.php --update - This script option un-ban the Data Input Methods that are currently banned.
    php -q input_whitelist.php --push - This script option will re-enable any disabled Data Sources.

It is strongly suggested that you update your config.php to enable this feature by uncommenting the $input_whitelist variable and then running the three CLI script options above after the web based install has completed.

Check the Checkbox below to acknowledge that you have read and understand this security concern



