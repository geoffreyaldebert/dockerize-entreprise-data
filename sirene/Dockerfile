FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN apt-get install git
RUN gem update --system
ADD sirene_as_api /sirene_as_api
COPY jdk-8u202-linux-x64.tar.gz /
RUN cd / && tar -zxvf jdk-8u202-linux-x64.tar.gz
ENV JAVA_HOME /jdk1.8.0_202
ENV PATH $PATH:/jdk1.8.0_202/bin

WORKDIR /sirene_as_api
RUN bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3001

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "3002"]
