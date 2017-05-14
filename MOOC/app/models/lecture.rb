class Lecture < ActiveRecord::Base
  acts_as_commentable
  acts_as_votable
  
  belongs_to :course
  has_many :comments
  has_many :likes
  has_many :flags

  validates_presence_of :description, :course_id
  mount_uploader :video, VideoUploader
  mount_uploaders :attachments, AttachmentUploader
  serialize :attachments, JSON
end
