require "vcr"

VCR.configure do |config|
  config.filter_sensitive_data("<OPENAI_API_KEY>") { ENV.fetch("OPENAI_API_KEY", nil) }
  config.cassette_library_dir = "spec/vcr_cassettes"
  config.hook_into :webmock
  config.configure_rspec_metadata!
end
