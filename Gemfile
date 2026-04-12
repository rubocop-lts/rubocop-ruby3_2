source "https://rubygems.org"

# Include dependencies from <gem name>.gemspec
gemspec

gem "nomono", "~> 1.0", require: false

require "nomono/bundler"

local_companion_gems = %w[
  rubocop-lts-rspec
  standard-rubocop-lts
]

if ENV.fetch("RUBOCOP_LTS_DEV", "false").casecmp("false").zero?
  gem "rubocop-lts-rspec", "~> 1.0", github: "rubocop-lts/rubocop-lts-rspec"
else
  local_companion_gems_by_name = nomono_gems(
    gems: local_companion_gems,
    prefix: "RUBOCOP_LTS",
    root: %w[code src rubocop-lts]
  )
  gem "rubocop-lts-rspec", "~> 1.0", path: local_companion_gems_by_name.fetch("rubocop-lts-rspec")
  gem "standard-rubocop-lts", path: local_companion_gems_by_name.fetch("standard-rubocop-lts")
end
# Documentation
eval_gemfile "gemfiles/modular/documentation.gemfile"

gem "byebug", platform: :mri
