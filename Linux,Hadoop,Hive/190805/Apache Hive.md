## 하둡 

---- 

### 맵리듀스

MapReduce는 구글에서 대용량 데이터 처리를
분산 병렬 컴퓨팅에서 처리하기 위한 목적으로 제작하여 2004년 발표한 소프트웨어 프레임워크다. 이 프레임워크는 페타바이트 이상의 대용량 데이터를 신뢰도가 낮은 컴퓨터로 구성된 클러스터 환경에서 병렬 처리를 지원하기 위해서 개발되었다.

MapReduce는 Hadoop 클러스터의 데이터를 처리하기 위한 시스템으로 총 2개(Map, Reduce)의 단계로 구성된다. Map과 Reduce 사이에는 shuffle과 sort라는 단계가 존재한다. 각 Map task는 전체 데이터 셋에 대해서 별개의 부분에 대한 작업을 수행하게 되는데, 기본적으로 하나의 HDFS block을 대상으로 수행하게 된다. 모든 Map 태스크가 종료되면, mapReduce 시스템은 중간(intermediate) 데이터를 Reduce 단계를 수행할 노드로 분산하여 전송한다. 

Distributed File System에서 수행되는 MapReduce 작업이 끝나면 HDFS에 파일이 써지고, MapReduce 작업이 시작할 때는 HDFS로 부터 파일을 가져오는 작업이 수행된다.

---

### 맵리듀스 정리

MapReduce는 데이터를 개별로 가공 및 필터링하거나, 어떤 키값에 기반해 데이터를 분류하거나, 분류한 데이터로 통계치를 계산하는 등, 수많은 데이터 처리에서 사용되고 있는 기법들을 일반화 하고 있다. map() 함수와 reduce() 함수는 한 번에 처리할 수 있는 데이터와 데이터 전달 방법 등이 다르다.

map() 함수는 처리 대상 데이터 전체를 하나씩, 하나씩 처리한다. 처리대상 데이터간에 의존관계가 없고 독립적으로 실행 가능하며 처리나 순서를 고려하지 않아도 되는 처리에 적합하다.(전처리)

reduce() 함수에는 키와 연관된 복수의 데이터가 전달된다. 또한 reduce() 함수에 전달되는 데이터는 키값으로 정렬되어 있다. 그룹화된 복수의 데이터를 필요로 하는 처리 또는 순서를 고려해야 하는 처리에 적합하다.(그룹별 합계)

---

### YARN (Yet Another Resource Negotiator)

Hadoop은 크게 두 가지 컴포넌트로 구성되는데 하나는 파일을 저장할 수 있는 분산 파일 시스템인 HDFS(Hadoop
Distributed File System)와 분산 컴퓨팅 환경을 제공하는 YARN(Yet Another Resource Negotiator) 이다.

**Resource Manager** : Master 호스트에서 뜨는 데몬으로서 client 와 통신하는 역할을 한다. 그리고 클러스터에 있는 Worker 호스트들의 Resource 를 트래킹하여 Job 실행에 필요한 Node Manager 들을 컨트롤 하는 역할을 한다.

**Node Manager** : Worker 호스트에 존재하는 데몬 으로서 실제로 job 을 처리하고 결과를 전달해주는 역할을 한다. 사용자가 요청한 프로그램을 실행하는 Container를 fork 시키고 Container를 모니터링 Container 장애 상황 또는 Container가 요청한 리소스보다 많이 사용하고 있는지 감시한다.

**Container** : YARN 에서 쓰는 용어로서 리소스를 점유하는 하나의 단위이다. job 의 요청이 여러 개의 Map/Reduce Task 로 분리되어 Node Manager 에게 할당되면 Node Manager 는 그 요청을 처리하기 위해 하나의 Container 를 실행하게 된다. 이 Container 는 우측에서 보는거와 같이 CPU, RAM 등의 리소스를 점유하여 task 를 처리하게 된다.

---

### MapReduce 작업이 요청되어 처리되는 프로세스

YARN 클러스터에 job 을 요청한 경우(= 클러스터에서 Process 를 Running 하는 ) 어떠한 방식으로 실행이 되는지 소개한다.

1. Client 가 Application 을 실행하고 클러스터의 Resource Manager에게 이를 알려 준다.                                                  

2. Resource Manager 은 Worker 노드중에 하나를 골라 Container 를 생성한다. 그리고 그 Container 가 바로 Application Master 가 된다.    

3. Application Master는 task 를 실행할 컨테이너를 RM 에게 요청하게 된다. 그럼 Application Master는 유휴한 자원을 소유한 노드의 Node Manager 를 통해 task 를 실행할 Container 를 생성하게 되고 task 를 실행하는 Container 는 task 의 상태( status) 를 Application Master 에게 알려준다.   

4. 모든 task가 종료되면 AM도 종료되고 클러스터에 할당된 컨테이너의 자원도 모두 de-allocated 된다. 그리고 Application client 도 종료된다.

---

### YARN에서 MapReduce 동작

YARN의 실제 동작 방식을 이해하기 위해서는 MapReduce가 YARN클러스터에서 어떻게 동작하는지를 이해하는 것이 가장 좋은 방법이다.
MapReduce가 최초로 YARN을 사용하는 시스템이었으며, 같은 Hadoop 프로젝트내에 엮여있기 때문에 YARN을 가장 잘 사용하는 시스템이라고 할 수 있다. 다음은 YARN 클러스터에서 MapReduce 프로그램이 어떻게 동작하는지에
대한 설명이다. 

(0) 다음 명령을 수행시켜서 YARN 클러스터를 기동한다.

​    start-yarn.sh 정지는 stop-yarn.sh

(1) Mapper, Reducer, Driver(메인) 클래스 작성한다.

(2) Driver(메인) 클래스 실행한다.

(3) YARN 환경에서는 Job 별로 클러스터를 구성한다.

(4) 요청된 MapReduce 를 위한 클러스터를 구성하기 위해서는 1 개의 Application Master가 필요하며 이를 위해 YARN의 ResourceManager에게 리소스를 요청한다. 

(5) YARN의 ResourceManager는 요청받은 ApplicationMaster를 자신이 관리하는 클러스터(여러개의 NodeManager) 중 하나의 서버를 선택하여 ApplicationMaster를 실행하고 이 서버를 클라이언트에게 알려준다. ApplicationMaster는 요청받은 Job의 종류에 따라서 다르며 MapReduce에 사용되는 ApplicationMaster는 MRAppMaster (org.apache.hadoop.mapreduce.v2.app) 이다.

(6) 클라이언트는 ResourceManager로 부터 받은 ApplicationMaster 서버에 MapReduce 작업 요청을 한다.

(7) MRAppMaster는 작업 요청을 받으면 사용자가 실행한 MapReduce 작업에 필요한 리소스를 다시 ResourceManager에게 요청한다.

(8) ResourceManager는 요청받은 리소스에 대해 NodeManager를 지정하고 Container를 실행한 후 Container 목록을 MRAppMaster에 준다.

(9) NodeManager에 의해 실행된 MapReduce Task를 위한 Container는 MRAppMaster와 통신을 하며 주어진 Map Task와 Reduce Task를 실행한다.

---

### Apache Hive

Apache Hive 데이터웨어 하우스 소프트웨어는
SQL을 사용하여 분산 스토리지(HDFS)에 있는 대규모 데이터 세트의 읽기, 쓰기 및 관리를 용이하게 한다. 스토리지에 있는 데이터에 스키마를 정의하고 스키마 기반의 SQL을 사용해서 데이터의 처리가 가능하다.  Hive에 연결하기 위한 명령과 JDBC 드라이버가 제공된다.



 