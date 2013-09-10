# -*- encoding : utf-8 -*-
ActiveAdmin.register AdminUser do #:namespace => :admin do
  
  menu  :label => "Admin"

  #menu :if => proc{ can?(:manage, AdminUser) }

  #authorize! :manage, AdminUser
  #controller.authorize_resource 
      #scope :all#, :default => true

      scope "Người Sử Dụng", :user, :if => proc {current_admin_user.has_role? :mode}  do
        AdminUser.user
      end
      #scope "Cấp Phát", :mode, :default => true, :if => proc {current_admin_user.has_role? :mode} do
      #  AdminUser.mod
      #end
      #scope "Người Sử Dụng", :useradmin, :if => proc {current_admin_user.has_role? :admin} do
      #  AdminUser.user
      #end
   #row.where(:roles => "admin") 
  #end
  #scope :film_makers, -> { joins(:roles).where(roles: { name: 'mode' }) }
  #scope :loluser, :if => proc{ current_admin_user.has_role? "mode" } do |row|
  #  row.roles.where(:name => "mode").map{ |role| role.name}.join(' ')
  #end

  index do                             
    column :email
    #column :role
    column :role, :sortable => :role do |user|
      div :class => "Role" do
        user.roles.map{ |role| role.name}.join(' ')
      end
    end          
    column :doanh_nghiep
    column :current_sign_in_at        
    column :last_sign_in_at           
    column :sign_in_count      
    default_actions                   
  end                                  

  show do
    panel "Chi tiết Thông tin Đăng Nhập" do
      attributes_table_for admin_user do
        row("Email") { admin_user.email }
        rơw("")
        row("Số Lần Đăng Nhập") { admin_user.sign_in_count}
        row("Lần Cuối Thay Mật Khẩu") {admin_user.reset_password_sent_at} 
        row("Lần Cuối Đăng Nhập") {admin_user.last_sign_in_at}
        row("IP Lần Cuối Đăng Nhập") {admin_user.last_sign_in_ip}
        row("Tài Khoản Tạo Từ Ngày") {admin_user.updated_at}
        end
    end
  end
#email: "user@example.com", encrypted_password: "$2a$10$SKFoGJTCaYMZfimNUVXf.u4.ug8cFLcCHgQMYjdfjTjT...", 
#reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, 
#current_sign_in_at: "2013-08-20 02:41:27", last_sign_in_at: "2013-08-20 02:40:47", current_sign_in_ip: "127.0.0.1", 
#last_sign_in_ip: "127.0.0.1", created_at: "2013-08-19 09:11:43", updated_at: "2013-08-20 02:41:27">
  filter :email
  #filter :role
  #filter :password

  form do |f|                         
    f.inputs "Chi Tiết Đăng Nhập" do       
      #f.input :status, :label => "Event Status", :as => :select#, :collection => Event::EVENT_STATUSES
      
      f.input :email                  
      f.input :password, :type => :password               
      f.input :password_confirmation, :type => :password

      if current_admin_user.has_role? :admin
        #f.object.add_role "norm"
        f.input :roles#, :default => "norm" #:as => :select#, :input_html => { :name => "norm"}
      #elsif current_admin_user.has_role? :mode
        #@roles == "norm"
      end
    end   
    f.inputs "Chi tiết Doanh Nghiệp", :for => [:doanh_nghiep, (f.object.doanh_nghiep || f.object.build_doanh_nghiep)] do |i|
    #f.inputs "Doanh Nghiệp" do
      #f.has_many :doanh_nghieps do |i|
        i.input :name#, :value => "Tên Công Ty"
      #end
    end

    f.actions                         
  end                                 
end                                   
