# -*- encoding : utf-8 -*-
ActiveAdmin.register Package do
	menu :label => "Lô"
	index do
		selectable_column
		column :name do |row|
  			link_to "#{row.name}", admin_package_path(row)
  		end
  	
		column :ptype 
		column :created_at
		column :updated_at
	end  
end
