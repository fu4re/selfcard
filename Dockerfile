FROM ruby:3.0

RUN apt update -qq && apt install -y nodejs

ENV ROOT_DIR /usr/src
WORKDIR $ROOT_DIR

COPY Gemfile $ROOT_DIR
COPY Gemfile.lock $ROOT_DIR
RUN bundle install
