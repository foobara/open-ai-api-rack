source "https://rubygems.org"
ruby File.read("#{__dir__}/.ruby-version")

gemspec

group :development do
  gem "foobara-rubocop-rules"
  gem "guard-rspec"
  gem "rubocop-rake"
  gem "rubocop-rspec"
end

group :development, :test do
  gem "pry"
  gem "pry-byebug"
end

group :test do
  gem "foobara-spec-helpers"
  gem "rspec"
  gem "rspec-its"
  gem "ruby-prof"
  gem "simplecov"
  gem "vcr"
  gem "webmock"
end
