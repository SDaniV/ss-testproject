class LoginPage
  def initialize(driver)
    @appium_driver = driver
  end

  def find_email_field
    @appium_driver.find_el(LoginSelectors::EMAIL_FIELD)
  end

  def find_passwd_field
    @appium_driver.find_el(LoginSelectors::PASSWD_FIELD)
  end

  def find_login_button
    @appium_driver.find_el(LoginSelectors::LOGIN_BUTTON)
  end

  def find_incorect_creds_message
    @appium_driver.find_el(LoginSelectors::INCORRECT_CREDS)
  end

  def send_keys_into_email_field(value)
    email_field = find_email_field
    email_field.send_keys(value)
  end

  def send_keys_into_passwd_field(value)
    email_field = find_passwd_field
    email_field.send_keys(value)
  end

  def tap_login_button
    @appium_driver.find_el(LoginSelectors::LOGIN_BUTTON).click
    HomePage.new(@appium_driver)
  end
end
