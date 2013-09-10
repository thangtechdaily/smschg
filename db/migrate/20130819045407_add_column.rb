class AddColumn < ActiveRecord::Migration
  def up
  	add_column :doanh_nghieps, :admin_user_id, :integer
    add_column :san_phams, :admin_user_id, :integer
    
  end

  def down
  	remove_column :doanh_nghieps, :admin_user_id
    remove_column :san_phams, :admin_user_id
    
  end
end
