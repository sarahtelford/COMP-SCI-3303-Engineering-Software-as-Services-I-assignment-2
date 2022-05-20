Given(/^I am on the details page for "Spirited Away"$/) do
  visit '/movies/9'
end

When(/^I click "([^"]*)"$/) do |button|
  click_button 'Find Same Director'
end

Then(/^I should be on the Similar Movies page"$/) do
  visit '/movies/9/similar_movies'
end

And(/^I should see "([^"]*)"$/) do |title|
  expect(page).to have_content(movies)
  expect(page).to have_content(title)
end

But(/^I should not see "([^"]*)"$/) do |title|
  expect(page).to have_content(movies)
  expect(page).not_to have_content(title)
end

