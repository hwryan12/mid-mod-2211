require 'rails_helper'

feature 'user can search for foods' do
  scenario 'user can search for foods' do
    visit root_path

    fill_in :q, with: 'sweet potatoes'
    click_on 'Search'
  
    expect(current_path).to eq(foods_path)
    expect(page).to have_content('Total Results: 51270')
    expect(page).to have_css('.food', count: 10)

    within(first('.food')) do
      expect(page).to have_css('.code')
      expect(page).to have_css('.description')
      expect(page).to have_css('.brand')
      expect(page).to have_css('.ingredients')
    end
  end
end