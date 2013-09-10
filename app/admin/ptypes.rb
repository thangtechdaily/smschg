# -*- encoding : utf-8 -*-
ActiveAdmin.register Ptype do
  menu :label => "Loại Lô"

  index do
  	column "Tên", :name
  	column "Chi tiết", :description
  	column :updated_at



  	column "Sửa chữa" do |row|
      link_to("Chi tiết", admin_ptype_path(row)) + " | " + \
      link_to("Sửa", edit_admin_ptype_path(row)) + " | " + \
      link_to("Xóa", admin_ptype_path(row), :method => :delete, :confirm => "Are you sure?")
    end

  end

  show :title => :description do
    panel "Chi tiết về Loại Lô" do
      attributes_table_for ptype do
        row("Tên") { ptype.name }
        row("Chi tiết") { ptype.description }
      end
    end
  end


  #sidebar "Tong ", :help  do
    #h1 Ptype.where(:_id => .id).all.sum(&:total), :style => "text-align: center; margin-top: 20px;"
  #end
  
  # sidebar "Latest Invoices", :only => :show do
  #   table_for Invoice.where(:_id => .id).order('created_at desc').limit(5).all do |t|
  #     t.column("Status") { |invoice| status_tag invoice.status, invoice.status_tag }
  #     t.column("Code") { |invoice| link_to "##{invoice.code}", admin_invoice_path(invoice) }
  #     t.column("Total") { |invoice| number_to_currency invoice.total }
  #   end
  # end



end
