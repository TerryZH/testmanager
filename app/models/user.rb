class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :user_alias, :password, :password_digest, :user_type
  has_many :testplans
  has_secure_password
  
  def name
    return first_name + " " + last_name + " (" + user_alias + ")"
  end
end