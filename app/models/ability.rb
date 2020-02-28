# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    can :read, :all
    
    #The if statement below will check to see if there is currently a user signed in
    if user.present?
      #If a user is signed in then the following if statement will check to see if the user is an admin
      if user.admin?
        #If the user is an admin then they are assigned the rights to manage all contents of the website 
        can :manage, :all
      else
        #If the user is not an admin then they are assigned the rights to only manage posts created by that specific user
        can :manage, Post, user: user.id 
      end
    end
    
  end
end
