
---

title:  근래 소프트웨어 운용방법상 시맨틱 버저닝에 대한 의문

author: noizbuster

date:   2017-01-16 15:17:31

categories: development

tags: [semver, semantic, versioning]

---

# Introduction

근래 가장 많이 사용되는 버저닝 방법론으로 semantic versioning 을 이야기 했을때 반대하는 사람은 그리 많지 않을것이다. 매우 체계적이며 직관적이고 버전간 호환관계또한 알 수 있기 때문에 많은 프로젝트와 사람들에게 사랑받고 있는 방법이다.

하지만 근래에 개발을 해오면서 느끼는 몇가지 한계점이 있고, 이를 어떻게 극복해 볼것인가에 대한 가벼운 고찰을 해보겠다.

# Limitation of semantic versioning

1. Dynamic 하게 변하는 프로젝트에서 major 버전이 너무 빠르게 올라간다.
2. 변화가 많은 초창기 프로젝트의 버저닝이 곤란하다.

최근 공분을 산 angular4 버전 계획 발표도 비슷한 문제라고 본다.  
전통적으로 역사가 깊은 소프트웨어들은 지금도 큰 문제가 없다고 본다. stability 가 중요하고 이미 구현해야할 기능들은 어느정도 거의 다 구현이 되어있기 때문에 뭔가 급격하게 바뀌고 이런일이 여간해선 발생하지 않는다. 따라서 breaking change 들은 몰아서 major 업데이트때 한번에 일어난다.  
하지만 웹 기술은 매우 기민하게 변화하고 javascript라는 언어가 싱귤래리티를 목전에 두고 있기 때문에 예측하기 어려운 breaking change 의 대응을 가정해야한다.  
이런 이유 때문인지 angular 팀은 반년, 짧으면 3개월의 메이저 버전 업데이트를 계획해놓고 있으며. 2버전을 목빠지게 기다린 팬보이들에게 오피셜릴리즈 3개월만의 4버전 발표는 정말 큰 도발로 다가왔을것이다.

결국은 위에서 언급한 문제들은 모두 빠른 배포 사이클로 인해 생기는 문제점이다.
통신, 클라우드 컴퓨팅 인프라가 발전함에 따라 현대의 소프트웨어의 배포주기는 점점 짧아지고 있고, Immutable Infrastructure같은 패러다임이 docker 등을통해 프로덕션레벨로 올라옴에 따라 더욱 이런 흐름은 가속화 되고 있다.

과연 이런 환경에서 semantic versioning 이 적절한가에 대한 의문이 든다.  
개인적으로 major 버전의 숫자가 커지는것 자체가 문제를 일으킨다고 생각하진 않는다.  
하지만 메이저 버전업의 주기가 빨라지는것은 여러 문제점을 야기한다. 프로젝트 관리차원과 stability 유지차원에서 프로젝트 운영 주체가 그럴싸한 버저닝 가이드라인을 제시하지 않는다면 다음과 같은 문제가 발생할 수 있다.

* LTS 버전관리, 제시의 어려움
* patch 해야할 관리 포인트 증가

버전을 freeze 하고 배포해야할 프로그램들이 그나마 안심하고 지원받을 수 있는 방법이 패치버전 업그레이드일것이다. 하지만 프로젝트를 운영하는 주체 입장에서 여러개의 메이저 버전의 패치를 관리하는것은 부담되는일이 아닐수 없다.

# 해결안

Milestone 개념으로 version layer 를 추가한다.

## 운영방법

* `m.b.c.d`
    * M: Milestone
        * LTS 버전등을 관리할 큰 마일스톤 단위
    * o: obsolete remove deprecation
        * breaking change 를 야기하는 패치,
    * a: feature
        * 기능추가, backward competibility를 해치지 않음
    * p: patch
        * 인터체이스에 영향을 끼치지 않는 버그픽스
