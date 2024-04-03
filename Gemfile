source "https://rubygems.org"
ruby File.read("#{__dir__}/.ruby-version")

gemspec

# TODO: move this to .gemspec

gem "foobara", git: "foobara", branch: "main"
gem "foobara-dotenv-loader", github: "foobara/dotenv-loader"
gem "foobara-open-ai-api", github: "foobara/open-ai-api"
gem "foobara-rack-connector", github: "foobara/rack-connector"
gem "foobara-util", github: "foobara/util"

gem "rake"

group :development do
  gem "foobara-rubocop-rules", github: "foobara/rubocop-rules"
  gem "guard-rspec"
  gem "rubocop-rake"
  gem "rubocop-rspec"
end

group :development, :test do
  gem "pry"
  gem "pry-byebug"
end

group :test do
  gem "foobara-spec-helpers", github: "foobara/spec-helpers"
  gem "rspec"
  gem "rspec-its"
  gem "ruby-prof"
  gem "simplecov"
  gem "vcr"
  gem "webmock"
end
