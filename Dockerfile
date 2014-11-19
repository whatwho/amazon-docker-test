FROM phusion/passenger-ruby21
RUN apt-get update -qq && apt-get install -y build-essential curl libcurl3 libcurl3-gnutls libcurl4-openssl-dev mysql-client libmysqlclient-dev
RUN mkdir /amazon-docker-test
WORKDIR /amazon-docker-test
ADD Gemfile /amazon-docker-test/Gemfile
ADD Gemfile.lock /amazon-docker-test/Gemfile.lock
RUN bundle install
ADD . /amazon-docker-test