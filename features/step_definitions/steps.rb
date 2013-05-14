When(/^I visit a homepage$/) do
  visit root_path
end

Then(/^I should see (\d+) ((?:favorite )?tweets)$/) do |arg1,arg2|
  className = arg2.split.join ?-
  all("##{className} tbody .text").count.should eq arg1.to_i
end

Given(/^I see tweets$/) do
  step 'I visit a homepage'
  step 'I should see 20 tweets'
end

When /^I wait for the ajax request to finish$/ do
  start_time = Time.now
  page.evaluate_script('jQuery.isReady&&jQuery.active==0').class.should_not eql(String) until page.evaluate_script('jQuery.isReady&&jQuery.active==0') or (start_time + 5.seconds) < Time.now do
    sleep 1
  end
end

When(/^I click (?:a )?"([^"]*?)"$/) do |link|
  click_link link
end

When(/^I click a "(.*?)" "(.*?)"$/) do |name, type|
  case type
  when 'icon'
    puts all("i.icon-#{name}").first.click
  end
end

Then(/^I should see tweet favorited$/) do
  find 'i.icon-star.favorite'
end

Then(/^I should see header "(.*?)"$/) do |arg1|
  find('h1,h2,h3,h4,h5').should have_content arg1
end
