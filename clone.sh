# FROM alpine:3.6
# maintainer=doug.warren@gmail.com

#    DEBIAN_FRONTEND=noninteractive \
#    REMOTE_HOST=localhost \     REMOTE_PORT=5900

sudo bash

apt-get update
apt install git bash supervisor nodejs nodejs-npm -y

apt install curl build-essential libssl-dev -y
curl -sL https://deb.nodesource.com/setup_12.x | bash -
sudo apt-get install gcc g++ make nodejs -y
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

node -v && yarn -v && npm -v

# cd /root/
cd ~
git clone https://github.com/novnc/noVNC.git  noVNC
git clone https://github.com/novnc/websockify noVNC/utils/websockify

#    && rm -rf /root/noVNC/.git && rm -rf /root/noVNC/utils/websockify/.git \
cd ~/noVNC
npm i npm@latest
npm install
npm audit fix --force 

./utils/use_require.js --as commonjs --with-app
# cp noVNC/node_modules/requirejs/require.js noVNC/build

cd noVNC/
cp node_modules/requirejs/require.js build
sed -i -- "s/ps -p/ps -o pid | grep/g" utils/launch.sh

# apk del git nodejs-npm nodejs
# COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
# EXPOSE 8081
# CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]

# /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf

 ./utils/launch.sh  --listen 6081 --vnc localhost:5901 --web ./