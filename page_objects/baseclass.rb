require 'selenium-webdriver'
require 'rubygems'

class Baseclass

def initialize
    options = Selenium::WebDriver::Chrome::Options.new
    # options.add_argument('start-fullscreen')
    @driver=Selenium::WebDriver.for :chrome, options: options 
  end

  def setup(url)
    # @driver.manage.window.maximize
    @driver.navigate.to url 
  end

  def type_things_out(element, writing)
    element.send_keys writing
  end

  def find_element_with_wait(what, time = 5)
    wait = Selenium::WebDriver::Wait.new(timeout: time) # seconds
    begin
      wait.until {
        element = @driver.find_element(what)
        element if element.displayed?
      }
    rescue Selenium::WebDriver::Error::TimeOutError
      puts "Couldn't find #{what}"
      return false
    end
  end

  def find_element(what)
    self.find_element(what)
  end

  def get_title()
    @driver.title
  end

  def close_browser()
    @driver.quit
  end
end