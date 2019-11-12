class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def edit() end

  def show() end

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(new_task)
    @task.save

    redirect_to root_path
  end

  def update
    @task.update(update_task)

    redirect_to root_path
  end

  def destroy
    @task.destroy

    redirect_to root_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def new_task
    params.require(:task).permit(:title, :details)
  end

  def update_task
    params.require(:task).permit(:title, :details)
  end
end
