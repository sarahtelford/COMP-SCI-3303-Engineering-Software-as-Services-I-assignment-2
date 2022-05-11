require 'rails_helper'

describe MoviesController do
    it 'should check director field exists' do
      Movie.should respond_to?(:director)
end

end