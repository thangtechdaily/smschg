# -*- encoding : utf-8 -*-
class CreatePrintManagers < ActiveRecord::Migration
  def change
    create_table :print_managers do |t|
      t.string :package_id
      t.string :codegen_id
      t.string :ptype
      t.string :printed

      t.timestamps
    end
  end
end
