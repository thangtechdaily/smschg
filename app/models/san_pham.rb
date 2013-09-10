# -*- encoding : utf-8 -*-
class SanPham < ActiveRecord::Base
  resourcify
  has_many :phat_tems
  belongs_to :doanh_nghiep
  belongs_to :admin_user
  attr_accessible :doanh_nghiep_id, :ma_cap_phep, :ngay_cap, :so_luong, :name, :xuat_xu, :sms_trave
end
