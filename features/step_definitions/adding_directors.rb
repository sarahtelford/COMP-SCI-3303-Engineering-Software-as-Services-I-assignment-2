Given(/^the following movies exist:$/) do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create movie
  end
end

Given(/^I am on the home page$/) do
  visit root_path
end

When(/^I press the edit page for "([^"]*)"$/) do |title|
  expect(Movie.find_by_title(title))
  visit '/movies/9/edit'
end

Then(/^I fill in Director with "([^"]*)"$/) do |name|
  fill_in 'director', with: name
end

And(/^I press "Update Movie"$/) do
  click_button 'Update movie'
end

Then(/^the director of "([^"]*)" should be "([^"]*)"$/) do |title, director|
  expect(Movie.find_by_title(title).director).to eq director
end

