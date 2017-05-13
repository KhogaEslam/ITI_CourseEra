class AddAttachmentsToLecture < ActiveRecord::Migration
  def change
    add_column :lectures, :attachments, :json
  end
end
