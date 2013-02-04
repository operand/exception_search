module RSpec
  module Core
    module Formatters
      class BaseTextFormatter < BaseFormatter

        alias_method :dump_backtrace_original, :dump_backtrace

        private
        
        def dump_backtrace(example)
          output.puts format_links(example)

          dump_backtrace_original(example)
        end

        def format_links(example)
          exception = example.execution_result[:exception]
          "
          Search for this exception online: (#{link_instructions}) 
          #{short_padding} google: \t#{exception.to_google}
          #{short_padding} stackoverflow: \t#{exception.to_stackoverflow}
          "
        end

        def link_instructions
          if RUBY_PLATFORM =~ /darwin/i
            "cmd-click to open results in your browser"
          else
            "right-click to open results in your browser"
          end
        end

      end
    end
  end
end
