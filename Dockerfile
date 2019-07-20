FROM maven:3-jdk-8
MAINTAINER Max Flebus <max@flebus.com>
RUN git clone https://github.com/davidkiss/yourl.git
RUN cd yourl && mvn install
WORKDIR /yourl
CMD ["mvn", "spring-boot:run"]
