# -*- encoding : utf-8 -*-
class DaiLyQuanLy < ActiveRecord::Base
  belongs_to :dai_ly
  belongs_to :print_manager
  belongs_to :admin_user
  has_one :phat_tem
  attr_accessible :dai_ly_id, :print_manager_id
end
