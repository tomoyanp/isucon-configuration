# 間違えやすいのでホスト名設定
# sudo hostnamectl set-hostname isucon01
# sudo hostnamectl set-hostname isucon02
# sudo hostnamectl set-hostname isucon03

# gunicornのログフォルダ作成
sudo mkdir /var/log/gunicorn

# alpのインストール
wget https://github.com/tkuchiki/alp/releases/download/v0.3.1/alp_linux_amd64.zip
unzip alp_linux_amd64.zip
mv alp /usr/local/bin/

# kataribeのインストール
wget https://dl.google.com/go/go1.11.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.11.5.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go get -u github.com/matsuu/kataribe
./go/bin/kataribe -generate
sudo mv ./go/bin/kataribe /usr/local/bin/

# dstatのインストール
sudo apt install dstat

# pt-query-digestのインストール
wget https://repo.percona.com/apt/percona-release_0.1-3.$(lsb_release -sc)_all.deb
wget https://repo.percona.com/apt/percona-release_latest.$(lsb_release -sc)_all.deb
sudo dpkg -i percona-release_latest.$(lsb_release -sc)_all.deb
sudo apt install percona-toolki


# redisのインストール
sudo apt install redis-server

# pythonで使う場合下記も必要（rootで）
# pip install redis

# meinheldにワーカーを変える
# pip install meinheld
# serviceファイルも変える

# pypy入れる
# sudo add-apt-repository ppa:pypy/ppa
# sudo apt update
# sudo apt install pypy3
# sudo apt install virtualenv
# virtualenv venv --python=/usr/bin/pypy3