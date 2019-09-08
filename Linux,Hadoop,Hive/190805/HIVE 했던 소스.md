```
[root@master ~]# cd sampledata
[root@master sampledata]# ll
합계 784372
-rwxrw-rw-. 1 root root 689413344  9월  3  2016 2008.csv
-rwxrw-rw-. 1 root root 113753229  9월  3  2016 2008.csv.bz2
-rwxrw-rw-. 1 root root       314  8월  1 17:42 fruit.txt
-rwxrw-rw-. 1 root root      7402  8월 10  2017 president_moon.txt
-rwxrw-rw-. 1 root root     14174 10월 18  2018 product_click.log
[root@master sampledata]# hdfs dfs -cat product_click.log 
cat: `product_click.log': No such file or directory
[root@master sampledata]# cat product_click.log 
201612120944 p001
   결과가 무수히 많아 잘랐다.
201612130451 p007
201612130451 p006
201612130451 p009
[root@master ~]# hdfs dfs -ll
-ll: Unknown command
[root@master ~]# hdfs dfs -ls
ls: `.': No such file or directory
[root@master ~]# hdfs dfs -ls /output
Found 8 items
drwxr-xr-x   - root supergroup          0 2019-08-02 16:54 /output/exer_out1
drwxr-xr-x   - root supergroup          0 2019-08-02 17:33 /output/exer_out2
drwxr-xr-x   - root supergroup          0 2019-08-05 10:34 /output/exer_out3
drwxr-xr-x   - root supergroup          0 2019-08-02 16:23 /output/result
drwxr-xr-x   - root supergroup          0 2019-08-02 13:29 /output/test1
drwxr-xr-x   - root supergroup          0 2019-08-02 13:43 /output/test2
drwxr-xr-x   - root supergroup          0 2019-08-02 14:21 /output/test2008
drwxr-xr-x   - root supergroup          0 2019-08-02 14:24 /output/test2008_1
[root@master ~]# hdfs dfs -cat /output/exer_out3/part-r-00000
p001	84
p002	66
p003	54
p004	50
p005	43
p006	51
p007	71
p008	80
p009	80
p010	58
p011	49
p012	39
p013	4
p014	10
p015	7
[root@master ~]# cd tools
[root@master tools]# wget http://apache.tt.co.kr/hive/hive-2.3.5/apache-hive-2.3.5-bin.tar.gz
--2019-08-05 13:11:36--  http://apache.tt.co.kr/hive/hive-2.3.5/apache-hive-2.3.5-bin.tar.gz
Resolving apache.tt.co.kr (apache.tt.co.kr)... 211.47.69.77
Connecting to apache.tt.co.kr (apache.tt.co.kr)|211.47.69.77|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 232027212 (221M) [application/x-gzip]
Saving to: ‘apache-hive-2.3.5-bin.tar.gz’

100%[==================================================================================================>] 232,027,212  804KB/s   in 12m 22s

2019-08-05 13:23:58 (305 KB/s) - ‘apache-hive-2.3.5-bin.tar.gz’ saved [232027212/232027212]

[root@master tools]# tar xvzf apache-hive-2.3.5-bin.tar.gz 
실제 압축코드와 다르다 너무 길어서 중간에 자름
apache-hive-2.3.5-bin/conf/hive-log4j2.properties.template
apache-hive-2.3.5-bin/conf/hive-exec-log4j2.properties.template
apache-hive-2.3.5-bin/conf/beeline-log4j2.properties.template
apache-hive-2.3.5-bin/hcatalog/sbin/update-hcatalog-env.sh
apache-hive-2.3.5-bin/hcatalog/sbin/webhcat_config.sh
apache-hive-2.3.5-bin/hcatalog/sbin/webhcat_server.sh
[root@master tools]# mv apache-hive-2.3.5 ../apache-hive
mv: cannot stat `apache-hive-2.3.5': 그런 파일이나 디렉터리가 없습니다
[root@master tools]# mv apache-hive-2.3.5-bin ../apache-hive
[root@master tools]# cd
[root@master ~]# cd apache-hive/
[root@master apache-hive]# ls
LICENSE  NOTICE  RELEASE_NOTES.txt  bin  binary-package-licenses  conf  examples  hcatalog  jdbc  lib  scripts
[root@master apache-hive]# ll
합계 60
-rw-r--r--. 1 root root 20798  5월  7 03:41 LICENSE
-rw-r--r--. 1 root root   230  5월  8 07:44 NOTICE
-rw-r--r--. 1 root root   277  5월  8 07:44 RELEASE_NOTES.txt
drwxr-xr-x. 3 root root  4096  8월  5 13:24 bin
drwxr-xr-x. 2 root root  4096  8월  5 13:24 binary-package-licenses
drwxr-xr-x. 2 root root  4096  8월  5 13:24 conf
drwxr-xr-x. 4 root root    32  8월  5 13:24 examples
drwxr-xr-x. 7 root root    63  8월  5 13:24 hcatalog
drwxr-xr-x. 2 root root    43  8월  5 13:24 jdbc
drwxr-xr-x. 4 root root 12288  8월  5 13:24 lib
drwxr-xr-x. 4 root root    33  8월  5 13:24 scripts
[root@master apache-hive]# cd ..
[root@master ~]# ls
anaconda-ks.cfg  eclipse            hadoop-2.7.7          sampledata  공개      문서      비디오  서식
apache-hive      eclipse-workspace  initial-setup-ks.cfg  tools       다운로드  바탕화면  사진    음악
[root@master ~]# ll
합계 32
-rw-------.  1 root   root 1516  7월 31 19:25 anaconda-ks.cfg
drwxr-xr-x. 10 root   root 4096  8월  5 13:24 apache-hive
drwxrwxr-x.  8 root   root 4096  8월  5 09:34 eclipse
drwxr-xr-x.  4 root   root   39  8월  1 11:14 eclipse-workspace
drwxr-xr-x. 11 centos ftp  4096  7월 31 17:39 hadoop-2.7.7
-rw-r--r--.  1 root   root 1567  7월 31 10:33 initial-setup-ks.cfg
drwxr-xr-x.  2 root   root 4096  8월  2 13:38 sampledata
drwxr-xr-x.  2 root   root 4096  8월  5 13:25 tools
drwxr-xr-x.  2 root   root    6  7월 31 10:35 공개
drwxr-xr-x.  2 root   root    6  7월 31 10:35 다운로드
drwxr-xr-x.  2 root   root    6  7월 31 10:35 문서
drwxr-xr-x.  2 root   root    6  7월 31 10:35 바탕화면
drwxr-xr-x.  2 root   root    6  7월 31 10:35 비디오
drwxr-xr-x.  3 root   root 4096  8월  5 10:37 사진
drwxr-xr-x.  2 root   root    6  7월 31 10:35 서식
drwxr-xr-x.  2 root   root    6  7월 31 10:35 음악
[root@master ~]# vi .bashrc
[root@master ~]# vi .bashrc
[root@master ~]# source .bashrc
[root@master ~]# cd  $HIVE_HOME/conf
[root@master conf]# cp hive-e
hive-env.sh.template                  hive-exec-log4j2.properties.template  
[root@master conf]# cp hive-env.sh.template hive-env.sh
[root@master conf]# ll
합계 292
-rw-r--r--. 1 root root   1596 11월  1  2018 beeline-log4j2.properties.template
-rw-r--r--. 1 root root 257573  5월  8 07:45 hive-default.xml.template
-rw-r--r--. 1 root root   2365  8월  5 13:33 hive-env.sh
-rw-r--r--. 1 root root   2365 11월  1  2018 hive-env.sh.template
-rw-r--r--. 1 root root   2274 11월  1  2018 hive-exec-log4j2.properties.template
-rw-r--r--. 1 root root   2925  5월  7 03:41 hive-log4j2.properties.template
-rw-r--r--. 1 root root   2060 11월  1  2018 ivysettings.xml
-rw-r--r--. 1 root root   2719  5월  7 03:41 llap-cli-log4j2.properties.template
-rw-r--r--. 1 root root   7041  5월  7 03:41 llap-daemon-log4j2.properties.template
-rw-r--r--. 1 root root   2662 11월  1  2018 parquet-logging.properties
[root@master conf]# cp hive-default.xml.template hive-site.xml
[root@master conf]# ll
합계 544
-rw-r--r--. 1 root root   1596 11월  1  2018 beeline-log4j2.properties.template
-rw-r--r--. 1 root root 257573  5월  8 07:45 hive-default.xml.template
-rw-r--r--. 1 root root   2365  8월  5 13:33 hive-env.sh
-rw-r--r--. 1 root root   2365 11월  1  2018 hive-env.sh.template
-rw-r--r--. 1 root root   2274 11월  1  2018 hive-exec-log4j2.properties.template
-rw-r--r--. 1 root root   2925  5월  7 03:41 hive-log4j2.properties.template
-rw-r--r--. 1 root root 257573  8월  5 13:33 hive-site.xml
-rw-r--r--. 1 root root   2060 11월  1  2018 ivysettings.xml
-rw-r--r--. 1 root root   2719  5월  7 03:41 llap-cli-log4j2.properties.template
-rw-r--r--. 1 root root   7041  5월  7 03:41 llap-daemon-log4j2.properties.template
-rw-r--r--. 1 root root   2662 11월  1  2018 parquet-logging.properties
[root@master conf]# vi hive-env.sh
[root@master conf]# vi hive-site.xml 
[root@master conf]# gedit hive-site.xml 
[root@master conf]# vi hive-site.xml 
[root@master conf]# hdfs dfs -mkdir /tmp/hive
[root@master conf]# hdfs dfs -chmod 777 /tmp/hive
[root@master conf]# hdfs dfs -mkdir -p /user/hive/warehouse
[root@master conf]# hdfs dfs -chmod 777 /user/hive/warehouse
[root@master conf]# hdfs dfs -ll
-ll: Unknown command
[root@master conf]# hdfs dfs -ls
ls: `.': No such file or directory
[root@master conf]# hdfs dfs -ls 
ls: `.': No such file or directory
[root@master conf]# schematool -initSchema -dbType derby
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/root/apache-hive/lib/log4j-slf4j-impl-2.6.2.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/root/hadoop-2.7.7/share/hadoop/common/lib/slf4j-log4j12-1.7.10.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [org.apache.logging.slf4j.Log4jLoggerFactory]
Metastore connection URL:	 jdbc:derby:;databaseName=metastore_db;create=true
Metastore Connection Driver :	 org.apache.derby.jdbc.EmbeddedDriver
Metastore connection User:	 APP
Starting metastore schema initialization to 2.3.0
Initialization script hive-schema-2.3.0.derby.sql
Initialization script completed
schemaTool completed
[root@master conf]# hdfs dfs -ls /user
Found 1 items
drwxr-xr-x   - root supergroup          0 2019-08-05 14:08 /user/hive
[root@master conf]# hdfs dfs -ls /user/hive
Found 1 items
drwxrwxrwx   - root supergroup          0 2019-08-05 14:08 /user/hive/warehouse
[root@master conf]# hdfs dfs -ls /user/hive/warehouse
[root@master conf]# hdfs dfs -ll /user/hive/warehouse
-ll: Unknown command
[root@master conf]# cd
[root@master ~]# schematool -initSchema -dbType derby
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/root/apache-hive/lib/log4j-slf4j-impl-2.6.2.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/root/hadoop-2.7.7/share/hadoop/common/lib/slf4j-log4j12-1.7.10.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [org.apache.logging.slf4j.Log4jLoggerFactory]
Metastore connection URL:	 jdbc:derby:;databaseName=metastore_db;create=true
Metastore Connection Driver :	 org.apache.derby.jdbc.EmbeddedDriver
Metastore connection User:	 APP
Starting metastore schema initialization to 2.3.0
Initialization script hive-schema-2.3.0.derby.sql
Initialization script completed
schemaTool completed
[root@master ~]# pwd
/root
[root@master ~]# hiveserver2
which: no hbase in (/root/apache-hive/bin:/root/hadoop-2.7.7/bin:/root/hadoop-2.7.7/sbin:/root/hadoop-2.7.7/bin:/root/hadoop-2.7.7/sbin:/root/hadoop-2.7.7/bin:/root/hadoop-2.7.7/sbin:/usr/local/java/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/root/bin)
2019-08-05 14:16:56: Starting HiveServer2
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/root/apache-hive/lib/log4j-slf4j-impl-2.6.2.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/root/hadoop-2.7.7/share/hadoop/common/lib/slf4j-log4j12-1.7.10.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [org.apache.logging.slf4j.Log4jLoggerFactory]
2019-08-05 14:17:09,614 Log4j2-AsyncLogger[AsyncContext@64c64813]1 ERROR Attempted to append to non-started appender LogDivertAppender
AsyncLogger error handling event seq=19, value='[ERROR calling class org.apache.logging.log4j.core.async.RingBufferLogEvent.toString(): java.lang.NullPointerException]':
org.apache.logging.log4j.core.appender.AppenderLoggingException: Attempted to append to non-started appender LogDivertAppender
	at org.apache.logging.log4j.core.config.AppenderControl.handleError(AppenderControl.java:141)
	at org.apache.logging.log4j.core.config.AppenderControl.ensureAppenderStarted(AppenderControl.java:134)
	at org.apache.logging.log4j.core.config.AppenderControl.callAppender0(AppenderControl.java:126)
	at org.apache.logging.log4j.core.config.AppenderControl.callAppenderPreventRecursion(AppenderControl.java:119)
	at org.apache.logging.log4j.core.config.AppenderControl.callAppender(AppenderControl.java:84)
	at org.apache.logging.log4j.core.config.LoggerConfig.callAppenders(LoggerConfig.java:390)
	at org.apache.logging.log4j.core.config.LoggerConfig.processLogEvent(LoggerConfig.java:375)
	at org.apache.logging.log4j.core.config.LoggerConfig.log(LoggerConfig.java:359)
	at org.apache.logging.log4j.core.config.AwaitCompletionReliabilityStrategy.log(AwaitCompletionReliabilityStrategy.java:79)
	at org.apache.logging.log4j.core.async.AsyncLogger.actualAsyncLog(AsyncLogger.java:309)
	at org.apache.logging.log4j.core.async.RingBufferLogEvent.execute(RingBufferLogEvent.java:149)
	at org.apache.logging.log4j.core.async.RingBufferLogEventHandler.onEvent(RingBufferLogEventHandler.java:45)
	at org.apache.logging.log4j.core.async.RingBufferLogEventHandler.onEvent(RingBufferLogEventHandler.java:29)
	at com.lmax.disruptor.BatchEventProcessor.run(BatchEventProcessor.java:128)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:748)
2019-08-05 14:17:09,615 Log4j2-AsyncLogger[AsyncContext@64c64813]1 ERROR Attempted to append to non-started appender LogDivertAppender
AsyncLogger error handling event seq=20, value='[ERROR calling class org.apache.logging.log4j.core.async.RingBufferLogEvent.toString(): java.lang.NullPointerException]':
org.apache.logging.log4j.core.appender.AppenderLoggingException: Attempted to append to non-started appender LogDivertAppender
	at org.apache.logging.log4j.core.config.AppenderControl.handleError(AppenderControl.java:141)
	at org.apache.logging.log4j.core.config.AppenderControl.ensureAppenderStarted(AppenderControl.java:134)
	at org.apache.logging.log4j.core.config.AppenderControl.callAppender0(AppenderControl.java:126)
	at org.apache.logging.log4j.core.config.AppenderControl.callAppenderPreventRecursion(AppenderControl.java:119)
	at org.apache.logging.log4j.core.config.AppenderControl.callAppender(AppenderControl.java:84)
	at org.apache.logging.log4j.core.config.LoggerConfig.callAppenders(LoggerConfig.java:390)
	at org.apache.logging.log4j.core.config.LoggerConfig.processLogEvent(LoggerConfig.java:375)
	at org.apache.logging.log4j.core.config.LoggerConfig.log(LoggerConfig.java:359)
	at org.apache.logging.log4j.core.config.AwaitCompletionReliabilityStrategy.log(AwaitCompletionReliabilityStrategy.java:79)
	at org.apache.logging.log4j.core.async.AsyncLogger.actualAsyncLog(AsyncLogger.java:309)
	at org.apache.logging.log4j.core.async.RingBufferLogEvent.execute(RingBufferLogEvent.java:149)
	at org.apache.logging.log4j.core.async.RingBufferLogEventHandler.onEvent(RingBufferLogEventHandler.java:45)
	at org.apache.logging.log4j.core.async.RingBufferLogEventHandler.onEvent(RingBufferLogEventHandler.java:29)
	at com.lmax.disruptor.BatchEventProcessor.run(BatchEventProcessor.java:128)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:748)
2019-08-05 14:17:09,616 Log4j2-AsyncLogger[AsyncContext@64c64813]1 ERROR Attempted to append to non-started appender LogDivertAppender
AsyncLogger error handling event seq=21, value='[ERROR calling class org.apache.logging.log4j.core.async.RingBufferLogEvent.toString(): java.lang.NullPointerException]':
org.apache.logging.log4j.core.appender.AppenderLoggingException: Attempted to append to non-started appender LogDivertAppender
	at org.apache.logging.log4j.core.config.AppenderControl.handleError(AppenderControl.java:141)
	at org.apache.logging.log4j.core.config.AppenderControl.ensureAppenderStarted(AppenderControl.java:134)
	at org.apache.logging.log4j.core.config.AppenderControl.callAppender0(AppenderControl.java:126)
	at org.apache.logging.log4j.core.config.AppenderControl.callAppenderPreventRecursion(AppenderControl.java:119)
	at org.apache.logging.log4j.core.config.AppenderControl.callAppender(AppenderControl.java:84)
	at org.apache.logging.log4j.core.config.LoggerConfig.callAppenders(LoggerConfig.java:390)
	at org.apache.logging.log4j.core.config.LoggerConfig.processLogEvent(LoggerConfig.java:375)
	at org.apache.logging.log4j.core.config.LoggerConfig.log(LoggerConfig.java:359)
	at org.apache.logging.log4j.core.config.AwaitCompletionReliabilityStrategy.log(AwaitCompletionReliabilityStrategy.java:79)
	at org.apache.logging.log4j.core.async.AsyncLogger.actualAsyncLog(AsyncLogger.java:309)
	at org.apache.logging.log4j.core.async.RingBufferLogEvent.execute(RingBufferLogEvent.java:149)
	at org.apache.logging.log4j.core.async.RingBufferLogEventHandler.onEvent(RingBufferLogEventHandler.java:45)
	at org.apache.logging.log4j.core.async.RingBufferLogEventHandler.onEvent(RingBufferLogEventHandler.java:29)
	at com.lmax.disruptor.BatchEventProcessor.run(BatchEventProcessor.java:128)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:748)
^C[root@master ~]# pwd
/root
[root@master ~]# cd conf
bash: cd: conf: 그런 파일이나 디렉터리가 없습니다
[root@master ~]# cd  $HIVE_HOME/conf
[root@master conf]# hiveserver2
which: no hbase in (/root/apache-hive/bin:/root/hadoop-2.7.7/bin:/root/hadoop-2.7.7/sbin:/root/hadoop-2.7.7/bin:/root/hadoop-2.7.7/sbin:/root/hadoop-2.7.7/bin:/root/hadoop-2.7.7/sbin:/usr/local/java/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/root/bin)
2019-08-05 14:22:08: Starting HiveServer2
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/root/apache-hive/lib/log4j-slf4j-impl-2.6.2.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/root/hadoop-2.7.7/share/hadoop/common/lib/slf4j-log4j12-1.7.10.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [org.apache.logging.slf4j.Log4jLoggerFactory]
2019-08-05 14:22:22,055 Log4j2-AsyncLogger[AsyncContext@64c64813]1 ERROR Attempted to append to non-started appender LogDivertAppender
AsyncLogger error handling event seq=17, value='[ERROR calling class org.apache.logging.log4j.core.async.RingBufferLogEvent.toString(): java.lang.NullPointerException]':
org.apache.logging.log4j.core.appender.AppenderLoggingException: Attempted to append to non-started appender LogDivertAppender
	at org.apache.logging.log4j.core.config.AppenderControl.handleError(AppenderControl.java:141)
	at org.apache.logging.log4j.core.config.AppenderControl.ensureAppenderStarted(AppenderControl.java:134)
	at org.apache.logging.log4j.core.config.AppenderControl.callAppender0(AppenderControl.java:126)
	at org.apache.logging.log4j.core.config.AppenderControl.callAppenderPreventRecursion(AppenderControl.java:119)
	at org.apache.logging.log4j.core.config.AppenderControl.callAppender(AppenderControl.java:84)
	at org.apache.logging.log4j.core.config.LoggerConfig.callAppenders(LoggerConfig.java:390)
	at org.apache.logging.log4j.core.config.LoggerConfig.processLogEvent(LoggerConfig.java:375)
	at org.apache.logging.log4j.core.config.LoggerConfig.log(LoggerConfig.java:359)
	at org.apache.logging.log4j.core.config.AwaitCompletionReliabilityStrategy.log(AwaitCompletionReliabilityStrategy.java:79)
	at org.apache.logging.log4j.core.async.AsyncLogger.actualAsyncLog(AsyncLogger.java:309)
	at org.apache.logging.log4j.core.async.RingBufferLogEvent.execute(RingBufferLogEvent.java:149)
	at org.apache.logging.log4j.core.async.RingBufferLogEventHandler.onEvent(RingBufferLogEventHandler.java:45)
	at org.apache.logging.log4j.core.async.RingBufferLogEventHandler.onEvent(RingBufferLogEventHandler.java:29)
	at com.lmax.disruptor.BatchEventProcessor.run(BatchEventProcessor.java:128)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:748)
2019-08-05 14:22:22,056 Log4j2-AsyncLogger[AsyncContext@64c64813]1 ERROR Attempted to append to non-started appender LogDivertAppender
AsyncLogger error handling event seq=18, value='[ERROR calling class org.apache.logging.log4j.core.async.RingBufferLogEvent.toString(): java.lang.NullPointerException]':
org.apache.logging.log4j.core.appender.AppenderLoggingException: Attempted to append to non-started appender LogDivertAppender
	at org.apache.logging.log4j.core.config.AppenderControl.handleError(AppenderControl.java:141)
	at org.apache.logging.log4j.core.config.AppenderControl.ensureAppenderStarted(AppenderControl.java:134)
	at org.apache.logging.log4j.core.config.AppenderControl.callAppender0(AppenderControl.java:126)
	at org.apache.logging.log4j.core.config.AppenderControl.callAppenderPreventRecursion(AppenderControl.java:119)
	at org.apache.logging.log4j.core.config.AppenderControl.callAppender(AppenderControl.java:84)
	at org.apache.logging.log4j.core.config.LoggerConfig.callAppenders(LoggerConfig.java:390)
	at org.apache.logging.log4j.core.config.LoggerConfig.processLogEvent(LoggerConfig.java:375)
	at org.apache.logging.log4j.core.config.LoggerConfig.log(LoggerConfig.java:359)
	at org.apache.logging.log4j.core.config.AwaitCompletionReliabilityStrategy.log(AwaitCompletionReliabilityStrategy.java:79)
	at org.apache.logging.log4j.core.async.AsyncLogger.actualAsyncLog(AsyncLogger.java:309)
	at org.apache.logging.log4j.core.async.RingBufferLogEvent.execute(RingBufferLogEvent.java:149)
	at org.apache.logging.log4j.core.async.RingBufferLogEventHandler.onEvent(RingBufferLogEventHandler.java:45)
	at org.apache.logging.log4j.core.async.RingBufferLogEventHandler.onEvent(RingBufferLogEventHandler.java:29)
	at com.lmax.disruptor.BatchEventProcessor.run(BatchEventProcessor.java:128)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:748)
2019-08-05 14:22:22,057 Log4j2-AsyncLogger[AsyncContext@64c64813]1 ERROR Attempted to append to non-started appender LogDivertAppender
AsyncLogger error handling event seq=19, value='[ERROR calling class org.apache.logging.log4j.core.async.RingBufferLogEvent.toString(): java.lang.NullPointerException]':
org.apache.logging.log4j.core.appender.AppenderLoggingException: Attempted to append to non-started appender LogDivertAppender
	at org.apache.logging.log4j.core.config.AppenderControl.handleError(AppenderControl.java:141)
	at org.apache.logging.log4j.core.config.AppenderControl.ensureAppenderStarted(AppenderControl.java:134)
	at org.apache.logging.log4j.core.config.AppenderControl.callAppender0(AppenderControl.java:126)
	at org.apache.logging.log4j.core.config.AppenderControl.callAppenderPreventRecursion(AppenderControl.java:119)
	at org.apache.logging.log4j.core.config.AppenderControl.callAppender(AppenderControl.java:84)
	at org.apache.logging.log4j.core.config.LoggerConfig.callAppenders(LoggerConfig.java:390)
	at org.apache.logging.log4j.core.config.LoggerConfig.processLogEvent(LoggerConfig.java:375)
	at org.apache.logging.log4j.core.config.LoggerConfig.log(LoggerConfig.java:359)
	at org.apache.logging.log4j.core.config.AwaitCompletionReliabilityStrategy.log(AwaitCompletionReliabilityStrategy.java:79)
	at org.apache.logging.log4j.core.async.AsyncLogger.actualAsyncLog(AsyncLogger.java:309)
	at org.apache.logging.log4j.core.async.RingBufferLogEvent.execute(RingBufferLogEvent.java:149)
	at org.apache.logging.log4j.core.async.RingBufferLogEventHandler.onEvent(RingBufferLogEventHandler.java:45)
	at org.apache.logging.log4j.core.async.RingBufferLogEventHandler.onEvent(RingBufferLogEventHandler.java:29)
	at com.lmax.disruptor.BatchEventProcessor.run(BatchEventProcessor.java:128)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:748)
^C[root@master conf]# cd
[root@master ~]# hiveserver2
which: no hbase in (/root/apache-hive/bin:/root/hadoop-2.7.7/bin:/root/hadoop-2.7.7/sbin:/root/hadoop-2.7.7/bin:/root/hadoop-2.7.7/sbin:/root/hadoop-2.7.7/bin:/root/hadoop-2.7.7/sbin:/usr/local/java/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/root/bin)
2019-08-05 14:24:05: Starting HiveServer2
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/root/apache-hive/lib/log4j-slf4j-impl-2.6.2.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/root/hadoop-2.7.7/share/hadoop/common/lib/slf4j-log4j12-1.7.10.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [org.apache.logging.slf4j.Log4jLoggerFactory]
^C[root@master ~]# hiveserver2
which: no hbase in (/root/apache-hive/bin:/root/hadoop-2.7.7/bin:/root/hadoop-2.7.7/sbin:/root/hadoop-2.7.7/bin:/root/hadoop-2.7.7/sbin:/root/hadoop-2.7.7/bin:/root/hadoop-2.7.7/sbin:/usr/local/java/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/root/bin)
2019-08-05 14:56:13: Starting HiveServer2
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/root/apache-hive/lib/log4j-slf4j-impl-2.6.2.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/root/hadoop-2.7.7/share/hadoop/common/lib/slf4j-log4j12-1.7.10.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [org.apache.logging.slf4j.Log4jLoggerFactory]
NoViableAltException(78@[846:1: ddlStatement : ( createDatabaseStatement | switchDatabaseStatement | dropDatabaseStatement | createTableStatement | dropTableStatement | truncateTableStatement | alterStatement | descStatement | showStatement | metastoreCheck | createViewStatement | createMaterializedViewStatement | dropViewStatement | dropMaterializedViewStatement | createFunctionStatement | createMacroStatement | createIndexStatement | dropIndexStatement | dropFunctionStatement | reloadFunctionStatement | dropMacroStatement | analyzeStatement | lockStatement | unlockStatement | lockDatabase | unlockDatabase | createRoleStatement | dropRoleStatement | ( grantPrivileges )=> grantPrivileges | ( revokePrivileges )=> revokePrivileges | showGrants | showRoleGrants | showRolePrincipals | showRoles | grantRole | revokeRole | setRole | showCurrentRole | abortTransactionStatement );])
	at org.antlr.runtime.DFA.noViableAlt(DFA.java:158)
	at org.antlr.runtime.DFA.predict(DFA.java:116)
	at org.apache.hadoop.hive.ql.parse.HiveParser.ddlStatement(HiveParser.java:3757)
	at org.apache.hadoop.hive.ql.parse.HiveParser.execStatement(HiveParser.java:2382)
	at org.apache.hadoop.hive.ql.parse.HiveParser.statement(HiveParser.java:1333)
	at org.apache.hadoop.hive.ql.parse.ParseDriver.parse(ParseDriver.java:208)
	at org.apache.hadoop.hive.ql.parse.ParseUtils.parse(ParseUtils.java:77)
	at org.apache.hadoop.hive.ql.parse.ParseUtils.parse(ParseUtils.java:70)
	at org.apache.hadoop.hive.ql.Driver.compile(Driver.java:468)
	at org.apache.hadoop.hive.ql.Driver.compileInternal(Driver.java:1317)
	at org.apache.hadoop.hive.ql.Driver.compileAndRespond(Driver.java:1295)
	at org.apache.hive.service.cli.operation.SQLOperation.prepare(SQLOperation.java:204)
	at org.apache.hive.service.cli.operation.SQLOperation.runInternal(SQLOperation.java:290)
	at org.apache.hive.service.cli.operation.Operation.run(Operation.java:320)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:530)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:517)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:310)
	at org.apache.hive.service.cli.thrift.ThriftCLIService.ExecuteStatement(ThriftCLIService.java:530)
	at org.apache.hive.service.rpc.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1437)
	at org.apache.hive.service.rpc.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1422)
	at org.apache.thrift.ProcessFunction.process(ProcessFunction.java:39)
	at org.apache.thrift.TBaseProcessor.process(TBaseProcessor.java:39)
	at org.apache.hive.service.auth.TSetIpAddressProcessor.process(TSetIpAddressProcessor.java:56)
	at org.apache.thrift.server.TThreadPoolServer$WorkerProcess.run(TThreadPoolServer.java:286)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:748)
FAILED: ParseException line 1:5 cannot recognize input near 'show' 'database' 's' in ddl statement
OK
OK
OK
OK
OK
OK
Loading data to table mydb.clicklog
OK
OK
FAILED: SemanticException [Error 10001]: Line 1:16 Table not found 'click'
OK
WARNING: Hive-on-MR is deprecated in Hive 2 and may not be available in the future versions. Consider using a different execution engine (i.e. spark, tez) or using Hive 1.X releases.
Query ID = root_20190805154434_ce55457b-a722-44d1-bec0-9991059b1848
Total jobs = 2
Launching Job 1 out of 2
Number of reduce tasks not specified. Estimated from input data size: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1564964653512_0001, Tracking URL = http://master:8088/proxy/application_1564964653512_0001/
Kill Command = /root/hadoop-2.7.7/bin/hadoop job  -kill job_1564964653512_0001
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 1
2019-08-05 15:44:50,009 Stage-1 map = 0%,  reduce = 0%
2019-08-05 15:44:59,707 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 1.28 sec
2019-08-05 15:45:02,164 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 1.28 sec
MapReduce Total cumulative CPU time: 1 seconds 280 msec
Ended Job = job_1564964653512_0001 with errors
Error during job, obtaining debugging information...
Examining task ID: task_1564964653512_0001_m_000000 (and more) from job job_1564964653512_0001

Task with the most failures(1): 
-----
Task ID:
  task_1564964653512_0001_r_000000

URL:
  http://master:8088/taskdetails.jsp?jobid=job_1564964653512_0001&tipid=task_1564964653512_0001_r_000000
-----
Diagnostic Messages for this Task:
Task KILL is received. Killing attempt!

FAILED: Operation cancelled
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 1   Cumulative CPU: 1.28 sec   HDFS Read: 18190 HDFS Write: 0 FAIL
Total MapReduce CPU Time Spent: 1 seconds 280 msec
WARNING: Hive-on-MR is deprecated in Hive 2 and may not be available in the future versions. Consider using a different execution engine (i.e. spark, tez) or using Hive 1.X releases.
Query ID = root_20190805154511_6088eb51-38ca-4176-ac5c-15f540eb174d
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks not specified. Estimated from input data size: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1564964653512_0002, Tracking URL = http://master:8088/proxy/application_1564964653512_0002/
Kill Command = /root/hadoop-2.7.7/bin/hadoop job  -kill job_1564964653512_0002
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 1
2019-08-05 15:45:21,339 Stage-1 map = 0%,  reduce = 0%
2019-08-05 15:45:26,321 Stage-1 map = 100%,  reduce = 100%
Ended Job = job_1564964653512_0002 with errors
Error during job, obtaining debugging information...
Examining task ID: task_1564964653512_0002_m_000000 (and more) from job job_1564964653512_0002

Task with the most failures(1): 
-----
Task ID:
  task_1564964653512_0002_m_000000

URL:
  http://master:8088/taskdetails.jsp?jobid=job_1564964653512_0002&tipid=task_1564964653512_0002_m_000000
-----
Diagnostic Messages for this Task:
Task KILL is received. Killing attempt!
Container killed by the ApplicationMaster.
Container killed on request. Exit code is 143
Container exited with a non-zero exit code 143


FAILED: Operation cancelled
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 1   HDFS Read: 0 HDFS Write: 0 FAIL
Total MapReduce CPU Time Spent: 0 msec
OK
WARNING: Hive-on-MR is deprecated in Hive 2 and may not be available in the future versions. Consider using a different execution engine (i.e. spark, tez) or using Hive 1.X releases.
Query ID = root_20190805155743_36b7eb07-8d25-4652-ad2d-e635f262cc2a
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks determined at compile time: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1564964653512_0003, Tracking URL = http://master:8088/proxy/application_1564964653512_0003/
Kill Command = /root/hadoop-2.7.7/bin/hadoop job  -kill job_1564964653512_0003
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 1
2019-08-05 15:57:52,201 Stage-1 map = 0%,  reduce = 0%
2019-08-05 15:58:00,580 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 1.56 sec
2019-08-05 15:58:07,927 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 3.2 sec
MapReduce Total cumulative CPU time: 3 seconds 200 msec
Ended Job = job_1564964653512_0003
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 1   Cumulative CPU: 3.2 sec   HDFS Read: 21252 HDFS Write: 22687 SUCCESS
Total MapReduce CPU Time Spent: 3 seconds 200 msec
OK
WARNING: Hive-on-MR is deprecated in Hive 2 and may not be available in the future versions. Consider using a different execution engine (i.e. spark, tez) or using Hive 1.X releases.
Query ID = root_20190805155926_ca66d22d-ce11-4b81-b9c0-18c405f0446e
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks not specified. Estimated from input data size: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1564964653512_0004, Tracking URL = http://master:8088/proxy/application_1564964653512_0004/
Kill Command = /root/hadoop-2.7.7/bin/hadoop job  -kill job_1564964653512_0004
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 1
2019-08-05 15:59:35,543 Stage-1 map = 0%,  reduce = 0%
2019-08-05 15:59:43,115 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 1.5 sec
2019-08-05 15:59:50,594 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 3.14 sec
MapReduce Total cumulative CPU time: 3 seconds 140 msec
Ended Job = job_1564964653512_0004
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 1   Cumulative CPU: 3.14 sec   HDFS Read: 22466 HDFS Write: 187 SUCCESS
Total MapReduce CPU Time Spent: 3 seconds 140 msec
OK
WARNING: Hive-on-MR is deprecated in Hive 2 and may not be available in the future versions. Consider using a different execution engine (i.e. spark, tez) or using Hive 1.X releases.
Query ID = root_20190805160043_a028752a-e636-4089-b484-40576d8d69bb
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks not specified. Estimated from input data size: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1564964653512_0005, Tracking URL = http://master:8088/proxy/application_1564964653512_0005/
Kill Command = /root/hadoop-2.7.7/bin/hadoop job  -kill job_1564964653512_0005
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 1
2019-08-05 16:00:52,290 Stage-1 map = 0%,  reduce = 0%
2019-08-05 16:00:59,581 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 1.55 sec
2019-08-05 16:01:08,966 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 3.16 sec
MapReduce Total cumulative CPU time: 3 seconds 160 msec
Ended Job = job_1564964653512_0005
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 1   Cumulative CPU: 3.16 sec   HDFS Read: 22291 HDFS Write: 385 SUCCESS
Total MapReduce CPU Time Spent: 3 seconds 160 msec
OK
FAILED: SemanticException [Error 10001]: Line 2:11 Table not found 'subway'
NoViableAltException(153@[])
	at org.apache.hadoop.hive.ql.parse.HiveParser.statement(HiveParser.java:1300)
	at org.apache.hadoop.hive.ql.parse.ParseDriver.parse(ParseDriver.java:208)
	at org.apache.hadoop.hive.ql.parse.ParseUtils.parse(ParseUtils.java:77)
	at org.apache.hadoop.hive.ql.parse.ParseUtils.parse(ParseUtils.java:70)
	at org.apache.hadoop.hive.ql.Driver.compile(Driver.java:468)
	at org.apache.hadoop.hive.ql.Driver.compileInternal(Driver.java:1317)
	at org.apache.hadoop.hive.ql.Driver.compileAndRespond(Driver.java:1295)
	at org.apache.hive.service.cli.operation.SQLOperation.prepare(SQLOperation.java:204)
	at org.apache.hive.service.cli.operation.SQLOperation.runInternal(SQLOperation.java:290)
	at org.apache.hive.service.cli.operation.Operation.run(Operation.java:320)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:530)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:517)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:310)
	at org.apache.hive.service.cli.thrift.ThriftCLIService.ExecuteStatement(ThriftCLIService.java:530)
	at org.apache.hive.service.rpc.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1437)
	at org.apache.hive.service.rpc.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1422)
	at org.apache.thrift.ProcessFunction.process(ProcessFunction.java:39)
	at org.apache.thrift.TBaseProcessor.process(TBaseProcessor.java:39)
	at org.apache.hive.service.auth.TSetIpAddressProcessor.process(TSetIpAddressProcessor.java:56)
	at org.apache.thrift.server.TThreadPoolServer$WorkerProcess.run(TThreadPoolServer.java:286)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:748)
FAILED: ParseException line 1:0 cannot recognize input near 'into' 'table' 'subway'
FAILED: SemanticException [Error 10001]: Line 1:78 Table not found 'subway'
FAILED: SemanticException [Error 10001]: Line 1:78 Table not found 'subway'
OK
FAILED: SemanticException Line 1:23 Invalid path ''/root/hadoop/sampledata/subway_line_1.csv'': No files matching path file:/root/hadoop/sampledata/subway_line_1.csv
Loading data to table mydb.subway partition (linep=line_1)
OK
Loading data to table mydb.subway partition (linep=line_2)
OK
Loading data to table mydb.subway partition (linep=line_3)
OK
Loading data to table mydb.subway partition (linep=line_4)
OK
OK
OK
OK
WARNING: Hive-on-MR is deprecated in Hive 2 and may not be available in the future versions. Consider using a different execution engine (i.e. spark, tez) or using Hive 1.X releases.
Query ID = root_20190805165649_f17cce35-257b-4019-853b-bd7e2cf2f9d5
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks not specified. Estimated from input data size: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1564964653512_0006, Tracking URL = http://master:8088/proxy/application_1564964653512_0006/
Kill Command = /root/hadoop-2.7.7/bin/hadoop job  -kill job_1564964653512_0006
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 1
2019-08-05 16:56:59,329 Stage-1 map = 0%,  reduce = 0%
2019-08-05 16:57:07,683 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 1.55 sec
2019-08-05 16:57:15,066 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 3.18 sec
MapReduce Total cumulative CPU time: 3 seconds 180 msec
Ended Job = job_1564964653512_0006
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 1   Cumulative CPU: 3.18 sec   HDFS Read: 22291 HDFS Write: 385 SUCCESS
Total MapReduce CPU Time Spent: 3 seconds 180 msec
OK
OK
OK
OK
OK
NoViableAltException(24@[])
	at org.apache.hadoop.hive.ql.parse.HiveParser.statement(HiveParser.java:1300)
	at org.apache.hadoop.hive.ql.parse.ParseDriver.parse(ParseDriver.java:208)
	at org.apache.hadoop.hive.ql.parse.ParseUtils.parse(ParseUtils.java:77)
	at org.apache.hadoop.hive.ql.parse.ParseUtils.parse(ParseUtils.java:70)
	at org.apache.hadoop.hive.ql.Driver.compile(Driver.java:468)
	at org.apache.hadoop.hive.ql.Driver.compileInternal(Driver.java:1317)
	at org.apache.hadoop.hive.ql.Driver.compileAndRespond(Driver.java:1295)
	at org.apache.hive.service.cli.operation.SQLOperation.prepare(SQLOperation.java:204)
	at org.apache.hive.service.cli.operation.SQLOperation.runInternal(SQLOperation.java:290)
	at org.apache.hive.service.cli.operation.Operation.run(Operation.java:320)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:530)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:517)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:310)
	at org.apache.hive.service.cli.thrift.ThriftCLIService.ExecuteStatement(ThriftCLIService.java:530)
	at org.apache.hive.service.rpc.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1437)
	at org.apache.hive.service.rpc.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1422)
	at org.apache.thrift.ProcessFunction.process(ProcessFunction.java:39)
	at org.apache.thrift.TBaseProcessor.process(TBaseProcessor.java:39)
	at org.apache.hive.service.auth.TSetIpAddressProcessor.process(TSetIpAddressProcessor.java:56)
	at org.apache.thrift.server.TThreadPoolServer$WorkerProcess.run(TThreadPoolServer.java:286)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:748)
FAILED: ParseException line 1:0 cannot recognize input near 'describetest' '<EOF>' '<EOF>'
OK
OK
OK
NoViableAltException(24@[])
	at org.apache.hadoop.hive.ql.parse.HiveParser.statement(HiveParser.java:1300)
	at org.apache.hadoop.hive.ql.parse.ParseDriver.parse(ParseDriver.java:208)
	at org.apache.hadoop.hive.ql.parse.ParseUtils.parse(ParseUtils.java:77)
	at org.apache.hadoop.hive.ql.parse.ParseUtils.parse(ParseUtils.java:70)
	at org.apache.hadoop.hive.ql.Driver.compile(Driver.java:468)
	at org.apache.hadoop.hive.ql.Driver.compileInternal(Driver.java:1317)
	at org.apache.hadoop.hive.ql.Driver.compileAndRespond(Driver.java:1295)
	at org.apache.hive.service.cli.operation.SQLOperation.prepare(SQLOperation.java:204)
	at org.apache.hive.service.cli.operation.SQLOperation.runInternal(SQLOperation.java:290)
	at org.apache.hive.service.cli.operation.Operation.run(Operation.java:320)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:530)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:517)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:310)
	at org.apache.hive.service.cli.thrift.ThriftCLIService.ExecuteStatement(ThriftCLIService.java:530)
	at org.apache.hive.service.rpc.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1437)
	at org.apache.hive.service.rpc.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1422)
	at org.apache.thrift.ProcessFunction.process(ProcessFunction.java:39)
	at org.apache.thrift.TBaseProcessor.process(TBaseProcessor.java:39)
	at org.apache.hive.service.auth.TSetIpAddressProcessor.process(TSetIpAddressProcessor.java:56)
	at org.apache.thrift.server.TThreadPoolServer$WorkerProcess.run(TThreadPoolServer.java:286)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:748)
FAILED: ParseException line 1:0 cannot recognize input near 'describeclicklog' '<EOF>' '<EOF>'
OK
OK
OK
NoViableAltException(24@[])
	at org.apache.hadoop.hive.ql.parse.HiveParser.statement(HiveParser.java:1300)
	at org.apache.hadoop.hive.ql.parse.ParseDriver.parse(ParseDriver.java:208)
	at org.apache.hadoop.hive.ql.parse.ParseUtils.parse(ParseUtils.java:77)
	at org.apache.hadoop.hive.ql.parse.ParseUtils.parse(ParseUtils.java:70)
	at org.apache.hadoop.hive.ql.Driver.compile(Driver.java:468)
	at org.apache.hadoop.hive.ql.Driver.compileInternal(Driver.java:1317)
	at org.apache.hadoop.hive.ql.Driver.compileAndRespond(Driver.java:1295)
	at org.apache.hive.service.cli.operation.SQLOperation.prepare(SQLOperation.java:204)
	at org.apache.hive.service.cli.operation.SQLOperation.runInternal(SQLOperation.java:290)
	at org.apache.hive.service.cli.operation.Operation.run(Operation.java:320)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:530)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:517)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:310)
	at org.apache.hive.service.cli.thrift.ThriftCLIService.ExecuteStatement(ThriftCLIService.java:530)
	at org.apache.hive.service.rpc.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1437)
	at org.apache.hive.service.rpc.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1422)
	at org.apache.thrift.ProcessFunction.process(ProcessFunction.java:39)
	at org.apache.thrift.TBaseProcessor.process(TBaseProcessor.java:39)
	at org.apache.hive.service.auth.TSetIpAddressProcessor.process(TSetIpAddressProcessor.java:56)
	at org.apache.thrift.server.TThreadPoolServer$WorkerProcess.run(TThreadPoolServer.java:286)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:748)
FAILED: ParseException line 1:0 cannot recognize input near 'clicklog' '<EOF>' '<EOF>'
OK
OK
OK
OK
Loading data to table mydb.clicklog
OK
OK
OK
OK


```

