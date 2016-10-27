---

title: "make swagger-ui support multiple specs file"

author: noizbuster

date:   2016-06-21 14:46:00

category: development

tags: [swagger, swagger-ui, msa, openapi]

---

codegen 으로 생성되는 웹서버는 커스터마이징 하는데 한계가 있기 때문에 swagger-ui를 하나 돌리고 여기서 로드해서 보여주는 파일들을 외부파일을 링크하는 방식으로 사용하기로 하였다.

서버에서는 Apache 의 VirtualHost 기능을 이용해서 `.json` 이나 `.yaml` 을 static 하게 서브하도록 설정해 놓았다.

* https://github.com/swagger-api/swagger-ui/issues/1069
* https://github.com/swagger-api/swagger-ui/issues/1363
* https://gist.github.com/webron/7c41db7f777471fcbc10

의 순서로 제법 괜찮아보이는 해결방법을 찾았다.

이부분만 고쳐주면 되기 때문에 나중에 스펙파일들의 리스트가 있으면 index.html 파일을 빌드타임에 컴파일해서 쓸수도 있을것이다.
