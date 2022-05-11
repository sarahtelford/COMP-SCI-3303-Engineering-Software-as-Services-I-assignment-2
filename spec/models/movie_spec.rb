require 'rails_helper'

describe Movie do
  it 'should check director exists' do
    movie.should respond_to(:director)
  end
end