Given /^I am on google\.com$/ do
  visit('/')
end

Given /^I am on the Google homepage$/ do
  visit 'http://google.com' 
end

When /^I enter "([^"]*)"$/ do |term|
  fill_in('q',:with => term)
end

Then /^I should see results$/ do
  page.should have_css('div#res li')
end

When /^I search for "([^"]*)"$/ do |term|
  fill_in('q',:with => term)
end

When /^I pause for (\d+) seconds$/ do |seconds|
  sleep seconds.to_i
end

