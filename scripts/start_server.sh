cp /home/ubuntu/safety-api/aiohttp@.service /etc/systemd/system
cp /home/ubuntu/safety-api/nginx.conf /etc/nginx
systemctl enable aiohttp\@{1..5}.service
systemctl daemon-reload
systemctl start aiohttp@{1..5}
service nginx start