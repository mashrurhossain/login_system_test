class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  has_secure_password validations: false
  
  validates :password, presence: true, on: :create, length: { minimum: 3 }
end
