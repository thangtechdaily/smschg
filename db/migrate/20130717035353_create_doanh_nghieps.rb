# -*- encoding : utf-8 -*-
class CreateDoanhNghieps < ActiveRecord::Migration
  def change
    create_table :doanh_nghieps do |t|
      t.string :name
      t.string :viet_tat
      t.string :ma_so_thue
      t.text :dia_chi
      t.integer :dien_thoai
      t.string :phap_ly
      t.string :giao_dich

      t.timestamps
    end
  end
end
