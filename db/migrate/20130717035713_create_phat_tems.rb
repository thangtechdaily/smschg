# -*- encoding : utf-8 -*-
class CreatePhatTems < ActiveRecord::Migration
  def change
    create_table :phat_tems do |t|
      t.string :PIN
      t.string :Lo
      t.string :san_pham_id
      t.string :doanh_nghiep_id
      t.string :dai_ly_quan_ly_id
      
      t.string :tem_type
      t.string :kh
      t.string :so_kh
      t.string :sdt
      t.string :lo_status

      t.timestamps
    end
  end
end
