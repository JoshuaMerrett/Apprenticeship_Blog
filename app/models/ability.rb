# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    can :read, Posts

    if user.present?
    
      if user.admin?
        can :manage, :all
      end
    end
  end
end
