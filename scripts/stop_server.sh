service nginx stop
systemctl stop aiohttp@{1..5}
cd /home/ubuntu/safety-api
rm -rf venv