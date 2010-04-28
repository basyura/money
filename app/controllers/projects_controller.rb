class ProjectsController < ApplicationController
  def index
    @projects = Project.where(:user_id => params[:user_id])
  end
  def new
    @project = Project.new
  end
  def create
    @project = Project.new(params[:project])
    @project.user_id = params[:user_id]

    if @project.save
      redirect_to(show_project_path(params[:user_id] , @project[:id]) , :notice => 'User was successfully created.')
    else
      render :action => "new"
    end
  end
  def show
    @project = Project.where(:user_id => params[:user_id] , :id => params[:project_id]).first
    # TODO: has_many 定義へ
    @orders  = Order.where(:project_id => @project.id)
  end
end
