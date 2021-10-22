class User < ApplicationRecord

  attr_accessor :remember_token
  has_secure_password

  validates :email,  presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
  validates :password, length: {minimum: 8}
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                      BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
    
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_token, User.digest(remember_token))
  end

  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_token).is_password?(remember_token)
  end

  def forget
    update_attribute(:remember_token, nil)
  end
    
end
