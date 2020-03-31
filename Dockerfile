FROM ruby:2.6.3

ENV RAILS_ROOT /vacationer

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    nodejs \
    yarn && \
    mkdir -p $RAILS_ROOT && \
    apt-get clean autoclea && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt /var/lib/dpkg /var/lib/cache /var/lib/log

WORKDIR $RAILS_ROOT

ENV RAILS_ENV='production'
#ENV SECRET_KEY_BASE=''

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle install --jobs 20 --retry 5 --without development test

COPY package.json package.json
COPY yarn.lock yarn.lock

RUN yarn install --check-files

COPY . .

RUN bundle exec rails assets:precompile