class TasksController < ApplicationController
  # def incomplete
  # 	# Task find incomplete # complete is column in database
  # 	@tasks = Task.find(:all, :conditions => ["complete = ?", false ])
  # 	# Other write
  # 	@tasks = Task.find_all_by_complete(false)
  # 	# Tasks find lastest element incomplete
  # 	@tasks = Task.find_all_by_complete(false, order: 'create_at DESC')
  # end

  def index
  	# @tasks = Task.find_all_by_complete(:false, order: "create_at DESC")
  	# Move find function to model Then we write again
  	# @tasks = Task.find.incomplete

  	# Task.find.incomplete with limit option
  	#@tasks = Tasks.find.incomplete limit:20
  end
end
