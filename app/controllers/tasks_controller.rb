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
    @task.done = false
    if @task.save
      redirect_to list_tasks_path
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to list_tasks_path
  end

  def update
    @task = Task.find(params[:id])
    if @task.done?
      @task.done = false
    else
      @task.done = true
    end
    @task.update(task_status_params)
    redirect_to list_tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:description, :done)
  end

  def task_status_params
    params.permit(:done)
  end
end
