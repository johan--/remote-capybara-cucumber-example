Then /^I should see a JS alert$/ do
  page.driver.browser.switch_to.alert.should_not be_nil
  #selenium.is_alert_present.should be_true
end

Given /^I accept JS alert$/ do
  a = page.driver.browser.switch_to.alert
  a.accept
end

Given /^I dismiss JS alert$/ do
  a = page.driver.browser.switch_to.alert
  a.dismiss
end


 
