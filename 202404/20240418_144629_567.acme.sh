imgpr.nbfuli.cn

server {
  listen 80;
  listen [::]:80;
  server_name imgpr.nbfuli.cn;
  return 301 https://$host$request_uri;
}

server {
  listen 443 ssl http2;
  listen [::]:443 ssl http2;
  server_name imgpr.nbfuli.cn;

  ssl_certificate /usr/local/nginx/conf/ssl/imgpr.nbfuli.cn.pem;
  ssl_certificate_key /usr/local/nginx/conf/ssl/imgpr.nbfuli.cn.key;
  ssl_protocols TLSv1.2 TLSv1.3;
  ssl_ciphers TLS13-AES-256-GCM-SHA384:TLS13-CHACHA20-POLY1305-SHA256:TLS13-AES-128-GCM-SHA256:TLS13-AES-128-CCM-8-SHA256:TLS13-AES-128-CCM-SHA256:EECDH+CHACHA20:EECDH+AES128:RSA+AES128:EECDH+AES256:RSA+AES256:EECDH+3DES:RSA+3DES:!MD5;
  ssl_prefer_server_ciphers on;
  ssl_session_timeout 10m;
  ssl_session_cache builtin:1000 shared:SSL:10m;
  ssl_buffer_size 1400;
  add_header Strict-Transport-Security max-age=15768000;
  ssl_stapling on;
  ssl_stapling_verify on;

  access_log /data/wwwlogs/imgpr.nbfuli.cn_nginx.log combined;
  index index.html index.htm index.php;
  root /www/sandphoto;

  location / {
    try_files $uri $uri/ /index.php?$args;
  }

  location ~ \.(gif|jpg|jpeg|png|bmp|swf|flv|mp4|ico)$ {
    expires 30d;
    access_log off;
  }

  location ~ \.(js|css)?$ {
    expires 7d;
    access_log off;
  }


  location /.well-known {
    allow all;
  }
}