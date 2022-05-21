Given(/^I am on the details page for "([^"]*)"$/) do |title|
  expect(Movie.find_by_title(title))
  visit '/movies/9'
end

When(/^I click Find Similar Movies$/) do
  click_link 'Find Same Director'
end

And(/^I should see "([^"]*)"$/) do |title|
  expect(page).to have_content(title)
  expect(page).to have_content("Howels Moving Castle")
end

But(/^I should not see "([^"]*)"$/) do |title|
  expect(page).to have_no_content(title)
  expect(page).to have_no_content("Nightmare on elm street")
end

