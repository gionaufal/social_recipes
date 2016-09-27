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
end
