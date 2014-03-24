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
  before_create :create_remember_token

  has_secure_password

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end


