server {
    listen  80;
    server_name  localhost;

    root {{ magento.docroot }};
    index index.html index.php;

    error_page 404 /404.html;

    error_page 500 502 503 504 /50x.html;
        location = /50x.html {
        root /usr/share/nginx/www;
    }

    server_name {{ nginx.servername }};

    location / {
        index index.html index.php;     ## Allow a static html file to be shown first
        try_files $uri $uri/ /index.php?$args;   ## If missing pass the URI to Magento's front handler
    }

    location ^~ /app/                { deny all; }
    location ^~ /includes/           { deny all; }
    location ^~ /lib/                { deny all; }
    location ^~ /media/downloadable/ { deny all; }
    location ^~ /pkginfo/            { deny all; }
    location ^~ /report/config.xml   { deny all; }
    location ^~ /var/                { deny all; }
    
    location ~ \.php$ {
        if (!-e $request_filename) { rewrite / /index.php last; } ## Catch 404s that try_files miss
        expires off; ## Do not cache dynamic content
        fastcgi_split_path_info ^(.+\.php)(/.+)$;
        fastcgi_pass unix:/var/run/php5-fpm.sock;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        include fastcgi_params;
    }

    # Locations
    include {{ nginx.locations_dir }}*.conf;
}
