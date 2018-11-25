require 'selenium-webdriver'
require_relative '../classes/baseclass.rb'


describe '' do
  before(:each) do
    @browser = ExercisesModelReflectionCreation.new()
  end

  after(:each) do
    @browser.close_browser
  end

end