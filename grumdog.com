server {
        listen 80;
        listen [::]:80;

        root /home/nick/www/grumdog.com;

        index index.html;

        server_name grumdog.com www.grumdog.com;

        location / {
                try_files $uri $uri/ =404;
        }
}
