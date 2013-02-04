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
          #{long_padding} Search for this exception online: (#{instructions}) 
          #{long_padding}#{short_padding} google: \t#{ exception.to_google }
          #{long_padding}#{short_padding} stackoverflow: \t#{ exception.to_stackoverflow }
          "
        end

        def instructions
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
