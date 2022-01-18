class TasksController < ApplicationController
  def index
  end
  def create
    @task = Task.new(task_params)
  end

  private

  def task_params
    params.require(:task).permit(:description)
  end
end
