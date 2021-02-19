FROM ruby:2.4.5
RUN apt-get update -qq && apt-get install -y nodejs && apt-get install imagemagick
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get install -y build-essential nodejs mysql-client
RUN apt-get install -y vim
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app

