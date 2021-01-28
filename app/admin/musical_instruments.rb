ActiveAdmin.register MusicalInstrument do

  permit_params :name, :description, :price, :manufacturer, :image, :category_names, images: []

  form do |f|
    f.inputs do
      f.input :name
      f.input :category_names
      f.input :description, as: :text
      f.input :manufacturer
      f.input :image, as: :file
      f.input :price
      f.input :images, as: :file, input_html: { multiple: true }
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :description
      row :manufacturer
      row :price
      row :image do |object|
        image_tag object.image
      end
      row :images do |object|
        ul do
          object.images.each do |image|
            span image_tag image
          end
        end
      end
      row :category_names
     end
     panel 'Categories' do
       table_for musical_instrument.categories do
         column :id
         column { |c| link_to c.name, admin_category_path(c.id) }
       end
    end
    active_admin_comments
  end
end