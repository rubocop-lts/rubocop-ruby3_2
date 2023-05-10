# frozen_string_literal: true

require_relative "ruby3_2/version"
# :nocov:
require_relative "ruby3_2/railtie" if defined?(Rails::Railtie)
# :nocov:

module Rubocop
  # Namespace of this library
  module Ruby32
    module_function def install_tasks
      load "rubocop/ruby3_2/tasks.rake"
    end
  end
end
