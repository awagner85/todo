class TodoItemsController < ApplicationController

  def create
    @list = List.find(params[:list_id])
    @todo_item = @list.todo_items.build(params.require(:todo_item).permit(:item))
    @todo_item.user = current_user
    @todo_item.save
    
    redirect_to list_path(@list)
  end
  
  def complete
    params[:todos_checkbox].each do |check|
      todo_id = check
      t = TodoItem.find_by_id(todo_id)
      t.update_attribute(:completed, true) 
    end
  end
  
  private
  
  def todo_item_params
    params.require(:todo_item).permit(:completed)
  end
  
end