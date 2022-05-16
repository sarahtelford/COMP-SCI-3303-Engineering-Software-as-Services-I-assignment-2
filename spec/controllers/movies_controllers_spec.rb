require 'rails_helper'

describe MoviesController do
  it 'should check director field exists' do
    Movie.should exist(:director)
  end

end