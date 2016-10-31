require 'rails_helper.rb'

feature "Go to find all page" do
  scenario "opens find all page" do
    visit '/'
    fill_in 'zip_code', with: '85705'

    click_button 'List All'
    
    # Every tucson food place phone number should start with +1-520
    expect(page).to have_content '4 Seasons'
  end
end