# zmotPHPOpsWorks



=======
Creating an FTP user
=======

You can add a virtual user using ftppasswd tool.

You can download it with wget http://www.castaglia.org/proftpd/contrib/ftpasswd

To create a user XXX you need to execute

sudo perl ftpasswd --passwd --name=XXX --home=DIRECTORY --shell=/bin/false --uid=1003 --file=/mnt/nfs/config/proftpd/ftpd.passwd

To create a user and use a password from the standart input rather than the

echo "PASSWORD" | sudo perl ftpasswd --passwd --name=XXX --home=DIRECTORY --shell=/bin/false --uid=1003 --file=/mnt/nfs/config/proftpd/ftpd.passwd  --stdin

