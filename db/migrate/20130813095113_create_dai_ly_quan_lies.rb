# -*- encoding : utf-8 -*-
class CreateDaiLyQuanLies < ActiveRecord::Migration
  def change
    create_table :dai_ly_quan_lies do |t|
      t.string :dai_ly_id
      t.string :print_manager_id

      t.timestamps
    end
  end
end
