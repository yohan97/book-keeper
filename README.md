[![Build Status](https://travis-ci.org/laki88/book-keeper.svg?branch=master)](https://travis-ci.org/laki88/book-keeper)

how to use this software

1. start tomcat. After started, you should able to access tomcat management console via http://localhost:8080.
2. install maven, jdk and run mvn clean install from root folder of project.
3. you can find the built war file in target folder. copy this book-keeper.war file to web app directory in tomcat root folder.
   tomcat will auto deploy the war file after several seconds
4. you can access the book-keeper by issuing following url
   http://localhost:8080/book-keeper/