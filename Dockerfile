FROM circleci/android:api-28-alpha

LABEL maintainer="droidchefofficial@gmail.com"

# Copies the Gemfile into the container.
COPY Gemfile /tmp/

# Changes the working directory to /tmp. All the commands after this line
# will run in /tmp directory. If you want to run your commands in another directory
# makes sure to change the working directory.
WORKDIR /tmp

# This will install all the gems from the Gemfile.
RUN bundle install 

