class TasksController < ApplicationController

  # Actions to create different levels of WBS Tasks:

  def create
    @currentproject = Project.find_by(:id => params[:project_id])
    newtask = Task.new
    newtask.name = params["name"]
    newtask.project_id = params["project_id"]
    newtask.save
    redirect_to "/projects/#{@currentproject.id}/show"
  end

  def createwbs2
    @currentproject = Project.find_by(:id => params[:project_id])
    @currenttask = Task.find_by(:id =>params[:task_id])
    newwbs2 = Wbs2.new
    newwbs2.name = params["name"]
    newwbs2.project_id = params["project_id"]
    newwbs2.task_id = params["task_id"]
    newwbs2.save
    redirect_to "/tasks/#{@currenttask.id}/show"
  end


    def createwbs3
    @currentproject = Project.find_by(:id => params[:project_id])
    @currenttask = Task.find_by(:id =>params[:task_id])
    @currentwbs2 = Wbs2.find_by(:id => params[:wbs2_id])
    newwbs3 = Wbs3.new
    newwbs3.name = params["name"]
    newwbs3.project_id = params["project_id"]
    newwbs3.wbs2_id = params["wbs2_id"]
    newwbs3.description = params["description"]
    newwbs3.save
    redirect_to "/tasks/#{@currenttask.id}/#{@currentwbs2.id}/show"
  end


#Actions to show the lower levels of the Project's WBS:

  def showwbs2
    @currenttask = Task.find_by(:id => params[:task_id])
    @currentproject = Project.find_by(:id => @currenttask.project_id)
    @currentwbs2_list = Wbs2.where(:task_id => params[:task_id])
  end

  def showwbs3
    @currentwbs2 = Wbs2.find_by(:id => params[:wbs2_id])
    @currenttask = Task.find_by(:id => @currentwbs2.task_id)
    @currentproject = Project.find_by(:id => @currenttask.project_id)
    @currentwbs3 = Wbs3.where(:wbs2_id => params[:wbs2_id]).last
  end


  #UPDATE:



  #DESTROY:

  def destroy
    @task = Task.find_by(:id => params[:task_id])
    @currentproject = Project.find_by(:id => @task.project_id)
    @task.destroy
    redirect_to "/projects/#{@currentproject.id}/show", notice: "The task was deleted successfully"
  end

  def destroywbs2
    @wbs2 = Wbs2.find_by(:id => params[:wbs2_id])
    @task = Task.find_by(:id => params[:task_id])
    @currentproject = Project.find_by(:id => @task.project_id)
    @wbs2.destroy
    redirect_to "/tasks/#{@task.id}/show", notice: "The task was deleted successfully"
  end

end



      # t.string :name
      # t.integer :project_id
      # t.text :description
