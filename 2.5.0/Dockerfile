FROM ruby:2.5.0-alpine3.7

RUN gem install rubocop
COPY sample.rb /sample.rb

CMD [ "rubocop", "/sample.rb" ]
