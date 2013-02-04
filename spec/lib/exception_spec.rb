require 'spec_helper'

describe Exception do
  subject { Exception.new }
  describe "#to_google" do
    it "should link to the google results" do
      subject.to_google.should == "https://www.google.com/search?q=#{subject.message}"
    end
  end
  describe "#to_stackoverflow" do
    it "should link to the stackoverflow results" do
      subject.to_stackoverflow.should == "http://stackoverflow.com/search?q=#{subject.message}"
    end
  end

  it "should show the links when a backtrace is printed" do
    raise 'hi'
  end
end
