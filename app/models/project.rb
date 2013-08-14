class Project < ActiveRecord::Base
  attr_accessible :name
  # has_many :tasks

  # def self.all_name
  # 	# Shortcut Blocks with Symbol to_proc 
  # 	  find(all).collect(&:name)
  # end
end
