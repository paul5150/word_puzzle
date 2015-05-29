require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('word_puzzle path', {:type => :feature}) do
  it('returns a word or sentence with the vowels replaced with a dash') do
    visit('/')
    fill_in('word', :with => 'dog')
    click_button('Send')
    expect(page).to have_content('d-g')
  end
end
