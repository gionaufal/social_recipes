require 'rails_helper'

feature 'User creates a recipe' do
  scenario 'successfully' do
    recipe = build(:recipe)

    visit new_recipe_path

    fill_in 'Nome da receita',        with: recipe.name
    select recipe.cuisine.name,       from: 'Cozinha'
    fill_in 'Tipo de comida',         with: recipe.kind
    fill_in 'Quantas pessoas serve',  with: recipe.serves
    fill_in 'Tempo de preparo',       with: recipe.time
    select  recipe.level,             from: 'Nível de dificuldade'
    fill_in 'Ingredientes',           with: recipe.ingredients
    fill_in 'Passo a passo',          with: recipe.steps

    click_on 'Criar receita'

    expect(page).to have_content recipe.name
    expect(page).to have_content recipe.cuisine.name
    expect(page).to have_content recipe.kind
    expect(page).to have_content recipe.serves
    expect(page).to have_content recipe.time
    expect(page).to have_content recipe.level
    expect(page).to have_content recipe.ingredients
    expect(page).to have_content recipe.steps
  end

  scenario 'and should fill all fields' do
    visit new_recipe_path

    click_on 'Criar receita'

    expect(page).to have_content 'Preencha os campos obrigatórios'
  end
end
