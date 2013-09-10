# -*- encoding : utf-8 -*-
ActiveAdmin.register SanPham do
  
  #if @san_pham == "norm"
  menu :label => "Sản Phẩm"
  #else 
  #	menu :label => "san pham"
  #end
  index do

  	column "Tên", :name do |row|
  		link_to "#{row.name}", admin_san_pham_path(row)
  	end

  	column "Doanh Nghiệp", :san_pham do |row|
  		link_to "#{row.doanh_nghiep.name}", admin_san_pham_path(row)
  	end

  	column "Xuất Xứ", :xuat_xu

  	column "Ngày Cấp", :ngay_cap
  	column "Số Lượng", :so_luong

  	column "Sửa chữa" do |row|
      link_to("Sửa", edit_admin_san_pham_path(row)) + " | " + \
      link_to("Xóa", admin_san_pham_path(row), :method => :delete, :confirm => "Are you sure?")
    end

  end
 #attr_accessible :san_pham_id, :ma_cap_phep, :ngay_cap, :so_luong, :_san_pham, :xuat_xu, :sms_trave
  filter :name, :label => "Tên"
  

	show :title => :name do
		panel "Chi tiết Sản Phẩm" do
		  attributes_table_for san_pham do
		    row("Tên") { san_pham.name }
		    row("Doanh Nghiệp") { san_pham.doanh_nghiep.name }
		    row("Xuất Xứ") { san_pham.xuat_xu }
		    row("Ngày Cấp") { san_pham.ngay_cap }
		    row("Số Lượng") { san_pham.so_luong }

		    row("Ngày tạo") { san_pham.created_at }
			row("Ngày chỉnh sửa") { san_pham.updated_at }
		  end
		end
	end
	
	form do |f|
	    f.inputs "Nhập Chi Tiết Sản Phẩm" do
	      f.input :name, :label => "Tên"

	      f.input :doanh_nghiep, :label => "Doanh Nghiệp", :collection => current_admin_user.doanh_nghiep
	      f.input :xuat_xu, :label => "Xuất Xứ"
	      f.input :ngay_cap, :label => "Số Ngày Cấp"
	      f.input :so_luong, :label => "Số Lượng Sản Phẩm"
	    
	      end
	    f.buttons
	  end
end
