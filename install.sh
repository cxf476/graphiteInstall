yum install -y httpd24 php56 php56-mysqlnd
yum install -y  libffi libffi-devel gcc  mysql-devel git cairo

pip install pytz
pip install whisper  
pip install Twisted==16.4.1
pip install graphite-web  
pip install carbon
pip install MySQL-python
pip install scandir
pip install nodejs
pip install service_identity
pip install service_identity --upgrade


mkdir /usr/local/graphite
cd /usr/local/graphite
 
git clone https://github.com/graphite-project/graphite-web.git
git clone https://github.com/graphite-project/carbon.git
git clone https://github.com/graphite-project/whisper.git
git clone https://github.com/graphite-project/ceres.git
 
pushd whisper
python setup.py install
popd
 
pushd carbon
python setup.py install
popd
 
pushd ceres
python setup.py install
popd
 
pushd /opt/graphite/conf
cp carbon.conf.example carbon.conf
cp storage-schemas.conf.example storage-schemas.conf
popd
 
pushd graphite-web
python setup.py install
popd
 
cd /etc/httpd/conf.d/
cp /opt/graphite/examples/example-graphite-vhost.conf ./graphite-vhost.conf
 
sed -i "s/ServerName\ graphite/ServerName\ $(hostname -s)/g" ./graphite-vhost.conf
