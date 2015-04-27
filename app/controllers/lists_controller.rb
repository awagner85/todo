class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]
   
  def index
    @lists = List.all
  end
  
  def show
    @todo_item = TodoItem.new
  end
    
  def new
    @list = List.new
  end
  
  def create
    @list = List.new(list_params)
    @list.user = current_user

    if @list.save
      flash[:notice] = "Your list has been created!"
      redirect_to lists_path
    else
      render :new
    end
  end
  
  def edit; end
  
  def update
    if @list.update(list_params)
      redirect_to list_path(@list)
    else
      render :edit
    end
  end
  
  def destroy
    if @list.destroy
      flash[:notice] = "The list has been deleted."
    end
    redirect_to root_path
  end
  
  private
  
  def list_params
    params.require(:list).permit(:title)
  end
  
  def set_list
    @list = List.find(params[:id])
  end
    
end