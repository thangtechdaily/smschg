# -*- encoding : utf-8 -*-
class DaiLy < ActiveRecord::Base
  has_many :dai_ly_quan_lies
  belongs_to :admin_user
  attr_accessible :diachi, :email, :sdt, :name
end
