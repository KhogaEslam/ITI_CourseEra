ActiveAdmin.register Lecture do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :description, :video, :course_id,  {attachments: []}
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Lecture Details" do
      f.input :course_id, as: :select, multiple: false, collection: Course.all.collect
      f.input :description, as: :ckeditor, input_html: { ckeditor: { toolbar: 'Full' } }
      end
      f.inputs "Video" do
        f.input :video, :as => :file #, :hint => image_tag(f.object.video) to be replaced with thumbnailer
        f.input :video_cache, :as => :hidden
      end
      f.inputs "Attachments" do
        f.file_field :attachments, multiple: true
      end
    f.actions
  end

  index do
    selectable_column
    id_column
    column raw(:description)
    column :course
    column :created_at
    column :update_at
    column :video do |lecture|
      link_to 'video lecture', lecture.video_url, target: '_blank'
    end
    column :attachments do |lecture|
      lecture.attachments.each do |attachment|
        link_to attachment.identifier, attachment.url, target: '_blank'
      end
    end
    actions
  end

  show do
    attributes_table do
      # other rows
      row :id
      row raw(:description)
      row :course
      row :created_at
      row :update_at
      row :video do
        link_to 'video lecture', lecture.video_url, target: '_blank'
      end
      row :attachments do
        lecture.attachments.each do |attachment|
          link_to attachment.identifier, attachment.url, target: '_blank'
        end
      end
    end

  end

end
