require 'appium_lib'
require 'rubygems'
require 'selenium-webdriver'
require 'require_all'

require_all 'data'
require_all 'pages'

Given(/^The application is being runned/) do
  @load_page = LoadPage.new
end

When("User logs in with {string} and {string} to the system") do |email, passwd|
  @login_page = @load_page.go_to_login_page
  @login_page.send_keys_into_email_field(email)
  @login_page.send_keys_into_passwd_field(passwd)
  @homepage = @login_page.tap_login_button
end

Then(/^User should be on homepage/) do
  header_title = @homepage.find_header_title
  header_title.include? 'Trending'
end

Then(/^Error message should appear/) do
  @login_page.find_incorect_creds_message
end

When(/^User wants to try out/) do
  @load_page.tap_see_how_it_works_button
  @load_page.find_first_description_elem
  @load_page.tap_next_button
  @load_page.find_description_elem
  @load_page.tap_next_button
  @load_page.find_description_elem
  @load_page.tap_next_button
  @load_page.find_description_elem
  @load_page.tap_next_button
  @homepage = @load_page.tap_try_us_out_button
end

Then(/^Temporary account is created/) do
  @homepage.find_user_name
end
