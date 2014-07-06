require 'rails_helper'

feature 'guest can view blog' do 
	scenario 'guest can view blog', :js => true do 
		b = Blog.create(name: 'My first blog')
		b.entries.create(title: 'First entry', content: 'React.js is awesome')
		visit '/'
		click_link 'My first blog'
		expect(page).to have_content 'First entry'
		expect(page).to have_content 'React.js is awesome'
	end
end