require "selenium-webdriver"

Given(/^A chrome web browser$/) do
	@driver = Selenium::WebDriver.for :chrome
end

When(/^I visit "([^"]*)" website$/) do |site|
	@driver.get 'http://' + site
end

When(/^Type "([^"]*)" in the search box$/) do |query|
	@driver.find_element(:name,'q').send_keys query
end

Then(/^I see the results$/) do
	puts @driver.title
end
