class User < ApplicationRecord
  #Permet de dire à la class qu'elle apartient à la table course
  belongs_to :course
end
