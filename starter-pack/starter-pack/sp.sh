#!/usr/bin/env bash
# Makes web-02 identical to web-01 and adds a custom header to Nginx

web_root="/var/www/html"
config_dir="/etc/nginx/sites-available/default"
redirect_url="https://www.youtube.com/watch?v=QH2-TGUlwu4"

# Install Nginx if not present
apt-get update
apt-get install -y nginx

# Restart Nginx after installation
sudo service nginx restart

# Create an HTML file served by Nginx on port 80
echo "Hello world" > "$web_root/index.html"

# Create a redirect
# Creating a custom 404 page
echo "Ceci n'est pas une page" > "$web_root/custom_404.html"

printf '%s' 'server {
    listen 80;
    root /var/www/html;
    index index.html index.htm;
    location /redirect_me {
        return 301 "https://www.youtube.com/watch?v=QH2-TGUlwu4";
    }
    error_page 404 /custom_404.html;
    location /404 {
        root /var/www/html;
        internal;
    }
    add_header X-Served-By $hostname;
}' >> "$config_dir"

# Restart Nginx to adopt the changes
sudo service nginx restart
