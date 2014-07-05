require 'rails_helper'

feature 'Creating blog' do 
	scenario 'can create a blog', :js => true do 
		visit '/'
		click_link 'New Blog'

		fill_in 'Name', with: 'My blog'
		click_button 'Create Blog'
		expect(page).to have_content('Blog successfully created.')

	end

end