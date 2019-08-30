require 'rails_helper'

feature 'On the users path' do
  context 'as a visitor' do
    scenario 'can create a new user' do
      visit users_path

      click_on 'New User'

      expect(current_path).to eq(new_user_path)

      fill_in 'user[name]', with: 'test name'
      fill_in 'user[cash]', with: 100
      click_on 'Create User'

      expect(current_path).to eq(user_path(User.last))
      expect(page).to have_content('Name: test name')
      expect(page).to have_content('Cash: 100')
    end
  end
end
