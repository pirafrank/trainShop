FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /trainShop
WORKDIR /trainShop
ADD Gemfile /trainShop/Gemfile
ADD Gemfile.lock /trainShop/Gemfile.lock
RUN bundle install
ADD . /trainShop
