
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exception, false)

describe('anagram', :type => :feature) do
  it "tells you if sentence or word is anagram, antigram or palindrome" do
    visit('/')
    fill_in('word1', :with => 'The public art galleries')
    fill_in('word2', :with => 'Large picture halls, I bet')
    click_button('Compare')
    expect(page).to have_content("It's just an anagram")
  end
end
