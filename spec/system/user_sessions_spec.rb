require 'rails_helper'

  RSpec.describe 'UserSessions', type: :system do
    let(:user_a) { create(:user) }

   describe 'ログイン前' do
     context 'フォームの入力値が正常' do
       it 'ログイン処理が成功する' do
        visit login_path
        fill_in 'Email', with: user_a.email
        fill_in 'Password', with: 'password'
        click_button 'Login'
        expect(current_path).to eq root_path
        expect(page).to have_content 'Login successful'
       end
     end
     context 'フォームが未入力' do
       it 'ログイン処理が失敗する' do
       other_user = FactoryBot.build(:user, :no_email_user)
       visit login_path
       fill_in 'Email', with: other_user.email
       fill_in 'Password', with: ''
       click_button 'Login'
       expect(current_path).to eq login_path
       expect(page).to have_content 'Login failed'
      end
     end
   end
  end
