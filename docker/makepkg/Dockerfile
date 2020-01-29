FROM ruby:2.7.0-alpine
RUN apk add -U --no-cache --purge bash build-base zlib zlib-dev libffi-dev rpm && \
	gem install --no-document fpm
CMD ["/bin/bash"]
