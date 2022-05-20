require 'rails_helper'

describe MoviesController do
  it 'checks director field exists' do
    expect(Movie.new()).to respond_to(:director)
  end
end


