FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.2

RUN gem install ec2-metadata --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ec2-metadata"]
CMD ["--help"]
