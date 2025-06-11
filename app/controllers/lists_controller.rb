class ListsController < ApplicationController
  before_action :set_list, only: %i[show edit update destroy]

  def index
    @lists = List.all
  end

  def show
    @filter = params[:filter] || "all"
    @tasks = case @filter
             when "completed"
               @list.tasks.completed
             when "incomplete"
               @list.tasks.incomplete
             else
               @list.tasks
             end
    @tasks = @tasks.order(:position)
  end

  def new
    @list = List.new
    @list.tasks.build
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list, notice: "List was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @list.update(list_params)
      redirect_to @list, notice: "List was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @list = List.find(params[:id])
    if @list.destroy
      redirect_to lists_path, notice: 'List was successfully deleted.'
    else
      redirect_to @list, alert: @list.errors.full_messages.to_sentence
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
  params.require(:list).permit(:title, :description, tasks_attributes: [:title, :description, :priority, :completed])
  end
end
