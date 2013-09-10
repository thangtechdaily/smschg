# -*- encoding : utf-8 -*-
class CreateSanPhams < ActiveRecord::Migration
  def change
    create_table :san_phams do |t|
      t.string :doanh_nghiep_id
      t.string :ma_cap_phep
      t.string :name
      t.date :ngay_cap
      t.string :xuat_xu
      t.string :so_luong
      t.text :sms_trave

      t.timestamps
    end
  end
end
