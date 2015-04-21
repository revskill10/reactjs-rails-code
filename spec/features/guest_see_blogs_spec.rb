require 'rails_helper'

feature 'Guest can see all blogs' do 
	scenario 'Guest can see all blogs', :js => true do 
		Blog.create(name: 'My blog')
		visit '/'
		expect(page).to have_content('My blog')
	end

end