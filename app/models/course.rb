class Course < ApplicationRecord
  #Permet de dire à la class qu'elle a plusieurs users
  has_many :users
end
