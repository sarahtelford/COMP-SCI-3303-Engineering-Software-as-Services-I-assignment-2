require 'rails_helper'

describe MoviesController do
  it 'checks director field exists' do
    expect(Movie.new()).to respond_to(:director)
  end

  it 'Search movies by the same director' do
      expect(Movie).to receive(:similar_movies).with('Spirited Away')
      get :search, { title: 'Spirited Away' }
    end

  it 'Should redirect to home page if no director is known' do
    allow(Movie).to receive(:similar_movies).with('No name').and_return(nil)
    get :search, { title: 'No name' }
    expect(response).to redirect_to(root_url)
  end
end



