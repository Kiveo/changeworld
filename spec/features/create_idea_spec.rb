require 'rails_helper'

RSpec.describe 'show page', type: :request do
  it 'displays a newly created idea' do
    idea = FactoryBot.create(:idea, name: 'Best Idea', description: 'The best idea, ever!', picture: 'The best image')
    visit '/ideas/new'
    fill_in 'Name', with: 'Best idea'
    fill_in 'Description', with: 'The best idea, ever!'
    fill_in 'Picture', with: 'The best image'
    click_button 'Create Idea'

    expect(page).to have_selector('body', text: 'Idea was successfully created')
  end
end

RSpec.describe 'Home Page' do
  it 'displays newly created ideas' do
    idea = FactoryBot.create(:idea)
    visit '/'

    expect(page).to have_selector('td', text: 'Picture reference')
  end
end
