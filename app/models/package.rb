# -*- encoding : utf-8 -*-
class Package < ActiveRecord::Base
  has_many :print_managers, :dependent => :destroy
  belongs_to :ptype
  attr_accessible :name, :description, :ptype_id

  
end
