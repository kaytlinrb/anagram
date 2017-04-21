require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('display anagram result',{:type => :feature}) do
  it('send information to results page') do
    visit('/')
    fill_in('input1', :with => 'katie')
    fill_in('input2', :with => 'eitak')
    click_button('Submit')
    expect(page).to have_content('palindromes!')
  end
end
