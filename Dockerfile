FROM ruby:2.4.2

RUN apt-get update -qq && \
apt-get install -y build-essential libpq-dev curl
RUN curl -sL https://deb.nodesource.com/setup_8.x | \
bash - && apt-get install -y nodejs
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | \
apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | \
tee /etc/apt/sources.list.d/yarn.list && \
apt-get update -qq && apt-get install yarn

ENV workdir /myapp
RUN mkdir ${workdir}
WORKDIR ${workdir}
ADD Gemfile ${workdir}/Gemfile
ADD Gemfile.lock ${workdir}/Gemfile.lock
RUN bundle install -j4
