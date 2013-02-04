require 'spec_helper'

describe RSpec::Core::Formatters::BaseTextFormatter do

  describe "#dump_backtrace" do
    it "should call format_links"
  end

  describe "#format_links" do
    it "should include the links when a backtrace is printed" do
      formatter = RSpec::Core::Formatters::BaseTextFormatter.new(nil)

      exception = Exception.new("message")
      exception.set_backtrace([])

      mock_example = mock(:example)
      mock_example.stub(:execution_result).and_return({:exception => exception})
      mock_example.stub(:metadata).and_return({})

      result = formatter.instance_eval{ format_links(mock_example) }
      result.should include("https://www.google.com/search?q=message")
      result.should include("http://stackoverflow.com/search?q=message")
    end
  end
end
