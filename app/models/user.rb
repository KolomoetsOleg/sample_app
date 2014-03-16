class User < ActiveRecord::Base
  #attr_accessible :email, :name, :password, :password_confirmation
  #attr_accessor :password, :password_confirmation

  validates_presence_of :name
  validates_length_of :name, maximum: 25

  validates_presence_of :email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates_uniqueness_of :email, case_sensitive: false

  validates_presence_of :password
  validates_length_of :password, minimum: 6

  before_save { email.downcase! }

  has_secure_password
end


