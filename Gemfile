# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

# gem "rails"

group :test do
  gem 'rspec'
  gem 'rubocop-rspec:', require: false
end

group :test, :dev do
  gem 'rubocop', require: false
end
