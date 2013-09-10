# -*- encoding : utf-8 -*-
ActiveAdmin.register Smsdb do
  menu :label => "SMS MO"

  index do

  	column "Lỗi", :error do |row|
  		link_to "#{row.error}", admin_smsdb_path(row)
  	end

  	column "Số Điện Thoại", :sodienthoai
  	column "Số Lô", :lo
  	column "Số Pin", :pin

  	column "Sửa chữa" do |row|
      link_to("Sửa", edit_admin_smsdb_path(row)) + " | " + \
      link_to("Xóa", admin_smsdb_path(row), :method => :delete, :confirm => "Are you sure?")
    end

  end
#attr_accessible :error, :lo, :pin, :sodienthoai
  filter :error, :label => "Lỗi"
  filter :sodienthoai, :label => "Số Điện Thoại"
  filter :lo, :label => "Số Lô"


	show :title => :error do
		panel "Chi tiết nội dung MO" do
		  attributes_table_for smsdb do
		    row("Lỗi") { smsdb.error }
		    row("Số Điện Thoại") { smsdb.sodienthoai }
		    row("Số Lô") { smsdb.lo }
		    row("Số Pin") { smsdb.pin }
		    row("Ngày tạo") { smsdb.created_at }
			row("Ngày chỉnh sửa") { smsdb.updated_at }
		  end
		end
	end
	
	form do |f|
	    f.inputs "Nhập tin MT" do
	      f.input :error, :label => "Lỗi"
	      f.input :sodienthoai, :label => "Số Điện Thoại"
	      f.input :lo, :label => "Số Lô"
	      f.input :pin, :label => "Số Pin"
	    end
	    f.buttons
	  end

end
