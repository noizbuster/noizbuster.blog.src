
---

title:  "헤딩기 - comment generator"

author: noizbuster

date:   2018-05-12 20:42:40

categories: development

tags: [development, web]

---

# 가내수공업 프로젝트의 사용성을 높여서 다시 만들어 보자

학부생때 java 를 배우면서 실습겸 만들어봤던 간단한 앱이 있다.
코맨트를 달아줄때 이쁘게 블록을 씌워준 꼴로 클립보드에 저장시켜주는 앱이다.
이게 자바앱이다보니 매번 다른 컴퓨터에서 설치하는것도 귀찮고 해서 웹버전과 visual studio 용 플러그인, 혹은 atom 플러그인 으로 만들어 볼까 생각중이다.

# 웹으로 만들기

## 기술 선정

* SPA (Single Page Application)
* ES7+
* vue.js
* material design
* no database

### SPA

기능이 복잡하지 않은 앱이기 때문에 SPA 의 형태로 개발을 할것이다.

### ES7+

Angular.io 를 사용하면서 썼었던 Typescript가 너무 불편했기 때문에 되도록 ES 를 사용하고 싶었다. 하지만 async, await 는 물론이고 promise 도 사용하기 힘든 ES5 환경에서 개발을 하고 싶진 않았기에 babel을 끼더라도 ES7 이상으로 개발을 하는 환경을 꾸리기로 했다.

### vue.js

Angular.js, Angular.io 는 이미 사용을 해보아서 익숙해진 편이지만 개인적으로 생산성에 대해서는 별로 만족을 못하고 있기 때문에 (차라리 meteor가 생산성을 더 나은것 같다) 개인 프로젝트로서도 이걸 써야할 매력을 별로 느끼지 못했다.

### material design

내가 Android 를 오래해서 그런지 아무래도 머테리얼 디자인 신봉자가 되었는지도 모르겠다.
애매하지 않고 군더더기 없이 가이드가 되어있고 나름의 철학도 확실하기 때문에 디알못 개발자들도 기본 컴포넌트만 잘 사용하면 생각보다 좋은 사용성의 애플리케이션을 만들 수 있기 때문에 선호한다.

### no database

이 앱은 단순히 인스턴스에서 사용하고 저장될 데이터가 아무것도 발생하지 않기 때문에 일단 database가 필요없다.
만약 필요하다면 이번에 오픈소스로 공개된 apple 의 foundation db 를 사용해보았을것 같다.  mongoDB 가 ACID 스펙의 transaction 을 지원한다고 희망고문 하고 있지만 아직 구체적인 릴리즈 시점을 알 수 없기 떄문이다.

## 기술 습득
