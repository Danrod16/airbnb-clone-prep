class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


 def admin?
  self.role == "admin" #true/false
 end

 def renter?
  self.role == "renter"
 end

end
