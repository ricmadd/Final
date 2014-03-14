class TasksController < ApplicationController

  def create
    @currentproject = Project.find_by(:id => params[:project_id])
    newtask = Task.new
    newtask.name = params["name"]
    newtask.project_id = params["project_id"]
    newtask.parenttask = params["parenttask"]
    newtask.wbslevel2 = params["wbslevel2"]
    newtask.save
    redirect_to "/projects/#{@currentproject.id}/show"
  end

end

      # Task Model:
      # t.string :name
      # t.integer :project_id
      # t.integer :parenttask
      # t.integer :wbslevel2
      # t.integer :wbslevel3
      # t.integer :wbslevel4
      # t.text :description
      # t.string :responsible
      # t.integer :cost
      # t.integer :progress -->
