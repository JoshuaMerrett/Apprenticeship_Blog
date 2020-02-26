class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  #dependant: :destroy, is used to say that if the user is destroyed then the comments will be destoryed too.
  has_many :comments, dependent: :destroy

  #The action below is called username and is able to be called only by user
  def username 
    #The code below will return the users email however, the split will seperate the email based on the parameters entered into the brackets. The code below will split the email at the @ symbol, resulting in the email changing from example@example.com to example @ example.com. The [0] after the brackets is used to determine the index value of the email that should be displayed. When the email is split each section is provided with an index value, starting at 0. The first part of the email (example) will be given the index of 0. This will result in the code displaying example. The capitalize at the end of the statement is used to caplitalise the first letter of the email address.
    return self.email.split('@')[0].capitalize
  end

end
