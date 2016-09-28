require 'rails_helper'

feature 'User can authenticate' do
  scenario 'signs up' do
    visit new_user_registration_path

    fill_in 'Email', with: 'gio@gio.com'
    fill_in 'Senha', with: 'Senha123'
    fill_in 'Confirme sua senha', with: 'Senha123'

    click_on 'Registrar'

    expect(current_path).to eq(root_path)
    expect(page).to have_content('Olá, gio@gio.com')
  end

  scenario 'signs in' do
    visit root_path
    user = create(:user)

    click_on 'Login'

    fill_in 'Email', with: user.email
    fill_in 'Senha', with: user.password
    click_on 'Entrar'

    expect(current_path).to eq(root_path)
    expect(page).to have_content("Olá, #{user.email}")
  end

  scenario 'and can edit recipe' do
    user = create(:user)
    login_as(user)

    recipe = create(:recipe, user: user)

    visit recipe_path

    click_on 'Editar'

    fill_in 'Nome', with: 'Feijoada'
    click_on 'Atualizar'

    expect(page).to have_content 'Feijoada'
  end

end
