﻿
# TODO 19.11.11
- HashTag
```
enroll (add manually)
apply (add automatically w/ crawling)

TABLE : 
- INSERT hashtag (no, name, count)
- INSERT hashtag_job (boardNo, hashtagNo)
```

시험
spring framework: aop (xml 또는 anno방식)
mvc
mybatis
spring 용어 구조적인 illust로 어디에 전달 되는지.handler 에 어떻게 전달
advice 시점
pom.xml
  module : core context test websocket

aop특징 표준화 ioc 데이터액세스 mvc패턴 지원
마이바티스 동적커리
스프링 사용되는 용어들 요청들어오면 누구한테가고 등등
프레임워크 정리
aop개념 정리
어드바이스 시점
마이바티스 동적커리
aop적용 xml anotation방식
프레임워크 모듈 특징 (컨텍스트 웹소켓)



안녕하세요 지원자 이준호 입니다.
저는 이번 국비 교육과정을 시작하면서 세가지를 지키려고 했습니다.

첫번째는 간절함 입니다. 이 간절함은 교육과정을 들으면서, 점차 프로그래밍에 대한 열정으로 바꼈고,
6개월 동안 필요한 기술들을 향상 시키는데 제 모든 열정을 쏟아붓는 원동력이 됐습니다.
결과적으로 병원 2일을 제외한 모든 일수를 출석 할 수있었습니다.

두번째는 도움받은 만큼 베풀자 입니다. 저는 문득
매일 저와 같은 예비개발자들에게 지식을 가르치러 오시는 분들의 성의에 대해 생각해 봤습니다.
또한 회사를 다니면서 조언과 도움을 준 분들을 생각해 봤습니다. 
저도 그분들과 같이 제 팀원들을 돕는 노력했습니다. 특히 여송씨나 장원씨와
프로젝트를 하면서 서로 모르는 것을 물어보면서 돕는것이 굉장히 즐거웠습니다.

세번째는 패배는 쓰러질 때가 아닌 다시 일어서길 거부할 때 라는 것 입니다.
저에게 퇴사는 쓰러진 것과 같았지만, 공백기간을  실패라고 생각하지 않았고, 
교육과정을 통해 다시 일어설수 있었습니다. 저는 앞으로 어떤 시련이 와도 다시 일어설 자신이 있습니다.

저는 소프트원에 입사하기 위한 이 세가지 마음가짐 외에, 6개월간 얻은 직무능력을 증명하려는
목표를 가지고 있으며, 객관적이고 솔직한 답변 드릴 것을 약속합니다.

* 결합도 높음
- controller new service
- interface 사용: 결합도 감소: 기능 바꼈을 떄, interface는 그대로

* 응집도 높음
서블릿을 사용했을 때는 connection 및 resultset statement 등의 transaction 관리를 직접코드로 구현 했지만
응집도 낮은것: insertMember 안에 db 커넥션 관리 및 close()등 모든걸 코드
connection 및 다른 메소드 필요없이 compact하게 insert기능만 구현하여 응집도 높힘

aop : service insertmethod (값을 받아서 db에 insert)
---------------------------------------------------
aop : 코드 중복을 줄여줌
응집도를 높혀 oop 답게 만들어줌

# IOC Inversion Of Control
제어의 역전.
객체 without ioc 객체 생성 소멸
spring container 로 알아서 관리 (DI로) 하도록 하는 것

동기식: 순서대로, 비동기식: 하던것 멈추고 다른것으로 빠지는 것

Q4. What Is Dependency Injection?
Dependency Injection, an aspect of Inversion of Control (IoC), is a general concept stating that you do not create your objects manually but instead describe how they should be created. An IoC container will instantiate required classes if needed.

For more details, please refer here.
# DI dependency injection

* How Can We Inject Beans in Spring?
A few different options exist:
- Setter Injection
- Constructor Injection
- Field Injection
- The configuration can be done using XML files or annotations.


* Which Is the Best Way of Injecting Beans and Why?
The recommended approach is to use constructor arguments for mandatory dependencies and setters for optional ones. Constructor injection allows injecting values to immutable fields and makes testing easier.

* POJO
plain old java object
bean ?

* WAS (apache tomcat) vs Web Server
WAS db 연동하여 서버 로직으로 동적으로 페이지 구성 할 수 있도록
Web Server 정적으로 등록된 페이지 출력하는 서버

* Benefits of Using Spring Framework
Spring targets to make Java EE development easier. Here are the advantages of using it:

- Lightweight: there is a slight overhead of using the framework in development
- Inversion of Control (IoC): Spring container takes care of wiring dependencies of various objects, instead of creating or looking for dependent objects
- Aspect Oriented Programming (AOP): Spring supports AOP to separate business logic from system services
- IoC container: it manages Spring Bean life cycle and project specific configurations
- MVC framework: that is used to create web applications or RESTful web services, capable of returning XML/JSON responses
- Transaction management: reduces the amount of boiler-plate code in JDBC operations, file uploading, etc., either by using Java annotations or by Spring Bean XML configuration file
- Exception Handling: Spring provides a convenient API for translating technology-specific exceptions into unchecked exceptions

* interface 다중상속 가능 vs absract method+field 다중상속 안됨
Main difference is methods of a Java interface are implicitly abstract and cannot have implementations. A Java abstract class can have instance methods that implements a default behavior.
Variables declared in a Java interface is by default final. An  abstract class may contain non-final variables.

Members of a Java interface are public by default. A Java abstract class can have the usual flavors of class members like private, protected, etc..
Java interface should be implemented using keyword “implements”; A Java abstract class should be extended using keyword “extends”.
An interface can extend another Java interface only, an abstract class can extend another Java class and implement multiple Java interfaces.
A Java class can implement multiple interfaces but it can extend only one abstract class.
Interface is absolutely abstract and cannot be instantiated; A Java abstract class also cannot be instantiated, but can be invoked if a main() exists.
In comparison with java abstract classes, java interfaces are slow as it requires extra indirection.

* LEFT OUTER JOIN
Another type of join is called an Oracle LEFT OUTER JOIN. This type of join returns all rows from the LEFT-hand table specified in the ON condition and only those rows from the other table where the joined fields are equal (join condition is met).

table1+ 공통 공통데이터
```sql
SELECT columns
FROM table1
LEFT [OUTER] JOIN table2
ON table1.column = table2.column;
-- In some databases, the LEFT OUTER JOIN keywords are replaced with LEFT JOIN.
```

* RIGHT OUTER JOIN
table2+ 공통 데이터
```sql
SELECT columns
FROM table1
RIGHT [OUTER] JOIN table2
ON table1.column = table2.column;
```
-------------------------------------------------------------------------------------
OOP concepts
  Polymorphism 
  Abstraction
  Inheritance
  Aggregation
  Encapsulation
  Association
  Composition

[Abstraction, Inheritance, Polymorphism, Encapsulation]

Abstraction means using simple things to represent complexity.
We all know how to turn the TV on, but we don’t need to know how it works in order to enjoy it.
In Java, abstraction means simple things like objects, classes, and variables represent more complex underlying code and data. This is important because it lets avoid repeating the same work multiple times.

Encapsulation. This is the practice of keeping fields within a class private, then providing access to them via public methods. It’s a protective barrier that keeps the data and code safe within the class itself.
This way, we can re-use objects like code components or variables without allowing open access to the data system-wide.

Inheritance. This is a special feature of Object Oriented Programming in Java. It lets programmers create new classes that share some of the attributes of existing classes. This lets us build on previous work without reinventing the wheel.

Polymorphism. This Java OOP concept lets programmers use the same word to mean different things in different contexts. One form of polymorphism in Java is method OVERLOADING. That’s when different meanings are implied by the code itself. The other form is method OVERRIDING. That’s when the different meanings are implied by the values of the supplied variables.

framework good/bad

spring framework
explain project process
java memory 영역
mvc pattern
java interface good/bad
outer /inner join

1min intro
personality good/bad
education / major(subjects)
motivation for appl
tell us about softone / visit homepage
explain your role in projects
how did you overcome recent hardships
most/least(how to compensate) confident skill
expected salary level 
reason why softone has to hire you
-javascript + oracle db  +mobile web +progressive & social person






11.4. 면접진행
1관 2층 - 양복
13:50~ 40분 - 소프트원

10.30일 14:50 softone

1. job search API
2. joboard list click -> modal invisible? Company info
3. <selectKey>
4. mainpage - 
5. jobboard list ->  title click
6. crawling

RSA 양자간 통신시에 메시지 encode 암호화 통신

암호화/복호화 : 양방향 암호화
key를 가지고 암호화 복호화를 진행함
대칭키 암호화 -> AES256방식
비대칭키 암호화 -> RSA방식
  공개키/비공개, 개인키

  A
a.publicKey
a.privateKey
  B
a.publicKey
b.privateKey

public key로 encode->private key로 decode

공용으로 참조할수있는 공간에 publicKey(b.publicKey a.publicKey)를 올려놓음
풀수있는건 나 자신의 privateKey 밖에없음

A<->B 암호화 통신
B-> A publicKey로 암호화 ->A가 privateKey로 만 decode가능
A-> B publicKey로 암호화 ->B가 privateKey로 만 decode가능

Ⅰ Ⅱ Ⅲ Ⅳ Ⅴ Ⅵ

JAVA OOP
Polymorphism, Encapsulation,
Inheritance, Multithread
- ORACLE
SQL, PL/SQL

- HTML / CSS / JavaScript 
jQuery / Ajax
- JAVA
Servlet / JSP, JSTL, 
JDBC, Mybatis
Spring Framework



10.15 시험
어플리케이션 배포 war
tomcat 세팅.
  서버 포트지정 (e.g. 학원 포트 9999)
  jdk build path 등 서버 설치할떄 설정해야함(by 강사님)
  코드 작성 -> .war 파일 export -> 배포
  실무에서는 서버 restart -> 배포 -> test해보기
Maven 안에 들어가는 것들
<property>
<dependency> is a library, framework or otherwise JAR file that is stored on a remote server and upon the proper detailed information placed in your maven pom file, will be downloaded and referenced in your project’s classpath either upon compilation, testing, or during runtime.

Linux 서버 운영 : sh shell script로 운영체제 조작
tomcat 서버의 경우 startup.sh shutdown.sh catalina.sh ()
서버올리는 위치?



1.	Maven 이 가지고 있는 "pom.xml" 파일 안에 기술되는 element 들 중 <dependencies>, <packaging>, <properties>, <dependency>, <groupid>, <artifactid> 에 대해 설명하시오.(48.5점)
결과 | 점수 (41.5점)
수강생 답	
<dependency> 는 mvnrepository 서버에 저장되어 있는 JAR 파일을 불러오기 위한 정보를 저장하기 위한 컨테이너 역할을 하는 태그. 이 태그 안의 정보를 바탕으로 jar파일을 로컬 디렉토리에 다운로드 합니다. properties: 스프링 프레임워크, slf4j(로그에 필요한 패키지), aspectj 들의 버젼을 정의 합니다. <depenencies>는 필요한 <dependency>들의 모음을 포함합니다. <groupid>는 프로젝트(mvnrepository에 있는 해당 디펜던시) 그룹의 id 입니다. artifactId - the id of the artifact (project)
<packaging> 서브모듈의 컨테이너입니다. pom으로 많이 씁니다.
답안첨삭	
<dependency> 는 mvnrepository 서버에 저장되어 있는 JAR 파일을 불러오기 위한 정보를 저장하기 위한 컨테이너 역할을 하는 태그. 이 태그 안의 정보를 바탕으로 jar파일을 로컬 디렉토리에 다운로드 합니다. properties: 스프링 프레임워크, slf4j(로그에 필요한 패키지), aspectj 들의 버젼을 정의 합니다. <depenencies>는 필요한 <dependency>들의 모음을 포함합니다. <groupid>는 프로젝트(mvnrepository에 있는 해당 디펜던시) 그룹의 id 입니다. artifactId - the id of the artifact (project)
<packaging> 서브모듈의 컨테이너입니다. pom으로 많이 씁니다. 패키지 유형을 정의하는 영역 -7
모범답안	​<dependencies> : 의존성 정의 및 설정 영역
<packaging> : 패키지 유형을 정의하는 영역
<properties> :  pom.xml에서 중복해서 사용되는 설정(상수)값들을 저장해놓는 영역
<dependency> : 의존하는 프로젝트 pom정보를 기술
<groupId> : 의존하는 프로젝트의 그룹 ID
<artifactId> : 의존하는 프로젝트의 artifact ID​
평가기준	소스코드 검증 기법에 대한 이해를 바탕으로 도구 사용 능력 점검
수행준거	정상적으로 작동하는 소프트웨어 빌드를 위해 형상관리 서버로부터 소스코드를 체크 아웃 할 수 있다.

2.	웹 애플리케이션 배포 환경을 구축하기 위한 서버(WAS) 설치와 웹 애플리케이션 파일 배포 절차를 순서대로 기술하시오.(51.5점)
결과 | 점수 (31.5점)
수강생 답	.war 파일 이클립스에서 export하여 윈도우 cmd에서 pscp 커맨드를 이용하여 해당 war 파일을 리모트 서버의 $TOMCAT/webapps 디렉토리로 전송합니다 shutdown.sh 와 start.sh 배쉬파일을 실행하여 서버를 재시작하면 변경된 사항이 적용됩니다. 새로운 tomcat버젼에서는 war파일을 올리면 자동으로 업데이트 됩니다.
답안첨삭	.war 파일 이클립스에서 export하여 윈도우 cmd에서 pscp 커맨드를 이용하여 해당 war 파일을 리모트 서버의 $TOMCAT/webapps 디렉토리로 전송합니다 shutdown.sh 와 start.sh 배쉬파일을 실행하여 서버를 재시작하면 변경된 사항이 적용됩니다. 새로운 tomcat버젼에서는 war파일을 올리면 자동으로 업데이트 됩니다.
서버설치 및 서버설정 누락 -20

모범답안	
  1단계 : WAS 역할을 수행할 Apache Tomcat 을 해당 사이트에서 운영할 OS에 맞는 설치파일을 다운받는다.
  2단계 : 설치 방법에 따라 톰켓을 설치하며, 서버 PORT 설정과 서버관리자 ID와 PASSWORD를 지정한다.
  3단계 : JDK 경로와 톰켓 서버를 설치할 경로를 지정한다.
  4단계 : 설치된 톰켓 폴더 안의 tomcatXX.exe 를 실행하여 WAS 를 start 한다.
  OS가 리눅스일 경우에는 톰켓 설치파일의 압축을 해제한 뒤, 톰켓 폴더 안의 startup.sh 와
  shutdown.sh 와 catalina.sh 파일을 터미널 창에서 실행하여 서버를 제어한다.
  5단계 : 이클립스에서 작성한 웹 프로젝트를 war 파일로 export 한다.
  6단계 : 톰켓폴더/webapps / 프로젝트.war 파일을 넣는다.
  7단계 : 톰켓 서버를 start 시킨다.
  8단계 : 클라이언트 브라우저에서 url을 통해 접속해 본다.
  평가기준	애플리케이션 배포 환경 구성을 위한 관련 도구 설치 및 설정 가능 여부 평가
  수행준거	애플리케이션 배포를 위한 도구와 시스템을 결정할 수 있다.

1.	개발이 완료된 웹 프로젝트를 아파치 톰켓 서버와 연동시켜 웹 서버를 운영할 때의 파일 형식은?
결과 | 정답 (18.2점)
V	가.	war 파일
나.	jar 파일
다.	zip 파일
라.	exe 파일

2.	웹 프로젝트 배포파일을 export 한 다음, 톰켓 서버에 올릴 때의 폴더 위치는?
결과 | 정답 (18.2점)
가.	Tomcat 폴더/ROOT
나.	Tomcat 폴더/manager
V	다.	Tomcat 폴더/webapps
라.	Tomcat 폴더/docs

3.	이클립스에서 작성한 웹 프로젝트를 톰켓 서버에 올리기위한 배포파일로 만들기 위해 사용하는 명령어 선택 순서로 올바른 것은?
결과 | 정답 (20.2점)
가.	웹 프로젝트 선택 > import > general > select archive file > folder select > finish
V	나.	웹 프로젝트 선택 > export > web > war file > folder select > tomcat version select > finish
다.	웹 프로젝트 선택 > export > general > select archive file > folder select > finish
라.	웹 프로젝트 선택 > export > XML > xml file > folder select > finish

4.	애플리케이션 배포 작업에서 톰켓의 포트번호를 변경하기 위해 수정하는 파일명은?
결과 | 정답 (20.2점)
가.	pom.xml
나.	context.xml
다.	root.xml
V	라.	server.xml

5.	웹 서버 OS 가 리눅스일 경우 톰켓 서버를 제어하기 위해 사용되는 파일이 아닌 것은?
결과 | 정답 (23.2점)
가.	startup.sh
나.	shutdown.sh
다.	catalina.sh
V	라.	daemon.sh






1. 입사지원서 관련 내용 말씀드리면..

10/13(일) 자정까지 KH홈페이지에서 입사지원서 양식 다운로드 및  작성 후 제출. ->  정해진 취업상담 일정에 취업 상담(희망분야, 연봉, 거리  등 파악) & 입사지원서 첨삭 및 피드백

-> 입사지원서 수정해서 정해진 기간까지 수정본 메일로 제출 -> 메일로 입사지원서 수정 및 첨삭해서 피드백 -> 다시 수정본 작성해서 제출(2~3회 정도 피드백 제공/ 메일로 발송 및 회신)  -> 수정할 내용 없을 경우 실전대비면 용으로 사용.(세미프로젝트  내용까지 포함)

-> 수료후 파이널 프로젝트 내용 추가해서 "입사지원서 최종본" 제출.

2. 취업지원 관련 프로세스.

희망조건에 맞는 채용공고 메일로 발송(취업담임) -> 채용공고 메일 확인(수료생) -> 지원의사 메일로 회신(수료생) -> 보관하고 있는 입사지원서  최종본 날짜  수정해서 해당 기업에 지원(취업담임)

-> 면접일정 안내(면접대상자로 선정될 경우/취업담임 or 회사에서 개별연락) -> 면접(일정 조율) -> 채용.


암호화 처리 spring security:  .jar파일 다운로드 mvnrepository spring-security(web/config/core 3개 다 받기)
  -> pom.xml
 root-context.xml -> spring폴더에 spring bean configuration파일 추가(security-context.xml)
          -> next(고르지않고) -> finish
          security-context.xml -> tomcat에 설정해야함 web.xml?
          <!-- The definition of the Root Spring Container shared by all Servlets and Filters -->
          <context-param>
            <param-name>contextConfigLocation</param-name>
            <param-value>
                  /WEB-INF/spring/root-context.xml
                  /WEB-INF/spring/security-context.xml
                </param-value>
          </context-param>

pom.xml log4j mvnrepository is included in default
   <!-- Logging -->
   <dependency>
     <groupId>org.slf4j</groupId>
     <artifactId>slf4j-api</artifactId>
        <dependency>
     <groupId>log4j</groupId>
     <artifactId>log4j</artifactId>
     <version>1.2.15</version>

    resource -> log4j.xml

log4j 구조
  1. Appender 태그 : log출력에 대한 환경설정하는 태그
    * 로그를 어디로 출력을 할지 : (콘솔/파일/DB)
  2. Logger 태그 : 어디 부분에서 Appender를 실행 할 지
     어떤 단계에서 실행할지
  3. Root 태그 : 기본적용 Logger (부모; 최상위 객체)

---
기본 패턴설정 : %-5p: %c - %m%n
			이벤트명, 카테고리명, 로그전달메세지 개행

* %c : 카테고리명(logger이름)을 표시
	* 카테고리명이 a.b.c일때, %c{2}는 b.c를 출력
* %C : 클래스명을 표시함.	
	* 풀 클래스 명이 com.kh.logger일때, %C{2}는 kh.logger를 출력
* %d : 로그 시간을 출력한다. java.text.SimpleDateFormat에서 적절한 출력 포맷을 지정할 수 있다. 
	* %d{HH:mm:ss, SSS}
	* %d{yyyy MMM dd HH:mm:ss, SSS}
	* %d{ABSOLUTE} 
	* %d{DATE} 
	* %d{ISO8601}
* %F : 파일명을 출력. 로그시 수행한 메소드, 라인번호가 함께 출력된다.
* %l : 로깅이 발생한 caller의 위치정보. 자바파일명:라인번호(링크제공) 
* %L : 라인 번호만 출력한다(링크없음)
* %m : 로그로 전달된 메시지를 출력한다.
* %M : 로그를 수행한 메소드명을 출력한다. 
* %n : 플랫폼 종속적인 개행문자가 출력. rn 또는 n
* %p : 로그 이벤트명등의 priority 가 출력(debug, info, warn, error, fatal )
* %r : 로그 처리시간 (milliseconds)
* %t : 로그이벤트가 발생된 쓰레드의 이름을 출력
* %% : % 표시를 출력. escaping
* %r : 어플리케이션 시작 이후 부터 로깅이 발생한 시점의 시간(milliseconds)
* %X : 로깅이 발생한 thread와 관련된 MDC(mapped diagnostic context)를 출력합니다. %X{key} 형태.

  log4j.xml
  <!-- Root Logger -->
  <root>
    <priority value="warn" />
    <appender-ref ref="console" />
    <appender-ref ref="filelogger" />
  </root>

method mapping 실행전,후, 응답완료후,  -> filter대신에 interception 사용

interceptor
구현 : HandlerInterceptorAdapter를 상속해서 구현

전처리(preHandler) : dispatcherServlet이 컨트롤러가 매핑된 메소드 호출전에 실행되는 로직구현
후처리(postHandler) : 컨트롤러가 매핑된 메소드 실행 후 실행되는 로직 구현
뷰처리후(afterCompletion) : 응답까지 완료된 후 실행되는 매소드 구현

1. intercepter클래스를 등록을 해야함
   -> Servlet-context.xml에 등록!
   

-----






















java는 멀티스레드 기반임 스프링은 멀티스레드 기반
그럼 스레드 풀을 관리해줘야하고 그렇게 도면 스레드 관리하는 방법은 여러가지 있음
일단 친구가 아는 방법은 무한루프 돌리는 방법이고,
멀티스레드 관리 + 무한루프 잘못관리하면 서버가 뻗음
만약 클라이언트에서 요청이 많을 경우 클라이언트에서 blocking io를 요청하면 긴급스레드? 
스레드 하나 남기고 나머지 응답대기 상태로 빠짐
즉, 동시에 처리해야 되는 상황이라서 자바소켓이나 뭐 등등쓰면 잘못짜면 서버가 뻗음

노드 js는 싱글스레드 기반임 정확히는 싱글스레드는 아닌데 결국 싱글스레드로 동작하는거랑
같으니 노드는 요청을 queue로 관리해서 내가 실시간 관련 코딩에 자신이있다고하면
자바 소켓을 쓰면되고, 내가 무조건 실수 할것 같다 하면 노드쓰면됨
노드의 장점은 어차피 서버분리
스프링 + 노드로 구현되는거라 노드가 뻗어도 스프링엔 영향없음

여기서 친구의 질문 
blocking io / nonblocking io 알어? 
모르면 노드 ㄱ

lombok -> vo 자동 생성 : mvnrepository lombok
  C:\maven\repository\org\projectlombok\lombok\1.18.10
  open powershell
    > java -jar .\lombok-1.18.10.jar

tomcat 재시작 안해도 자동 reload되는 dependency 추가 mvnrepository-> springloaded
<!-- https://mvnrepository.com/artifact/org.springframework/springloaded -->
<dependency>
    <groupId>org.springframework</groupId>
    <artifactId>springloaded</artifactId>
    <version>1.2.8.RELEASE</version>
    <scope>provided</scope>
</dependency>
Maven Dependencies 에 .jar파일 받아짐
Tomcat server double click : Module Auto Reload 해제 uncheck
 > module 탭에서 edit web module: auto reload (uncheck)
 > overview탭에서 publishing> Automatically publish when resources change
 > overview탭에서 open launch configuarton> arguments
 -javaagent:C:\maven\repository\org\springframework\springloaded\
    1.2.8.RELEASE\springloaded-1.2.8.RELEASE.jar -noverify


SPRING LOG
등록된 bean과 autowiring된 것들을 생성 및
bean으로 등록된 controller load?

10월 08, 2019 9:10:58 오전 org.apache.catalina.core.ApplicationContext log
정보: Initializing Spring FrameworkServlet 'appServlet'
INFO : org.springframework.web.context.support.XmlWebApplicationContext - Refreshing WebApplicationContext for namespace 'appServlet-servlet': startup date [Tue Oct 08 09:10:58 KST 2019]; parent: Root WebApplicationContext
INFO : org.springframework.beans.factory.xml.XmlBeanDefinitionReader - Loading XML bean definitions from ServletContext resource [/WEB-INF/spring/appServlet/servlet-context.xml]
INFO : org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor - JSR-330 'javax.inject.Inject' annotation found and supported for autowiring
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/demo/demo3.do]}" onto public java.lang.String com.kh.spring.demo.controller.DemoController.demo3(java.util.Map,org.springframework.ui.Model)
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/demo/demo4.do]}" onto public java.lang.String com.kh.spring.demo.controller.DemoController.demo4(com.kh.spring.demo.model.vo.Dev,org.springframework.ui.Model)
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/demo/demo.do]}" onto public java.lang.String com.kh.spring.demo.controller.DemoController.demo()
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/demo/demo1.do]}" onto public java.lang.String com.kh.spring.demo.controller.DemoController.demo1(javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse)
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/demo/demo2.do]}" onto public java.lang.String com.kh.spring.demo.controller.DemoController.demo2(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String[],org.springframework.ui.Model)
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/demo/insertDev.do]}"

통합구현 프레임워크 myabatis

<beans:bean class="org.springframework.web.servlet.view.InternalResourceViewResolver">
      <beans:property name="prefix" value="/WEB-INF/views/" />
      <beans:property name="suffix" value=".jsp" />
   </beans:bean>
pre suffiix앞뒤에다가 붙힘 

바꾸고 싶으면 InternalResourceViewResolver로 클래스명만 바꾸면 됨

mybatis 동적쿼리
if, choose 구문 select에 맞혀 동작에 맞게 쿼리문 작성
select 속성 여러가지

use general key X

프레임워크 주요기능중 jdbc는 영속성 프레임워크 아님

mvc2패턴흐름 view에서 request - controller -service-reposiroty-

view reserve벨로시티 뷰 리졸 뷰네임 리졸버는 상관없음
뷰네임 빈 연결시키는 내용
ResourceViewResolver
name="view class"
value="class 명칭"

mybatis 동적 query

use generator key? 없음
그냥 이거 찍으면됨 

framework!
기능중에서 spring jdbc 영속성이 없음
spring orm등이 잇음

mvc2 pattern 흐름
view에서 req 요청 dispatcher 받음
controller -> method -> service -> repository.....

view resolver
bean name resolver view??- 상관이 없음 - 
view name-name하고 연결 시키는 것 



viewResolver 설정 바꿀려면
  viewclass="클래스네임"

	<beans:bean class="org.springframework.web.servlet.view.InternalResourceViewResolver">
		<beans:property name="prefix" value="/WEB-INF/views/" />
		<beans:property name="suffix" value=".jsp" />
	</beans:bean>


usegeneral key 속성 없음
spring jdbc

mvc2 pattern 
view  -> dispatcher servlet -> controller -> method ->service ->repository



ResourceViewResolver
name="view class"
value="class 명칭"

mybatis 동적 query

use generator key? 없음
그냥 이거 찍으면됨 

framework!
기능중에서 spring jdbc 영속성이 없음
spring orm등이 잇음

mvc2 pattern 흐름
view에서 req 요청 dispatcher 받음
controller -> method -> service -> repository.....

view resolver
bean name resolver view??- 상관이 없음 - 
view name-name하고 연결 시키는 것 
















Spring setting

root-context.xml

servlet-context.xml
<annotation-driven/>
bean으로 등록

com.kh.spring.demo.controller
doesnot need servlet

// DemoController.java
//서블릿 연결시키는 방법: 1.Annotation 2. xml 방식
HelloController S 표시 스프링이 관리한다는 뜻 (bean등록)


//bean 등록(import stereotype) 
@Controller
public class DemoController{
  
  //+ method와 mapping
  @RequestMapping("/demo/demo.do")
  public String mytestfunc(){
    System.out.println("/demo/demo.do 컨트롤러 호출");
    return "demo/demo"; //Resolver에 return 되면서 prefix suffix 붙은 url의 jsp페이지를 보여줌!
    //return: dispatcher servlet 역할
    
  }
  //views 밑에 demo/demo.jsp 생성
}
http://localhost:9090/spring/demo/demo.do

-- Resolver에 의해 WEB-INF가 붙음
-- controller 실행 해서 mapping된 메소드 까지 실행됨 확인



마지막 패키지 : root context
jar 파일 폴더 경로 바꾸기 -> C:maven
pom.xml maven environmental setting: allows to downloads .jar file
preference > Maven > user settings

http://localhost:9090/spring
pom.xml 파일에 있는 version으로 MAven jar파일이 다운로드 됨

ContextListener classnotfound error -> project deployment dependency
-> add -> add java build path entry(maven dependency)
project r_click maven-> maven project update

Spring
  maven - manage modules automatically


https://mvnrepository.com/
  mybatis 3.4.6
    <!-- https://mvnrepository.com/artifact/org.mybatis/mybatis -->
    <dependency>
        <groupId>org.mybatis</groupId>
        <artifactId>mybatis</artifactId>
        <version>3.4.6</version>
    </dependency>

  mybatis spring 2.0.2
    <!-- https://mvnrepository.com/artifact/org.mybatis/mybatis-spring -->
    <dependency>
        <groupId>org.mybatis</groupId>
        <artifactId>mybatis-spring</artifactId>
        <version>2.0.2</version>
    </dependency>

  ojdbc6 mvnrepository not working. -> lib폴더에 ojdbc6.jar 복붙


database connection pool
Commons DBCP


필요한 jar파일 -> pom.xml에 등록 후 자동 다운로드
FRAMEWORK에서 지원하는 버전으로 내려서 맞춰야함.
web.xml 2.5 -> web-appversion 3.1 ( server/tomcat-xxx-/web.xml)


web.xml : context-param db connection setting

다음을 web.xml에 등록하면 index.jsp로 접근가능
    <welcome-file-list>
      <welcome-file>index.jsp</welcome-file>
    </welcome-file-list>

server/tomcat-xxx/web.xml에도 welcom-file에 index.jsp등록되어 있어서 디폴트로 index.jsp 접근 가능



스프링 IDE (STS Spring Tool Suite)
  https://spring.io/tools3/sts/all
Maven
  http://mirror.navercorp.com/apache/maven/maven-3/3.6.2/binaries/apache-maven-3.6.2-bin.zip

















Ⅰ. Job Type
Ⅱ. Location : NewYork
Ⅲ. Description
Ⅳ. How to Apply 



WANT SOME EASY $? Anyone wtih good mindsets are welcome! :)
Extra-territorial-super-secret-cool-place
Hi. We are looking for noobies. We teach everything from A to Z. So please have a good mindset and we can grow together. Required social skills are listed in our page(www.linkedin.com/USER01Corp). We will test your physical ability as well as metal ability. blaah blahg blah~~~
Please don't forget to visit https://wwww.helloWorld.com and submit your resume!


일종의 협상
협상 전략을 구상
제 자신이 어떤 사람인지 솔직하게 말씀 드리늠것
제가 가진 역량이 회사기대에 맞는지
저는 길게 보고싶습니다
어떤 기능을 구현하는 능력도 갈고 닦았지만
전 멀리볼수 있는 비전을 가지고 있습니다



동적쿼리: runtime에 쿼리문이 if 조건에 따라 바뀜

<resultMap type="package.ClassName">
  <id property="member var name" column="db_col_name" /> <!-- PK -->
</resultMap>
insert delete update
  parameter 2개이상이면 parameterType="객체"


Server 배포
원격으로 서버에 접속하여 배포
telnet(보안 프로토콜 x) putty
putty로 서버 관리
pscp.exe : file upload(ftp)

프로젝트 파일을 배포용으로 만들기 -> war!!
프로젝트 -> .war 파일변환하고 -> putty를 이용해서 file upload(pscp.exe)

Eclispe project r_click - export WAR file
  - destination: war file 어디에 저장할지 e.g. C:users/user11
  - WAR 이름이 project root dir됨(request.getContextPath())
  - 실행시 .java source file없이 .class만 필요함


war파일 올리는 명령어
pscp 파일명(경로까지 포함) 서버계정명@서버주소:서버상톰캣주소/webapps/
$ pscp .\Parking.war team1@rclass.iptime.org:/home/apache-tomcat-8.5.45/webapps/
    password: team11
ls /home/apache-tomcat-8.5.45/webapps/

new tomcat 버젼에서는 서버 재실행 안해도 업데이트 됨
shutdown.sh
start.sh

rclass.iptime.org:9999/HelloMVC/


<div class="d-flex bd-highlight mb-3">
  <div class="mr-auto p-2 bd-highlight">Logo</div>
  <div class="mx-3 p-2 bd-highlight">searchBar</div>
  <div class="p-2 bd-highlight">Flex item</div>
  <div class="p-2 bd-highlight">Flex item</div>
  <div class="p-2 bd-highlight">Flex item</div>
  <div class="p-2 bd-highlight">Sign Out</div>
  <div class="p-2 bd-highlight">Sign In</div>k
  <div class="p-2 bd-highlight">Sign Up</div>
</div>


$('.input').keypress(function (e) {
  if (e.which == 13) {
    $('form#login').submit();
    return false;    //<---- Add this line
  }
});


$('#dSuggest').keypress(function() {
    var dInput = this.value;
    console.log(dInput);
    $(".dDimension:contains('" + dInput + "')").css("display","block");
});

This parking space is very clean and the service is good. They even allow me to reserve a spot. They also provide coupons!

Ive never seen such a clean parking lot before... I will use this place often! It was a delight experience
It was alright. I was about to pick up my family and I had to park my car at least for one hour. Luckily, I found this Parking app which provided me with the realtime parking locations around me. But it was way too expensive. So I give you 1 star ;)
This parking space is very clean and the service is good. They even allow me to reserve a spot. They also provide coupons!
The guy working there is rude. He yelled at me and tried to charge me 200 bucks per second. Definitely not worth your time and money!







# Web Socket
http://192.168.20.26:9090/JspWebsocket/views/progrmaTest.jsp
웹소켓(protocol): RFC6455 등록코드 표준화 되어있음

웹소켓 구현방식
  1. socket.io library -> node.js 연결
     node서버 구현.tomcat과 정보 주고받을 수 없음
     node서버 + mongoDB
  2. java기본 API JSR 356



javaAPI를 이용하여 웹소켓구현
  - javax.websocket.server 패키지
      : 서버를 구현할 때 필요한 객체
  - javax.websocket 패키지
      : 공통적인 부분, client 구현시 필요한 객체

기본적인 설정
  1. server 설정 -> class 생성!
    서버설정 시에는 두가지 방법
      1) annotation으로 설정 (선언적 방식)
         @Endpoint
         public class ChattingServer{
           @OnMessage
           function(){}
         }
      2) programatic 프로그램 소스코드 작성
         public class ChattingServer extends Endpoint{
           @Override
           function(){}
         }
  2. 기능을 하는 이벤트 메소드를 등록
    onOpen //session부여되는 순간
    onMessage //
    onClose //session연결 끊어질때
    onError

  Client측 설정
    html로 되어 있음. HTML5에서 웹소켓을 표준으로 지정
    javascript에서 websocket 사용이 가능
    기본 WebSocket 객체를 생성해서 이용!
    new WebSocket("ws://서버주소/매핑값");
    //서버와 자동으로 연결(Session값을 받아옴.)

    이벤트처리 메소드를 등록
    onOpen, onMessage, onClose, onError



















09.04 시험
server프로그램 개발환경 구축
java se - eclipse - tomcat server - eclipse 연동 ->프로젝트생성
was에 프로젝트 추가 -> source code 작성 -> server 실행 
- JDBCTemplate

sequence diagram 흐름을 설계 ->logic 처리(e.g. 로그인 로직)
servlet처리하는 구조 상세히 작성

  # server connection info
  # driver.properties
  driver=oracle.jdbc.driver.OracleDriver
  url=jdbc:oracle:thin:@13.209.48.36:1521:xe
  id=parking
  pw=1234

  /* JDBCTemplate.java */
  public static Connection getConnection() {
    Connection conn = null;
    String path = JDBCTemplate.class.getResource("./driver.properties").getPath();

    try {
      prop.load(new FileReader(path)); //reads a property list (key, value pairs)
      Class.forName(prop.getProperty("driver")); //register driver class(oracle.jdbc.driver.OracleDriver)
      conn = DriverManager.getConnection(prop.getProperty("url"), //establish connection with the database
                                         prop.getProperty("id"),
                                         prop.getProperty("pw"));
      conn.setAutoCommit(false);

    } catch(IOException e) {
      e.printStackTrace();
    } catch(ClassNotFoundException e) {
      e.printStackTrace();
    } catch(SQLException e) {
      e.printStackTrace();
    }

    return conn;
  }

id + pw
request.getParameter("id")
new MemberService().select...(); //DB에서 데이터 받기
Member loginMember;
로그인 성공시  (loginMember != null)
session에 등록
session.setAtribute(loginMember);

response.sendRedirect("url");

Cookie cookie;
90일 지났을때 id저장 중단

개발환경 구축 시 프로그램 설치
java se - eclipse - was - project - test code

공통모듈로 인터페이스 구현
 - insert, update -> @return Object (int 뿐 아니라, 다른 object type도 적용 가능)
 - select -> @return Object
 public Object selectOne(String){
   return new MyObject();
 }
 - selectList -> @return List<Object>


getConnection() 메소드 close commit rollback 매개변수/return 값 체크하기

batch프로그램 .sh(activeX와 무관)

jdbc 연결드라이버 외우기 oracle mysql
서버프로그램 구현에 사용되는 기술들
 - jsp javascript filter php servlet listener wrapper oracle

ResultSet
int ?? = executeUpdate(); / rs = executeQuery();

데이터 전송/공유 객체 프론트로 보낼때
서버내려갔을때 없어지고 서버 시작시 다시 생김 ServletContext / session 

--------------------------------------
AJAX
page를 바꾸는것이 아닌 event받아 페이지 일부분만 변경
SPA(single page application)
e.g. Facebook



--------------
paging 처리 template : cPage, numPerPage
SERVER 주소
  rclass.iptime.org:9999/프로젝트명
DB 디벨로퍼 접속해서 new connection >
    사용자계정: parking
    비밀번호: 1234
    호스트명: rclass.iptime.org
    포트:9879

mr.getOriginalFileName(file parameter);

**********************************************
HW!!!!!!!!!!!!!!!!
filter로 /admin/memberList 접근 못하도록 해보기

DB에서 delete 한 다음에 history에 지운 기록 넣으려면 trigger이용

http://www.servlets.com/cos/
cos.jar -> WEB-INF > lib
  for file upload/download

**********************************************
페이징 처리할 떄 필요한 변수들
cPage : 현재 클라이언트가 보고 있는 페이지
numPerPage : 페이지당 출력될 데이터 수
totalPage : pagebar에 있는 총 페이지번호 개수 ==  (데이터 num/ numPerPage)
            전체 페이지 수. pagebar [1 2 3 ... n] 링크 걸음
            1번 클릭식 1~numPerPage 개수 만큼만 db에서 select
            [ex] 5개 출력할 때 100개의 자료가 있다면 전체 페이지수 totalPage=20
totaldata : DB에 있는 전체 데이터 select * from table_name;
pageBarSize : [1 2 3 4 다음] 20페이지 있어도 4개 페이지만 표현 == pageBarSize=4
              pageBar 표현 숫자 갯수
pageNo : 페이지 번호를 만들어 주는 변수
         [ex] 1 2 3 4 5 | 6 7 8 9 10 |

페이징 처리 공식 
totalPage구하는 공식 : totalData/numPerPage (올림 처리)
  ** 소숫점이 나오면 무조건 올림 할 것!
     올림하지 않으면 나머지 자료를 평생 볼 수 없음!

자료를 선택해서 가져오는 공식(Database에서); ROWNUM 이용 공식
  시작,끝 = (cPage-1)*numPerPage + 1, cPage*numPerPage
  [e.g] WHERE ROWNUM between (cPage-1)*numPerPage + 1 and  cPage*numPerPage

pageBar를 구성할 때 pageBarSize에 의해
1~5 6~10 : (cPage-1/numPerPage)*numPerPage + 1



select * from member;
--순서를 정한 query문 작성하기!
--rownum! from 이 정해지는 순간 row에 번호를 부여.
select ROWNUM, a.* from member a
  where ROWNUM between 1 and 5;

select ROWNUM, a.* from member a --안나옴!!!
  where ROWNUM between 6 and 10;


---------------------------------
eclipse preference - web - template


gitignore.io
prince2153

----------------------------------------------------------------
git 형상관리, 버전관리 프로그램!
what! 버전관리??
버전관리 모델:
1. 클라이언트-서버 모델 (중앙 시스템)
2. 분산관리 모델 : 원격 repository / local repository(본인)

모델: cvs, svn(중앙관리), git(분산관리)

git 중요개념
  1. 파일 관리 상태
    1) committed : 파일이 local 데이터베이스(하드)에 안전하게 저장된 상태
                   --> commit 명령어로 저장한 파일
    2) modified : 파일을 수정한 상태, commit되지 않은 상태
    3) staged: : 수정한 파일을 commit하기 바로 전 상태

  2. 파일관리 상태에 따른 영역
    1) GitDirectory : 프로젝트의 핵심 코어부분을 저장하는 저장소
                      (프로젝트 메타데이터, 객체 데이터베이스 등을 관리)
                      즉, 프로젝트 자체를 저장
                      윈도우 사용자 폴더에 .git 폴더
    2) WorkingDirectory : gitDirectory 저장되어 있는 각 버젼별 프로젝트를 checkout하여
                          받아오면 코어를 갖지고 프로젝트를 가져오는 저장소
                          즉, 작업장(프로젝트 수정)
    3) StagingArea : commit할 파일들을 모아서 관리하는 영역, index가 부여된 파일들

동작 구조
  localrepository 에서 branch로 체크아웃(branch로 이동)
  --> git directory에 프로젝트 저장
  --> working directory -> 프로젝트 수정, 개발
  --> 수정, 개발 내용을 StagingArea에 넣음
  --> commit-> gitDirectory

working Directory 내부에서 파일관리
1. tracked : git에서 관리를 하는 파일
2. untracked : git이 관리 하지 않는 파일
-> tracked로 바꿀려면 인덱스

localgit을 사용하는 것이 아니라
원격에 있는 서버 git 사용

저장소!!! 저장소 2개로 나뉘어짐
1. local repository 개발자 컴퓨터에 저장
2. remote repository 서버컴퓨터의 저장소
분산관리이기 때문에 두개다 히스토리를 가지고 있음
로컬 vs 원격 branch 다를 수 있음
  -> sync 할 수있음

원격 repository와 localrepository에서 파일 처리 용어
  commit: repository에 저장하는 것(git directory) (staging)
  pull: 원격(remote) repository에서 project를 가져 오는 것
       * merge까지 자동으로 함 (pull == fetch & merge);
  push: local repository의 프로젝트는 remoterepository에 올리는 것!
  fetch : remote(원격) repository에서 프로젝트를 가져오는 것.
       * merge하지 않고 임시로 저장 하고 있음.
         따로 관리자가 merge를 해줘야 함.

1. 다양한 개발 툴 git 이용하는 것을 제공
2. github가 제공하는 gitdesktop, sourcetree, eclipse에서 git 관리하는 플러그인 제공(e-git)

  eclipse - project r_click -team -share project

  project r_click - replace with - initial commit으로 돌아가도,
  새로 생긴 directory/project는 revert안됨: 직접 delete





----------------------------------------------------------------



login session 구현 + 회원가입 homework -> webshare upload

--8.20 interface 구현
-----------------------------------------------
  JDBCTemplate.java
  외부에서 load : .properties

ERROR page 처리: try~catch로도 가능
서버에서 페이지 변경 dispatcher/redirect
  - exception 발생시 dispatcher로 보냄
<a><form> location.href=""

로그인 상태관리
  - 저장할 수 있는 것 : Session, Cookie /web storage

MVC 패턴, resource, controller 해당 안되는 것
session 무효화 시키는 것
  invalidate()
  session.setMaxInactiveInterval(interval);
  Server-xxxx\web.xml에서 session-config으로

서블렛 response중에 stream 열수 있는
writer / inputoutput stream
서버가 바깥으로 보내는것 FileOutputStream

servlet lifecycle
-----------------------------------------------

- session(server가 관리)
- cookie(client 브라우저가 관리)
  쿠키에 저장된 데이터를 clien가 관리.
  단, 쿠키저장 지시는 server가 요청을 해서 관리를 함.
  쿠키는 저장한도, 최대 저장크기 5kb.

쿠키활용: db에 저장하기에는 중요도 낮음.
        클라이언트가 저장한 임시저장 데이터
        장바구니 최근본 상품, id저장(checkbox)
        id값을 저장하고 자동으로 불러오는 기능을 쿠키로 구현
        db혹은 web server 운영되는데 문제없는 데이터들

server는 요청을 받고 응답하고 나면 stateless때문에
이전페이지 로그인 유저 기록 없음
    <a href="<%=request.getContextPath()%>">Home</a>클릭시,
    로그인 안된 상태로 보여짐 (statement) page보내고 나면 그것에 대한 정보를 없애버림

    1. session을 이용해서 이 데이터를 저장해서 유지하도록 함!!!
      - server(WAS)에서 관리
      - 페이지 이동해도 login 유지!
      - id 주소를 보냄
      - cookie라는 저장공간에 넣어서 보냄
    2. cookie도 보관하는 용도
      - server가 브라우저한테, 접속할때마다 cookie 가져오도록 함 : client에 저장
      - hacking 위험 있음
      - id 저장!
      - 직접 데이터 보냄
      - cookie라는 저장공간에 넣어서 보냄

f12 = application-Cookies -sessionID


Client id/pw 로그인
  -> Servlet에서 business logic(->service->dao에서 Member 객체를 받음)
      Member m이
      == null msg.jsp->index.jsp 이동할 때 request에 attr 담아넘김
      !=null index.jsp

web폴더:
  view css js upload(files)
WAS 배포 -> linux 세팅
  WEB-INF는 dispathcer에서 접근?

1. web/web사용자 계정 만들기
  1) 로그인 view구성
  2) 로그인 기본처리 BL처리

2. content 분리하기
  <%@ include file="">
  지금 설정한 index.jsp header, footer 분리해서 처리!





lifecycle 소멸시점
  application
  session
  request: 요청 들어왔을때
  page: 페이지 안에서만

<%! %> class 멤버변수+멤버메소드 구현할 때
<%%> java 메소드 안에 들어가는 코드

jsp 태그는 작성 순서 상관 없음

doGet과 유사한 jspService가 jsp가 java코드로 변환되면서 .java에 정의됨.

C:\Users\user1\KH\KH_java\Server\first_workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\work\Catalina

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

servlet 수정 시 server restart
JSP 수정 시 자동으로 반영됨 (dynamic compile)

- Listener Filter Request 예제 5개씩 -> webshare

- Listener
  servlet는 was(container)에서 생성주기 관리. container가 listener객체를 만들어 놓음
  listener걸어서 이벤트를 실행.
  dd(deployment decriptor 설정)


--REVIEW--
servlet url 관계 : 1대1로 mapping!
1. web.xml에서 서블릿등록. url패턴등록 하는 방법
2. annotation @WebServlet(urlPatterns = "urlpattern")을 이용하는 방법

client 데이터 전송하는 객체
HTTP Request(프로토콜) -> container가 packet을 기능별로 
                         두가지 객체 (HttpServletRequest, HttpServletResponse) 쪼개서 보관
HttpServletRequest : 주로 데이터 관리하는 부분
    request객체가 가지고 있는 메소드를 이용
    getParameter("key값"); //client가 보낸 값을 확인/출력
    getParameterValues("key값")
    //client가 보낸 한개의 key값에 다수의 value 확인/출력
    request.setAttribute(key,value);
    //는 request객체만 사용가능. value에는 모든 객체 Object 가능
    //int double float등 기본자료형도 auto boxing으로 value에 지정가능

    request.getAttribute(key);
    //value값이 Object자료형 이므로, (Object-> MyClassType) 형 변환 필수!
    MyClassType obj = (MyClassType)request.getAttribute("key");

    request.getSession();
    //request이용해서 Session객체를 생성/불러올 수 있음
    //ServletContext는 HttpServlet을 extend하므로 다음이 가능
    ServletContext context = HttpServlet.getContext();

    Session, Context객체 데이터 보관 및 데이터 생존주기
    Session : getSession() 생성 -> session. invalidate(); 소멸
    Context : server가 올라가면 생성 -> server가 꺼지면 소멸

    추가 데이터 삽입
      setAttribute(key,value); getAttribute(key);

    request생성주기
    client에 서버에 대한 요청이 있을때 생성
    url창의 서버주소의 mapping된 서블릿주소를 쓰면!
    서버가 client 응답이 완료되면 소멸
    redirect하면 url바뀌면서 기존 request소멸
    dispathcer하면 url안바뀜 기존 request유지됨

HttpServletResponse : client에게 응답해줄 내용. print/write



--PRAC--
  url: info.do
  infoServlet.java
  return view:
  안녕하세요 저는 000입니다.
  infoServlet.java


  servlet 생성방식
  1. class 추가 + web.xml에 servlet
  2. @WebServlet("/anno.do")

  sendRedirect login 제출시 url 바꿈: login하고 redirect-> main 화면 ('hi 000님')
  vs
  dispathcer url 안바꿈 : 최초주소로 그대로

  --- Servelt / JSP ---
  client -> request page to server
    [e.g.] <form> <a> location href replace assign open
  WE WILL USE : 
    Web server(Tomcat) & DB server(Oracle)

  WAS(WEb application server) : also has Web server functionality
    WAS(동적인 페이지) vs 정적인 페이지
    개인PC가 WAS 서버 + DB서버 하게 됨

  - jsp(view)
  - servlet : controller (page data)


Web container: client request
  -> Container automatically run (jsp/servlet logic) based on client request

--- Tomcat server, Web container 환경 구축 ---

Download apache-tomcat-8.5.43-windows-x64.zip

bin: 톰켓이 구동되는데 필요한 파일 보관
  shutdown.bat startup.bat
conf: 톰켓이 구동되는데 필요한 환경설정 파일 xml, properties 파일
  - catalina.properties
  - context.xml 환경설정 파일을 찾아가는 기본 경로 정의
  - server.xml 네트워크 통신 할때 어떤 port 사용할지, application이 뭔지 등 환경설정
      HTTP 통신할때 port. ORACLE port conflict! 8080->9090 or 80(unused IIS server port)
      <Connector port="8080" protocol="HTTP/1.1" ...>

      HTTPS 통신하려면 다음 부분 uncomment(인증키[유료] 받아서 입력)
      <!--
      <Connector port="8443" protocol="org.apache.coyote.http11.Http11NioProtocol"
          maxThreads="150" SSLEnabled="true">
        <SSLHostConfig>
          <Certificate certificateKeystoreFile="conf/localhost-rsa.jks"
                type="RSA" />
        </SSLHostConfig>
      </Connector>
      -->

      <Host name="localhost"  appBase="webapps" unpackWARs="true" autoDeploy="true">
      어플리케이션 등록시 맨밑에 <Context> 태그 추가
    
      서버에 대한 설정 : 
      <Valve className="org.apache.catalina.valves.AccessLogValve" directory="logs"
              prefix="localhost_access_log" suffix=".txt"
              pattern="%h %l %u %t &quot;%r&quot; %s %b" />
      
  - tomcat-users.xml
    특정 privilege 있는 user만 접속 가능 하도록

  - web.xml //!important
    web application에 대한 정보. 어떤 servlet과 연결할 건지 등 환경설정
    // 'a' servlet 실행해

    //version controll
    <web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee
              http://xmlns.jcp.org/xml/ns/javaee/web-app_3_1.xsd"
    version="3.1">
    eclipse에서는 2.5로 default. 따라서 3.1을 복사해서 붙여넣음
    <servlet> servlet container 등록
      servlet-name 변수 web.xml에서 맵핑
        <load-on-startup>1</load-on-startup> 제일먼저 실행
    
    유저가 직접 만든 servlet을 web.xml에 이런식으로 추가.
    <servlet>
      <servlet-name>default</servlet-name>
      <servlet-class>org.apache.catalina.servlets.DefaultServlet</servlet-class>
    </servlet>

    서블릿 컨테이너
    <servlet>
      <servlet-name>default</servlet-name>
      <servlet-class>org.apache.catalina.servlets.DefaultServlet</servlet-class>
      <init-param>
        <param-name>debug</param-name>
        <param-value>0</param-value>
      </init-param>
      <init-param>
        <param-name>listings</param-name>
        <param-value>false</param-value>
      </init-param>
      <load-on-startup>1</load-on-startup>
    </servlet>

    -> JSP에 넘겨줌
    <servlet>
      <servlet-name>jsp</servlet-name>
      <servlet-class>org.apache.jasper.servlet.JspServlet</servlet-class>
      <init-param>
        <param-name>fork</param-name>
        <param-value>false</param-value>
      </init-param>
      <init-param>
        <param-name>xpoweredBy</param-name>
        <param-value>false</param-value>
      </init-param>
      <load-on-startup>3</load-on-startup>
    </servlet>


    url 주소와 실행되야 하는 servlet 맵핑 : 
    <servlet-mapping>
      <servlet-name>default</servlet-name>
      default servlet :  http://localhost:9090/
    <servlet-mapping>
        <servlet-name>myservlet</servlet-name> url 주소와 실행되야 하는 servlet 맵핑
      my servlet :  http://localhost:9090/myservlet/


    <servlet-mapping>
        <servlet-name>jsp</servlet-name> url 주소와 실행되야 하는 jsp 맵핑
    *.jsp

    Filter	
    <!--
      <filter-mapping>
        <filter-name>httpHeaderSecurity</filter-name>
        <url-pattern>/*</url-pattern>
        <dispatcher>REQUEST</dispatcher>
      </filter-mapping>
    -->
      
      <session-config>
          <session-timeout>30</session-timeout>
      </session-config>

      <mime-mapping>
          <extension>123</extension>
          <mime-type>application/vnd.lotus-1-2-3</mime-type>
      </mime-mapping>

    browser가 해당 파일을 자동으로 css로 인식하도록
      <mime-mapping>
          <extension>css</extension>
          <mime-type>text/css</mime-type>
      </mime-mapping>

      <welcome-file-list>
          <welcome-file>index.html</welcome-file>
          <welcome-file>index.htm</welcome-file>
          <welcome-file>index.jsp</welcome-file>
      </welcome-file-list>

webapps: !important
  tomcat 구동시 webapps > ROOT> index.jsp 실행됨


// server.xml 8080 -> 9090
  <Connector port="9090" protocol="HTTP/1.1"
              connectionTimeout="20000"
              redirectPort="8443" />

서버구동 (1. cmd로 실행 방법)
  다음 경로에 index.html 과 images css 디렉토리 붙여넣음
  C:\... \apache-tomcat-8.5.43\webapps\ROOT

    http://localhost:9090/에서 해당 index.html 볼 수 있음
  \Server\apache-tomcat-8.5.43\bin에서 shift+R_click
  startup.bat (WIN7)
  ./startup.bat (WIN10)
  http://localhost:9090/
  http://localhost:9090/index.html/
  http://192.168.20.238:9090/


서버 닫기
  shutdown.bat (WIN7)
  ./shutdown.bat (WIN10)


--- Eclipse UTF-8 workspace $TOMCAT_HOME\webapps ---
  workspace 바꿀때 마다 Encoding 설정 -> UTF-8 바꿔줘야함
  General - Editor -TextEditor- spelling
    Workspace
  JSON - jsonfles, CSS, HTML -> ISO 10646 UTF-8

Setup server
  preferences - Server - Runtime Environment - Add Tomcat 8.5
  show view -server : server tab에서 click this link to create a new server.

Change Server setting: server double click->
  RUNTIME environment add
    Tomcat Server name: use default servername or 'webTestServer'
    tomcat dir: $TOMCAT_HOME (apache-8.5)
    :eclipse에서 돌려주는 가상 tomcat server

  server 밑에 tab에서 add server 
    servername(= illegalparking) 통일 시켜야 함 
    jdk버젼도 통일해야함

  CMD에서 하는 방법하고 비슷함.
  CMD에서 shutdown.dat 한다음에 실행

  - localhost:9090 접속하면 HTTP 404 NOT FOUND
    서버는 정상 작동 하지만(tomcat에서 응답은 받을 수 있음),
    index.html 맵핑된 페이지를 못찾아서 뜨는 메시지
  - 정상적으로 index.html 찾으면 200코드 (성공) return

  server stop & double click -> server setting tab open
  server.xml gui 버젼
    Server Option
      serve modules without publishing check!
      폴더 경로 없이 프로젝트 폴더에서 찾을 수 있도록
    Ports
      avoid oracle 8080 conflict
    실제 port는 변경안됨. eclipse로 연결한 가상 tomcat server port만 바뀜

  TimeOut:
    packet이 응답받는 시간 초과시 멈추도록

    tomcat default 위치 팀원들끼리 다를때:
      General Information > Runtime Environment 에서 
    tomcat 서버 위치 바꿀 수 있음.
      Open Launch > classPath (내 tomcat 위치 및 jdk 위치에서 참조함)
        팀원들 끼리 경로에 맞춰서 수정해야함

Project Explorer -> New -> Dyanmic web project
  build\classes -> web\WEB-INF\classes
  Generate web.xml deployment descriptor

  01_firstWeb > Java Resources > src (java package + codes)
  WEB-INF에 web관련 소스

Show View -> navigator
  WEB 배포시 WEB-INF만 올라가므로 이 폴더 안에 classes에
  java compile binary 폴더를 만듦

R_click - new 했을때 목록 나오도록
Eclipse customize perspective > shortcut > java package > package
              > java EE
              > javascript source file
              > web > jsp tag, static web proj, web fragment proj 제외 하고 check

context.xml
  <!-- 01_firstWeb - web\WEB-INF\web.xml이 없으면 -->
  <!-- ${catalina.base}/conf/에서 web.xml 찾음 -->
    <WatchedResource>WEB-INF/web.xml</WatchedResource>
    <WatchedResource>${catalina.base}/conf/web.xml</WatchedResource>

web.xml
  <welcome-file>index.html</welcome-file>만 남기고 comment처리

서버 가동전 Server R_click -add and remove -> 
           01_firstWeb(available-> configured)
server.xml <Context> 추가 됨 서버에 배포
      <Context docBase="01_firstWeb" path="/01_firstWeb" reloadable="true" source="org.eclipse.jst.jee.server:01_firstWeb"/></Host>

server start -> 

URL : http://localhost:9090/01_firstWeb/
<Context path="/01_firstWeb>

URL : http://localhost:9090/
<Context path="/> 

--> 404 ERROR 서버 실행은 됐으나 file not found
    web디렉토리 : add - new - html5 - 'index.html'

html > ctrl+ f11 ->finish( Windows-browser-select default web browser)
java src -> package
import javax.servlet.http.HttpServlet;

서버 실행시 web.xml 읽음
	<a href="mappingCheck.do">첫서블릿 연결</a>

	<!-- mappingCheck.do == Parking/mappingCheck.do-->
	<!-- NOT FOUND 404 : CREATE servlet-->
	<!-- http://localhost:9090/Parking/mappingCheck.do -->
	<!-- ctrl+F11 -->
  => web.xml 수정
    <servlet>
      <servlet-name>firstServlet</servlet-name>
      <servlet-class>com.firstweb.controller.BasicMapping</servlet-class>
    </servlet>
    <servlet-mapping>
      <servlet-name>firstServlet</servlet-name>
      <url-pattern>/mappingCheck.do</url-pattern>
    </servlet-mapping>
    <!-- http://localhost:9090/Parking/mappingCheck.do -->






---
19-08-04(preview)
- server구축
    apache tomcat download (HTTP/1.1 Port Number: 80 To avoid duplication of ORACLE port 8080)
    eclipse - file - new - server
    eclipse - file - new - Dynamic Web Project (illegal parking)
                         - Default Output Folder(.class files) : web\WEB-INF\classes
                         - Content directory: 'web'
                         - check 'Generate web.xml deployment descriptor'
    ENV VARIABLE (SYSTEM VARIABLE)
        TOMCAT_HOME : C:\Program Files\Apache Software Foundation\Tomcat 9.0
        classpath :  %TOMCAT_HOME%\lib\jsp-api.jar;
                     %TOMCAT_HOME%\lib\servlet-api.jar;
    
    %TOMCAT_HOME%\conf\server.xml (Open as admin)
        <Context path="\illegalparking" docBase="ROOT" debug="0" reloadable="true />
        
    %TOMCAT_HOME%\webapps\ROOT\WEB-INF\web.xml -> (copy) -> parking_KH\illegal parking\web\WEB-INF

    <!-- web.xml에 추가 -->
        <servlet>
          <servlet-name>default</servlet-name>
          <servlet-class>org.apache.catalina.servlets.DefaultServlet</servlet-class>

          <init-param>
            <param-name>debug</param-name>
            <param-value>0</param-value>
          </init-param>
          <init-param>
            <param-name>listings</param-name>
            <param-value>true</param-value>
          </init-param>

          <load-on-startup></load-on-startup>

        </servlet>

-------------------------------------
8.5 시험
HTML 태그는 버튼을 표시하고, 버튼을 클릭하면 show()함수 구현되도록 html작성
1. btn id = 'btn'
2. 보여질 글자: "Click Me!"
3. show() 정의
4. alert() 실행되게 한다.
5. 출력내용은 버튼에 보여지는 글자를 읽어서 출력되게 한다.

<html>
<head>
</head>

<body>
    <!-- <button id='btn' onclick="show()">Click Me!</button> -->
    <button id='btn'>Click Me!</button>
    <script>
        function show(){
            alert($('#btn').text());
        }
        $('#btn').bind("click", show);
        $('#btn').show();
    </script>
</body>

</html>

화면구현 html css javascript
coding VSCODE X
button + event
html5 semantic 구조화 시켜서 배치 관리
  header nav section article aside footer

tag별 기능/사용법
  a ol ul ruby(윗첨자) 
<ruby>
    a <rt> 	&#x302; </rt>
</ruby>
<dl>
  <dt>DL(Definition List)</dt>
  <dd>정의(어떤 아이템을 규정하고 설명하는 것 의미) 리스트 표시</dd>
  <dt>DT(Definition Term)</dt>
  <dd>용어부분</dd>
  <dt>DD(Definition Description)</dt>
  <dd>설명부분</dd>
</dl>
form

공백 &nbsp; A non-breaking space
&lt; texthere &gt; brackets
show()
    Display the matched elements.
alert()
    Display an alert box

단일 tag
  br hr input (name)

  attribute (name, class, id)

device 다양화 되면서 나온 앱

tag 종류 표 만들때 table

Event 종류별로 어디에 해당 하는 지
web에서 web ui를 구현하는 언어 frontend?

Javascript AJAX svg USECASE ul html css 설명

USECASE
    a use case is a list of actions or event steps typically defining
    the interactions between a role(known in the UML as an actor)
    and a system to achieve a goal.

AJAX(Asynchronous JavaScript And XML)
페이지 전환하지 않고 서버에서 데이터를 받아와 사용자에게 보여줌
AJAX is not a programming language.
AJAX just uses a combination of:
  - A browser built-in XMLHttpRequest object (to request data from a web server)
  - JavaScript and HTML DOM (to display or use the data)
HOW AJAX WORKS?
1. An event occurs in a web page (the page is loaded, a button is clicked)
2. An XMLHttpRequest object is created by JavaScript
3. The XMLHttpRequest object sends a request to a web server
4. The server processes the request
5. The server sends a response back to the web page
6. The response is read by JavaScript
7. Proper action (like page update) is performed by JavaScript
-------------------------------------


기획안+ wireframe 
SEMI 프로젝트에 올림

- react JS
  :html기본 layout만 만들고, javascript로
  전부 content 넣음

과제: 선택자예제 10개만들기
  - 대표 선택자 제외(클래스, 아이디 등)
  - 선택자 접근해서 css변경
  - 웹쉐어 폴더에 제출
tag,class,id로 찾는 것 제외하고
jquery로 css 접근해서 바꾸는 예제 10개 만들기


        #myCarousel2 > .carousel-inner > .carousel-item img {
            position: absolute;
            top: 0;
            left: 0;
            min-width: 100vw;
            height: 100vh;
            max-width: none;
            object-fit:cover;
            object-position:center;
        }
        <!-- 1024 x 768 SEMI 해상도-->

SQL DEVELOPER MS949-> UTF-8

BOM + DOM -> web development

채팅기능
    https://opentutorials.org/course/3084/18597


javascript 
ajax-> request page
(<a> <form> tag can request also but javascript can do it better)

SERVER LANGUAGE
  JSP: use multithread
  Node.js: single thread

Compile 언어
  - 한방에
Interpreted Language(light)
  읽는 순간 기계어로 바꿈

<tag> == Object

F12 - Network 
link로 연결된 요청 및 실패 전송 (빨간색)리스트 표시

Application - session cookie

javscript(interal)
  BODY 제일 밑에 <script></script> 선언권장.
javascript(external)
  HEAD에서 제일 밑에 <script></script>

f12 setting preferences debugger : disable javascript

EACH browser has an interpreter
  - Chrome : V8(compiler, script parser) interprets .js
        scans html -> (READ var func name -> memory)
        hoisting allows to read all var/func 
        and allows to execute regardless of order of declaration

DATA INPUT/OUTPUT
  data: tags
  console.log(): for debugging




https://fonts.google.com/?subset=korean

1. gui 화면설계

각각 기능, 이미지, 기능들의 구현
화면에 시각적으로 그래픽으로 보여줌
클라이언트가 보는화면
특정 이벤트를 발생하여 사용자에게 기능을 제공

2.  UI 요구사항

화면설계전 사용자가 원하는 화면구성
문제해결, 목적을 달성하기 위해 고객의 요구를 해결
ui 요구에대한 명세서를 요청 확인
서비스의 제약 사항확인
고객의 요구한 사항과 요구하지 않은 사항을 확인
가장 쉽고 저렴한 방법을 모색
*  프로그램의 기능은 ui요구사항이 아님(기능적인면)

3. ui설계서
왜설계서를 만들까?
상호간의 의사소통을위해 사용됨

4. 웹 사이트 상용화
사용성을 높이기 위해서는 기본 기능 이상의 기능을 구현하여
사용자의 사용을 증대 시켜야함

5. ui설계 표준항목대상
데이터 처리규칙

6. ui설계 현황
하나의 객체의 (태그) 설계시 여러가d KEY지 사항을 고려
디자인의 표현대로만 ui측면의 기능을 구현할 수 없음

7. 이해관계자(클라이언트, 웹퍼블리셔, 디자이너) 문서 작성시
클래스 다이어그램이 필요하지 않음(어플 백단위에서 사용됨)

8. 화면설계 용어
프로토타입(정답)
- 미리 임시로 화면을 설계&구현(******)
와이어프레임
- ui중심의 화면 레이아웃을 설계
목업
- 실무화 흡사한 형태 구현
스토리보드
- 진행 절차, 프로세스, 디스크립션, 와이어프레임들 진행

9. 사용성
스크롤바을 너무 이용하게 하면 사용성이 떨어짐

----------------------------------------

10. use case 다이어그램
액터(기능)을 도식화해서 흐름을 그려낸것.
예)학생, 교수, 사서, // 기능(행동), 대출(시간), 도서주문 시스템등
전체적인 흐름을 그려낸 도식

11. ???
로긴->(유스:로긴 관리 기능/로긴.로긴아웃),
개인정보관리(자신의 신상, 대출, 관리정보) 수정 관리
소장자료검색기능(키워드로 이용가능은 소장도서 검색기능, 구매상항 조회 신청)
대출신청기능(학생, 교수가 도서를 검색해서 도서신청 요청, 대출신청(자동대출 기능)
반납기능(반납신청(자동))
도서 구매신청 관리기능(사서(액터)가 관리) 주무한 시스템의 주문사항을 전체적을 관리(취소등)
사서는 도서 정보를 등록(제목, 저자, 출판사) 등록, 수정, 삭제 가능
 - 개별도서 관리도 가능

12. ui 설계목적
서로 상호
설계에 포함사항
제목, 버전 , 프로젝트, 페이번호, 기본적인 메타정보, 
와이어프레임, 스토리보드, 웍 플로우, iae메뉴 구성


13. 개념정리
프로토타입(정답)
- 최종 결과물을 비슷하게 서비스를 구현하여 시뮬레이션할 샘플
와이어프레임(빠른 스케치)
- ui중심의 화면 레이아웃을 설계
목업(mockup)
- 실무화 흡사한 형태 구현
스토리보드
- 진행 절차, 프로세스, 디스크립션, 와이어프레임들 진행
- 디자이너와 개발자가 참여하여 최종산출물의 담긴 정보

14. ui 설계 고려사항
ui 화면과 실제화면과 동일 한 작업
컨텐츠 배치는 이유와 목적이 분명해야함
메인과 서브페이지 컵셉의 ui 설게
모든 기획은 사용자 입장
화면설계는 직관적

[STORYBOARD]
Focusee a prototype, doesn’t require technical competency to build
Look and feel is more important than what you see in a wireframe, 
    but need not match the look and feel of a prototype
More emphasis on the users, and how different views and content 
come together to deliver what the user is looking for.

[WIREFRAME] (blueprint)
It shows the main chunks of content
It draws the outline and the layout structure
It depicts the most basic UI

Focuses on What the interface would resemble
Objective is to brainstorm and so wireframe need not be an exact match 
    to end product.
Contains one or more static, rough cut screenshots. 
Wireframe can even be an image. Look and feel is not important.
It focuses more on screen layout than on functionality and navigation

[MOCKUP]
A mockup is a visual way of representing a product. 
While a wireframe mostly represents a product’s structure, 
a mockup shows how the product is going to look like.
...

[PROTOTYPE]
A prototype is often a high fidelity representation of the final product 
which is meant to simulate user interaction. 
Unlike the previous two, a prototype is clickable and thus allows 
the user to experience content and interactions in the interface. 
In fact, a prototype is very much like the final product itself.

Focuses on What the end product would look and feel like
Objective is to get a sign-off prior to development
Must be built on the dashboard tool/technology of choice 
    and so it needs technical competence.
It may have data that is static and simulated
It need not be connected to a data source
The look-and-feel more or less resembles a final product than a wireframe
It should respond to user interactions

(WIREFRAME -> MOCKUP -> PROTOTYPE)

1. 화면설계 gui
유저인터페이스에 대한 것들
유저인터페이스는 컴퓨터에서 쓰는 client가 보는것 사용자간의 특정한 기능들을 접하게 함

2. 화면설계전 화면ui요구사항
사용자가 프로젝트 처리할때 목적을 달성하기 위해 고객에 요구사항을 받음 (문제해결)
ui요구를 했을 때 그거에 대한 명세 작성 서비스 제약사항 
고객이 요구한 사항과 욕하지 않을 것들
고객이 요구하지 않았지만 프로그래머로써 해야할 것들/ 사용자들이 잘 모르는 것
가장 쉽고 저렴한 방법으로 해결모색
요구사항 받으면 명세서 작성  - 시스템 내부 작성, 프로그램 특정 구조 알고리즘은 요구사항이 아님
설계서 - 왜 설계서를 만들까? ui설계시 서로간의 의사소통을 위한 것
웹사이트 설계시 (사용의 성과에 대해) - 사용성을 높이기 위해서는 기대한것보다 더 잘 설계
ui설계시 웹 디자이너가 만든거를 그대로 하면 안되고 태그 하나하나 고려해야함 프로그래머 설계하는 입장에서도 고려
여러 이해관계자들의 이해관계 / 클라이언트 웹디자이너 웹퍼블리셔 개발자 / 사이에서 클래스 다이어그램 안 필요함 
ui설계서 커뮤케이션을 위해서 만듬 ui설계문서에 반드시 포함되어야 할 사항
제목 버전 프로젝트
페이지번호 기본적인 설계내용
와이어프레임 들어가야함
스토리보드
워크프레임 
메뉴구성

<개념정리 공부>
와이어프레임 : 레이아웃을 설계하는 작업 헤더는 어디, 푸터는 어디에 위치 
스토리보드 :  디자이너, 개발자가 창조하는  / 새로운 것(?)
프로토타입 : 실제서비스와 비슷한 모형으로 만듬
(wireframe -> mockup -> prototype)

<ui설계시 고려할 사항>
ui 실제 작업은 동일 
컨텐츠 구성은 이유와 목적이 확실해야함
어떻게해서 만들었는지
사업전략 컨셉을 잡아놓은 ui를 설계
모든 기획은 사용자입장에서 계획
화면설계와 문서는 직관적으로 설계


<유스케이스 다이어그램>
actor가 있고 행동을 할때 그거에 대한 것들을 명시 
도서관리프로그램 > actor 학교 교수 학생 사서
       actor 기계 시간체크 대여시스템
actor를 기준으로 도서 관리 전체적인 흐름을 말함

<프로그램 설계시>
1. 로그인관리의 기능 학생, 교수, 사서의 로그인 기능
2. 정보관리측면에서의 개인정보을 조회 및 수정 
3. 도서관리프로그램 소장 자료 검색기능 / 구매사항조회(신권) / 대출신청기능 및 취소
4. 사서가 입수한 신권들의 데이터를 저장


화면설계용어 (4개중 설명 다른거 하나있음) 
프로토타입 : 미리 임시로 화면을 구현되게 설계해놓음 - (정답)
와이어프레임 : ui 중심의 화면 레이아웃 설계 
목업 : 시각적으로 실물과 흡사한 형태
스토리보드 : 프로세스 정책 와이어프레임 디스크립션 모두 포함된 것을 말함

(wireframe -> mockup -> prototype)

(ui설계시 표준항목대상 - 데이터처리규칙) - (정답)
-------------------------------


화면설계 시험
GUI
  user interface
UI 요구사항
  목적 달성위해 요구사항 반영
  
고객의 요구사항 바탕으로 명세서 작성
  서비스 제약사항 파악
  쉽고 저렴한 방법으로 모색

UI 설계문서
  커뮤니케이션위한 문서

website 설계: 사용성 높여야함.
  요구사항 보다 더 상세히 설계

요구사항 데이터 처리위치

UI 설계시 tag element 올려놓음
  디자이너와 구현 가능성 조율

화면설계시 문서 작성: 
  - prototype : 미리 임시로 구현되게
  - wireframe : 화면 layout 설계
  - mockup : 실물과 흡사한 형태 만들어 놓음
  - storymode : wireframe, description 포함
(wireframe -> mockup -> prototype)
사용성

usecase 다이어그램 actor들이 행동을 할때, 명시. 공식화 해서 그려놓음.
  교수 학생 사서
  로그인을 먼저 함.

로그인 관련 기능은 시스템을 이용하기 위해 log in log out 기능
개인 정보 관리 하려면, 자신 신상정보 관리
조회 및 수정 할 수 있어야함.
소장자료 검색 기능. (keyword로 검색가능), 구매사항 조회.
대출 신청 기능.
학생 교수: 대출 신청한 도서를 도서관에서 자동 대출.
구매신청 내역을 사서라는 actor가 관리. 주문시스템으로 신청.

UI 설계서 작성 목적: 커뮤니케이션

UI 설계문서에 포함되어야 할 사항
1.제목 version project
2. wireframe : layout 설계
3. storymode : 디자이너와 개발자 최종 산출물
4. workflow
5. iaa 메뉴구성도

(wireframe -> mockup -> prototype)

wireframe prototype storymode!!!

UI설계시 고려해야 할 사항
  - 동일한 작업
  - 컨텐츠
  - 모든 기획은 사용자 입장
  - 화면설계와 문서작성 직관적으로 작성해야.
----------------------------------------


7.17 SEMI CONFIRMED BY LECTURER
kakao google tmap
  - api navigation 기능 여부

https://www.opentutorials.org/course/1
https://flukeout.github.io/

- 자기 위치정보 가져오는 Geolocation API
- 전국주차장 api보면 남은 자릿수 확인 X
- 결제시스템 API : API JSON 가져와서 코딩예제


HTML
https://www.w3schools.com/

SEMI
https://www.tutorialspoint.com/compile_java_online.php
https://github.com/yashchauhan28/Online-java-compiler
https://github.com/jitu167/Online-Java-Compiler
https://kldp.org/node/119228
https://github.com/liaoyu/rcapp


1. SNS
    facebook/twitter/instagram/ 등 비슷하게 만들기
    
2. 실시간 헤드라인 뉴스
    https://hckrnews.com/
    https://news.hoxly.com/
    - 유저가 (제목 + 뉴스링크) 게시글 등록
    - 웹크롤링: 웹에서 데이터를 가져옴. keyword 기준으로 뉴스 리스트를 가져옴
    - 유저 추천수 및 댓글 기능.

3. 실시간 가격비교 사이트
    http://www.danawa.com/
    - 웹크롤링으로 가격정보 웹에서 추출

4. 웹코딩
    https://leetcode.com/problems/two-sum/
    - 웹상에서 코딩
    - 자동완성 기능 / syntax 색깔넣기
    - 프로그래밍 챌린지 quiz 및 보상 시스템

웹코딩, 여행, 시뮬레이션 등 주제 3가지. 디자이너가 아니기때문에 기능적인부분 집중. 
회사에 제안시 주제를 선택한이유, 기능이 유용한지에 대해 간략하게 준비

- SEMI PROJECT 모델링 프로세스
    기능 찾기 (영화예매 기능, 음식주문 기능 등)
    필드 찾기 (e.g. 티켓가격, 할인율, 결제일)
    테이블 만들기 (비슷한 기능, 필드를 묶어 테이블 정의)

---------------------------------------------

의존성 주입
MainView()
EmployeeController()
  StackOverFlowError

ipconfig 
ipv4 192.168.20.238
ipv4 192.168.20.2

Connection: 애플리케이션에서 한개만 존재 singleton

JDBC
    Connection Statement Transaction -> model.service
        (제대로 update 됐는지 validation)
    각테이블 마다 tablenameDao. dao에서 service.getConnection불러서  사용
        Service에서 Common 생성
        Common에 Connection 정보(public static Connection getConnection())를 
        넣어서 이곳에서 수정 ->전체 DAO에 적용

    - JRE System Libraries 에 추가
        C:\Program Files\Java\jdk1.8.0_144\jre\lib\ext
        ojdbc6.jar을 넣고 eclipse restart
        -> build path 추가하지 않고도 jdbc 사용 가능
        추가안��� 경우 Preferences -> Java -> Installed JREs 경로 맞춰야함
        
    - Refenced Library에 추가
        Build Path -> configure build path -> Add External Jars (다운로드한 ojdbc6.jar)
            -> Reference Library
  
    프로젝트 단위별로 ojdbc6 등 external JARs추가
  
    Preferences -> General - Editor - Text Editors - Spelling -> Encoding(UTF-8)
    Perferences -> General - Workspace -> Encoding(UTF-8)
    Perferences -> JSON - JSON FILE (ISO 10646 UTF_8)
    Perferences -> Web - CSS HTML JSP (ISO 10646 UTF_8)

    executeQuery (select)
    executeUpdate (DML)

    int result = stmt.executeQuery(query);
    // 몇개 행 업데이트 됐는지 return

    CLI text 방식으로 DB에 뿌림.

    MVC

    controller ->
    view -

    Bean 객체

    DAO(Database Access Object)





--DB 시험 7.2
CREATE TABLE table_name
    var_1 data_type_1,
    var_2 data_type_2,
    ...
    var_n datatype_n;
);

CONSTRAINT 제약조건 수정 삭제 추가

JOIN (INNER / LEFT OUTER / RIGHT OUTER)

DDL(Data Definition Language)
  CREATE ALTER DROP
    TRUNCATE
    COMMENT
    RENAME

DML(Data Manipulation Language)
  SELECT INSERT UPDATE DELETE

DCL(Data Control Language)
  GRANT REVOKE

TCL(transaction Control Language)
    COMMIT ROLLBACK
    - TRANSACTION : 한개의 작업단위. 작업이 끝나지 않으면 멈춰 있음
      각각 트랜젝션이 별개

INSERT INTO table_name VALUES(... ... );
INSERT INTO table_name(col_1, ... , col_n) VALUES(val_1, ... , val_n);

INDEX
  fast search
  자동생성 PK 혹은 UNIQUE KEY 일때
  인덱스가 지정된 대로 데이터 찾음
  컬럼이 자주 수정/삭제 되면, 인덱스가
  인덱스 걸려있는 컬럼값 변경할 때 마다, rebuild
  해야 하므로, 비효율적.

서브쿼리
  동등비교 IN ()
  ANY ALL ()
  EXISTS 상관 서브쿼리
  
PROCEDURE (CREATE OR REPLACE)
    A procedure is a group of PL/SQL statements that you can call by name
    Stored procedures offer advantages in the areas of development, integrity, 
        security, performance, and memory allocation.
VIEW
  보안 우수성
  필요한 데이터만 골라 볼 수 있음
  VIEW 입력 수정 삭제를 통한 테이블 데이터 변경 가능
  
  GRANT CREATE VIEW TO user_name;
  
DATA TYPE
  INT, DATE, NVARCHAR2




--DB시험(책 DDL 파트, p112, p133)
standard 기본기능. 유료but 개인용 앱개발 사용 가능
enterprise 대규모 대용량. 기업용 유료
express 교육용 데모 1GB이상 불가능

--기본적으로 제공하는 테이블: dictionary table
select * from dba_users;
select * from tab;

스키마 schema : 하나의 저장공간
    외부스키마: 사용자나 응용프로그래머가 각 개인의 입장에서 필요로 하는 
             데이터베이스의 논리적 구조를 정의한 것으로 1개이상 존재가능
             서브 스키마(sub schema)로 라고도 표현하며, 사용자 View 관점에서의 스키마입니다.
    내부스키마: 물리적 저장장치의 입장에서 본 데이터베이스 구조로, 
        물리적인 저장장치와 밀접한 계층이다.	
        내부적으로 물리적 하드웨어가 저장해야 영속적으로 사용가능. 
        내부 하부적으로 움직이는 것들
        시스템 프로그래머나 설계자 관점에서의 스키마.
    개념스키마: 데이터베이스의 전체적인 논리적 구조, 
        모든 응용프로그램이나 사용자들이 필요로 하는 
        데이터를 종합한 조직 전체의 데이터베이스로 1개만 존재. DBA가 관리.

스키마 = 메타데이터(전체 스키마가 어떻게 이루어져 있는지)

Technically, a schema is a collection of database objects owned by a specific user. 
Those objects include tables, indexes, views, stored procedures, etc. 
In Oracle, a schema requires a user to be created. But you can create a user 
that has no schema (i.e, no objects). So in Oracle, the user is the account 
and the schema is the objects. It is possible in other database platforms 
to have a schema without a user.

권한설정
  GRANT RESOURCE TO USER;

제약조건 (CONSTRAINT)
  컬럼값 NULL이 디폴트임
  테이블 정의할때 컬럼마다 "컬럼명 NOT NULL" 제약조건 걸수 있음
  unique, not null 한컬럼에 여러개 지정 가능
  primary key(unique, not null)에는 기본적으로 index가 걸려있음
  index 유저가 정의 하여 primary key가 아닌 다른 컬럼에 정의가능
  CHECK 제약조건. 컬럼(도메인)을 체크
    (ex) check 성별='남'
        
  DEFAULT 제약조건: 
    테이블 컬럼안에 값이 없으면 디폴트값이 들어가도록
  
쿼리 GROUP BY!
    데이터들을 원하는 그룹으로 나눌때 사용.
인덱스
  테이블 조회 속도 빠르게

테이블
  컬럼(도메인), 행 tuple(row), 테이블(객체)

관리자계정 system/sys
  사용자 권한부여/회수, 테이블 관리, DB생성,
    OBJECT 생성 삭제

DBA가 관리자 계정 이용

일반 사용자들은
  select, update, delete


---
오라클 SQL 레퍼런스
https://docs.oracle.com/cd/E11882_01/server.112/e41084/toc.htm

sqlplus system/oracle

select username, account_status from dba_users where username='HR';

alter user HR account unlock;
alter user HR identified by hr;

conn HR/hr;

set linesize 300;
set pagesize 10;

clear screen;


conn system/oracle;
create user test identified by test;
conn test/test;	--ERROR : lacks create session privilege
grant connect to TEST;
conn test/test; --SUCCESS

save test
  --test.sql

@test

conn hr/hr
@test11

save test
save test11

edit test
edit ../test
--상대 경로

host

exit

grant resource to kh;
-- resource: role
--resource 권한: 테이블 생성 수정 삭제 할 수 있는
--권한이 모두 있는것.

delete 테이블 안에 데이터 삭제
drop 테이블 자체를 삭제

데이터 조작 -> 트랜젝션 제어 COMMIT

테이블 = relation (entity)

foreign key: 참조하고 있는 테이블에서 primary key 컬럼

---
테이블 생성시 로그인된 계정에 종속되어 생성
각 계정에 따른 저장소가 DB에 생성됨.
system / sys가 전체 저장공간 관리
계정 생성 후, 계정별로 공간(schema) 할당
  schema는 겹칠 수 없음
  schema에 테이블 생성
hr 교육용 계정


DBMS 사용 이점
데이터 종속성 <-> 독립성
  어플리케이션에 종속 되지 않음
텍스트 데이터(User.dat) input stream으로 읽을수 있음
  <-> DBMS는 권한 확인
DB 서버에 oracle 11g 설치. 연습할때는 개인 pc에

정보처리 기사/산업기사

---
시험: 어플리케이션 개발(자바책 맨뒤 p227~)

개발환경 구축사항
  개발자들 환경설정 맞추기 예를들어 tomcat maven 버젼통합
  git 이라는 소스관리 프로그램
    형상 관리, 버젼 관리
    개발환경 구축
    제품 무결성을 유지
    팀프로젝트 프로세스 관리
    버젼관리 프로그램
  테스트용서버 -> 실서버

클라이언트 개발 요구사항 파악 아닌것?
  클라이언트와 대화
  요구사항 문서 받기
  비즈니스 로직 (업무처리 로직)
    회사 보고서 문서로 파악

사용자 요구사항
  분석 - 설계 - 구현 - 테스트
    이과정에서 산출물들:
      문서, 유스케이스 클래스 다이어그램
      구현 산출물(ppt)문서들
      일관성을 유지하기위한 산출물?
      요구사항 추적 매트릭스: 프로젝트 진행단계별로 요구사항들이 어느 페이지 또는 
        어느 컴포넌트 등에 반영이 되었는지 매칭하는 표형식의 문서

Architecture 프로그램 구성 기반, 설계흐름
  client-server acrhitecture
  mvc architecture
  service oriented architecture

소프트웨어 architecture
  서비스지향 아키텍쳐(SOA : Service Oriented Architecture)
    웹서비스나 REST 서비스로 구현된 
    SW 모듈을 BPEL로 구현된 프로세스이다. 
    오케스트레이션 함으로써 프로세스 변경에 
    따른 정보시스템의 재구성을 
    신속 유용하게 할 수 있는 방식이다.

프로젝트 관리할때, 어떻게 하는지?
  버젼 관리 프로그램 git

어플리케이션 성능 관리: 5가지 속성
  1. 사용자환경 
    monitoring 및 평가 
    2. 소프트/하드웨어 요소들 
    성능 측정
  3. 애플리케이션 전송 플랫폼을 구성하는 
    소프트/하드웨어에서 이동하는 
    사용자정의 트랜잭션 프로파일링
    4. 플랫폼을 구성하는 소프트/하드웨어의 
    리소스 수요평가
  5. 위 4가지로 사용자 패턴 분석 성능 최적화위해 
    필요한 조치들을 우선순위에 따라 지정



통계 : java jfreechart
https://www.canva.com/design/DADb3VzYhPg/cctj8YAg2DAvd-Mrs1EhCg/edit?category=tACFasDnyEQ

---[요구사항 확인]시험 - 자바책 뒷부분 index-p213~226  

현행시스템 파악 3단계
  1. 시스템 구성 기능 interface 파악
  2. architecture software 현황 파악
  3. 어떤 hardware/network에서 실행 되는지 파악

운영체제별 요구사항 식별을 위해서 다음을 고려:
    - 신뢰도 : 장기간 사용시 문제 가능성
    - 성능: 대용량 데이터처리 능력 파악
    - 기술지원: 
    - 주변기기: 
    - 구축비용: 


개발기술 환경 파악:
  운영체제 응용소프트웨어사이에 위치한 middleware 및 dbms
  dbms를 고려할 때 주의사항
    1. 장기간 운영시 장애 발생 가능성 파악
    2. 대용량 데이터 처리능력 파악
    3. 안정성 파악
    4. db구축 비용 파악 (유료 software 오라클 등 회사에 지불할 금액)

요구사항 개발 프로세스: 도출-분석-명세-확인
  -도출: 요구사항 찾아내기 discover

요구사항 분석

요구사항 기술적 타당성검토(4가지)
  성능, 용량 산정 적정성
  
    시스템간 상호 운용성 - 다른 목적을 지닌 두개의 시스템을 지닌. 정보시스템을 
        교환하면서 효과적으로 운용 가능여부. 타 시스템/기계과 호환되는지.

    IT 트렌드 부합 여부, IT시장 성숙도, 기술 보안 여부
        정보기술 발전 방향에 맞게
        실현 가능성(특허 장애물 파악) 파악
    
  기술 위험도, risk
    
분석모델 확인하기
    분석모델 검증
        액터, 유스케이스, 유스케이스 명세서
        

클래스 다이어그램에 포함되는 요소들/의미 파악
  클래스/멤버변수 등


한국정보 지능원
  정보시스템 감리 지침/감사
    지침에 따라 분석모델 검증
    유스케이스 검증, 개념 클래스 검증, 분석클래스 검증
    
    UML 클래스/활동/시스템/
      유스케이스 다이어그램
        사용자 등 어떻게 사용되고, actor누가 사용하는지,
        각시스템이 무슨 기능인지
      시퀀스 다이어그램(순서)
      
      활동 다이어그램

요구사항 식별
  신뢰도(장기간 가능), 
  성능 (대량 데이터 처리가능)
  기술지원(vendor 소프트웨어가 잘 지원해주는지, open source처럼 사용자들 정보공유하는지,
      오픈소스 라이센스인지), 
  주변기기,
  구축비용 (장비 비용, 응용프로그램 라이센스, 유지관리비)

웹서비스
  middleware (web application Server, WAS 예를들어 
        - tomcat netty 가 동적으로 어떻게 돌아가는지, 개념/ 내용)


--
sql문 .properties에서 가져옴.
MyBatis에서 가져오는것과 비슷
--

--
Thread
 mainT
 T1
 T2
 thread끝나는 시점은 다를수 있음
  
 교착상태(dead-lock 동시에 CPU 이용)주의
 JVM이 메인 thread 생성
 
 new 객체 : Heap영역 메모리
 객체.start()
 run()오버라이드

Thread 상속하면 ,다른 클래스 상속 불가(다중상속x)
Runnable implement 해서, 다른 클래스 상속 허용


---
Java Network
server - client

ipconfig
ip4(ip addr) globally unique
255^4
사설(192.168.0.x)/
공용 네트워크
(ips 업체) 통신선로 ->공인아이피 구매
외부 공인아이피<->공유기(사설 아이피주소 할당)
192.168.0.1 개인 공유기
외부IP(공용ip)<->내부IP
네트워크 카드에 따라 16진수로 고유번호 부여
  (공유기 접근 가능)

mac주소관리 등록후 secure wifi
외부에서 wifi 연결 차단
ipconfig
기본 게이트웨이
포트포워딩
  domainName:ip
  외부ip:ip
nslookup
  www.naver.com
  210.89.164.90

상대 ip 접근
  INetAddress 클래스
웹 브라우저 검색창: 공용ip입력

socket programming


---
openjdk
시스템 변수: 
    JAVA_HOME
        C:\Program Files\openjdk-11.0.2_windows-x64_bin\jdk-11.0.2
    Path
        %JAVA_HOME%\bin

eclipse window > preference >java >installed jre
java 버전 변경





--instance method : 
  Heap에 객체가 생성되어야 호출가능.
new MethodTest().calculator(10, 20, '+');
new MethodTest().calculator2(20, 30, '/');

[Heap]
  [MethodTest]
    [calculator]
    [su1]10
    [su2]20
    [op] '+'
  [MethodTest]
    [calculator2]
    [su1] 20
    [su2] 30
    [op] '/'
    [result] .6666...
  [MethodTest]
    [concatString]
    
[Stack] first in last out
    calculator2
  calculator
  main


--memory
[stack]
    call된 method가 stack에 쌓이고, 
    return 하면 stack 메모리에서 없어짐
    선언된 기본자료형 변수 메모리에 저장
    int[] arr; //reference 자료형(위치; 주소 저장됨)


[heap] gc(garbage collection 자동으로 수행)
배열
new int[]
new 객체


--oop 클래스
1. 야구선수
------------
  - 팀 team
  - 등번호 backNO
  - 연봉 sal
  - 포지션 postion
  - 키 height
  - 무게 weight 
  - 나이 age
  - 성별 gem
  - 국적
  - 승률
  - 부상기록
2. 결혼정보프로그램 회원객체
  - 성별
  - 나이
  - 연봉 공개여부
  - 키 몸무게 공개여부
  - 키
  - 몸무게
  - 결혼 이력
  - 자녀여부
  - 희망 배우자 나이
  - 희망 배우자 스타일
3. 전화번호부

생성자 : Heap 메모리에 instance를 만듦
Object obj = new Object();
//obj에 주소값저장됨; obj.메소드(); obj.멤버;

[Stack]
  obj (reference variable stores address from Heap)
[Heap]
  Object주소값 0x123 과 접근연산자 .으로 멤버 접근
  new 로 객체 생성시 Heap 메모리에 쌓임
  할당안하면 Stack에 주소값 저장안됨
  프로그램 실행은 Stack에 메모리를 읽으면서 진행됨
[Static]
클래스 변수; 객체 생성하지 않고 쓸수있는 저장공간.

프로그램 시작과 동시에 
[static]에 static 변수들 메모리 저장됨
    new Person() [heap]에 저장된 static 변수들은
    [static]에 있는 static변수를 참조하게됨.

