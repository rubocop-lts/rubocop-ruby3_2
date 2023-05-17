begin
  require "rubocop/gradual/rake_task"

  RuboCop::Gradual::RakeTask.new(:rubocop_gradual)
  desc "alias rubocop task to rubocop_gradual"
  task rubocop: :rubocop_gradual
rescue LoadError
  task :rubocop_gradual do
    warn "NOTE: rubocop-gradual isn't installed, or is disabled for #{RUBY_VERSION} in the current environment"
  end
end
