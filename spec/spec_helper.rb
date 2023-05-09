# frozen_string_literal: true

DEBUG = ENV.fetch("DEBUG", nil) == "true"

ruby_version = Gem::Version.new(RUBY_VERSION)
minimum_version = ->(version, engine = "ruby") { ruby_version >= Gem::Version.new(version) && engine == RUBY_ENGINE }
actual_version = lambda do |major, minor|
  actual = Gem::Version.new(ruby_version)
  major == actual.segments[0] && minor == actual.segments[1] && RUBY_ENGINE == "ruby"
end
debugging = minimum_version.call("3.1") && DEBUG
RUN_COVERAGE = minimum_version.call("3.1") && (ENV.fetch("COVER_ALL",
  nil) || ENV.fetch("CI_CODECOV", nil) || ENV["CI"].nil?)
ALL_FORMATTERS = actual_version.call(2,
  7) && (ENV.fetch("COVER_ALL",
    nil) || ENV.fetch("CI_CODECOV", nil) || ENV.fetch("CI", nil))

if DEBUG
  if debugging
    require "byebug"
  elsif minimum_version.call("3.1", "jruby")
    require "pry-debugger-jruby"
  end
end

# Load Code Coverage as the last thing before this gem
if RUN_COVERAGE
  require "simplecov" # Config file `.simplecov` is run immediately when simplecov loads
end

# RSpec Configs
require "config/rspec/rspec_core"
require "config/rspec/rspec_block_is_expected"

# This gem
require "rubocop/ruby3_1"
