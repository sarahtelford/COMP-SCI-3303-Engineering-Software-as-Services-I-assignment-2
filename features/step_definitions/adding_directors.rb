Given(/^the following movies exist:$/) do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create movie
  end
end

When(/^I go to the edit page for "([^"]*)"$/) do |title|
  fill_in 'Director', with: 'Hayao Miyazaki'
  click_button 'Update Movie'
end

