# -*- encoding : utf-8 -*-
class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
         #user ||= AdminUser.new

     #     if user.has_role? :admin 
          can :read, ActiveAdmin::Page, :name => "Dashboard"
          
          #can :manage, DoanhNghiep if user.role == "mode"
          if user.has_role? :admin
            can :manage, :all

          elsif user.has_role? :mode
            can :manage, [DaiLyQuanLy, DaiLy, PrintManager]
            can :manage, [SanPham, DoanhNghiep]
            can :manage, [AdminUser]#, :accessible_by_mode => true #if user.role != "admin"
            cannot :destroy, DoanhNghiep
            cannot :create, DoanhNghiep
          elsif user.has_role? :norm
            can :manage, [DoanhNghiep,SanPham], :admin_user_id => user.id
            can :manage, AdminUser, :id => user.id
            cannot :destroy, [AdminUser, DoanhNghiep]
            cannot :create, [AdminUser, DoanhNghiep]

            #can :manage, PhatTem#, :admin_user_id => user.id
          end

          #if user.role == "norm"
          #  can :manage, SanPham
          #  can :manage, DoanhNghiep
          #end
          #can :read, ActiveAdmin::Page, :name => "Dashboard"
         #cannot [:destroy,:edit], SanPham   

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
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
