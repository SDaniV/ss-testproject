require 'appium_lib'
require 'selenium-webdriver'

class AppiumDriver
  attr_accessor :driver

  def initialize(desired_caps)
    @driver = Appium::Driver.new(desired_caps, true).start_driver
    @wait = Selenium::WebDriver::Wait.new timeout: 20
  end

  def find_el(value)
    @wait.until { driver.find_element(id: value) }
  end

  def find_el_and_get_text(value)
    @wait.until { driver.find_element(id: value).text }
  end

  def click_el(element)
    element.click
  end

  def send_keys(value)
    driver.send_keys(value)
  end
end
