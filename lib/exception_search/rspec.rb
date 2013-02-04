module RSpec
  module Core
    module Formatters
      class BaseTextFormatter < BaseFormatter

        alias_method :dump_backtrace_original, :dump_backtrace

        private
        
        def dump_backtrace(example)
          exception = example.execution_result[:exception]
          output.puts exception.to_google
          output.puts exception.to_stackoverflow
          dump_backtrace_original(example)
        end

      end
    end
  end
end
