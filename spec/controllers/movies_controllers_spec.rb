require 'rails_helper'

describe MoviesController do
  describe 'check director field exists' do
    expect(Movie.new()).to respond_to(:director)
  end
end


