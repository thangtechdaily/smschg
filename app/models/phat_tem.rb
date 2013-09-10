# -*- encoding : utf-8 -*-
class PhatTem < ActiveRecord::Base
  belongs_to :dai_ly_quan_ly
  belongs_to :san_pham
  belongs_to :admin_user
  attr_accessible :PIN, :Lo, :doanh_nghiep_id, :san_pham_id , :dai_ly_quan_ly_id, :sdt, :so_kh, :kh, :tem_type, :lo_status
end
