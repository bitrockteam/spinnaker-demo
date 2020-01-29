FROM ruby:2.7.0-alpine
RUN apk add -U --no-cache --purge bash build-base zlib zlib-dev libffi-dev openssl-dev && \
	gem install --no-document fpm
CMD ["/bin/bash"]
