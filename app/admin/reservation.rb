ActiveAdmin.register Reservation do

  menu priority: 1
  
  permit_params :name, :email, :companion, :phone, :kids
  
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
  index do
      column :name
      column :email
      column :phone
      column :companion
      column :kids
      column :created_at
      
      default_actions
  end
  
  show do |ad|
    attributes_table do
      row :name
      row :email
      row :phone
      row :companion
      row :row
      row :created_at
      row :updated_at
    end
  end
  
end
