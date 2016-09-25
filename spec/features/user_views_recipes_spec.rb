require 'rails_helper'

feature 'User views recipes' do
  scenario 'in recipes index' do
    recipe = create(:recipe)

    visit recipes_path

    expect(page).to have_content recipe.name
    expect(page).to have_content recipe.cuisine.name
    expect(page).to have_content recipe.kind

    click_on recipe.name

    expect(page).to have_content recipe.serves
    expect(page).to have_content recipe.ingredients
  end
end
