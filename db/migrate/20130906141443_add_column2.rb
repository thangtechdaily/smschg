class AddColumn2 < ActiveRecord::Migration
  def up
  	add_column :dai_lies, :admin_user_id, :integer
  	add_column :dai_ly_quan_lies, :admin_user_id, :integer
  	
  end

  def down
  	remove_column :dai_lies, :admin_user_id
    remove_column :dai_ly_quan_lies, :admin_user_id
  end
end
