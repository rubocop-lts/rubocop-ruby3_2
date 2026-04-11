source "https://rubygems.org"

# Include dependencies from <gem name>.gemspec
gemspec

gem "nomono", "~> 1.0", require: false

require "nomono/bundler"

rspec_companion_gems = %w[
  rubocop-lts-rspec
]

if ENV.fetch("RUBOCOP_LTS_DEV", "false").casecmp("false").zero?
  gem "rubocop-lts-rspec", "~> 1.0", github: "rubocop-lts/rubocop-lts-rspec"
else
  local_rspec_companion_gems = nomono_gems(
    gems: rspec_companion_gems,
    prefix: "RUBOCOP_LTS",
    root: %w[code src rubocop-lts]
  )
  gem "rubocop-lts-rspec", "~> 1.0", path: local_rspec_companion_gems.fetch("rubocop-lts-rspec")
end
# Documentation
eval_gemfile "gemfiles/modular/documentation.gemfile"

gem "byebug", platform: :mri
