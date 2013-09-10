# -*- encoding : utf-8 -*-
ActiveAdmin.register DaiLy do
	 menu :label => "Đại Lý"
  
  index do

  	column "Tên", :name do |row|
  		link_to "#{row.name}", admin_dai_ly_path(row)
  	end

  	column "Email", :email
  	column "Điện thoại", :sdt
  	column "Địa Chỉ", :diachi
  	
  	column "Sửa chữa" do |row|
      link_to("Sửa", edit_admin_dai_ly_path(row)) + " | " + \
      link_to("Xóa", admin_dai_ly_path(row), :method => :delete, :confirm => "Are you sure?")
    end

  end
#attr_accessible :diachi, :email, :sdt, :name
  filter :name, :label => "Tên"
  filter :email, :label => "Email"

	show :title => :name do
		panel "Chi tiết Đại Lý" do
		  attributes_table_for dai_ly do
		    row("Tên") { dai_ly.name }
		    row("Email") { dai_ly.email }
		    row("Số Điện Thoại") { dai_ly.sdt }
		    row("Địa Chỉ") { dai_ly.diachi }
		    
		    row("Ngày tạo") { dai_ly.created_at }
			row("Ngày chỉnh sửa") { dai_ly.updated_at }
		  end
		end
	end
	
	form do |f|
	    f.inputs "Nhập Thông tin Đại Lý" do
	      f.input :name, :label => "Tên"
	      f.input :email, :label => "Email"
	      f.input :sdt, :label => "Số Điện Thoại"

	      f.input :diachi, :label => "Địa Chỉ"
	    end
	    f.buttons
	  end
  
end
