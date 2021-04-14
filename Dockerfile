FROM botpress/server:v12_20_1

RUN apt-get update && \
    apt-get install -y gcc g++ make gnupg2 curl unzip

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -

RUN apt-get update && \
    apt-get install -y nodejs yarn gawk git moreutils && \
    apt-get clean -y

WORKDIR /botpress
RUN git clone https://github.com/botpress/botpress/ src

WORKDIR /botpress/src
RUN yarn
RUN yarn build

WORKDIR /botpress
RUN ln -s /botpress/src/modules/hitlnext /botpress/modules/hitlnext