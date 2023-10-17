ActiveAdmin.register Post do
  permit_params :title, :body, :user_id

  index do
    selectable_column
    id_column
    column :title
    column :body
    column :user
    actions
  end

  filter :title
  filter :body
  filter :user

  form do |f|
    f.inputs 'Post Details' do
      f.input :title
      f.input :body
      f.input :user
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :title
      row :body
      row :user
      row :created_at
      row :updated_at
    end
  end
end
