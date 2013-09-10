# -*- encoding : utf-8 -*-
class CreateSmsdbs < ActiveRecord::Migration
  def change
    create_table :smsdbs do |t|
      t.string :sodienthoai
      t.string :error
      t.string :pin
      t.string :lo

      t.timestamps
    end
  end
end
