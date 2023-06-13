# frozen_string_literal: true

# Get the GEMFILE_VERSION without *require* "my_gem/version", for code coverage accuracy
# See: https://github.com/simplecov-ruby/simplecov/issues/557#issuecomment-825171399
load "lib/rubocop/ruby3_2/version.rb"
gem_version = Rubocop::Ruby32::Version::VERSION
Rubocop::Ruby32::Version.send(:remove_const, :VERSION)

Gem::Specification.new do |spec|
  spec.name = "rubocop-ruby3_2"
  spec.version = gem_version
  spec.authors = ["Peter Boling"]
  spec.email = ["peter.boling@gmail.com"]

  # See CONTRIBUTING.md
  spec.cert_chain = ["certs/pboling.pem"]
  spec.signing_key = File.expand_path("~/.ssh/gem-private_key.pem") if $PROGRAM_NAME.end_with?("gem")

  spec.summary = "Rules for Rubies: Rubocop + Standard + Betterlint + Shopify + Gradual"
  spec.description = "Configure RuboCop + a bevy of friends to gradually lint Ruby 3.2 code"
  spec.homepage = "https://github.com/rubocop-lts/#{spec.name}"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.2"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "#{spec.homepage}/tree/v#{spec.version}"
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/v#{spec.version}/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "#{spec.homepage}/issues"
  spec.metadata["documentation_uri"] = "https://www.rubydoc.info/gems/#{spec.name}/#{spec.version}"
  spec.metadata["funding_uri"] = "https://liberapay.com/pboling"
  spec.metadata["wiki_uri"] = "#{spec.homepage}/wiki"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir[
    # Splats (alphabetical)
    "lib/**/*.rake",
    "lib/**/*.rb",
    "sig/**/*.rbs",
    "rubocop-lts/**/*.yml",
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
  spec.add_dependency("rubocop-gradual", "~> 0.3", ">= 0.3.1")        # Ruby >= 2.6.0
  spec.add_dependency("rubocop-md", "~> 1.2")                         # Ruby >= 2.6.0
  spec.add_dependency("rubocop-rake", "~> 0.6")                       # Ruby >= 2.5.0
  spec.add_dependency("rubocop-shopify", "~> 2.14")                   # Ruby >= 2.7.0
  spec.add_dependency("rubocop-thread_safety", "~> 0.5", ">= 0.5.1")  # Ruby >= 2.5.0
  spec.add_dependency("standard-rubocop-lts", "~> 1.0", ">= 1.0.7")   # Ruby >= 2.6.0
  spec.add_dependency("version_gem", ">= 1.1.3", "< 3")               # Ruby >= 2.2.0

  # Development dependencies
  # Specify in Gemfile *only*.
  # See:
  #   - https://github.com/rubygems/rubygems/discussions/5065
  #   - https://github.com/rubygems/rubygems/discussions/6726
  #   - https://msp-greg.github.io/rubocop/RuboCop/Cop/Gemspec/DevelopmentDependencies.html
end
