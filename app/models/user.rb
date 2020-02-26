class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  #dependant: :destroy, is used to say that if the user is destroyed then the comments will be destoryed too.
  has_many :comments, dependent: :destroy

  
end
