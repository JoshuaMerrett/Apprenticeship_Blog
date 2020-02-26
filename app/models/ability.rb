# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    can :read, :all, public: true
    
    if user.admin?
      can :manage, :all
    end

    
  end
end
