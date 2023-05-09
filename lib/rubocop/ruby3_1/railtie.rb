module Rubocop
  module Ruby31
    class Railtie < Rails::Railtie
      railtie_name :rubocop_ruby3_1

      rake_tasks do
        load "rubocop/ruby3_1/tasks.rake" if Rails.env.test? || Rails.env.development?
      end
    end
  end
end
