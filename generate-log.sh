# cat /var/log/nginx/access.log | kataribe -conf kataribe.toml  > kataribe_`date "+%Y-%m-%d-%H-%M-%S"`.log
sudo alp -f /var/log/nginx/access.log | kataribe -conf kataribe.toml  > kataribe_`date "+%Y-%m-%d-%H-%M-%S"`.log
sudo pt-query-digest /var/log/mysql/mysql-slow.sql > pt-query-digest_`date "+%Y-%m-%d-%H-%M-%S"`.log
