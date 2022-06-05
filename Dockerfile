# Initial image source
FROM ruby:3.1.2

# throw errors if Gemfile has been modified since Gemfile.lock
# RUN bundle config --global frozen 1
RUN gem install jekyll:4.2.2 bundler

WORKDIR /usr/src/app

EXPOSE 4000

# source -> destination
COPY . .

RUN bundle install
RUN bundle exec jekyll serve

# RUN gem install jekyll bundler
# RUN bundle exec jekyll serve