查看系统版本

```sh
cat /etc/centos-release
```

# 安装
设置源
```sh
yum localinstall https://repo.mysql.com//mysql80-community-release-el7-1.noarch.rpm
```
设置源
```sh
rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022
```
```sh
yum install mysql-community-server
```

启动服务
```sh
systemctl start mysqld # 启动

systemctl enable mysqld # 自启动

service mysqld status # 状态
```

查看版本
```sh
mysql -version
```


# 登录

查看临时密码
```sh
grep 'temporary password' /var/log/mysqld.log
```
登录
```sh
mysql -u root -p
```
先设置强密码
```sql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'My002580!';
```
更改规格为弱密码
```sql
set global validate_password.policy=0;

set global validate_password.length=1;
```


# 远程连接

登录授权
```sql
update mysql.user set host='%' where user="root";

flush privileges;

select user,host from mysql.user;
```
用户授权
```sql
grant all privileges on *.* to 'root'@'%';

flush privileges;

show grants for root@'%'\G;
```

尝试创建数据库

```sql
CREATE DATABASE xiuxian;
```

显示所有数据库
```sql
SHOW DATABASES;
```

退出
```sql
exit;
```

# 防火墙

 检查系统是否安装了FirewallD：
```sh
systemctl status firewalld
```

如果该服务未安装，则需要使用以下命令安装：
```sh
sudo yum install firewalld
```

启动FirewallD服务：
```sh
sudo systemctl start firewalld
```
    
如果FirewallD服务已经运行，则会显示服务正在运行的消息。

设置FirewallD服务在系统启动时自动启动：

```sh
sudo systemctl enable firewalld
```

查看防火墙
```sh
firewall-cmd --query-port=3306/tcp
```

开启防火墙
```sh
firewall-cmd --zone=public --add-port=3306/tcp --permanent
```

重载防火墙
```sh
firewall-cmd --reload
```

# 密钥不匹配

更新
```
sudo yum update mysql80-community-release
```

重新安装

```
sudo yum install mysql-community-server
```

# 日常指令

```sh
sudo systemctl stop mysqld
```

```sh
sudo systemctl start mysqld
```

# 免密码登录
```sh
vi /etc/my.cnf
```

```toml
[mysqld]
skip-grant-tables
```

清空密码
```sql
use mysql;
```
```sql
update user set authentication_string = '' where user = 'root';
```

设置密码
```sql
ALTER USER '用户名'@'IP地址' IDENTIFIED BY 'XJH002580!';
```

刷新权限
```sql
FLUSH PRIVILEGES;
```