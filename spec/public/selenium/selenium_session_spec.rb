require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

require "webrat/selenium/silence_stream"
require "webrat/selenium/selenium_session"

describe Webrat::SeleniumSession do

  before :each do
    Webrat.configuration.mode = :selenium
    @selenium = Webrat::SeleniumSession.new()
  end

  it "should throw TimeoutError instead of Spec::Expectations::ExpectationNotMetError" do
    lambda {
      @selenium.wait_for(:timeout => 0.0001) do
        raise ::Spec::Expectations::ExpectationNotMetError
      end
    }.should raise_error(Webrat::TimeoutError)
  end

  it "should throw TimeoutError instead of Selenium::CommandError" do
    lambda {
      @selenium.wait_for(:timeout => 0.0001) do
        raise ::Selenium::CommandError
      end
    }.should raise_error(Webrat::TimeoutError)
  end

  it "should throw TimeoutError instead of WebratError" do
    lambda {
      @selenium.wait_for(:timeout => 0.0001) do
        raise Webrat::WebratError.new
      end
    }.should raise_error(Webrat::TimeoutError)
  end

end
