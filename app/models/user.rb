class User < ActiveRecord::Base
  has_many :messages
  has_many :chatrooms, through: :messages
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
