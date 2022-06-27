# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the user here. For example:
    #
    def initialize(user)
      can :read, jobs_app, published: true

      return unless user.present?

      can :read, jobs_app, user: user
      can :create, jobs_app, user: user
      can :update, jobs_app, user: user


      return unless user.admin?

      can :read, jobs_app
      can :update, jobs_app
      can :read, adding_jobs
      can :create, adding_jobs
      can :update, adding_jobs
      can :destroy, adding_jobs



    
    #   return unless user.present?
    #   can :read :all
    #   return unless user.admin?
    #   can :manage, :all
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, published: true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
  end
end
