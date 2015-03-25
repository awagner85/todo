class Todo_Item < ActiveRecord::Base
    belongs_to :user
    belongs_to :list 
end