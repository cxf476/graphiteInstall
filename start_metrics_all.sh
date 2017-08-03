sudo service mysqld stop
sudo service mysqld start
sudo /opt/graphite/bin/carbon-cache.py stop
sudo /opt/graphite/bin/carbon-cache.py start
nohup sudo python /opt/graphite/bin/run-graphite-devel-server.py --port 8081 /opt/graphite/ >/home/ec2-user/xuefeng/metrics.log 2>&1 &
