source 'https://rubygems.org'

gem 'lockfile'
gem 'gitolite-rugged', :git => 'https://github.com/n-rodriguez/gitolite-rugged.git', :branch => 'devel'
gem 'haml-rails'

gem 'github-markup'
gem 'redcarpet', '~> 2.3.0'
gem 'RedCloth'
gem 'org-ruby'
gem 'creole'
# gem 'wikicloth'
gem 'asciidoctor'

group :development, :test do
  gem 'rspec', '~> 3.0.0'
  gem 'rspec-rails', '~> 3.0.1'

  gem 'shoulda', '~> 3.5.0'
  gem 'shoulda-matchers', '~> 2.7.0'
  gem 'shoulda-context'

  gem 'factory_girl'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'database_cleaner'

  # Code coverage
  gem 'simplecov'
  gem 'simplecov-rcov'

  # Junit results
  gem 'ci_reporter_rspec', '~> 1.0.0'

  # Publish to Coveralls
  gem 'coveralls', require: false

  # Publish to CodeClimate
  gem 'codeclimate-test-reporter', require: false
end
