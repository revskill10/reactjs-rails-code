class Entry < ActiveRecord::Base
	belongs_to :blog
	def as_json(options={})
	  super(:only => [:title, :content])
	end
end
