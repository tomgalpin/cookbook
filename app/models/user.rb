class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :age, :bio, :email, :first_name, :last_name, :password_digest, :password

  validates :email, :uniqueness => true
end
