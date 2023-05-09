# frozen_string_literal: true

require_relative "ruby3_1/version"
# :nocov:
require_relative "ruby3_1/railtie" if defined?(Rails::Railtie)
# :nocov:

module Rubocop
  # Namespace of this library
  module Ruby31
    module_function def install_tasks
      load "rubocop/ruby3_1/tasks.rake"
    end
  end
end
