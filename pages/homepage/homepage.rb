class HomePage
  def initialize(driver)
    @appium_driver = driver
  end

  def find_header_title
    @appium_driver.find_el_and_get_text(HomePageSelectors::HEADER_TITLE)
  end

  def find_user_name
    @appium_driver.find_el_and_get_text(HomePageSelectors::USER_NAME)
  end
end
