class User < ActiveRecord::Base
  include BCrypt
  has_many :photos

  validates :email, format: {with: /@/}
  validates :password_hash, presence: true

  before_save :set_parameter_key

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    raise ArgumentError, 'Password is not entered' if new_password.nil?
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def set_parameter_key
    self.parameter_key = SecureRandom.urlsafe_base64(10)
  end

end
