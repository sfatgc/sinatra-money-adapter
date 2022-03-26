FROM ruby:3.1.1

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY grape-money-adapter Gemfile Gemfile.lock ./
RUN bundle install

CMD ["ruby", "grape-money-adapter.rb"]