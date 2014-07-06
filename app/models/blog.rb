class Blog < ActiveRecord::Base
	has_many :entries, :dependent => :destroy
	def as_json(options={})
	  super(:only => [:id, :name], :include => :entries)
	end
end
