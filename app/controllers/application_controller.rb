# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery


  rescue_from CanCan::AccessDenied do |exception|
    redirect_to admin_dashboard_path, :alert => exception.message
  end

  #def authenticate_admin_user! 
  #  render_403 and return if admin_login? && current_ability
    #authenticate_user! 
  #end


  #def current_ability
  #  @current_ability ||= Ability.new(current_admin_user)
  #end
end
