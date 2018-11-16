require 'rails_helper'

RSpec.describe Idea, type: :model do
  it 'has a name' do
    idea = Idea.create!(name: 'My Awesome Idea Name') # instantiate an instance
    expect(idea.name).to eq('My Awesome Idea Name') # expect the arg to exist and be the assigned name
  end

  it 'has a description' do
    idea = Idea.create!(description: 'Description of an Awesome Idea')
    expect(idea.description).to eq('Description of an Awesome Idea')
  end

  it 'has a picture reference' do
    idea = Idea.new(picture: "Pic Link")
    expect(idea.picture).to eq('Pic Link')
  end 
  
end
