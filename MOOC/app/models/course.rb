class Course < ActiveRecord::Base
  resourcify
  belongs_to :user
  has_many :lectures

  validates_presence_of :title, :user_id

end
