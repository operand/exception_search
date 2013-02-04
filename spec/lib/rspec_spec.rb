require 'spec_helper'

describe RSpec::Core::Formatters::BaseTextFormatter do
  before do
    @formatter = RSpec::Core::Formatters::BaseTextFormatter.new(nil)

    exception = Exception.new("message")
    exception.set_backtrace([])

    @mock_example = mock(:example)
    @mock_example.stub(:execution_result).and_return({:exception => exception})
    @mock_example.stub(:metadata).and_return({})
  end


  describe "#dump_backtrace" do
    it "should call format_links" do
      @formatter.should_receive(:format_links)
      me = @mock_example # seems like we need a closure here
      @formatter.instance_eval{ dump_backtrace(me) }
    end
  end

  describe "#format_links" do
    it "should include the links when a backtrace is printed" do
      me = @mock_example # seems like we need a closure here
      result = @formatter.instance_eval{ format_links(me) }
      result.should include("https://www.google.com/search?q=message")
      result.should include("http://stackoverflow.com/search?q=message")
    end
  end
end
