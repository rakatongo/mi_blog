class Usuario < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :nombre, :password, :password_confirmation
end
