require "vcr"
VCR.configure do |config|
  config.cassette_library_dir = "test/vcr_cassettes"
  config.hook_into :webmock
end