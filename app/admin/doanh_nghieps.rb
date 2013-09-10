# -*- encoding : utf-8 -*-
ActiveAdmin.register DoanhNghiep do
  menu :label => "Công Ty"
  
  index do

  	column "Tên", :name do |row|
  		link_to "#{row.name}", admin_doanh_nghiep_path(row)
  	end

  	column "Nội dung tin nhắn", :viet_tat
  	column "Địa chỉ", :dia_chi
  	column "Điện thoại", :dien_thoai
  	column "Sửa chữa" do |row|
      link_to("Sửa", edit_admin_doanh_nghiep_path(row)) + " | " + \
      link_to("Xóa", admin_doanh_nghiep_path(row), :method => :delete, :confirm => "Are you sure?")
    end

  end

  filter :name, :label => "Tên"
  

	show :title => :name do
		panel "Chi tiết nội dung MT" do
		  attributes_table_for doanh_nghiep do
		    row("Tên") { doanh_nghiep.name }
		   
		    row("Địa Chỉ") { doanh_nghiep.dia_chi }
		    row("Số Điện Thoại") { doanh_nghiep.dien_thoai }
		    row("Mã Số Thuế") { doanh_nghiep.ma_so_thue }
		    row("Giao Dịch") { doanh_nghiep.giao_dich }
		    row("Pháp Lý") { doanh_nghiep.phap_ly }
		   
		    row("Ngày tạo") { doanh_nghiep.created_at }
			row("Ngày chỉnh sửa") { doanh_nghiep.updated_at }
		  end
		end
	end
	
	form do |f|
	    f.inputs "Nhập tin MT" do
	      f.input :name, :label => "Tên"
	      f.input :viet_tat, :label => "Viết tất"
	      
	      f.input :dia_chi, :label => "Địa Chỉ"
	      f.input :dien_thoai, :label => "Số Điện Thoại"
	      f.input :ma_so_thue, :label => "Mã Số Thuế"
	      f.input :giao_dich, :label => "Giao Dịch"	      
	      f.input :phap_ly, :label => "Pháp Lý"
	    end
	    f.buttons
	  end
	  #:dien_thoai, :giao_dich, :ma_so_thue, :phap_ly, :name, :viet_tat

end
