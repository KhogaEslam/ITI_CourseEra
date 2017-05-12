ActiveAdmin.register User do
  permit_params  :email, :password, :password_confirmation, :first_name, :last_name, :avatar, :date_of_birth, role_ids: []

  index do
    selectable_column
    id_column
    column :avatar do |user|
      image_tag(user.avatar.thumb)
      end
    column :first_name
    column :last_name
    column :email
    column :date_of_birth
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column :roles do |user|
      user.roles.collect {|c| c.name.capitalize }.to_sentence
    end
    actions
  end

  filter :first_name
  filter :last_name
  filter :email
  filter :date_of_birth
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at



  form(:html => { :multipart => true }) do |f|
    f.inputs "Admin Details" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :date_of_birth, :start_year => 1900
      f.input :password
      f.input :password_confirmation
      f.input :roles, as: :select, multiple: true, collection: Role.all
      end
      f.inputs "Attachment", :multipart => true do
        f.input :avatar, :as => :file, :hint => image_tag(f.object.avatar.thumb)
        f.input :avatar_cache, :as => :hidden
    end
    f.actions
  end

  controller do
    def create
      @user = User.new(permitted_params[:user])
      add_roles(@user)
      create!
    end

    def update
      add_roles(resource)
      update!
    end

    private
    def add_roles(resource)
      resource.roles = []
      params[:user][:role_ids].each { |r| resource.roles.push(Role.find(r)) unless r.blank? }
    end
  end

  show do
    attributes_table do
      # other rows
      row :image do
        image_tag(user.avatar.thumb)
        end
      row :first_name
      row :last_name
      row :email
      row :date_of_birth
      row :roles do |r|
        r.roles.map { |role| role.name }.join(", ")
      end
    end

  end
end
