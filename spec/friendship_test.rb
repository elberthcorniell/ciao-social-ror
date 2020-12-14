require 'rails_helper'

RSpec.feature 'Forms', type: :feature do
    context 'can enter a name and email' do
      scenario 'should be Signed in successfully.' do
        visit new_user_session_path
        within('form') do
          fill_in 'Email', with: 'luffy@onepiece.com'
          # fill_in :name, with: 'zorro'
        end
        click_button 'Log in'
        expect(page).to have_content 'Forgot your password'
      end
    end
  end

RSpec.describe Friendship, type: :model do
    it 'works' do
        expect(true).to be(true)
    end
end