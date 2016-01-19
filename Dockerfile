FROM ubuntu:14.04.3

# Install dependent software 
RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y git 
RUN apt-get install -y wget 
RUN apt-get install -y build-essential 
RUN apt-get install -y sqlite
RUN apt-get install -y libsqlite-dev 
RUN apt-get install -y sqlite3 
RUN apt-get install -y libsqlite3-dev 
RUN apt-get install -y libxslt-dev 
RUN apt-get install -y libxml2-dev 
RUN apt-get install -y gawk
RUN apt-get install -y libreadline6-dev
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y libssl-dev
RUN apt-get install -y libyaml-dev
RUN apt-get install -y autoconf
RUN apt-get install -y libgdbm-dev
RUN apt-get install -y libncurses5-dev
RUN apt-get install -y automake
RUN apt-get install -y libtool
RUN apt-get install -y bison
RUN apt-get install -y pkg-config
RUN apt-get install -y libffi-dev
RUN apt-get install -y clang
RUN apt-get install -y llvm
RUN apt-get install -y llvm-dev
RUN apt-get install -y libedit-dev
RUN apt-get install -y libpq-dev
RUN apt-get install -y libgmp-dev
RUN apt-get install -y libgmp3-dev
RUN apt-get install -y libmysqlclient-dev

RUN git config --global user.email "bot@pushbit.co"
RUN git config --global user.name "Pushbit"
RUN git config --global push.default simple
