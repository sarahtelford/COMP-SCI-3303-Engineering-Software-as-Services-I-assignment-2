Given(/^I am on the details page for "Spirited Away"$/) do
  visit '/movies/9'
end

When(/^I click Find Similar Movies$/) do
  click_button 'Find Similar Movies'
end

Then(/^I should be on the Similar Movies page"$/) do
  visit '/movies/9/search'
end

And(/^I should see "([^"]*)"$/) do |title|
  expect(page).to have_content(title)
  expect(page).to have_content("Howels Moving Castle")
end

But(/^I should not see "([^"]*)"$/) do |title|
  expect(page).not.to have_content(title)
  expect(page).not_to have_content("Nightmare on elm street")
end

