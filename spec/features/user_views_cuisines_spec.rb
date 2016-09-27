require 'rails_helper'

feature 'User views recipes by cuisines' do
  scenario 'successfully' do
    cuisine1 = create(:cuisine, name: 'Brasileira')
    cuisine2 = create(:cuisine, name: 'Francesa')

    recipe1 = create(:recipe, name: 'Feijoada', cuisine:cuisine1)
    recipe2 = create(:recipe, name: 'Petit Gateau', cuisine:cuisine2)

    visit root_path

    expect(page).to have_content cuisine1.name
    expect(page).to have_content cuisine2.name

    click_on cuisine1.name

    expect(page).to have_content recipe1.name
    expect(page).not_to have_content recipe2.name
  end
end
