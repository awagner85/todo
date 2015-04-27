class User < ActiveRecord::Base
<<<<<<< HEAD
  has_secure_password validations: false
  
  has_many :lists
  has_many :todo_items

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, on: :create, length: {minimum: 5}

=======
   has_many :lists
   has_many :todo_items
>>>>>>> 62f0cf85eb1c64b8c5d23fabfd6dc6ecdb35b0c6
end