# frozen_string_literal: true

require 'rails/command'
require_relative '../test_unit/runner.rb'
require 'rails/test_unit/reporter'

module Rails
  class WithEnginesTestCommand < Rails::Command::Base # :nodoc:
    no_commands do
      def help
        say "Usage: #{Rails::TestUnitReporter.executable}"

        Minitest.run(%w[--help])
      end
    end

    def perform(*)
      $LOAD_PATH << Rails::Command.root.join('test')

      Rails::TestUnit::Runner.parse_options(ARGV)
      Rails::TestUnit::Runner.run
    end
  end
end
