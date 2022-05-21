When(/^I press the Show on "([^"]*)"$/) do |title|
  expect(Movie.find_by_title(title))
  visit '/movies/3'
end

Then(/^the information about "([^"]*)" will be displayed$/) do |title|
  expect(page).to have_content(title)
  expect(page).to have_content("Encanto")
  expect(page).to have_content("G")
  expect(page).to have_content("The Madrigals are an extraordinary family who live hidden in the mountains of Colombia in a charmed place called the Encanto.")
end

When(/^I press the New Movie$/) do
  visit '/movies/new'
end

And(/^I fill in the form with information about the movie$/) do
  fill_in 'Title', with: "I am a new Movie"
  fill_in 'Description', with: "This is the description"
  fill_in 'Director', with: "I am a director"
  click_button 'Create Movie'
end

Then(/^the new movie will be displayed on the home page$/) do
  visit root_path
  expect(page).to have_content("I am a new Movie")
  expect(page).to have_content("PG")
  expect(page).to have_content("This is the description")
end

When(/^I press the destroy on "([^"]*)"$/) do |title|
  expect(page).to have_content(title)
  all(:link, 'Destroy')[8].click
end

Then(/^The home page should not have "([^"]*)"$/) do |title|
  visit root_path
  expect(page).to have_no_content(title)
end

When(/^I press the edit on "([^"]*)"$/) do |title|
  expect(Movie.find_by_title(title))
  visit '/movies/4/edit'
end

Then(/^I change the information for "([^"]*)"$/) do |title|
  fill_in 'Title', with: title
  fill_in 'Description', with: "A new description"
  fill_in 'Director', with: "I am a director"
  click_button 'Update Movie'
end

Then(/^"([^"]*)" should be updated with the new information$/) do |title|
  expect(page).to have_content(title)
  expect(page).to have_content("Moana")
  expect(page).to have_content("G")
  expect(page).to have_content("A new description")
end

