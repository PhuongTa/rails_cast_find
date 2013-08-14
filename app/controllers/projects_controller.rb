class ProjectsController < ApplicationController
  #layout :user_layout
  def new
    @project = Project.new
  end

  def index
    @projects = Project.find(:all)
    render :layout => "application"
  end

  def show
  	@project = Project.find(params[:id])
  # @taks = Task.find(:all, :conditions=>['project_id = ? AND complete = ?',@project.id, false])
	# Task written throught associate have_many && belongs_to
	# @tasks = @project.tasks.find_all_by_complete(false)  	

	# After move find_all_by_complete to model
	# We re-write it
	#@taks = @project.tasks.find_incomplete
  end

  def edit
    
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      flash.now[:success] = "Project's already saved!"
      redirect_to @project
    else
      render 'new'
    end
  end
  
  def destroy
    Project.destroy(params[:id])
    flash[:notice]="successfully destroyed!"
    return root_path
  end
  
  def confirm_destroy
   
    @project = Project.find(params[:id])
    # render :json => @project.to_json
    # return 
  end

  #render :json => @users.to_json
  #return

  # def user_layout
  #   if true
  #     "admin"
  #   else
  #     "application"
  #   end
  # end
end
