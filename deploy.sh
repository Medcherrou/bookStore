language: java
jdk:
  - openjdk17

before_install:
  - chmod +x gradlew
  - bash -c "source ~/.rvm/scripts/rvm"
  - rvm install 3.0.0 --default
  - rvm use 3.0.0 --default
  - ruby -v
  - gem install bundler
  - bundle install
  - chmod +x deploy.sh

script:
  - ./gradlew assemble

deploy:
  provider: heroku
  api_key: $HEROKU_TOKEN
  app: "book-demo-store"
  on:
    branch: main
