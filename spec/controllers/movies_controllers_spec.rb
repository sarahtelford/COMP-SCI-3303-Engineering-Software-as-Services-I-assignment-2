require 'rails_helper'

describe MoviesController do
  it 'checks director field exists' do
    expect(Movie.new()).to respond_to(:director)
  end

  it 'Should show the create a new movie page' do
    get :new
    expect(response).to render_template('new')
  end

  it 'Should create a new movie' do
    expect(:get => '/movies/new').to be_routable
    expect(Movie.new()).to respond_to(:title)
    expect(Movie.new()).to respond_to(:rating)
    expect(Movie.new()).to respond_to(:description)
    expect(Movie.new()).to respond_to(:release_date)
    expect(Movie.new()).to respond_to(:director)
  end

  it 'Should show the edit a movie page' do
    expect(:get => '/movies/1/edit').to be_routable
    get :update
    expect(response).to render_template('update')
  end

  it 'should display the show page' do
    get :show
    expect(response).to render_template('show')
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



