[root@master ~]# cd sampledata
[root@master sampledata]# start-dfs.sh
Starting namenodes on [master]
master: namenode running as process 4834. Stop it first.
slave3: datanode running as process 3962. Stop it first.
slave2: datanode running as process 3953. Stop it first.
slave1: datanode running as process 3964. Stop it first.
Starting secondary namenodes [slave1]
slave1: secondarynamenode running as process 4028. Stop it first.
[root@master sampledata]# hdfs dfs -ls /
[root@master sampledata]# hdfs dfs -mkdir /edudata
[root@master sampledata]# hdfs dfs -ls /
Found 1 items
drwxr-xr-x   - root supergroup          0 2019-08-01 10:16 /edudata
[root@master sampledata]# hdfs dfs -chmod 777 /edudata
[root@master sampledata]# hdfs dfs -put /root/sampledata/2008.csv /edudata
[root@master sampledata]# hdfs dfs -put /root/sampledata/president_moon.txt /edudata
[root@master sampledata]# hdfs dfs -put /root/sampledata/product_click.log /edudata
[root@master sampledata]# hdfs dfs -ls /edudata
Found 3 items
-rw-r--r--   3 root supergroup  689413344 2019-08-01 10:19 /edudata/2008.csv
-rw-r--r--   3 root supergroup       7402 2019-08-01 10:19 /edudata/president_moon.txt
-rw-r--r--   3 root supergroup      14174 2019-08-01 10:20 /edudata/product_click.log
[root@master sampledata]# hdfs dfs -cat /edudata/president_moon.txt
잘라냈음
[root@master sampledata]# cd
[root@master ~]# pwd
/root
[root@master ~]# ls
anaconda-ks.cfg  initial-setup-ks.cfg  tools  다운로드  바탕화면  사진  음악
hadoop-2.7.7     sampledata            공개   문서      비디오    서식
[root@master ~]# cd tools
[root@master tools]# pwd
/root/tools
[root@master tools]# ls
eclipse-jee-2018-12-R-linux-gtk-x86_64.tar.gz  jdk-8u131-linux-x64.tar.gz
hadoop-2.7.7.tar.gz
[root@master tools]# tar xvfz eclipse-jee-2018-12-R-linux-gtk-x86_64.tar.gz 