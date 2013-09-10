# -*- encoding : utf-8 -*-
class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.string :ptype_id
      t.text :description

      t.timestamps
    end
  end
end
