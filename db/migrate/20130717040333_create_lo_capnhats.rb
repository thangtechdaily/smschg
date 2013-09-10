# -*- encoding : utf-8 -*-
class CreateLoCapnhats < ActiveRecord::Migration
  def change
    create_table :lo_capnhats do |t|
      t.string :lo_id
      t.string :lo_status

      t.timestamps
    end
  end
end
