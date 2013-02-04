require 'spec_helper'

describe RSpec::Core::Formatters::BaseTextFormatter do

  describe "#dump_backtrace" do
    it "should show the links when a backtrace is printed" do
      formatter = RSpec::Core::Formatters::BaseTextFormatter.new
      formatter.dump_backtrace(nil).should include("http")
    end
  end
end
