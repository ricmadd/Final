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


end
