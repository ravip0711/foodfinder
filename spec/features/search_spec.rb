require 'rails_helper.rb'

feature "Go to search page" do
  scenario "opens search page" do
    visit '/'
    fill_in 'zip_code', with: '85705'

    click_button 'Surprise Me'
    
    # Every tucson food place phone number should start with +1-520
    expect(page).to have_content '+1-520'
  end
end