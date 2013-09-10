# -*- encoding : utf-8 -*-
class DoanhNghiep < ActiveRecord::Base
  has_many :san_phams
  belongs_to :admin_user
  attr_accessible :dia_chi, :dien_thoai, :giao_dich, :ma_so_thue, :phap_ly, :name, :viet_tat
end
