class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :avatar, AvatarUploader
  rolify
  validates_presence_of :email
  validates_presence_of   :avatar
  validates_integrity_of  :avatar
  validates_processing_of :avatar
 
  after_create :set_user_role
  def set_user_role
      if self.roles.empty?
        self.roles = Role.where(name: 'regular')
      end
  end

end
