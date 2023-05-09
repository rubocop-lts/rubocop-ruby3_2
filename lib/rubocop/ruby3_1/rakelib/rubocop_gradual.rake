require "rubocop/gradual/rake_task"

RuboCop::Gradual::RakeTask.new(:rubocop_gradual)
desc "alias rubocop task to rubocop_gradual"
task rubocop: :rubocop_gradual
