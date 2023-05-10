module Rubocop
  module Ruby32
    class Railtie < Rails::Railtie
      railtie_name :rubocop_ruby3_2

      rake_tasks do
        load "rubocop/ruby3_2/tasks.rake" if Rails.env.test? || Rails.env.development?
      end
    end
  end
end
