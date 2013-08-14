class Task < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :project

  def self.find_incomplete(options = {})
  	with_scope find: options do |
  		find_by_all_complete(:false, :order => "created_at DESC")	 		
  	end  	
  end
end
