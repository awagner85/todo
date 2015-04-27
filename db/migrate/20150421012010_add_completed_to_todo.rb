class AddCompletedToTodo < ActiveRecord::Migration
  def change
    add_column :todo_items, :completed, :boolean
  end
end
