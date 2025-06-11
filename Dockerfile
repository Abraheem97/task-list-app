FROM ruby:3.2.2

# Set working directory
WORKDIR /app

# Install required packages
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  postgresql-client \
  nodejs \
  yarn \
  curl

# Install gems
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install

# Copy app code
COPY . .

# Add bundle bin to PATH
ENV PATH="/usr/local/bundle/bin:$PATH"

# Expose port 3000
EXPOSE 3000

# Start Rails server via bundler
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
