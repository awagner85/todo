class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]
   
  def index
    @lists = List.all
  end
  
  def show; end
    
  def new
    @list = List.new
  end
  
  def create
    @list = List.new(list_params)
    @list.user = User.first
    
    if @list.save
      flash[:notice] = "Your list has been created!"
      redirect_to :index
    else
      render :new
    end
  end
  
  def edit; end
  
  def update
    if @list.update(list_params)
      flash[:notice] = "Your list has been updated!"
      redirect_to :index
    else
      render :edit
    end
  end
  
  def destroy
    @list.destroy
    redirect_to :index
  end
  
  private
  
  def list_params
    params.require(:list).permit(:title)
  end
  
  def set_list
    @list = List.find(params[:id])
  end
    
end