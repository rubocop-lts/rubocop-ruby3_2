# frozen_string_literal: true

# Get the GEMFILE_VERSION without *require* "my_gem/version", for code coverage accuracy
# See: https://github.com/simplecov-ruby/simplecov/issues/557#issuecomment-825171399
load "lib/rubocop/ruby3_2/version.rb"
gem_version = Rubocop::Ruby32::VERSION
Rubocop::Ruby32.send(:remove_const, :VERSION)

Gem::Specification.new do |spec|
  spec.name = "rubocop-ruby3_2"
  spec.version = gem_version
  spec.authors = ["Peter Boling"]
  spec.email = ["peter.boling@gmail.com"]

  # See CONTRIBUTING.md
  spec.cert_chain = ["certs/pboling.pem"]
  spec.signing_key = File.expand_path("~/.ssh/gem-private_key.pem") if $PROGRAM_NAME.end_with?("gem")

  spec.summary = "Semantically Versioned RuboCop Dependency"
  spec.description = "Links dependency on minimum Ruby version to maximum RuboCop version"
  spec.homepage = "https://github.com/rubocop-lts/rubocop-ruby3_2"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.2.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "#{spec.homepage}/tree/v#{spec.version}"
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/v#{spec.version}/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "#{spec.homepage}/issues"
  spec.metadata["documentation_uri"] = "https://www.rubydoc.info/gems/rubocop-ruby3_2/#{spec.version}"
  spec.metadata["funding_uri"] = "https://liberapay.com/pboling"
  spec.metadata["wiki_uri"] = "#{spec.homepage}/wiki"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir[
    # Splats (alphabetical)
    "lib/**/*.rb",
    "sig/**/*.rbs",
    # Files (alphabetical)
    "CHANGELOG.md",
    "CODE_OF_CONDUCT.md",
    "CONTRIBUTING.md",
    "LICENSE.txt",
    "README.md",
    "rubocop.yml",
    "SECURITY.md"
  ]
  spec.bindir = "exe"
  spec.executables = []
  spec.require_paths = ["lib"]

  # linting
  spec.add_dependency("rubocop-gradual", "~> 0.3")
  spec.add_dependency("rubocop-md", "~> 1.2")
  spec.add_dependency("rubocop-rake", "~> 0.6")
  spec.add_dependency("rubocop-shopify", "~> 2.13")
  spec.add_dependency("rubocop-thread_safety", "~> 0.5")
  spec.add_dependency "standard", ["~> 1.28", "< 2"]
  # standard-performance pulls in rubocop-performance
  spec.add_dependency "standard-performance", ["~> 1.0", "< 2"]
  spec.add_dependency "standard-custom", ["~> 1.0", "< 2"]

  # RubyGems adding this gem will need to explicitly add rubocop-packaging to their dependencies.
  # Since it only applies to rubygems we do not add it as a runtime dependency of this gem.
  spec.add_development_dependency("rubocop-packaging", "~> 0.5")

  # Code tested with RSpec will need to explicitly add rubocop-rspec to their dependencies.
  # Since it only applies to RSpec, which some people or projects don't use,
  #   we do not add it as a runtime dependency of this gem.
  spec.add_development_dependency("rubocop-rspec", "~> 2.22")

  # standard-rails pulls in rubocop-rails
  # Rails apps will need to explicitly add standard-rails to their dependencies.
  # Since it only applies to Rails, which some people or projects don't use,
  #   we do not add it as a runtime dependency of this gem.
  spec.add_development_dependency("standard-rails", "~> 0.1")

  # betterlint pulls in rubocop & rubocop-rspec
  # Rails apps will need to explicitly add betterlint to their dependencies.
  # Since it only applies to Rails, which some people or projects don't use,
  #   we do not add it as a runtime dependency of this gem.
  spec.add_development_dependency("betterlint", "~> 1.4")
end
