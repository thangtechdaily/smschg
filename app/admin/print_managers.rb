# -*- encoding : utf-8 -*-
ActiveAdmin.register PrintManager do
  
  menu :label => "Kho Lô/Tem"
  filter :package, :label => "Mã Lô"
  filter :codegen, :label => "Mã Tem"

  scope "tất cả", :all, :default => true
  scope "tem kho", :kho do |row|
    row.where(:printed => PrintManager::STATUS_KHO)
  end

  scope "tem in", :in do |row|
    row.where(:printed => PrintManager::STATUS_IN)
  end
  
  scope "phát tem", :phat do |row|
    row.where(:printed => PrintManager::STATUS_PHAT)
  end
  

  index do
  	selectable_column
  	
  	column "Mã Tem", :codegen_id #do |row|
    #  link_to "#{row.codegen.name}", admin_print_manager_path(row)
    #end
  	column "Mã Lô", :package
  	column "Loại Lô", :ptype

  	column "Trạng thái",  :printed do |row|
      status_tag row.printed, row.status_tag
  	end
    column "Sửa chữa" do |row|
      link_to("Chi tiết", admin_print_manager_path(row)) + " | " + \
      link_to("Sửa", edit_admin_print_manager_path(row)) + " | " + \
      link_to("Xóa", admin_print_manager_path(row), :method => :delete, :confirm => "Are you sure?")
    end

  end


  # form do |f|
  #   f.inputs "Ma Tem" do
  #     f.input :codegen, :collection => current_admin_user.codegen
  #   end
  #   f.inputs "Lo" do
  #     f.input :package, :collection => current_admin_user.package
  #   end
    
  # end
  


end
