class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]
   
  def index
    @lists = List.all
  end
  
<<<<<<< HEAD
  def show
    @todo_item = TodoItem.new
  end
=======
  def show; end
>>>>>>> 62f0cf85eb1c64b8c5d23fabfd6dc6ecdb35b0c6
    
  def new
    @list = List.new
  end
  
  def create
    @list = List.new(list_params)
<<<<<<< HEAD
    @list.user = current_user

    if @list.save
      flash[:notice] = "Your list has been created!"
      redirect_to lists_path
=======
    @list.user = User.first
    
    if @list.save
      flash[:notice] = "Your list has been created!"
      redirect_to :index
>>>>>>> 62f0cf85eb1c64b8c5d23fabfd6dc6ecdb35b0c6
    else
      render :new
    end
  end
  
  def edit; end
  
  def update
    if @list.update(list_params)
<<<<<<< HEAD
      redirect_to list_path(@list)
=======
      flash[:notice] = "Your list has been updated!"
      redirect_to :index
>>>>>>> 62f0cf85eb1c64b8c5d23fabfd6dc6ecdb35b0c6
    else
      render :edit
    end
  end
  
  def destroy
<<<<<<< HEAD
    if @list.destroy
      flash[:notice] = "The list has been deleted."
    end
    redirect_to root_path
=======
    @list.destroy
    redirect_to :index
>>>>>>> 62f0cf85eb1c64b8c5d23fabfd6dc6ecdb35b0c6
  end
  
  private
  
  def list_params
    params.require(:list).permit(:title)
  end
  
  def set_list
    @list = List.find(params[:id])
  end
    
end