FROM ruby:2.7.1

ENV BUNDLER_VERSION=2.1.4

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client npm\
  && rm -rf /var/lib/apt/lists/* \
  && curl -o- -L https://yarnpkg.com/install.sh | bash

RUN gem install bundler -v 2.1.4

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle check || bundle install

RUN npm install -g yarn

RUN yarn install --check-files

COPY . ./

ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]