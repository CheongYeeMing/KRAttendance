class User < ApplicationRecord
  enum role: [:user, :leader, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  has_and_belongs_to_many :ccas
  has_many :ccas

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  ##...Avatar Attachment...##
  has_one_attached :avatar
  ## Validations
  #  validates :avatar, file_size: { less_than_or_equal_to: 5.megabytes },
  #             file_content_type: { allow: ['image/jpeg', 'image/png', 'image/gif', 'image/jpg'] }
end
