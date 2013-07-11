class User < ActiveRecord::Base
  attr_accessible :name, :password_digest, :password_confirmation, :password
  has_secure_password
end
