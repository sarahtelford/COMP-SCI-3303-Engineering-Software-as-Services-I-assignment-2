Given(/^the following movies exist:$/) do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create movie
  end
end

When('I go to the edit page for {string}') do |button|
  click_button 'Edit'
  fill_in 'Director', with: 'Hayao Miyazaki'
  click_button 'Update Movie'
end

Then (/^I should see "([^"]*)"$/) do |arg|
  expect(page).to have_content(arg)
end
