class LoadPage
  def initialize
    @appium_driver = AppiumDriver.new(Capabilities::SAMSUNG_S10)
  end

  def find_have_an_account_button
    @appium_driver.find_el(LoadPageSelectors::HAVE_AN_ACCOUNT).click
  end

  def find_see_how_it_works_button
    @appium_driver.find_el(LoadPageSelectors::SEE_HOW_IT_WORKS)
  end

  def find_next_button
    @appium_driver.find_el(LoadPageSelectors::NEXT_BUTTON)
  end

  def find_first_description_elem
    @appium_driver.find_el(LoadPageSelectors::FIRST_DESCRIPTION_ELEMENT)
  end

  def find_description_elem
    @appium_driver.find_el(LoadPageSelectors::DESCRIPTION_ELEMENT)
  end

  def find_try_us_out_button
    @appium_driver.find_el(LoadPageSelectors::TRY_US_OUT)
  end

  def go_to_login_page
    @appium_driver.find_el(LoadPageSelectors::HAVE_AN_ACCOUNT).click
    LoginPage.new(@appium_driver)
  end

  def tap_see_how_it_works_button
    button = find_see_how_it_works_button
    button.click
  end

  def tap_next_button
    button = find_next_button
    button.click
  end

  def tap_try_us_out_button
    button = find_try_us_out_button
    button.click
    HomePage.new(@appium_driver)
  end
end
