require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the user path', {:type => :feature}) do
  it('returns the cost of shipping the object') do
    visit('/')
    fill_in('length', :with => 5)
    fill_in('width', :with => 2)
    fill_in('height', :with => 3)
    fill_in('weight', :with => 5)
    fill_in('distance', :with => 10)
    find('#speed').find(:xpath, 'option[3]').select_option
    click_button('Submit')
    save_and_open_page
    expect(page).to have_content('30.5')
  end
end
