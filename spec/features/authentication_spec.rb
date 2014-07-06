require 'rails_helper'

feature 'Guest can sign in' do 
	scenario 'Guest can sign in', :js => true do 
		User.create(fullname: 'Truong Dung', email: 'test@example.com', password: 'password', password_confirmation: 'password')
		visit '/'
		click_link 'Sign in'
		fill_in 'email', :with => 'test@example.com'
		fill_in 'password', :with => 'password'
		expect(page).to have_content('Welcome Truong Dung')
	end
end