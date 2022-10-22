FROM ruby:3.1
WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .
CMD ["rails", "s", "-b", "0.0.0.0"]
