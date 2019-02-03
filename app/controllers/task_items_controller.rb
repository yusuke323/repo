class TaskItemsController < ApplicationController
  before_action :set_task_item, only: [:show, :edit, :update, :destroy]

  def index
    @task_items = TaskItem.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @task_item = TaskItem.new
  end

  def edit
  end

  def create
    @task_item = TaskItem.new(task_item_params)
    if @task_item.save
      redirect_to @task_item, notice: 'Task item was successfully created.'
    else
      render :new
    end
  end

  def update
      if @task_item.update(task_item_params)
        redirect_to @task_item, notice: 'Task item was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @task_item.destroy
      redirect_to task_items_url, notice: 'Task item was successfully destroyed.'
      head :no_content
    end
  end

  private
  
    def set_task_item
      @task_item = TaskItem.find(params[:id])
    end

    def task_item_params
      params.require(:task_item).permit(:title, :body)
    end
