FROM java:8

RUN apt-get update

ADD target/cljfoo-0.1.0-SNAPSHOT-standalone.jar /srv/cljfoo.jar

CMD ["java", "-jar", "/srv/cljfoo.jar"]

