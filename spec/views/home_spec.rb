RSpec.describe 'Home Page View' do 
  it 'displays a table' do 
    visit '/'
    expect(page).to have_selector('table')
  end
end