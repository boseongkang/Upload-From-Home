beeline에서 table 만들고 select해서 결과물 보는 코드 

```
[root@master ~]# beeline -u  jdbc:hive2://192.168.111.120:10000/mydb -n root -p password
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/root/apache-hive/lib/log4j-slf4j-impl-2.6.2.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/root/hadoop-2.7.7/share/hadoop/common/lib/slf4j-log4j12-1.7.10.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [org.apache.logging.slf4j.Log4jLoggerFactory]
Connecting to jdbc:hive2://192.168.111.120:10000/mydb
Connected to: Apache Hive (version 2.3.5)
Driver: Hive JDBC (version 2.3.5)
Transaction isolation: TRANSACTION_REPEATABLE_READ
Beeline version 2.3.5 by Apache Hive
0: jdbc:hive2://192.168.111.120:10000/mydb> create table oneperson(area1 string, area2 string, cnt int) row format delimited fields terminated by ',' lines terminated by '\n\ stored as textfile;
Error: Error while compiling statement: FAILED: ParseException line 1:128 mismatched input 'n' expecting StringLiteral near 'by' in table row format's line separator (state=42000,code=40000)
0: jdbc:hive2://192.168.111.120:10000/mydb> create table oneperson(area1 string, area2 string, cnt int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile;
No rows affected (1.054 seconds)
0: jdbc:hive2://192.168.111.120:10000/mydb> load data local inpath '/root/sampledata/one_person_households.csv' into table oneperson;
No rows affected (1.938 seconds)
0: jdbc:hive2://192.168.111.120:10000/mydb> select * from oneperson limit 5;
+------------------+------------------+----------------+
| oneperson.area1  | oneperson.area2  | oneperson.cnt  |
+------------------+------------------+----------------+
| 강남구              | 개포1동             | 1748           |
| 강남구              | 개포2동             | 2194           |
| 강남구              | 개포4동             | 2408           |
| 강남구              | 논현1동             | 6419           |
| 강남구              | 논현2동             | 4063           |
+------------------+------------------+----------------+
5 rows selected (0.511 seconds)
0: jdbc:hive2://192.168.111.120:10000/mydb> !quit
Closing: 0: jdbc:hive2://192.168.111.120:10000/mydb
[root@master ~]# 


```

