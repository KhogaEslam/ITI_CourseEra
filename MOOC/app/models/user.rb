class User < ActiveRecord::Base
  rolify
  has_many :courses, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :flags, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :avatar, AvatarUploader
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
