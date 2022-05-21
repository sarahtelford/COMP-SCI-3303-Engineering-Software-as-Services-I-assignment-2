Given(/^I am on the "([^"]*)" details page$/) do |title|
  expect(Movie.find_by_title(title))
  visit '/movies/11'
end

Then(/^I should not see a "([^"]*)"$/) do |director|
  expect(page).to have_no_content(director)
end

Then(/^I should be on the home page$/) do
  visit root_path
end

And(/^I should be informed that "([^"]*)"$/) do |statement|
  expect(page).to have_text(statement)
end