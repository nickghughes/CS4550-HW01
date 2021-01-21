server {
        listen 80;
        listen [::]:80;

        root /home/nick/www/hw01.grumdog.com;

        index index.html;

        server_name hw01.grumdog.com;

        location / {
                try_files $uri $uri/ =404;
        }
}
