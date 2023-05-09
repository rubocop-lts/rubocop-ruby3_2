# frozen_string_literal: true

%w[
  bundler/gem_tasks
  rake/testtask
  rspec/core/rake_task
].each { |f| require f }

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList["spec/**/*_spec.rb"]
end
desc "alias test task to spec"
task test: :spec

begin
  require "yard"

  YARD::Rake::YardocTask.new do |t|
    t.files = [
      # Splats (alphabetical)
      "lib/**/*.rb",
      "sig/**/*.rbs",
      # Files (alphabetical)
      "CHANGELOG.md",
      "CODE_OF_CONDUCT.md",
      "CONTRIBUTING.md",
      "LICENSE.txt",
      "README.md",
      "rubocop-lts.yml",
      "SECURITY.md"
    ]
    t.options = ["-m", "markdown"] # optional
  end
rescue LoadError
  task :yard do
    warn "NOTE: yard isn't installed, or is disabled for #{RUBY_VERSION} in the current environment"
  end
end

defaults = %i[test]

# Internally this works
#   load "lib/rubocop/ruby3_1/tasks.rake"
# But ...
#   externally it won't, so in other internal projects' Rakefiles we:
require "rubocop/ruby3_1"
Rubocop::Ruby31.install_tasks

begin
  require "rubocop/gradual/rake_task"

  RuboCop::Gradual::RakeTask.new

  defaults << :rubocop_gradual
rescue LoadError
  task :rubocop_gradual do
    warn "NOTE: rubocop-gradual isn't installed, or is disabled for #{RUBY_VERSION} in the current environment"
  end
end

task default: defaults
