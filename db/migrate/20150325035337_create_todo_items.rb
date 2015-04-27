class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.text :item
      t.integer :user_id, :list_id
      t.timestamps
    end
  end
end
