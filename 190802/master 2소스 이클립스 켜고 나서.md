```
[root@master ~]# cd mapreduce
bash: cd: mapreduce: 그런 파일이나 디렉터리가 없습니다
[root@master ~]# ll
합계 24
-rw-------.  1 root   root 1516  7월 31 19:25 anaconda-ks.cfg
drwxrwxr-x.  8 root   root 4096  8월  2 16:03 eclipse
drwxr-xr-x.  4 root   root   39  8월  1 11:14 eclipse-workspace
drwxr-xr-x. 11 centos ftp  4096  7월 31 17:39 hadoop-2.7.7
-rw-r--r--.  1 root   root 1567  7월 31 10:33 initial-setup-ks.cfg
drwxr-xr-x.  2 root   root 4096  8월  2 13:38 sampledata
drwxr-xr-x.  2 root   root 4096  8월  1 11:08 tools
drwxr-xr-x.  2 root   root    6  7월 31 10:35 공개
drwxr-xr-x.  2 root   root    6  7월 31 10:35 다운로드
drwxr-xr-x.  2 root   root    6  7월 31 10:35 문서
drwxr-xr-x.  2 root   root    6  7월 31 10:35 바탕화면
drwxr-xr-x.  2 root   root    6  7월 31 10:35 비디오
drwxr-xr-x.  3 root   root   66  7월 31 14:35 사진
drwxr-xr-x.  2 root   root    6  7월 31 10:35 서식
drwxr-xr-x.  2 root   root    6  7월 31 10:35 음악
[root@master ~]# cd eclipse
[root@master eclipse]# ll
합계 592
-rw-rw-r--.   1 root root 280625 12월 14  2018 artifacts.xml
drwxrwxr-x.  11 root root   4096  8월  2 16:03 configuration
drwxrwxr-x.   2 root root      6 12월 14  2018 dropins
-rwxr-xr-x.   1 root root  61176 12월  7  2018 eclipse
-rw-rw-r--.   1 root root    628 12월 14  2018 eclipse.ini
drwxrwxr-x. 170 root root  12288 12월 14  2018 features
-rwxr-xr-x.   1 root root 140566 12월  7  2018 icon.xpm
drwxrwxr-x.   4 root root   4096  8월  2 16:04 p2
drwxrwxr-x.  23 root root  69632 12월 14  2018 plugins
drwxrwxr-x.   2 root root     32 12월 14  2018 readme
[root@master eclipse]# cd 
[root@master ~]# ;ll
bash: syntax error near unexpected token `;'
[root@master ~]# ll
합계 24
-rw-------.  1 root   root 1516  7월 31 19:25 anaconda-ks.cfg
drwxrwxr-x.  8 root   root 4096  8월  2 16:03 eclipse
drwxr-xr-x.  4 root   root   39  8월  1 11:14 eclipse-workspace
drwxr-xr-x. 11 centos ftp  4096  7월 31 17:39 hadoop-2.7.7
-rw-r--r--.  1 root   root 1567  7월 31 10:33 initial-setup-ks.cfg
drwxr-xr-x.  2 root   root 4096  8월  2 13:38 sampledata
drwxr-xr-x.  2 root   root 4096  8월  1 11:08 tools
drwxr-xr-x.  2 root   root    6  7월 31 10:35 공개
drwxr-xr-x.  2 root   root    6  7월 31 10:35 다운로드
drwxr-xr-x.  2 root   root    6  7월 31 10:35 문서
drwxr-xr-x.  2 root   root    6  7월 31 10:35 바탕화면
drwxr-xr-x.  2 root   root    6  7월 31 10:35 비디오
drwxr-xr-x.  3 root   root   66  7월 31 14:35 사진
drwxr-xr-x.  2 root   root    6  7월 31 10:35 서식
drwxr-xr-x.  2 root   root    6  7월 31 10:35 음악
[root@master ~]# cd hadoop-2.7.7/
[root@master hadoop-2.7.7]# ll
합계 124
-rw-r--r--. 1 centos ftp  86424  7월 19  2018 LICENSE.txt
-rw-r--r--. 1 centos ftp  14978  7월 19  2018 NOTICE.txt
-rw-r--r--. 1 centos ftp   1366  7월 19  2018 README.txt
drwxr-xr-x. 2 centos ftp   4096  7월 19  2018 bin
drwxr-xr-x. 3 centos ftp     19  7월 19  2018 etc
drwxr-xr-x. 3 root   root    17  7월 31 17:39 hdfs
drwxr-xr-x. 2 centos ftp    101  7월 19  2018 include
drwxr-xr-x. 3 centos ftp     19  7월 19  2018 lib
drwxr-xr-x. 2 centos ftp   4096  7월 19  2018 libexec
drwxr-xr-x. 2 root   root  4096  8월  2 13:12 logs
drwxr-xr-x. 2 centos ftp   4096  7월 19  2018 sbin
drwxr-xr-x. 4 centos ftp     29  7월 19  2018 share
[root@master hadoop-2.7.7]# cd mapreduce
bash: cd: mapreduce: 그런 파일이나 디렉터리가 없습니다
[root@master hadoop-2.7.7]# cd share
[root@master share]# pwd
/root/hadoop-2.7.7/share
[root@master share]# cd hadoop
[root@master hadoop]# pwd
/root/hadoop-2.7.7/share/hadoop
[root@master hadoop]# cd mapreduce
[root@master mapreduce]# pwd
/root/hadoop-2.7.7/share/hadoop/mapreduce
[root@master mapreduce]# hdfs dfs -ls /output/result
[root@master mapreduce]# hdfs dfs -ls /output/result
[root@master mapreduce]# hdfs dfs -ls /output/result
[root@master mapreduce]# hdfs dfs -ls /output
Found 5 items
drwxr-xr-x   - root supergroup          0 2019-08-02 16:16 /output/result
drwxr-xr-x   - root supergroup          0 2019-08-02 13:29 /output/test1
drwxr-xr-x   - root supergroup          0 2019-08-02 13:43 /output/test2
drwxr-xr-x   - root supergroup          0 2019-08-02 14:21 /output/test2008
drwxr-xr-x   - root supergroup          0 2019-08-02 14:24 /output/test2008_1
[root@master mapreduce]# hdfs dfs -rm /output/result
rm: `/output/result': Is a directory
[root@master mapreduce]# hdfs dfs -rmdir /output/result
[root@master mapreduce]# hdfs dfs -ls /output
Found 4 items
drwxr-xr-x   - root supergroup          0 2019-08-02 13:29 /output/test1
drwxr-xr-x   - root supergroup          0 2019-08-02 13:43 /output/test2
drwxr-xr-x   - root supergroup          0 2019-08-02 14:21 /output/test2008
drwxr-xr-x   - root supergroup          0 2019-08-02 14:24 /output/test2008_1
[root@master mapreduce]# hdfs dfs -ls /output/result
[root@master mapreduce]# hdfs dfs -rmdir /output/result
[root@master mapreduce]# hdfs dfs -ls /output/result
Found 2 items
-rw-r--r--   3 root supergroup          0 2019-08-02 16:23 /output/result/_SUCCESS
-rw-r--r--   3 root supergroup         67 2019-08-02 16:23 /output/result/part-r-00000
[root@master mapreduce]# hdfs dfs -cat /output/result
cat: `/output/result': Is a directory
[root@master mapreduce]# hdfs dfs -cat /output/result/part-r-00000
apple	6
banana	8
cherry	8
grape	2
orange	6
peach	8
pear	5
tomato	5
[root@master mapreduce]# hdfs dfs -ls /output
Found 6 items
drwxr-xr-x   - root supergroup          0 2019-08-02 16:37 /output/exer_out1
drwxr-xr-x   - root supergroup          0 2019-08-02 16:23 /output/result
drwxr-xr-x   - root supergroup          0 2019-08-02 13:29 /output/test1
drwxr-xr-x   - root supergroup          0 2019-08-02 13:43 /output/test2
drwxr-xr-x   - root supergroup          0 2019-08-02 14:21 /output/test2008
drwxr-xr-x   - root supergroup          0 2019-08-02 14:24 /output/test2008_1
[root@master mapreduce]# hdfs dfs -ls /output/exer_out1
Found 2 items
-rw-r--r--   3 root supergroup          0 2019-08-02 16:37 /output/exer_out1/_SUCCESS
-rw-r--r--   3 root supergroup         67 2019-08-02 16:37 /output/exer_out1/part-r-00000
[root@master mapreduce]# hdfs dfs -cat /output/exer_out1/part-r-00000
apple	6
banana	8
cherry	8
grape	2
orange	6
peach	8
pear	5
tomato	5
[root@master mapreduce]# hdfs dfs -rmdir /output/exer_out1
rmdir: `/output/exer_out1': Directory is not empty
[root@master mapreduce]# hdfs dfs -rmdir -r /output/exer_out1
-rmdir: Illegal option -r
Usage: hadoop fs [generic options] -rmdir [--ignore-fail-on-non-empty] <dir> ...
[root@master mapreduce]# hdfs dfs -rmdir /output/exer_out1
rmdir: `/output/exer_out1': Directory is not empty
[root@master mapreduce]# hdfs dfs -rm /output/exer_out1/part-r-00000
19/08/02 16:42:46 INFO fs.TrashPolicyDefault: Namenode trash configuration: Deletion interval = 0 minutes, Emptier interval = 0 minutes.
Deleted /output/exer_out1/part-r-00000
[root@master mapreduce]# hdfs dfs -cat /output/exer_out1/part-r-00000
cat: `/output/exer_out1/part-r-00000': No such file or directory
[root@master mapreduce]# hdfs dfs -ls /output
Found 6 items
drwxr-xr-x   - root supergroup          0 2019-08-02 16:42 /output/exer_out1
drwxr-xr-x   - root supergroup          0 2019-08-02 16:23 /output/result
drwxr-xr-x   - root supergroup          0 2019-08-02 13:29 /output/test1
drwxr-xr-x   - root supergroup          0 2019-08-02 13:43 /output/test2
drwxr-xr-x   - root supergroup          0 2019-08-02 14:21 /output/test2008
drwxr-xr-x   - root supergroup          0 2019-08-02 14:24 /output/test2008_1
[root@master mapreduce]# hdfs dfs -rmdir /output/exer_out1
rmdir: `/output/exer_out1': Directory is not empty
[root@master mapreduce]# hdfs dfs -ls /output/exer_out1
Found 1 items
-rw-r--r--   3 root supergroup          0 2019-08-02 16:37 /output/exer_out1/_SUCCESS
[root@master mapreduce]# hdfs dfs -rm /output/exer_out1/_SUCCESS
19/08/02 16:44:10 INFO fs.TrashPolicyDefault: Namenode trash configuration: Deletion interval = 0 minutes, Emptier interval = 0 minutes.
Deleted /output/exer_out1/_SUCCESS
[root@master mapreduce]# hdfs dfs -ls /output
Found 6 items
drwxr-xr-x   - root supergroup          0 2019-08-02 16:44 /output/exer_out1
drwxr-xr-x   - root supergroup          0 2019-08-02 16:23 /output/result
drwxr-xr-x   - root supergroup          0 2019-08-02 13:29 /output/test1
drwxr-xr-x   - root supergroup          0 2019-08-02 13:43 /output/test2
drwxr-xr-x   - root supergroup          0 2019-08-02 14:21 /output/test2008
drwxr-xr-x   - root supergroup          0 2019-08-02 14:24 /output/test2008_1
[root@master mapreduce]# hdfs dfs -rm /output/exer_out1
rm: `/output/exer_out1': Is a directory
[root@master mapreduce]# hdfs dfs -rmdir /output/exer_out1
[root@master mapreduce]# hdfs dfs -ls /output
Found 5 items
drwxr-xr-x   - root supergroup          0 2019-08-02 16:23 /output/result
drwxr-xr-x   - root supergroup          0 2019-08-02 13:29 /output/test1
drwxr-xr-x   - root supergroup          0 2019-08-02 13:43 /output/test2
drwxr-xr-x   - root supergroup          0 2019-08-02 14:21 /output/test2008
drwxr-xr-x   - root supergroup          0 2019-08-02 14:24 /output/test2008_1
[root@master mapreduce]# hdfs dfs -ls /output
Found 6 items
drwxr-xr-x   - root supergroup          0 2019-08-02 16:54 /output/exer_out1
drwxr-xr-x   - root supergroup          0 2019-08-02 16:23 /output/result
drwxr-xr-x   - root supergroup          0 2019-08-02 13:29 /output/test1
drwxr-xr-x   - root supergroup          0 2019-08-02 13:43 /output/test2
drwxr-xr-x   - root supergroup          0 2019-08-02 14:21 /output/test2008
drwxr-xr-x   - root supergroup          0 2019-08-02 14:24 /output/test2008_1
[root@master mapreduce]# hdfs dfs -ls /output/exer_out1
Found 2 items
-rw-r--r--   3 root supergroup          0 2019-08-02 16:54 /output/exer_out1/_SUCCESS
-rw-r--r--   3 root supergroup         31 2019-08-02 16:54 /output/exer_out1/part-r-00000
[root@master mapreduce]# hdfs dfs -ls /output/exer_out1/part-r-00000
-rw-r--r--   3 root supergroup         31 2019-08-02 16:54 /output/exer_out1/part-r-00000
[root@master mapreduce]# hdfs dfs -cat /output/exer_out1/part-r-00000
apple	6
grape	2
peach	8
pear	5
[root@master mapreduce]# hdfs dfs -cat /output/exer_out2/part-r-00000
apple	6
grape	2
peach	8
pear	5
[root@master mapreduce]# hdfs dfs -rmr /output/exer_out2
rmr: DEPRECATED: Please use 'rm -r' instead.
19/08/02 17:32:31 INFO fs.TrashPolicyDefault: Namenode trash configuration: Deletion interval = 0 minutes, Emptier interval = 0 minutes.
Deleted /output/exer_out2
[root@master mapreduce]# hdfs dfs -ls /output
Found 6 items
drwxr-xr-x   - root supergroup          0 2019-08-02 16:54 /output/exer_out1
drwxr-xr-x   - root supergroup          0 2019-08-02 16:23 /output/result
drwxr-xr-x   - root supergroup          0 2019-08-02 13:29 /output/test1
drwxr-xr-x   - root supergroup          0 2019-08-02 13:43 /output/test2
drwxr-xr-x   - root supergroup          0 2019-08-02 14:21 /output/test2008
drwxr-xr-x   - root supergroup          0 2019-08-02 14:24 /output/test2008_1
[root@master mapreduce]# hdfs dfs -cat /output/exer_out2/part-r-00000
apple	6
banana	8
cherry	8
orange	6
peach	8
pear	5
tomato	5
[root@master mapreduce]# 

```

