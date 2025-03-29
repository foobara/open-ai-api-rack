require_relative "src/version"

Gem::Specification.new do |spec|
  spec.name = "foobara-open-ai-api-rack"
  spec.version = Foobara::OpenAiApiRack::VERSION
  spec.authors = ["Miles Georgi"]
  spec.email = ["azimux@gmail.com"]

  spec.summary = "No description. Add one."
  spec.homepage = "https://github.com/foobara/open-ai-api-rack"
  spec.license = "None specified yet"
  spec.required_ruby_version = ">= #{File.read("#{__dir__}/.ruby-version")}"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  spec.files = Dir[
    "lib/**/*",
    "src/**/*",
    "LICENSE.txt"
  ]

  spec.add_dependency "rackup"
  spec.add_dependency "rake"

  spec.add_dependency "foobara-dotenv-loader", "~> 0.0.1"
  spec.add_dependency "foobara-open-ai-api", "~> 0.0.1"
  spec.add_dependency "foobara-rack-connector", "~> 0.0.1"

  spec.require_paths = ["lib"]
  spec.metadata["rubygems_mfa_required"] = "true"
end
