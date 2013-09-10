# -*- encoding : utf-8 -*-
class PrintManager < ActiveRecord::Base
  


  belongs_to :codegen 
  belongs_to :package
  has_one :dai_ly_quan_ly
  attr_accessible :package_id, :codegen_id, :printed, :ptype

  STATUS_KHO = '1'
  STATUS_IN  = '2'
  STATUS_PHAT  = '3'

  def status_tag
    case self.printed
      when STATUS_KHO then :error
      when STATUS_IN then :warning
      when STATUS_PHAT then :ok
    end
  end
end
