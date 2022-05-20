Given(/^I am on the details page for "One Direction: Live on Tour"$/) do
  visit '/movies/11'
end

Then(/^I should not see a director$/) do
  directorName = Movie.find_by_title(director)
  expect(page).to.not have_content(directorName)
end

Then(/^I should be on the home page$/) do
  visit root_path
end

And(/^I should be informed that "'Howels Moving Castle' has no director information"$/) do
  expect(page).to have_content("'Howels Moving Castle' has no director information'")
end