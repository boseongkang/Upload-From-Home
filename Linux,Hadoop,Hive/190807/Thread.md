## Thread

---

프로세스 : 실행 중인 프로그램, 자원과 스레드로 구성

스레드 : 프로세스 내에서 실제 작업을 수행, 모든 프로세스는 하나 이상의 스레드를 가지고 있다. 

##### 프로세스 = 공장, 스레드 = 일꾼 

##### 싱글 스레드(thread) 프로세스 = 자원 + 스레드

##### 멀티 스레드(thread) 프로세스 = 자원 + 스레드 + 스레드 + ... + 스레드

하나의 새로운 프로세스를 생성하는 것보다 하나의 새로운 스레드를 생성하는게 더 적은 비용이 든다. 

많은 프로그램들이 멀티스레드로 작성되어 있다. 그러나 멀티스레드 프로그래밍이 장점만 있는건 아니다.

장점 : 자원을 보다 효율적으로 사용할 수 있다.

​		  사용자에 대한 응답성이 향상된다.

​		  작업이 분리되어 코드가 간결해진다.

​		  여러 모로 좋다. 

단점 : 동기화에 주의해야 한다.

​		  교착상태가 발생하지 않도록 주의해야 한다.

​		  각 스레드가 효율적으로 고르게 실행될 수 있게 해야 한다. 

​		  프로그래밍할 때 고려해야할 사항들이 많다.

기동 시킬 스레드 기능의 갯수만큼 스레드 클래스를 만들어야 한다. 

---

```JAVA
class ThreadEx01 {
	public static void main(String args[]) {
		ThreadEx1_1 t1 = new ThreadEx1_1();

		Runnable r = new ThreadEx1_2();
		Thread t2 = new Thread(r); // 생성자 Thread(Runnable target)

		t1.start();
		t2.start();
	}
}

class ThreadEx1_1 extends Thread {
	public void run() {
		for (int i = 0; i < 5; i++) {
			System.out.println(getName()); // 조상인 Thread의 getName()을 호출
		}
	}
}

class ThreadEx1_2 implements Runnable {
	public void run() {
		for (int i = 0; i < 5; i++) {
			// Thread.currentThread() - 현재 실행중인 Thread를 반환한다.
			System.out.println(Thread.currentThread().getName());
		}
	}
}

```

ThreadEx1_1은 Thread를 상속하기때문에 getName메서드를 바로 사용할수 있는데 ThreadEx1_2는 Object를 상속하기에 Thread 메서드를 바로 사용할수 없어서 `Thread.currentThread().getName()` 이렇게 써줘야 한다. 