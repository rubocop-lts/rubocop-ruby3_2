module Rubocop
  module Ruby32
    class Railtie < Rails::Railtie
      railtie_name :rubocop_ruby3_2

      if Rails.env.test? || Rails.env.development?
        rake_tasks do
          Rubocop::Ruby32.install_tasks
        end
      end
    end
  end
end
