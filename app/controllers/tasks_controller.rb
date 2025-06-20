# frozen_string_literal: true

class TasksController < ApplicationController
  before_action :set_list
  before_action :set_task, only: %i[edit update destroy]

  def new
    @task = @list.tasks.build
  end

  def edit; end

  def create
    @task = @list.tasks.build(task_params)
    if @task.save
      redirect_to list_path(@list), notice: 'Task was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @task.update(task_params)
      redirect_to list_path(@list), notice: 'Task was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy
    redirect_to list_path(@list), notice: 'Task was successfully deleted.'
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def set_task
    @task = @list.tasks.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :completed, :priority)
  end
end
