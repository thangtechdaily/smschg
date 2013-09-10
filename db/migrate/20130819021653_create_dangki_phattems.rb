class CreateDangkiPhattems < ActiveRecord::Migration
  def change
    create_table :dangki_phattems do |t|
      t.string :name
      t.integer :luong_sp
      t.integer :luong_lo

      t.timestamps
    end
  end
end
