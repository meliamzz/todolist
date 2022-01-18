class TasksController < ApplicationController
  def index
    @list = List.find(params[:list_id])
    @tasks = @list.tasks
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @list = List.find(params[:list_id])
    @task.list = @list
    if @task.save
      redirect_to list_tasks_path
    end
  end

  private

  def task_params
    params.require(:task).permit(:description)
  end
end
