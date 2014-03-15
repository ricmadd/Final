require 'open-uri'

class ProjectsController < ApplicationController

  def index

    @project_list = Project.all.order('name asc')
  end

  def create
    newproject = Project.new
    newproject.name = params["name"]
    newproject.manager = params["manager"]
    newproject.client = params["client"]
    newproject.location = params["location"]
    newproject.description = params["description"]
    newproject.contractvalue = params["contractvalue"]
    newproject.save
    redirect_to "/projects"

      # Project Model columns:
      # t.string :name
      # t.string :manager
      # t.string :client
      # t.string :location
      # t.text :description
      # t.integer :contractvalue
      # t.integer :progress

  end


  def show
    @currentproject = Project.find_by(:id => params[:project_id])
    @task_list = Task.where(:project_id => params[:project_id])
  end


  def edit
    @project = Project.find_by(:id => params[:project_id])
  end

 def update
    project = Project.find_by(:id => params[:project_id])
    project.name = params["name"]
    project.manager = params["manager"]
    project.location = params["location"]
    project.description = params["description"]
    project.contractvalue = params["contractvalue"]
    project.save
    redirect_to "/projects"
  end

  def destroy
    project = Project.find_by(:id => params[:project_id])
    project.destroy
    redirect_to "/projects", notice: "The project was deleted successfully"
  end

end
