FROM ruby:3.1.1

RUN mkdir /home/pleo /var/www \
    && chown -R www-data:www-data /home/pleo /var/www

USER www-data:www-data
# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --no-system --global frozen 1

WORKDIR /home/pleo

COPY grape-money-adapter/ Gemfile Gemfile.lock .
RUN bundle install --no-system

CMD ["ruby", "grape-money-adapter.rb"]
