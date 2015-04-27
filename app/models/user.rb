class User < ActiveRecord::Base
  has_secure_password validations: false
  
  has_many :lists
  has_many :todo_items

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, on: :create, length: {minimum: 5}

end