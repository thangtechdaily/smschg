# -*- encoding : utf-8 -*-
class AdminUser < ActiveRecord::Base
  has_many :dai_lies
  has_many :dai_ly_quan_lies
  has_one :doanh_nghiep, :dependent => :destroy
  has_many :san_phams
  has_many :phat_tems

  #resourcify
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  accepts_nested_attributes_for :doanh_nghiep, :allow_destroy => true
  

  scope :user, AdminUser.joins(:roles).where(:roles => {:name => "norm"})
  scope :mod, AdminUser.joins(:roles).where(:roles => {:name => "mode"})
  scope :admin, AdminUser.joins(:roles).where(:roles => {:name => "admin"})
      
  # Setup accessible (or protected) attributes for your model

  attr_accessible :email, :password,  :doanh_nghiep_attributes, :password_confirmation, :remember_me, :role_ids
  #attr_accessible , :as => :admin
  # attr_accessible :title, :body

  #after_initialize :set_default_title
  #...
  #protected
  #def set_default_title
  #  self.add_role "norm"
  #end
end
