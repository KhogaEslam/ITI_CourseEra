class Lecture < ActiveRecord::Base
  belongs_to :course
  has_many :comments
  has_many :likes
  has_many :flags

  validates_presence_of :description, :video, :course_id
  mount_uploader :video, VideoUploader
  mount_uploaders :attachments, AttachmentUploader

end
