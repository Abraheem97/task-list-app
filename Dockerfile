FROM ruby:3.2.2

# Set working directory
WORKDIR /app

# Install required packages and yarn from official repo
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  postgresql-client \
  nodejs \
  curl \
  gnupg && \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update && apt-get install -y yarn

# Install gems
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install

# Copy app code
COPY . .

# Add bundle bin to PATH
ENV PATH="/usr/local/bundle/bin:$PATH"

# Expose port 3000
EXPOSE 3000

# Start Rails server
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
