require 'rails_helper'

feature 'User views the last 20 recipes in home page' do
  scenario 'successfully' do
    30.times do |n|
      create(:recipe, name: "Comida#{n}")
    end

    visit root_path

    expect(page).to have_selector('article', count: 20)
    expect(page).not_to have_content('Comida9')
  end
end
