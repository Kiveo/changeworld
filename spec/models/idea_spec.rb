require 'spec_helper'

RSpec.describe Idea, type: :model do 
  it "has a name" do 
    idea  = Idea.create!(name: "My Awesome Idea Name") #instantiate an instance
    expect(idea.name).to eq("My Awesome Idea Name") #expect the arg to exist and be the assigned name
  end
end 
